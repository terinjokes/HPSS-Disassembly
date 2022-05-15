; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $061", ROMX[$4000], BANK[$61]

    ld h, c                                       ; $4000: $61
    sub a                                         ; $4001: $97
    sbc e                                         ; $4002: $9b
    ld c, [hl]                                    ; $4003: $4e
    db $db                                        ; $4004: $db
    ld h, e                                       ; $4005: $63
    add hl, de                                    ; $4006: $19
    db $dd                                        ; $4007: $dd
    ld h, l                                       ; $4008: $65
    ld sp, $eef4                                  ; $4009: $31 $f4 $ee
    ld d, c                                       ; $400c: $51
    and l                                         ; $400d: $a5
    ld a, [hl+]                                   ; $400e: $2a
    db $d3                                        ; $400f: $d3
    or $79                                        ; $4010: $f6 $79
    ld [hl], h                                    ; $4012: $74
    sub a                                         ; $4013: $97
    push bc                                       ; $4014: $c5
    add b                                         ; $4015: $80
    sub l                                         ; $4016: $95
    dec a                                         ; $4017: $3d
    ld [hl-], a                                   ; $4018: $32
    ld c, $89                                     ; $4019: $0e $89
    ld e, a                                       ; $401b: $5f
    or $7c                                        ; $401c: $f6 $7c
    sbc c                                         ; $401e: $99
    db $18, $d5                                   ; $401f: $18 $d5
    rst $28                                       ; $4021: $ef
    add sp, $1c                                   ; $4022: $e8 $1c
    ld a, [$8859]                                 ; $4024: $fa $59 $88
    sbc l                                         ; $4027: $9d
    sub e                                         ; $4028: $93
    ld d, b                                       ; $4029: $50
    inc l                                         ; $402a: $2c
    rst $30                                       ; $402b: $f7
    jp c, $8bcc                                   ; $402c: $da $cc $8b

    and c                                         ; $402f: $a1
    ld [hl], a                                    ; $4030: $77
    cpl                                           ; $4031: $2f
    and [hl]                                      ; $4032: $a6
    and h                                         ; $4033: $a4
    ld d, a                                       ; $4034: $57
    ld c, l                                       ; $4035: $4d
    ld h, a                                       ; $4036: $67
    db $ed                                        ; $4037: $ed
    cpl                                           ; $4038: $2f
    add a                                         ; $4039: $87
    ld e, d                                       ; $403a: $5a
    call nc, $7b2c                                ; $403b: $d4 $2c $7b
    ld a, $fe                                     ; $403e: $3e $fe
    ld h, a                                       ; $4040: $67
    ld d, a                                       ; $4041: $57
    add d                                         ; $4042: $82
    db $10                                        ; $4043: $10
    push af                                       ; $4044: $f5
    ld e, d                                       ; $4045: $5a
    call $a035                                    ; $4046: $cd $35 $a0
    pop de                                        ; $4049: $d1
    ld hl, $95b0                                  ; $404a: $21 $b0 $95
    ld sp, hl                                     ; $404d: $f9
    ld e, [hl]                                    ; $404e: $5e
    cp e                                          ; $404f: $bb
    ld l, $53                                     ; $4050: $2e $53
    ld e, a                                       ; $4052: $5f
    ld d, $43                                     ; $4053: $16 $43
    push af                                       ; $4055: $f5
    db $10                                        ; $4056: $10
    jp z, Jump_061_6860                           ; $4057: $ca $60 $68

    ld e, c                                       ; $405a: $59
    ld b, d                                       ; $405b: $42
    ld h, c                                       ; $405c: $61
    jr z, jr_061_40bd                             ; $405d: $28 $5e

    sbc d                                         ; $405f: $9a
    dec b                                         ; $4060: $05
    and h                                         ; $4061: $a4
    call c, Call_000_072f                         ; $4062: $dc $2f $07
    ld b, c                                       ; $4065: $41
    cp h                                          ; $4066: $bc
    jr z, jr_061_408d                             ; $4067: $28 $24

    and l                                         ; $4069: $a5
    ld h, e                                       ; $406a: $63
    ld a, d                                       ; $406b: $7a
    xor l                                         ; $406c: $ad
    ld l, [hl]                                    ; $406d: $6e
    cp d                                          ; $406e: $ba
    pop de                                        ; $406f: $d1
    ei                                            ; $4070: $fb
    cp h                                          ; $4071: $bc
    ld a, [bc]                                    ; $4072: $0a
    push bc                                       ; $4073: $c5
    ei                                            ; $4074: $fb
    inc a                                         ; $4075: $3c
    cp d                                          ; $4076: $ba
    set 4, d                                      ; $4077: $cb $e2
    sbc a                                         ; $4079: $9f
    or e                                          ; $407a: $b3
    inc l                                         ; $407b: $2c
    ld a, [bc]                                    ; $407c: $0a
    reti                                          ; $407d: $d9


    ld hl, sp-$7e                                 ; $407e: $f8 $82
    xor $d5                                       ; $4080: $ee $d5
    rst $30                                       ; $4082: $f7
    jp c, $88bc                                   ; $4083: $da $bc $88

    xor $14                                       ; $4086: $ee $14
    and e                                         ; $4088: $a3
    rst $30                                       ; $4089: $f7
    ld b, b                                       ; $408a: $40

Call_061_408b:
    ld e, c                                       ; $408b: $59
    ld l, h                                       ; $408c: $6c

jr_061_408d:
    call c, $55e7                                 ; $408d: $dc $e7 $55
    dec bc                                        ; $4090: $0b
    ld a, d                                       ; $4091: $7a
    rrca                                          ; $4092: $0f
    sub h                                         ; $4093: $94
    ld sp, $b5f4                                  ; $4094: $31 $f4 $b5
    add a                                         ; $4097: $87
    ld b, d                                       ; $4098: $42
    db $ec                                        ; $4099: $ec
    daa                                           ; $409a: $27
    rst $10                                       ; $409b: $d7
    ei                                            ; $409c: $fb
    dec b                                         ; $409d: $05
    sub a                                         ; $409e: $97
    sbc e                                         ; $409f: $9b
    ld c, [hl]                                    ; $40a0: $4e
    dec de                                        ; $40a1: $1b
    db $dd                                        ; $40a2: $dd
    ld h, l                                       ; $40a3: $65
    adc $45                                       ; $40a4: $ce $45
    call nc, $ecac                                ; $40a6: $d4 $ac $ec
    ld h, [hl]                                    ; $40a9: $66
    ld d, [hl]                                    ; $40aa: $56
    ld [hl], a                                    ; $40ab: $77
    rst $00                                       ; $40ac: $c7
    db $eb                                        ; $40ad: $eb
    ld d, b                                       ; $40ae: $50
    ld e, h                                       ; $40af: $5c
    jp $d433                                      ; $40b0: $c3 $33 $d4


    rst $28                                       ; $40b3: $ef
    rla                                           ; $40b4: $17
    ld l, l                                       ; $40b5: $6d
    ld a, [$261a]                                 ; $40b6: $fa $1a $26
    xor c                                         ; $40b9: $a9
    or c                                          ; $40ba: $b1
    ld [hl], e                                    ; $40bb: $73
    dec d                                         ; $40bc: $15

jr_061_40bd:
    sub h                                         ; $40bd: $94
    ld [hl], d                                    ; $40be: $72
    ld a, [c]                                     ; $40bf: $f2
    inc l                                         ; $40c0: $2c
    ld a, e                                       ; $40c1: $7b
    ld a, [hl]                                    ; $40c2: $7e
    xor l                                         ; $40c3: $ad
    ld e, [hl]                                    ; $40c4: $5e
    ld c, c                                       ; $40c5: $49
    ld e, l                                       ; $40c6: $5d
    db $10                                        ; $40c7: $10
    jp z, $a53a                                   ; $40c8: $ca $3a $a5

    ld a, [bc]                                    ; $40cb: $0a
    ld c, b                                       ; $40cc: $48
    ld e, c                                       ; $40cd: $59
    inc d                                         ; $40ce: $14
    ld [hl], d                                    ; $40cf: $72
    sbc a                                         ; $40d0: $9f
    rst $10                                       ; $40d1: $d7
    add hl, hl                                    ; $40d2: $29
    jp hl                                         ; $40d3: $e9


    sub c                                         ; $40d4: $91
    ld [hl], c                                    ; $40d5: $71
    ld c, b                                       ; $40d6: $48
    db $fc                                        ; $40d7: $fc
    ld [hl], d                                    ; $40d8: $72
    cp a                                          ; $40d9: $bf
    rst $20                                       ; $40da: $e7
    ld e, e                                       ; $40db: $5b
    push af                                       ; $40dc: $f5
    ld e, a                                       ; $40dd: $5f
    sbc h                                         ; $40de: $9c
    or h                                          ; $40df: $b4
    push bc                                       ; $40e0: $c5
    jr nc, @-$17                                  ; $40e1: $30 $e7

    ld b, b                                       ; $40e3: $40
    add hl, hl                                    ; $40e4: $29
    ld c, a                                       ; $40e5: $4f
    sbc d                                         ; $40e6: $9a
    and $31                                       ; $40e7: $e6 $31
    db $f4                                        ; $40e9: $f4
    and c                                         ; $40ea: $a1
    ld a, c                                       ; $40eb: $79
    ld [$80b7], a                                 ; $40ec: $ea $b7 $80
    db $dd                                        ; $40ef: $dd
    ld h, a                                       ; $40f0: $67
    ld b, c                                       ; $40f1: $41
    pop de                                        ; $40f2: $d1
    rst $28                                       ; $40f3: $ef
    rla                                           ; $40f4: $17
    db $ed                                        ; $40f5: $ed
    pop af                                        ; $40f6: $f1
    rst $00                                       ; $40f7: $c7
    sub c                                         ; $40f8: $91
    ccf                                           ; $40f9: $3f
    add a                                         ; $40fa: $87
    ld a, [$49d0]                                 ; $40fb: $fa $d0 $49
    db $db                                        ; $40fe: $db
    push hl                                       ; $40ff: $e5
    adc [hl]                                      ; $4100: $8e
    and c                                         ; $4101: $a1
    ld [hl], a                                    ; $4102: $77
    sbc a                                         ; $4103: $9f
    di                                            ; $4104: $f3
    ld [bc], a                                    ; $4105: $02
    rla                                           ; $4106: $17
    jp z, Jump_000_209c                           ; $4107: $ca $9c $20

    sbc b                                         ; $410a: $98
    jr nz, @-$59                                  ; $410b: $20 $a5

    ld a, [hl+]                                   ; $410d: $2a
    cp l                                          ; $410e: $bd
    ld [hl], h                                    ; $410f: $74
    xor a                                         ; $4110: $af
    add [hl]                                      ; $4111: $86
    ld h, a                                       ; $4112: $67
    rrca                                          ; $4113: $0f
    ret z                                         ; $4114: $c8

    ld a, [de]                                    ; $4115: $1a
    add $ca                                       ; $4116: $c6 $ca
    ld a, [hl]                                    ; $4118: $7e
    ld b, d                                       ; $4119: $42
    xor [hl]                                      ; $411a: $ae
    ld e, d                                       ; $411b: $5a
    sub b                                         ; $411c: $90
    cp l                                          ; $411d: $bd
    rlca                                          ; $411e: $07
    jp z, Jump_061_76bd                           ; $411f: $ca $bd $76

    ld e, l                                       ; $4122: $5d
    ld d, $1b                                     ; $4123: $16 $1b
    rst $30                                       ; $4125: $f7
    ld a, c                                       ; $4126: $79
    ld [hl], h                                    ; $4127: $74
    sub a                                         ; $4128: $97
    add hl, sp                                    ; $4129: $39
    ld d, a                                       ; $412a: $57
    cp d                                          ; $412b: $ba
    sbc a                                         ; $412c: $9f
    ld a, [de]                                    ; $412d: $1a
    sbc [hl]                                      ; $412e: $9e
    ei                                            ; $412f: $fb
    dec b                                         ; $4130: $05
    rla                                           ; $4131: $17
    halt                                          ; $4132: $76
    rst $00                                       ; $4133: $c7
    ld c, [hl]                                    ; $4134: $4e
    db $ed                                        ; $4135: $ed
    cp e                                          ; $4136: $bb
    or h                                          ; $4137: $b4
    rst $38                                       ; $4138: $ff
    ld e, h                                       ; $4139: $5c
    ld l, h                                       ; $413a: $6c
    inc e                                         ; $413b: $1c
    db $dd                                        ; $413c: $dd
    jp hl                                         ; $413d: $e9


    ld a, [hl-]                                   ; $413e: $3a
    dec d                                         ; $413f: $15
    ld a, [hl+]                                   ; $4140: $2a
    ld e, e                                       ; $4141: $5b
    ei                                            ; $4142: $fb
    dec bc                                        ; $4143: $0b
    sub a                                         ; $4144: $97
    ld d, c                                       ; $4145: $51
    jp z, $4ee8                                   ; $4146: $ca $e8 $4e

    rst $10                                       ; $4149: $d7
    sub c                                         ; $414a: $91
    ld d, h                                       ; $414b: $54
    ld a, d                                       ; $414c: $7a
    ld a, d                                       ; $414d: $7a
    ld h, h                                       ; $414e: $64
    ld d, e                                       ; $414f: $53
    ld [hl], b                                    ; $4150: $70
    xor l                                         ; $4151: $ad
    and $aa                                       ; $4152: $e6 $aa
    ld a, [$9b11]                                 ; $4154: $fa $11 $9b
    rla                                           ; $4157: $17
    jp z, $942a                                   ; $4158: $ca $2a $94

    or e                                          ; $415b: $b3
    halt                                          ; $415c: $76
    db $e4                                        ; $415d: $e4
    dec d                                         ; $415e: $15
    dec l                                         ; $415f: $2d
    db $ed                                        ; $4160: $ed
    ld b, a                                       ; $4161: $47
    xor $05                                       ; $4162: $ee $05
    ld d, a                                       ; $4164: $57
    or h                                          ; $4165: $b4
    or h                                          ; $4166: $b4
    cp a                                          ; $4167: $bf
    ld d, a                                       ; $4168: $57
    or h                                          ; $4169: $b4
    or h                                          ; $416a: $b4
    cp a                                          ; $416b: $bf

jr_061_416c:
    ld d, a                                       ; $416c: $57
    or h                                          ; $416d: $b4
    or h                                          ; $416e: $b4
    cp a                                          ; $416f: $bf
    sub a                                         ; $4170: $97
    add [hl]                                      ; $4171: $86
    ld h, a                                       ; $4172: $67
    and h                                         ; $4173: $a4
    sub e                                         ; $4174: $93
    or h                                          ; $4175: $b4
    ret nc                                        ; $4176: $d0

    and [hl]                                      ; $4177: $a6
    add h                                         ; $4178: $84
    ld d, d                                       ; $4179: $52
    ld e, b                                       ; $417a: $58
    ei                                            ; $417b: $fb
    dec bc                                        ; $417c: $0b
    add a                                         ; $417d: $87
    sbc b                                         ; $417e: $98
    ld a, [hl+]                                   ; $417f: $2a
    rst $30                                       ; $4180: $f7
    ld a, l                                       ; $4181: $7d
    rst $18                                       ; $4182: $df
    rst $30                                       ; $4183: $f7
    dec bc                                        ; $4184: $0b
    ld l, l                                       ; $4185: $6d
    and $75                                       ; $4186: $e6 $75
    jr z, jr_061_416c                             ; $4188: $28 $e2

    sbc h                                         ; $418a: $9c
    ld a, c                                       ; $418b: $79
    adc l                                         ; $418c: $8d
    and h                                         ; $418d: $a4
    jr z, jr_061_41f5                             ; $418e: $28 $65

    ld e, $d9                                     ; $4190: $1e $d9
    inc d                                         ; $4192: $14
    db $ec                                        ; $4193: $ec
    add $7b                                       ; $4194: $c6 $7b
    sub a                                         ; $4196: $97
    ld c, b                                       ; $4197: $48
    or c                                          ; $4198: $b1
    db $ec                                        ; $4199: $ec
    ld b, a                                       ; $419a: $47
    and e                                         ; $419b: $a3
    dec sp                                        ; $419c: $3b
    rla                                           ; $419d: $17
    ld [hl], l                                    ; $419e: $75
    ld c, l                                       ; $419f: $4d
    db $ec                                        ; $41a0: $ec
    sbc h                                         ; $41a1: $9c
    ld a, e                                       ; $41a2: $7b
    ld [hl], a                                    ; $41a3: $77
    xor [hl]                                      ; $41a4: $ae
    ld [hl], $f7                                  ; $41a5: $36 $f7
    cp b                                          ; $41a7: $b8
    sbc b                                         ; $41a8: $98
    ld d, a                                       ; $41a9: $57
    jp $86b3                                      ; $41aa: $c3 $b3 $86


    ld h, e                                       ; $41ad: $63
    ld c, d                                       ; $41ae: $4a
    ld [hl], c                                    ; $41af: $71
    adc [hl]                                      ; $41b0: $8e
    xor $a4                                       ; $41b1: $ee $a4
    db $ed                                        ; $41b3: $ed
    or c                                          ; $41b4: $b1
    call nc, Call_061_5dd1                        ; $41b5: $d4 $d1 $5d
    ld d, $51                                     ; $41b8: $16 $51
    ld a, e                                       ; $41ba: $7b
    ld [hl], c                                    ; $41bb: $71
    ld c, $2d                                     ; $41bc: $0e $2d
    ld [c], a                                     ; $41be: $e2
    ld h, c                                       ; $41bf: $61
    ld e, d                                       ; $41c0: $5a
    jp z, Jump_061_6b42                           ; $41c1: $ca $42 $6b

    inc c                                         ; $41c4: $0c
    ld a, l                                       ; $41c5: $7d
    ld h, h                                       ; $41c6: $64
    xor b                                         ; $41c7: $a8
    dec l                                         ; $41c8: $2d
    ldh [$df], a                                  ; $41c9: $e0 $df
    ld l, e                                       ; $41cb: $6b
    call nc, $74a9                                ; $41cc: $d4 $a9 $74
    set 7, l                                      ; $41cf: $cb $fd
    ld [bc], a                                    ; $41d1: $02
    db $ed                                        ; $41d2: $ed
    ld a, a                                       ; $41d3: $7f
    db $e4                                        ; $41d4: $e4
    rra                                           ; $41d5: $1f
    ld sp, hl                                     ; $41d6: $f9
    or l                                          ; $41d7: $b5
    rst $28                                       ; $41d8: $ef
    sub d                                         ; $41d9: $92
    ld d, l                                       ; $41da: $55
    and l                                         ; $41db: $a5
    rst $30                                       ; $41dc: $f7
    xor $91                                       ; $41dd: $ee $91
    ccf                                           ; $41df: $3f
    or $aa                                        ; $41e0: $f6 $aa
    ld a, c                                       ; $41e2: $79
    db $e4                                        ; $41e3: $e4
    sub a                                         ; $41e4: $97
    cp d                                          ; $41e5: $ba
    adc b                                         ; $41e6: $88
    ld c, [hl]                                    ; $41e7: $4e
    xor c                                         ; $41e8: $a9
    or h                                          ; $41e9: $b4
    and c                                         ; $41ea: $a1
    ld h, l                                       ; $41eb: $65
    sub l                                         ; $41ec: $95
    ld b, e                                       ; $41ed: $43
    ld a, d                                       ; $41ee: $7a
    xor d                                         ; $41ef: $aa
    db $eb                                        ; $41f0: $eb
    ld c, a                                       ; $41f1: $4f
    ld c, e                                       ; $41f2: $4b
    ei                                            ; $41f3: $fb
    dec bc                                        ; $41f4: $0b

jr_061_41f5:
    sub a                                         ; $41f5: $97
    or $df                                        ; $41f6: $f6 $df
    ld a, [de]                                    ; $41f8: $1a
    ret nc                                        ; $41f9: $d0

    halt                                          ; $41fa: $76
    ldh a, [$f7]                                  ; $41fb: $f0 $f7
    jr z, jr_061_4267                             ; $41fd: $28 $68

    or h                                          ; $41ff: $b4
    cp a                                          ; $4200: $bf
    db $ed                                        ; $4201: $ed
    pop af                                        ; $4202: $f1
    rst $00                                       ; $4203: $c7
    add hl, sp                                    ; $4204: $39
    add a                                         ; $4205: $87
    and $73                                       ; $4206: $e6 $73
    ld e, [hl]                                    ; $4208: $5e
    ld l, l                                       ; $4209: $6d
    and $39                                       ; $420a: $e6 $39
    add a                                         ; $420c: $87
    sub [hl]                                      ; $420d: $96
    push af                                       ; $420e: $f5
    rst $08                                       ; $420f: $cf
    db $ec                                        ; $4210: $ec
    db $ec                                        ; $4211: $ec
    ld d, b                                       ; $4212: $50
    inc a                                         ; $4213: $3c
    ld b, $29                                     ; $4214: $06 $29
    xor [hl]                                      ; $4216: $ae
    ld c, h                                       ; $4217: $4c
    ld e, e                                       ; $4218: $5b
    dec c                                         ; $4219: $0d
    rst $08                                       ; $421a: $cf
    ld l, $0b                                     ; $421b: $2e $0b
    ld d, d                                       ; $421d: $52
    ld a, [de]                                    ; $421e: $1a
    add c                                         ; $421f: $81
    add hl, sp                                    ; $4220: $39
    inc a                                         ; $4221: $3c
    ld [hl], l                                    ; $4222: $75
    dec c                                         ; $4223: $0d
    ld h, e                                       ; $4224: $63
    ld h, l                                       ; $4225: $65
    ccf                                           ; $4226: $3f
    ld hl, $2d57                                  ; $4227: $21 $57 $2d
    ret z                                         ; $422a: $c8

    ld e, $f9                                     ; $422b: $1e $f9
    sbc a                                         ; $422d: $9f
    ei                                            ; $422e: $fb
    dec b                                         ; $422f: $05
    ld l, l                                       ; $4230: $6d
    and $39                                       ; $4231: $e6 $39
    ld [hl], a                                    ; $4233: $77
    cp c                                          ; $4234: $b9
    ld h, e                                       ; $4235: $63
    add sp, -$23                                  ; $4236: $e8 $dd
    ld [hl], l                                    ; $4238: $75
    ld c, [hl]                                    ; $4239: $4e
    db $10                                        ; $423a: $10
    ld c, h                                       ; $423b: $4c
    sub b                                         ; $423c: $90
    ld d, d                                       ; $423d: $52
    sub l                                         ; $423e: $95
    ld e, [hl]                                    ; $423f: $5e
    cp d                                          ; $4240: $ba
    or l                                          ; $4241: $b5
    rst $28                                       ; $4242: $ef
    jp nc, $ecf0                                  ; $4243: $d2 $f0 $ec

    ld sp, $2d0e                                  ; $4246: $31 $0e $2d
    jp c, $975f                                   ; $4249: $da $5f $97

    add [hl]                                      ; $424c: $86
    ld h, a                                       ; $424d: $67
    push de                                       ; $424e: $d5
    dec a                                         ; $424f: $3d
    ld e, [hl]                                    ; $4250: $5e
    jr z, @+$25                                   ; $4251: $28 $23

    dec l                                         ; $4253: $2d
    inc a                                         ; $4254: $3c
    or h                                          ; $4255: $b4
    ret nc                                        ; $4256: $d0

    halt                                          ; $4257: $76
    ld h, l                                       ; $4258: $65
    ld h, b                                       ; $4259: $60
    halt                                          ; $425a: $76
    ld l, d                                       ; $425b: $6a
    ld a, a                                       ; $425c: $7f
    ld bc, $0717                                  ; $425d: $01 $17 $07
    ld h, h                                       ; $4260: $64
    jp c, Jump_061_7fda                           ; $4261: $da $da $7f

    and [hl]                                      ; $4264: $a6
    ld b, [hl]                                    ; $4265: $46
    ei                                            ; $4266: $fb

jr_061_4267:
    dec bc                                        ; $4267: $0b
    db $ed                                        ; $4268: $ed
    ccf                                           ; $4269: $3f
    ld d, e                                       ; $426a: $53
    ld b, e                                       ; $426b: $43
    dec de                                        ; $426c: $1b
    ld [$5f53], a                                 ; $426d: $ea $53 $5f
    ld d, [hl]                                    ; $4270: $56
    push de                                       ; $4271: $d5
    adc a                                         ; $4272: $8f
    ld [hl+], a                                   ; $4273: $22
    cpl                                           ; $4274: $2f
    call nc, $defd                                ; $4275: $d4 $fd $de
    cp l                                          ; $4278: $bd
    add $ef                                       ; $4279: $c6 $ef
    db $fd                                        ; $427b: $fd
    and e                                         ; $427c: $a3
    rst $10                                       ; $427d: $d7
    ld l, d                                       ; $427e: $6a
    adc [hl]                                      ; $427f: $8e
    db $fc                                        ; $4280: $fc
    cp l                                          ; $4281: $bd
    ld e, d                                       ; $4282: $5a
    or h                                          ; $4283: $b4
    cp a                                          ; $4284: $bf
    sub a                                         ; $4285: $97
    dec sp                                        ; $4286: $3b
    add [hl]                                      ; $4287: $86
    sbc $ad                                       ; $4288: $de $ad
    ld a, l                                       ; $428a: $7d
    db $ed                                        ; $428b: $ed
    ld [hl], c                                    ; $428c: $71
    ld c, b                                       ; $428d: $48
    db $fc                                        ; $428e: $fc
    or d                                          ; $428f: $b2
    jp nc, $a1cc                                  ; $4290: $d2 $cc $a1

    ld sp, hl                                     ; $4293: $f9
    sbc h                                         ; $4294: $9c
    rla                                           ; $4295: $17
    rlca                                          ; $4296: $07

Jump_061_4297:
    ccf                                           ; $4297: $3f
    cp $67                                        ; $4298: $fe $67
    ld d, a                                       ; $429a: $57
    add [hl]                                      ; $429b: $86
    daa                                           ; $429c: $27
    ld c, d                                       ; $429d: $4a
    ld l, e                                       ; $429e: $6b
    ld b, $6b                                     ; $429f: $06 $6b
    rrca                                          ; $42a1: $0f
    or l                                          ; $42a2: $b5
    dec b                                         ; $42a3: $05
    db $fc                                        ; $42a4: $fc
    ld a, e                                       ; $42a5: $7b
    adc l                                         ; $42a6: $8d
    ld a, [hl-]                                   ; $42a7: $3a
    sub l                                         ; $42a8: $95
    ld l, [hl]                                    ; $42a9: $6e
    ld e, c                                       ; $42aa: $59
    inc b                                         ; $42ab: $04
    ld l, d                                       ; $42ac: $6a

jr_061_42ad:
    ld hl, $cc51                                  ; $42ad: $21 $51 $cc
    ld a, e                                       ; $42b0: $7b
    and b                                         ; $42b1: $a0
    call c, Call_000_072f                         ; $42b2: $dc $2f $07
    ld e, h                                       ; $42b5: $5c
    ld d, [hl]                                    ; $42b6: $56
    sbc e                                         ; $42b7: $9b
    dec hl                                        ; $42b8: $2b
    ld bc, $0879                                  ; $42b9: $01 $79 $08
    or d                                          ; $42bc: $b2
    ld c, $bd                                     ; $42bd: $0e $bd
    ld a, e                                       ; $42bf: $7b
    ld a, [hl-]                                   ; $42c0: $3a
    ld b, [hl]                                    ; $42c1: $46
    ld e, l                                       ; $42c2: $5d
    cpl                                           ; $42c3: $2f
    ld c, h                                       ; $42c4: $4c
    ld e, e                                       ; $42c5: $5b
    ei                                            ; $42c6: $fb
    rst $08                                       ; $42c7: $cf
    call nc, $caec                                ; $42c8: $d4 $ec $ca
    ret nz                                        ; $42cb: $c0

    db $ec                                        ; $42cc: $ec
    cp h                                          ; $42cd: $bc
    ld e, a                                       ; $42ce: $5f
    add h                                         ; $42cf: $84
    ret                                           ; $42d0: $c9


    db $dd                                        ; $42d1: $dd
    rst $30                                       ; $42d2: $f7
    dec a                                         ; $42d3: $3d
    ld a, [hl+]                                   ; $42d4: $2a
    ld sp, hl                                     ; $42d5: $f9
    db $ec                                        ; $42d6: $ec
    cp [hl]                                       ; $42d7: $be
    rst $28                                       ; $42d8: $ef
    db $fd                                        ; $42d9: $fd
    adc $b5                                       ; $42da: $ce $b5
    ld a, c                                       ; $42dc: $79
    rst $18                                       ; $42dd: $df
    rst $30                                       ; $42de: $f7
    dec bc                                        ; $42df: $0b
    ld l, l                                       ; $42e0: $6d
    and $3d                                       ; $42e1: $e6 $3d
    call $bea1                                    ; $42e3: $cd $a1 $be
    rst $18                                       ; $42e6: $df
    ld sp, $aca1                                  ; $42e7: $31 $a1 $ac
    ld d, b                                       ; $42ea: $50
    db $d3                                        ; $42eb: $d3
    add e                                         ; $42ec: $83
    ld h, d                                       ; $42ed: $62
    cp c                                          ; $42ee: $b9
    ld [hl], a                                    ; $42ef: $77
    dec e                                         ; $42f0: $1d
    adc h                                         ; $42f1: $8c
    ld a, a                                       ; $42f2: $7f
    ld [hl], a                                    ; $42f3: $77
    ld l, $3c                                     ; $42f4: $2e $3c
    ld b, e                                       ; $42f6: $43
    di                                            ; $42f7: $f3
    xor d                                         ; $42f8: $aa
    push bc                                       ; $42f9: $c5
    jp hl                                         ; $42fa: $e9


    ld a, e                                       ; $42fb: $7b
    rst $10                                       ; $42fc: $d7
    ret nz                                        ; $42fd: $c0

    ld h, e                                       ; $42fe: $63
    sbc c                                         ; $42ff: $99
    ld [hl], e                                    ; $4300: $73
    or l                                          ; $4301: $b5
    db $eb                                        ; $4302: $eb
    ld a, h                                       ; $4303: $7c
    cp a                                          ; $4304: $bf
    db $ed                                        ; $4305: $ed
    and [hl]                                      ; $4306: $a6
    db $d3                                        ; $4307: $d3
    halt                                          ; $4308: $76
    ld [hl], l                                    ; $4309: $75
    sub b                                         ; $430a: $90
    ei                                            ; $430b: $fb
    dec b                                         ; $430c: $05
    ld d, a                                       ; $430d: $57
    sub $ca                                       ; $430e: $d6 $ca
    cp e                                          ; $4310: $bb
    rst $28                                       ; $4311: $ef
    ld a, e                                       ; $4312: $7b
    sub a                                         ; $4313: $97

jr_061_4314:
    ld a, l                                       ; $4314: $7d
    ld e, h                                       ; $4315: $5c
    ld c, h                                       ; $4316: $4c
    ld c, c                                       ; $4317: $49
    rst $28                                       ; $4318: $ef
    ld sp, $f3ee                                  ; $4319: $31 $ee $f3
    ld a, [hl+]                                   ; $431c: $2a
    add l                                         ; $431d: $85
    reti                                          ; $431e: $d9


    ld b, e                                       ; $431f: $43
    jr z, jr_061_42ad                             ; $4320: $28 $8b

    adc l                                         ; $4322: $8d
    xor e                                         ; $4323: $ab
    add b                                         ; $4324: $80
    sub [hl]                                      ; $4325: $96
    db $fd                                        ; $4326: $fd
    ld l, b                                       ; $4327: $68
    db $ed                                        ; $4328: $ed
    adc $07                                       ; $4329: $ce $07
    add d                                         ; $432b: $82
    sbc b                                         ; $432c: $98
    or [hl]                                       ; $432d: $b6
    jr z, jr_061_4314                             ; $432e: $28 $e4

    ld c, b                                       ; $4330: $48
    ld e, l                                       ; $4331: $5d
    add $19                                       ; $4332: $c6 $19
    ld [hl], d                                    ; $4334: $72
    sbc a                                         ; $4335: $9f
    ld b, a                                       ; $4336: $47
    ld [$d8b2], a                                 ; $4337: $ea $b2 $d8
    jr c, jr_061_4370                             ; $433a: $38 $34

    adc a                                         ; $433c: $8f
    ld [hl], h                                    ; $433d: $74
    rst $30                                       ; $433e: $f7
    db $fd                                        ; $433f: $fd
    ld [bc], a                                    ; $4340: $02
    db $ed                                        ; $4341: $ed
    pop af                                        ; $4342: $f1
    ccf                                           ; $4343: $3f
    ld [hl], d                                    ; $4344: $72
    rst $00                                       ; $4345: $c7
    xor l                                         ; $4346: $ad
    ld b, d                                       ; $4347: $42
    add hl, de                                    ; $4348: $19
    sbc d                                         ; $4349: $9a
    rst $10                                       ; $434a: $d7
    and c                                         ; $434b: $a1
    ld a, b                                       ; $434c: $78
    ld d, b                                       ; $434d: $50
    inc l                                         ; $434e: $2c
    rst $20                                       ; $434f: $e7
    cp h                                          ; $4350: $bc
    db $ed                                        ; $4351: $ed
    ccf                                           ; $4352: $3f
    ld d, e                                       ; $4353: $53
    ld b, e                                       ; $4354: $43
    ld e, e                                       ; $4355: $5b
    and l                                         ; $4356: $a5
    ldh a, [rNR10]                                ; $4357: $f0 $10
    jp z, $e362                                   ; $4359: $ca $62 $e3

    ld a, [hl+]                                   ; $435c: $2a
    and b                                         ; $435d: $a0
    ld h, l                                       ; $435e: $65
    ccf                                           ; $435f: $3f
    jp c, $e503                                   ; $4360: $da $03 $e5

    sbc $01                                       ; $4363: $de $01
    sub a                                         ; $4365: $97
    push bc                                       ; $4366: $c5
    add $fd                                       ; $4367: $c6 $fd
    adc $0b                                       ; $4369: $ce $0b
    rst $08                                       ; $436b: $cf
    ld a, [de]                                    ; $436c: $1a
    add c                                         ; $436d: $81
    cp a                                          ; $436e: $bf
    add b                                         ; $436f: $80

jr_061_4370:
    cp d                                          ; $4370: $ba
    ld e, a                                       ; $4371: $5f
    rla                                           ; $4372: $17
    add c                                         ; $4373: $81
    ldh [$e8], a                                  ; $4374: $e0 $e8
    adc $59                                       ; $4376: $ce $59
    sub $ea                                       ; $4378: $d6 $ea
    rra                                           ; $437a: $1f
    dec hl                                        ; $437b: $2b
    ld l, l                                       ; $437c: $6d
    xor $8e                                       ; $437d: $ee $8e
    sbc l                                         ; $437f: $9d
    rst $30                                       ; $4380: $f7
    dec bc                                        ; $4381: $0b
    ld d, a                                       ; $4382: $57
    ld l, d                                       ; $4383: $6a
    ld c, b                                       ; $4384: $48
    jp c, $bcd0                                   ; $4385: $da $d0 $bc

    ld hl, sp-$19                                 ; $4388: $f8 $e7
    sbc b                                         ; $438a: $98

Call_061_438b:
    jp nz, Jump_000_356b                          ; $438b: $c2 $6b $35

    rst $28                                       ; $438e: $ef
    rla                                           ; $438f: $17
    sub a                                         ; $4390: $97
    inc c                                         ; $4391: $0c
    dec l                                         ; $4392: $2d
    adc e                                         ; $4393: $8b
    xor b                                         ; $4394: $a8
    ld e, c                                       ; $4395: $59
    reti                                          ; $4396: $d9


    ld l, e                                       ; $4397: $6b
    inc b                                         ; $4398: $04
    cp $02                                        ; $4399: $fe $02
    adc d                                         ; $439b: $8a
    pop hl                                        ; $439c: $e1
    pop af                                        ; $439d: $f1
    xor d                                         ; $439e: $aa
    ld a, [$317d]                                 ; $439f: $fa $7d $31
    xor h                                         ; $43a2: $ac
    ld d, e                                       ; $43a3: $53
    jp nc, Jump_000_2903                          ; $43a4: $d2 $03 $29

    ld l, c                                       ; $43a7: $69
    inc b                                         ; $43a8: $04
    ld c, e                                       ; $43a9: $4b
    dec a                                         ; $43aa: $3d
    ld c, $d0                                     ; $43ab: $0e $d0
    jp nz, $8110                                  ; $43ad: $c2 $10 $81

    ld a, [$410c]                                 ; $43b0: $fa $0c $41
    xor $5d                                       ; $43b3: $ee $5d
    sbc e                                         ; $43b5: $9b
    db $ec                                        ; $43b6: $ec
    sbc h                                         ; $43b7: $9c
    ld [hl], e                                    ; $43b8: $73
    ld sp, $8614                                  ; $43b9: $31 $14 $86
    ld [c], a                                     ; $43bc: $e2
    dec [hl]                                      ; $43bd: $35
    ld e, h                                       ; $43be: $5c
    ld sp, hl                                     ; $43bf: $f9
    dec bc                                        ; $43c0: $0b
    and d                                         ; $43c1: $a2
    cp e                                          ; $43c2: $bb
    rlca                                          ; $43c3: $07
    ld [hl], e                                    ; $43c4: $73
    rlca                                          ; $43c5: $07
    ld d, l                                       ; $43c6: $55
    ld hl, $f79d                                  ; $43c7: $21 $9d $f7
    jp c, Jump_061_73cc                           ; $43ca: $da $cc $73

    ld c, $9d                                     ; $43cd: $0e $9d
    ld d, c                                       ; $43cf: $51
    ret z                                         ; $43d0: $c8

    push bc                                       ; $43d1: $c5
    ld d, b                                       ; $43d2: $50
    jr jr_061_43df                                ; $43d3: $18 $0a

    db $d3                                        ; $43d5: $d3
    or $79                                        ; $43d6: $f6 $79
    sub a                                         ; $43d8: $97
    ld c, h                                       ; $43d9: $4c
    ld a, l                                       ; $43da: $7d
    sbc c                                         ; $43db: $99
    or d                                          ; $43dc: $b2
    and b                                         ; $43dd: $a0
    rla                                           ; $43de: $17

jr_061_43df:
    add l                                         ; $43df: $85
    xor h                                         ; $43e0: $ac
    jp z, $ad7d                                   ; $43e1: $ca $7d $ad

    and $d0                                       ; $43e4: $e6 $d0
    adc e                                         ; $43e6: $8b
    ld b, d                                       ; $43e7: $42
    ld d, [hl]                                    ; $43e8: $56
    push hl                                       ; $43e9: $e5
    sbc $a1                                       ; $43ea: $de $a1
    ld a, b                                       ; $43ec: $78
    ld a, d                                       ; $43ed: $7a
    or d                                          ; $43ee: $b2
    di                                            ; $43ef: $f3
    ld a, [hl]                                    ; $43f0: $7e
    ld bc, $e66d                                  ; $43f1: $01 $6d $e6
    xor c                                         ; $43f4: $a9
    cpl                                           ; $43f5: $2f
    and e                                         ; $43f6: $a3
    cp e                                          ; $43f7: $bb
    db $ec                                        ; $43f8: $ec
    rst $30                                       ; $43f9: $f7
    xor $34                                       ; $43fa: $ee $34
    ld e, d                                       ; $43fc: $5a
    ei                                            ; $43fd: $fb
    dec bc                                        ; $43fe: $0b
    add a                                         ; $43ff: $87
    sbc b                                         ; $4400: $98
    ld a, [hl+]                                   ; $4401: $2a
    rst $30                                       ; $4402: $f7
    dec bc                                        ; $4403: $0b
    db $ed                                        ; $4404: $ed
    ld [hl], c                                    ; $4405: $71
    ret z                                         ; $4406: $c8

    and c                                         ; $4407: $a1
    ld a, c                                       ; $4408: $79
    dec e                                         ; $4409: $1d
    adc d                                         ; $440a: $8a
    jr c, @+$49                                   ; $440b: $38 $47

    ld e, d                                       ; $440d: $5a
    ret nc                                        ; $440e: $d0

    rst $30                                       ; $440f: $f7
    dec bc                                        ; $4410: $0b
    rlca                                          ; $4411: $07
    ld e, h                                       ; $4412: $5c
    and [hl]                                      ; $4413: $a6
    inc hl                                        ; $4414: $23
    cp d                                          ; $4415: $ba
    dec sp                                        ; $4416: $3b
    ld h, a                                       ; $4417: $67
    ld e, $48                                     ; $4418: $1e $48
    ld c, c                                       ; $441a: $49
    inc hl                                        ; $441b: $23
    ld e, b                                       ; $441c: $58
    ld l, d                                       ; $441d: $6a
    or a                                          ; $441e: $b7
    xor d                                         ; $441f: $aa
    and b                                         ; $4420: $a0
    add d                                         ; $4421: $82
    adc h                                         ; $4422: $8c
    and c                                         ; $4423: $a1
    adc a                                         ; $4424: $8f
    adc h                                         ; $4425: $8c
    sbc l                                         ; $4426: $9d
    ei                                            ; $4427: $fb
    pop de                                        ; $4428: $d1
    add sp, -$32                                  ; $4429: $e8 $ce
    ld a, e                                       ; $442b: $7b
    db $ed                                        ; $442c: $ed
    adc $a9                                       ; $442d: $ce $a9
    cpl                                           ; $442f: $2f
    cp e                                          ; $4430: $bb
    ld h, h                                       ; $4431: $64
    adc l                                         ; $4432: $8d
    call nc, Call_000_078b                        ; $4433: $d4 $8b $07
    cp l                                          ; $4436: $bd
    db $eb                                        ; $4437: $eb
    sub l                                         ; $4438: $95
    di                                            ; $4439: $f3
    inc sp                                        ; $443a: $33
    inc b                                         ; $443b: $04
    ld [hl], c                                    ; $443c: $71
    adc d                                         ; $443d: $8a
    rst $00                                       ; $443e: $c7
    ret nc                                        ; $443f: $d0

    rst $30                                       ; $4440: $f7
    ld a, c                                       ; $4441: $79
    add b                                         ; $4442: $80
    ld d, $86                                     ; $4443: $16 $86
    ld [$3a88], sp                                ; $4445: $08 $88 $3a
    dec a                                         ; $4448: $3d
    dec bc                                        ; $4449: $0b
    add hl, de                                    ; $444a: $19
    dec sp                                        ; $444b: $3b
    and a                                         ; $444c: $a7
    daa                                           ; $444d: $27
    rst $08                                       ; $444e: $cf
    cp l                                          ; $444f: $bd
    dec sp                                        ; $4450: $3b
    rst $10                                       ; $4451: $d7
    ld [$d85f], a                                 ; $4452: $ea $5f $d8
    rst $30                                       ; $4455: $f7
    dec bc                                        ; $4456: $0b
    sub a                                         ; $4457: $97
    scf                                           ; $4458: $37
    ld [hl], e                                    ; $4459: $73
    xor b                                         ; $445a: $a8
    cpl                                           ; $445b: $2f
    ld [bc], a                                    ; $445c: $02
    ld b, c                                       ; $445d: $41
    rst $20                                       ; $445e: $e7
    inc l                                         ; $445f: $2c
    ld l, e                                       ; $4460: $6b
    push af                                       ; $4461: $f5
    cpl                                           ; $4462: $2f
    db $ec                                        ; $4463: $ec
    cp c                                          ; $4464: $b9
    ld [hl], a                                    ; $4465: $77
    rst $20                                       ; $4466: $e7
    inc l                                         ; $4467: $2c
    ei                                            ; $4468: $fb
    add d                                         ; $4469: $82
    sub [hl]                                      ; $446a: $96
    add c                                         ; $446b: $81
    sub h                                         ; $446c: $94
    inc [hl]                                      ; $446d: $34
    add d                                         ; $446e: $82
    and l                                         ; $446f: $a5
    ld c, $f5                                     ; $4470: $0e $f5
    add c                                         ; $4472: $81
    ld d, d                                       ; $4473: $52
    ld e, [hl]                                    ; $4474: $5e
    or c                                          ; $4475: $b1
    jr z, @+$0d                                   ; $4476: $28 $0b

    ld a, [hl-]                                   ; $4478: $3a
    ld l, c                                       ; $4479: $69
    db $e3                                        ; $447a: $e3
    call nc, $a1a8                                ; $447b: $d4 $a8 $a1
    ld h, l                                       ; $447e: $65
    ld c, a                                       ; $447f: $4f
    ret nz                                        ; $4480: $c0

    ld hl, $40f0                                  ; $4481: $21 $f0 $40
    ld c, d                                       ; $4484: $4a
    ld a, [de]                                    ; $4485: $1a
    pop bc                                        ; $4486: $c1
    ld d, d                                       ; $4487: $52
    cp e                                          ; $4488: $bb
    ld d, l                                       ; $4489: $55
    dec b                                         ; $448a: $05
    dec d                                         ; $448b: $15
    db $e4                                        ; $448c: $e4
    ld e, [hl]                                    ; $448d: $5e
    sbc e                                         ; $448e: $9b
    ld h, l                                       ; $448f: $65
    ld sp, $d5f4                                  ; $4490: $31 $f4 $d5
    and $1a                                       ; $4493: $e6 $1a
    dec e                                         ; $4495: $1d
    ld h, d                                       ; $4496: $62
    rrca                                          ; $4497: $0f
    ret nc                                        ; $4498: $d0

    jp nz, $0110                                  ; $4499: $c2 $10 $01

    ld d, c                                       ; $449c: $51
    and a                                         ; $449d: $a7
    ld a, c                                       ; $449e: $79
    and c                                         ; $449f: $a1
    ld c, h                                       ; $44a0: $4c
    ld a, l                                       ; $44a1: $7d
    cp $3d                                        ; $44a2: $fe $3d
    inc d                                         ; $44a4: $14
    xor b                                         ; $44a5: $a8
    ld c, [hl]                                    ; $44a6: $4e
    di                                            ; $44a7: $f3
    cp l                                          ; $44a8: $bd
    add e                                         ; $44a9: $83
    add $46                                       ; $44aa: $c6 $46
    add d                                         ; $44ac: $82
    sub h                                         ; $44ad: $94
    ld hl, $40f0                                  ; $44ae: $21 $f0 $40
    ld c, d                                       ; $44b1: $4a
    ld a, [de]                                    ; $44b2: $1a
    pop bc                                        ; $44b3: $c1
    ld d, d                                       ; $44b4: $52
    rst $10                                       ; $44b5: $d7
    xor l                                         ; $44b6: $ad
    ld a, [hl+]                                   ; $44b7: $2a
    xor b                                         ; $44b8: $a8
    jr nz, jr_061_44c6                            ; $44b9: $20 $0b

    ld h, l                                       ; $44bb: $65
    push bc                                       ; $44bc: $c5
    ld [hl+], a                                   ; $44bd: $22
    ld a, [hl]                                    ; $44be: $7e
    ld a, [hl+]                                   ; $44bf: $2a
    or l                                          ; $44c0: $b5
    xor h                                         ; $44c1: $ac
    xor d                                         ; $44c2: $aa
    ret nc                                        ; $44c3: $d0

    dec l                                         ; $44c4: $2d
    ld [hl], l                                    ; $44c5: $75

jr_061_44c6:
    pop hl                                        ; $44c6: $e1
    ret                                           ; $44c7: $c9


    ld h, $7a                                     ; $44c8: $26 $7a
    ld d, c                                       ; $44ca: $51
    ret z                                         ; $44cb: $c8

    add c                                         ; $44cc: $81
    sub h                                         ; $44cd: $94
    inc [hl]                                      ; $44ce: $34
    add d                                         ; $44cf: $82
    and l                                         ; $44d0: $a5
    ld a, [hl-]                                   ; $44d1: $3a
    rst $28                                       ; $44d2: $ef
    ld e, l                                       ; $44d3: $5d
    call c, $281c                                 ; $44d4: $dc $1c $28
    push hl                                       ; $44d7: $e5
    add c                                         ; $44d8: $81
    ldh [$60], a                                  ; $44d9: $e0 $60
    ld l, l                                       ; $44db: $6d
    sub [hl]                                      ; $44dc: $96
    ld b, l                                       ; $44dd: $45
    ld hl, $3a1b                                  ; $44de: $21 $1b $3a
    or d                                          ; $44e1: $b2
    ld d, a                                       ; $44e2: $57
    ld d, l                                       ; $44e3: $55
    adc b                                         ; $44e4: $88
    rst $28                                       ; $44e5: $ef
    ld e, l                                       ; $44e6: $5d
    ld d, c                                       ; $44e7: $51
    ld d, $5b                                     ; $44e8: $16 $5b
    ld [hl], b                                    ; $44ea: $70
    and b                                         ; $44eb: $a0
    sub h                                         ; $44ec: $94
    rst $00                                       ; $44ed: $c7
    ret nc                                        ; $44ee: $d0

    dec de                                        ; $44ef: $1b
    cp a                                          ; $44f0: $bf
    ld a, b                                       ; $44f1: $78
    ld de, $8735                                  ; $44f2: $11 $35 $87
    ld a, [$9fc8]                                 ; $44f5: $fa $c8 $9f
    ld b, e                                       ; $44f8: $43
    xor a                                         ; $44f9: $af
    ld e, d                                       ; $44fa: $5a
    push de                                       ; $44fb: $d5
    add c                                         ; $44fc: $81
    sub h                                         ; $44fd: $94
    inc [hl]                                      ; $44fe: $34
    add d                                         ; $44ff: $82
    and l                                         ; $4500: $a5
    ld a, [hl-]                                   ; $4501: $3a
    rst $10                                       ; $4502: $d7

Call_061_4503:
    ld l, d                                       ; $4503: $6a
    xor [hl]                                      ; $4504: $ae
    ld b, e                                       ; $4505: $43
    ld h, l                                       ; $4506: $65
    set 5, b                                      ; $4507: $cb $e8
    ld l, $2b                                     ; $4509: $2e $2b
    ccf                                           ; $450b: $3f
    ld e, $42                                     ; $450c: $1e $42
    cp c                                          ; $450e: $b9
    ld e, a                                       ; $450f: $5f
    ld l, l                                       ; $4510: $6d
    ld a, [$e69e]                                 ; $4511: $fa $9e $e6
    adc d                                         ; $4514: $8a
    ld d, e                                       ; $4515: $53
    cp h                                          ; $4516: $bc
    adc b                                         ; $4517: $88
    jp c, $eb8b                                   ; $4518: $da $8b $eb

    ld e, $e3                                     ; $451b: $1e $e3
    ld e, $28                                     ; $451d: $1e $28
    or h                                          ; $451f: $b4
    sub c                                         ; $4520: $91
    ld sp, $a1d4                                  ; $4521: $31 $d4 $a1
    ld a, $f2                                     ; $4524: $3e $f2
    rst $20                                       ; $4526: $e7
    cp d                                          ; $4527: $ba
    and [hl]                                      ; $4528: $a6
    ld a, [c]                                     ; $4529: $f2
    cp l                                          ; $452a: $bd
    inc bc                                        ; $452b: $03
    ld l, $53                                     ; $452c: $2e $53
    ld d, $74                                     ; $452e: $16 $74
    xor $f7                                       ; $4530: $ee $f7
    xor $34                                       ; $4532: $ee $34
    ld a, d                                       ; $4534: $7a
    add sp, $45                                   ; $4535: $e8 $45
    db $dd                                        ; $4537: $dd
    sub l                                         ; $4538: $95
    dec a                                         ; $4539: $3d
    dec a                                         ; $453a: $3d
    reti                                          ; $453b: $d9


    ld a, c                                       ; $453c: $79
    cp a                                          ; $453d: $bf
    sub a                                         ; $453e: $97
    sbc e                                         ; $453f: $9b
    ld c, [hl]                                    ; $4540: $4e
    dec de                                        ; $4541: $1b
    db $dd                                        ; $4542: $dd
    ld h, l                                       ; $4543: $65

jr_061_4544:
    ld c, a                                       ; $4544: $4f
    ld [hl], e                                    ; $4545: $73
    and h                                         ; $4546: $a4
    ld a, e                                       ; $4547: $7b
    ld [hl], a                                    ; $4548: $77
    ld a, d                                       ; $4549: $7a
    push de                                       ; $454a: $d5
    dec a                                         ; $454b: $3d
    ld e, [hl]                                    ; $454c: $5e
    and a                                         ; $454d: $a7
    and h                                         ; $454e: $a4
    add a                                         ; $454f: $87
    and $fb                                       ; $4550: $e6 $fb
    dec b                                         ; $4552: $05
    ld d, a                                       ; $4553: $57
    cp $3a                                        ; $4554: $fe $3a
    pop de                                        ; $4556: $d1
    rst $10                                       ; $4557: $d7
    ld l, d                                       ; $4558: $6a
    xor $f3                                       ; $4559: $ee $f3
    ld d, b                                       ; $455b: $50
    rra                                           ; $455c: $1f
    jr z, jr_061_4544                             ; $455d: $28 $e5

    ld d, l                                       ; $455f: $55
    ld b, $a5                                     ; $4560: $06 $a5
    sbc h                                         ; $4562: $9c
    ld b, e                                       ; $4563: $43
    jr z, jr_061_45d1                             ; $4564: $28 $6b

    dec [hl]                                      ; $4566: $35
    ld h, a                                       ; $4567: $67
    add hl, de                                    ; $4568: $19
    add a                                         ; $4569: $87
    inc d                                         ; $456a: $14
    db $ed                                        ; $456b: $ed
    cpl                                           ; $456c: $2f
    add a                                         ; $456d: $87
    jp nz, $d433                                  ; $456e: $c2 $33 $d4

    rla                                           ; $4571: $17
    ld b, e                                       ; $4572: $43
    cp a                                          ; $4573: $bf
    ld e, a                                       ; $4574: $5f
    rst $10                                       ; $4575: $d7
    pop bc                                        ; $4576: $c1
    xor d                                         ; $4577: $aa
    db $eb                                        ; $4578: $eb
    xor d                                         ; $4579: $aa
    push bc                                       ; $457a: $c5
    ld l, c                                       ; $457b: $69
    jp c, Jump_061_7fda                           ; $457c: $da $da $7f

    and [hl]                                      ; $457f: $a6
    and $7e                                       ; $4580: $e6 $7e
    ld bc, $fa6d                                  ; $4582: $01 $6d $fa
    xor d                                         ; $4585: $aa
    ld a, [$dd7d]                                 ; $4586: $fa $7d $dd
    add sp, -$17                                  ; $4589: $e8 $e9
    ld l, b                                       ; $458b: $68
    adc c                                         ; $458c: $89
    ld b, d                                       ; $458d: $42
    jp nc, $fed6                                  ; $458e: $d2 $d6 $fe

    inc sp                                        ; $4591: $33
    dec [hl]                                      ; $4592: $35
    rst $30                                       ; $4593: $f7
    dec bc                                        ; $4594: $0b
    sub a                                         ; $4595: $97
    ld c, b                                       ; $4596: $48
    or c                                          ; $4597: $b1
    inc c                                         ; $4598: $0c
    and h                                         ; $4599: $a4
    and h                                         ; $459a: $a4
    ld de, $d52c                                  ; $459b: $11 $2c $d5
    add hl, sp                                    ; $459e: $39
    jp nc, $8209                                  ; $459f: $d2 $09 $82

    and [hl]                                      ; $45a2: $a6
    xor l                                         ; $45a3: $ad
    db $fd                                        ; $45a4: $fd
    ld h, a                                       ; $45a5: $67
    ld l, d                                       ; $45a6: $6a
    xor $17                                       ; $45a7: $ee $17
    ld l, l                                       ; $45a9: $6d
    and $39                                       ; $45aa: $e6 $39
    rst $30                                       ; $45ac: $f7
    dec sp                                        ; $45ad: $3b
    rst $10                                       ; $45ae: $d7
    and $2c                                       ; $45af: $e6 $2c
    adc e                                         ; $45b1: $8b
    ld [de], a                                    ; $45b2: $12
    cp d                                          ; $45b3: $ba
    ld e, $71                                     ; $45b4: $1e $71
    dec c                                         ; $45b6: $0d
    xor l                                         ; $45b7: $ad
    ld a, [c]                                     ; $45b8: $f2

jr_061_45b9:
    ld h, e                                       ; $45b9: $63
    db $d3                                        ; $45ba: $d3
    sub $fe                                       ; $45bb: $d6 $fe
    inc sp                                        ; $45bd: $33
    dec [hl]                                      ; $45be: $35
    rst $30                                       ; $45bf: $f7
    dec bc                                        ; $45c0: $0b
    sub a                                         ; $45c1: $97
    ld e, d                                       ; $45c2: $5a
    ret nc                                        ; $45c3: $d0

    add hl, sp                                    ; $45c4: $39
    call nc, Call_061_5e67                        ; $45c5: $d4 $67 $5e
    add hl, bc                                    ; $45c8: $09
    ret z                                         ; $45c9: $c8

    xor e                                         ; $45ca: $ab
    ld l, h                                       ; $45cb: $6c
    call c, Call_061_45e7                         ; $45cc: $dc $e7 $45
    jr nz, jr_061_45b9                            ; $45cf: $20 $e8

jr_061_45d1:
    jp hl                                         ; $45d1: $e9


    ret                                           ; $45d2: $c9


    adc $b5                                       ; $45d3: $ce $b5
    sbc d                                         ; $45d5: $9a
    xor e                                         ; $45d6: $ab
    ld a, [hl+]                                   ; $45d7: $2a
    ld [hl], h                                    ; $45d8: $74
    srl c                                         ; $45d9: $cb $39
    cpl                                           ; $45db: $2f
    add a                                         ; $45dc: $87
    xor b                                         ; $45dd: $a8
    ld h, l                                       ; $45de: $65
    dec h                                         ; $45df: $25
    ld [hl], l                                    ; $45e0: $75
    ld b, c                                       ; $45e1: $41
    jr z, jr_061_4620                             ; $45e2: $28 $3c

    ld b, a                                       ; $45e4: $47
    db $ec                                        ; $45e5: $ec
    sbc h                                         ; $45e6: $9c

Call_061_45e7:
    ld e, [hl]                                    ; $45e7: $5e
    add hl, hl                                    ; $45e8: $29
    jr jr_061_466a                                ; $45e9: $18 $7f

    jp hl                                         ; $45eb: $e9


    ld d, b                                       ; $45ec: $50
    cp h                                          ; $45ed: $bc
    sub d                                         ; $45ee: $92
    sub h                                         ; $45ef: $94
    jp z, $d981                                   ; $45f0: $ca $81 $d9

    ld a, c                                       ; $45f3: $79
    xor a                                         ; $45f4: $af
    call $ae73                                    ; $45f5: $cd $73 $ae
    add [hl]                                      ; $45f8: $86
    ld h, a                                       ; $45f9: $67
    rst $08                                       ; $45fa: $cf
    cpl                                           ; $45fb: $2f
    ld h, d                                       ; $45fc: $62
    halt                                          ; $45fd: $76
    ld l, $0a                                     ; $45fe: $2e $0a
    add hl, sp                                    ; $4600: $39
    dec a                                         ; $4601: $3d
    reti                                          ; $4602: $d9


    cp c                                          ; $4603: $b9
    ld d, b                                       ; $4604: $50
    or $05                                        ; $4605: $f6 $05
    db $d3                                        ; $4607: $d3
    ld [hl], e                                    ; $4608: $73
    rlca                                          ; $4609: $07
    ld d, l                                       ; $460a: $55
    ld hl, $5207                                  ; $460b: $21 $07 $52
    jp nc, $9608                                  ; $460e: $d2 $08 $96

    ld [$5fbc], a                                 ; $4611: $ea $bc $5f
    rlca                                          ; $4614: $07
    dec l                                         ; $4615: $2d
    inc hl                                        ; $4616: $23
    push af                                       ; $4617: $f5
    xor d                                         ; $4618: $aa

jr_061_4619:
    ld h, [hl]                                    ; $4619: $66
    ld b, c                                       ; $461a: $41
    ld [hl], a                                    ; $461b: $77
    jr z, jr_061_4619                             ; $461c: $28 $fb

    inc a                                         ; $461e: $3c
    ld a, [c]                                     ; $461f: $f2

jr_061_4620:
    rst $00                                       ; $4620: $c7
    ld e, $dd                                     ; $4621: $1e $dd
    jp hl                                         ; $4623: $e9


    ld a, [hl-]                                   ; $4624: $3a
    call z, Call_061_5c5f                         ; $4625: $cc $5f $5c
    dec d                                         ; $4628: $15
    ld [$f256], sp                                ; $4629: $08 $56 $f2
    dec bc                                        ; $462c: $0b
    ld d, [hl]                                    ; $462d: $56
    push hl                                       ; $462e: $e5
    ld e, h                                       ; $462f: $5c
    xor e                                         ; $4630: $ab
    ld c, c                                       ; $4631: $49
    dec de                                        ; $4632: $1b
    add hl, de                                    ; $4633: $19
    ld b, e                                       ; $4634: $43
    db $dd                                        ; $4635: $dd
    dec h                                         ; $4636: $25
    ld l, e                                       ; $4637: $6b
    ld [hl], l                                    ; $4638: $75
    ld e, l                                       ; $4639: $5d
    add hl, hl                                    ; $463a: $29
    rst $20                                       ; $463b: $e7
    ret nc                                        ; $463c: $d0

    rst $08                                       ; $463d: $cf
    cp l                                          ; $463e: $bd
    bit 0, e                                      ; $463f: $cb $43
    jp hl                                         ; $4641: $e9


    sbc [hl]                                      ; $4642: $9e

jr_061_4643:
    sbc [hl]                                      ; $4643: $9e
    db $ec                                        ; $4644: $ec
    sbc h                                         ; $4645: $9c
    ld a, [$12b2]                                 ; $4646: $fa $b2 $12
    sub b                                         ; $4649: $90
    ld d, a                                       ; $464a: $57
    jr nz, jr_061_4643                            ; $464b: $20 $f6

    inc l                                         ; $464d: $2c
    xor e                                         ; $464e: $ab
    adc a                                         ; $464f: $8f
    sbc $bd                                       ; $4650: $de $bd
    ld a, [$d938]                                 ; $4652: $fa $38 $d9
    ld c, c                                       ; $4655: $49
    dec de                                        ; $4656: $1b
    add hl, de                                    ; $4657: $19
    ld b, e                                       ; $4658: $43
    db $dd                                        ; $4659: $dd
    di                                            ; $465a: $f3
    ld h, l                                       ; $465b: $65
    ld c, c                                       ; $465c: $49
    ld c, l                                       ; $465d: $4d
    rst $20                                       ; $465e: $e7
    ld h, d                                       ; $465f: $62
    db $e3                                        ; $4660: $e3
    ret nc                                        ; $4661: $d0

    rst $08                                       ; $4662: $cf
    db $fd                                        ; $4663: $fd
    ld [bc], a                                    ; $4664: $02
    db $ed                                        ; $4665: $ed
    cp a                                          ; $4666: $bf
    inc h                                         ; $4667: $24
    jr nz, jr_061_46d7                            ; $4668: $20 $6d

jr_061_466a:
    ld h, h                                       ; $466a: $64
    inc e                                         ; $466b: $1c
    ld [hl], d                                    ; $466c: $72
    adc $a1                                       ; $466d: $ce $a1
    ld [hl], e                                    ; $466f: $73
    and $95                                       ; $4670: $e6 $95
    add b                                         ; $4672: $80
    cp h                                          ; $4673: $bc
    jp z, Jump_061_7dc6                           ; $4674: $ca $c6 $7d

    ld e, [hl]                                    ; $4677: $5e
    scf                                           ; $4678: $37
    ld a, d                                       ; $4679: $7a
    adc [hl]                                      ; $467a: $8e
    ret c                                         ; $467b: $d8

    add hl, sp                                    ; $467c: $39
    sub b                                         ; $467d: $90
    sub d                                         ; $467e: $92
    ld b, [hl]                                    ; $467f: $46
    or b                                          ; $4680: $b0
    ld d, h                                       ; $4681: $54
    rst $20                                       ; $4682: $e7
    ld e, d                                       ; $4683: $5a
    call Call_000_1555                            ; $4684: $cd $55 $15
    cp d                                          ; $4687: $ba
    and l                                         ; $4688: $a5
    ld l, $3c                                     ; $4689: $2e $3c
    reti                                          ; $468b: $d9


    ld b, h                                       ; $468c: $44
    sbc a                                         ; $468d: $9f
    di                                            ; $468e: $f3
    ld [bc], a                                    ; $468f: $02
    ld l, l                                       ; $4690: $6d
    ld a, [$8c74]                                 ; $4691: $fa $74 $8c
    inc [hl]                                      ; $4694: $34
    dec e                                         ; $4695: $1d
    sbc l                                         ; $4696: $9d
    sub e                                         ; $4697: $93
    and b                                         ; $4698: $a0
    add [hl]                                      ; $4699: $86
    ret nz                                        ; $469a: $c0

    db $eb                                        ; $469b: $eb
    ld d, [hl]                                    ; $469c: $56
    dec d                                         ; $469d: $15
    ld d, h                                       ; $469e: $54
    db $10                                        ; $469f: $10
    jp c, $f8c8                                   ; $46a0: $da $c8 $f8

    rra                                           ; $46a3: $1f
    xor c                                         ; $46a4: $a9
    ld a, l                                       ; $46a5: $7d
    sub a                                         ; $46a6: $97
    add hl, de                                    ; $46a7: $19
    rlca                                          ; $46a8: $07
    ld b, e                                       ; $46a9: $43
    xor a                                         ; $46aa: $af
    ld d, d                                       ; $46ab: $52
    jp nc, Jump_061_492b                          ; $46ac: $d2 $2b $49

    xor c                                         ; $46af: $a9
    inc e                                         ; $46b0: $1c
    sbc b                                         ; $46b1: $98
    sbc l                                         ; $46b2: $9d
    ld b, e                                       ; $46b3: $43
    ld a, l                                       ; $46b4: $7d
    push de                                       ; $46b5: $d5
    add hl, sp                                    ; $46b6: $39
    jp nc, $50b9                                  ; $46b7: $d2 $b9 $50

    add [hl]                                      ; $46ba: $86
    adc $7b                                       ; $46bb: $ce $7b
    rlca                                          ; $46bd: $07
    ld e, h                                       ; $46be: $5c
    ld d, [hl]                                    ; $46bf: $56
    sbc e                                         ; $46c0: $9b
    sub e                                         ; $46c1: $93
    ld d, b                                       ; $46c2: $50
    call z, $e90b                                 ; $46c3: $cc $0b $e9
    ld a, [c]                                     ; $46c6: $f2
    dec h                                         ; $46c7: $25
    call z, $cabc                                 ; $46c8: $cc $bc $ca
    ld b, [hl]                                    ; $46cb: $46
    jp c, $cb1e                                   ; $46cc: $da $1e $cb

    ret nc                                        ; $46cf: $d0

    cp h                                          ; $46d0: $bc
    xor b                                         ; $46d1: $a8
    sbc c                                         ; $46d2: $99
    jp $c5fc                                      ; $46d3: $c3 $fc $c5


    add hl, sp                                    ; $46d6: $39

jr_061_46d7:
    add [hl]                                      ; $46d7: $86
    cp [hl]                                       ; $46d8: $be
    rst $08                                       ; $46d9: $cf
    inc de                                        ; $46da: $13
    ld c, l                                       ; $46db: $4d
    push af                                       ; $46dc: $f5
    ld l, d                                       ; $46dd: $6a
    ld [hl], e                                    ; $46de: $73
    add sp, -$74                                  ; $46df: $e8 $8c
    ld b, d                                       ; $46e1: $42
    xor [hl]                                      ; $46e2: $ae
    db $e4                                        ; $46e3: $e4
    adc a                                         ; $46e4: $8f
    adc l                                         ; $46e5: $8d
    ld e, $dd                                     ; $46e6: $1e $dd
    ld h, l                                       ; $46e8: $65
    ld l, b                                       ; $46e9: $68
    ld e, [hl]                                    ; $46ea: $5e
    ld l, b                                       ; $46eb: $68
    db $dd                                        ; $46ec: $dd
    cpl                                           ; $46ed: $2f
    ld l, l                                       ; $46ee: $6d
    ld sp, hl                                     ; $46ef: $f9
    adc e                                         ; $46f0: $8b
    di                                            ; $46f1: $f3
    sbc h                                         ; $46f2: $9c
    rla                                           ; $46f3: $17
    add h                                         ; $46f4: $84
    ret                                           ; $46f5: $c9


    db $dd                                        ; $46f6: $dd
    rst $30                                       ; $46f7: $f7
    cp l                                          ; $46f8: $bd
    ld a, [$7a0b]                                 ; $46f9: $fa $0b $7a
    ld [hl], h                                    ; $46fc: $74
    sub a                                         ; $46fd: $97
    ld h, c                                       ; $46fe: $61
    cp $e2                                        ; $46ff: $fe $e2
    inc a                                         ; $4701: $3c
    ld h, a                                       ; $4702: $67
    rlca                                          ; $4703: $07
    ld e, h                                       ; $4704: $5c
    or $58                                        ; $4705: $f6 $58
    ret c                                         ; $4707: $d8

    ld a, e                                       ; $4708: $7b
    ld b, b                                       ; $4709: $40
    ld b, [hl]                                    ; $470a: $46
    ld [$b482], a                                 ; $470b: $ea $82 $b4
    ld e, l                                       ; $470e: $5d
    sub e                                         ; $470f: $93
    ld hl, $95fa                                  ; $4710: $21 $fa $95
    ld [hl], a                                    ; $4713: $77
    rst $18                                       ; $4714: $df
    rst $30                                       ; $4715: $f7
    ld b, d                                       ; $4716: $42
    cp d                                          ; $4717: $ba
    ld a, h                                       ; $4718: $7c
    add hl, bc                                    ; $4719: $09
    adc e                                         ; $471a: $8b
    sbc d                                         ; $471b: $9a
    cp c                                          ; $471c: $b9
    ld l, e                                       ; $471d: $6b

jr_061_471e:
    ld [hl-], a                                   ; $471e: $32
    ld b, h                                       ; $471f: $44
    cp a                                          ; $4720: $bf
    ld a, [c]                                     ; $4721: $f2
    jr jr_061_471e                                ; $4722: $18 $fa

    ld a, $4f                                     ; $4724: $3e $4f
    inc [hl]                                      ; $4726: $34
    push de                                       ; $4727: $d5
    rst $30                                       ; $4728: $f7
    xor [hl]                                      ; $4729: $ae
    add e                                         ; $472a: $83
    pop af                                        ; $472b: $f1
    rst $28                                       ; $472c: $ef
    xor [hl]                                      ; $472d: $ae
    adc e                                         ; $472e: $8b
    adc l                                         ; $472f: $8d
    xor e                                         ; $4730: $ab
    ld d, $a7                                     ; $4731: $16 $a7
    ld l, c                                       ; $4733: $69
    ld l, e                                       ; $4734: $6b
    rst $38                                       ; $4735: $ff
    sbc c                                         ; $4736: $99
    sbc d                                         ; $4737: $9a
    ei                                            ; $4738: $fb
    dec b                                         ; $4739: $05
    db $ed                                        ; $473a: $ed
    and [hl]                                      ; $473b: $a6
    db $d3                                        ; $473c: $d3
    sub $fe                                       ; $473d: $d6 $fe
    inc sp                                        ; $473f: $33
    dec [hl]                                      ; $4740: $35
    or h                                          ; $4741: $b4
    sub c                                         ; $4742: $91
    pop af                                        ; $4743: $f1
    rst $00                                       ; $4744: $c7
    sub c                                         ; $4745: $91
    ccf                                           ; $4746: $3f
    add a                                         ; $4747: $87
    ld a, [$79d0]                                 ; $4748: $fa $d0 $79
    adc $0b                                       ; $474b: $ce $0b
    rlca                                          ; $474d: $07
    add c                                         ; $474e: $81
    rlca                                          ; $474f: $07
    ld d, d                                       ; $4750: $52
    jp nc, $9608                                  ; $4751: $d2 $08 $96

    jp c, Jump_000_2aad                           ; $4754: $da $ad $2a

    xor b                                         ; $4757: $a8
    jr nz, jr_061_47bd                            ; $4758: $20 $63

    add sp, $3b                                   ; $475a: $e8 $3b
    ccf                                           ; $475c: $3f
    ldh a, [rNR22]                                ; $475d: $f0 $17
    ld d, b                                       ; $475f: $50
    rst $30                                       ; $4760: $f7
    dec bc                                        ; $4761: $0b
    add a                                         ; $4762: $87
    sub e                                         ; $4763: $93
    or h                                          ; $4764: $b4
    and c                                         ; $4765: $a1
    ld a, $e7                                     ; $4766: $3e $e7
    ld [hl], h                                    ; $4768: $74
    db $f4                                        ; $4769: $f4
    and d                                         ; $476a: $a2
    sub b                                         ; $476b: $90
    ei                                            ; $476c: $fb
    cp h                                          ; $476d: $bc
    ld [$3d04], sp                                ; $476e: $08 $04 $3d
    sub b                                         ; $4771: $90
    sub d                                         ; $4772: $92
    ld b, [hl]                                    ; $4773: $46
    or b                                          ; $4774: $b0
    ld d, h                                       ; $4775: $54
    rst $20                                       ; $4776: $e7
    cp l                                          ; $4777: $bd
    ld [hl], $7d                                  ; $4778: $36 $7d
    ld c, a                                       ; $477a: $4f
    ld [hl], e                                    ; $477b: $73
    and h                                         ; $477c: $a4
    ld a, e                                       ; $477d: $7b
    ld [hl], a                                    ; $477e: $77
    ld a, d                                       ; $477f: $7a
    adc l                                         ; $4780: $8d
    ld c, $b1                                     ; $4781: $0e $b1
    and a                                         ; $4783: $a7
    and e                                         ; $4784: $a3
    dec h                                         ; $4785: $25
    ld a, [bc]                                    ; $4786: $0a
    ld c, c                                       ; $4787: $49
    dec de                                        ; $4788: $1b
    add hl, de                                    ; $4789: $19
    ld b, e                                       ; $478a: $43
    dec e                                         ; $478b: $1d
    ld [$a18b], a                                 ; $478c: $ea $8b $a1
    adc a                                         ; $478f: $8f
    db $fc                                        ; $4790: $fc
    or c                                          ; $4791: $b1
    daa                                           ; $4792: $27
    and c                                         ; $4793: $a1
    sbc b                                         ; $4794: $98
    and a                                         ; $4795: $a7
    db $e3                                        ; $4796: $e3
    ld a, [hl]                                    ; $4797: $7e
    inc [hl]                                      ; $4798: $34
    inc [hl]                                      ; $4799: $34
    rst $18                                       ; $479a: $df
    cpl                                           ; $479b: $2f
    rlca                                          ; $479c: $07
    ld e, h                                       ; $479d: $5c
    add $d4                                       ; $479e: $c6 $d4
    ld e, h                                       ; $47a0: $5c
    ld c, h                                       ; $47a1: $4c
    ld b, c                                       ; $47a2: $41
    db $f4                                        ; $47a3: $f4
    ld e, d                                       ; $47a4: $5a
    ld c, l                                       ; $47a5: $4d
    jp c, $0f3e                                   ; $47a6: $da $3e $0f

    call Call_000_39ec                            ; $47a9: $cd $ec $39
    ld h, a                                       ; $47ac: $67
    reti                                          ; $47ad: $d9


    adc a                                         ; $47ae: $8f
    ld b, $52                                     ; $47af: $06 $52
    jp nc, $9608                                  ; $47b1: $d2 $08 $96

    ld [$df14], a                                 ; $47b4: $ea $14 $df
    cpl                                           ; $47b7: $2f
    rlca                                          ; $47b8: $07
    ld e, h                                       ; $47b9: $5c
    ld b, [hl]                                    ; $47ba: $46
    cp $18                                        ; $47bb: $fe $18

jr_061_47bd:
    cp l                                          ; $47bd: $bd
    inc [hl]                                      ; $47be: $34
    rst $28                                       ; $47bf: $ef
    cp [hl]                                       ; $47c0: $be
    rst $28                                       ; $47c1: $ef
    and c                                         ; $47c2: $a1
    ld a, c                                       ; $47c3: $79
    adc $55                                       ; $47c4: $ce $55
    ld c, $f9                                     ; $47c6: $0e $f9
    sub b                                         ; $47c8: $90
    sbc a                                         ; $47c9: $9f
    rst $28                                       ; $47ca: $ef
    rla                                           ; $47cb: $17
    rla                                           ; $47cc: $17
    ld a, a                                       ; $47cd: $7f
    ld e, h                                       ; $47ce: $5c
    inc c                                         ; $47cf: $0c
    add sp, -$6f                                  ; $47d0: $e8 $91
    pop af                                        ; $47d2: $f1
    rst $00                                       ; $47d3: $c7
    ld [hl], l                                    ; $47d4: $75
    xor e                                         ; $47d5: $ab
    ld a, [bc]                                    ; $47d6: $0a
    ld a, [hl+]                                   ; $47d7: $2a
    adc b                                         ; $47d8: $88
    ld a, c                                       ; $47d9: $79
    dec d                                         ; $47da: $15
    adc d                                         ; $47db: $8a
    ld [hl], e                                    ; $47dc: $73
    pop hl                                        ; $47dd: $e1
    add hl, de                                    ; $47de: $19
    ld e, d                                       ; $47df: $5a
    call nz, $9d23                                ; $47e0: $c4 $23 $9d
    rst $30                                       ; $47e3: $f7
    dec bc                                        ; $47e4: $0b
    rst $20                                       ; $47e5: $e7
    push bc                                       ; $47e6: $c5
    jp c, Jump_061_66d7                           ; $47e7: $da $d7 $66

    ld e, c                                       ; $47ea: $59
    inc hl                                        ; $47eb: $23
    add hl, hl                                    ; $47ec: $29
    add d                                         ; $47ed: $82
    db $ec                                        ; $47ee: $ec
    dec a                                         ; $47ef: $3d
    ld d, b                                       ; $47f0: $50
    or h                                          ; $47f1: $b4
    cp a                                          ; $47f2: $bf
    add a                                         ; $47f3: $87
    sbc d                                         ; $47f4: $9a
    ld b, e                                       ; $47f5: $43
    di                                            ; $47f6: $f3
    sbc h                                         ; $47f7: $9c
    ei                                            ; $47f8: $fb
    sbc l                                         ; $47f9: $9d
    ld l, e                                       ; $47fa: $6b
    ld [hl], e                                    ; $47fb: $73
    ld hl, $be5d                                  ; $47fc: $21 $5d $be
    add h                                         ; $47ff: $84
    ei                                            ; $4800: $fb
    dec b                                         ; $4801: $05
    rlca                                          ; $4802: $07
    ld e, h                                       ; $4803: $5c
    add $19                                       ; $4804: $c6 $19
    ld [hl], d                                    ; $4806: $72
    sbc a                                         ; $4807: $9f
    ld b, a                                       ; $4808: $47
    ld [hl], a                                    ; $4809: $77
    ld e, c                                       ; $480a: $59
    or c                                          ; $480b: $b1
    jr z, jr_061_4819                             ; $480c: $28 $0b

    ld a, [hl-]                                   ; $480e: $3a
    add a                                         ; $480f: $87
    ld d, $f1                                     ; $4810: $16 $f1
    ld c, b                                       ; $4812: $48
    rst $20                                       ; $4813: $e7
    db $fd                                        ; $4814: $fd
    ld [bc], a                                    ; $4815: $02
    rst $20                                       ; $4816: $e7
    push bc                                       ; $4817: $c5
    sub l                                         ; $4818: $95

jr_061_4819:
    ld [hl], $34                                  ; $4819: $36 $34
    xor a                                         ; $481b: $af
    add $80                                       ; $481c: $c6 $80
    adc $fb                                       ; $481e: $ce $fb
    dec b                                         ; $4820: $05
    rlca                                          ; $4821: $07
    ld e, h                                       ; $4822: $5c
    add $14                                       ; $4823: $c6 $14
    ld d, c                                       ; $4825: $51
    db $ec                                        ; $4826: $ec
    and c                                         ; $4827: $a1

jr_061_4828:
    ld a, c                                       ; $4828: $79
    ld [de], a                                    ; $4829: $12
    call nc, $fbee                                ; $482a: $d4 $ee $fb
    sbc [hl]                                      ; $482d: $9e
    ld d, b                                       ; $482e: $50
    ld a, [hl-]                                   ; $482f: $3a
    ld a, [hl-]                                   ; $4830: $3a
    rst $28                                       ; $4831: $ef
    ld e, l                                       ; $4832: $5d
    db $f4                                        ; $4833: $f4
    rra                                           ; $4834: $1f
    add sp, $60                                   ; $4835: $e8 $60
    ld e, c                                       ; $4837: $59
    sbc e                                         ; $4838: $9b
    sbc [hl]                                      ; $4839: $9e
    or l                                          ; $483a: $b5
    ld e, e                                       ; $483b: $5b
    ld d, e                                       ; $483c: $53
    ld b, a                                       ; $483d: $47
    cp $d8                                        ; $483e: $fe $d8
    adc e                                         ; $4840: $8b
    ld a, a                                       ; $4841: $7f
    ld l, $d2                                     ; $4842: $2e $d2
    dec sp                                        ; $4844: $3b
    xor $47                                       ; $4845: $ee $47
    ld b, e                                       ; $4847: $43
    ccf                                           ; $4848: $3f
    rst $30                                       ; $4849: $f7
    dec bc                                        ; $484a: $0b
    ld l, l                                       ; $484b: $6d
    sub [hl]                                      ; $484c: $96
    ld d, l                                       ; $484d: $55
    rst $20                                       ; $484e: $e7
    ld e, $4a                                     ; $484f: $1e $4a
    ld a, [hl+]                                   ; $4851: $2a
    ld [hl], a                                    ; $4852: $77
    jr z, jr_061_4828                             ; $4853: $28 $d3

    pop af                                        ; $4855: $f1
    sbc $c5                                       ; $4856: $de $c5
    rra                                           ; $4858: $1f
    rla                                           ; $4859: $17
    inc bc                                        ; $485a: $03
    ld a, d                                       ; $485b: $7a
    ld h, h                                       ; $485c: $64
    db $fc                                        ; $485d: $fc
    ld [hl], c                                    ; $485e: $71
    ld l, b                                       ; $485f: $68
    sbc [hl]                                      ; $4860: $9e
    di                                            ; $4861: $f3
    ld a, [hl]                                    ; $4862: $7e
    ld bc, $ce6d                                  ; $4863: $01 $6d $ce
    ld d, l                                       ; $4866: $55
    ld l, [hl]                                    ; $4867: $6e
    and $60                                       ; $4868: $e6 $60
    adc l                                         ; $486a: $8d
    ld d, b                                       ; $486b: $50
    inc l                                         ; $486c: $2c
    ei                                            ; $486d: $fb
    inc a                                         ; $486e: $3c
    inc [hl]                                      ; $486f: $34
    rst $08                                       ; $4870: $cf
    cp c                                          ; $4871: $b9
    rst $20                                       ; $4872: $e7
    dec bc                                        ; $4873: $0b
    and $57                                       ; $4874: $e6 $57
    adc $fb                                       ; $4876: $ce $fb
    dec b                                         ; $4878: $05
    rst $10                                       ; $4879: $d7
    ld e, c                                       ; $487a: $59
    db $f4                                        ; $487b: $f4
    ld a, [de]                                    ; $487c: $1a
    add a                                         ; $487d: $87
    ld [hl+], a                                   ; $487e: $22
    rst $30                                       ; $487f: $f7
    ld c, $35                                     ; $4880: $0e $35
    rst $20                                       ; $4882: $e7
    sbc h                                         ; $4883: $9c
    dec b                                         ; $4884: $05
    ld b, l                                       ; $4885: $45
    sbc a                                         ; $4886: $9f
    ld h, l                                       ; $4887: $65
    ld a, d                                       ; $4888: $7a
    ld a, [c]                                     ; $4889: $f2
    ld c, b                                       ; $488a: $48
    cp d                                          ; $488b: $ba
    sbc a                                         ; $488c: $9f
    rst $00                                       ; $488d: $c7
    rst $30                                       ; $488e: $f7
    dec bc                                        ; $488f: $0b
    rlca                                          ; $4890: $07
    ld a, a                                       ; $4891: $7f
    rst $10                                       ; $4892: $d7
    sub e                                         ; $4893: $93
    rst $28                                       ; $4894: $ef
    or l                                          ; $4895: $b5
    sbc c                                         ; $4896: $99
    rst $20                                       ; $4897: $e7
    sbc h                                         ; $4898: $9c
    ld a, c                                       ; $4899: $79
    cp d                                          ; $489a: $ba
    and b                                         ; $489b: $a0
    or e                                          ; $489c: $b3
    ld b, e                                       ; $489d: $43
    pop hl                                        ; $489e: $e1
    ret                                           ; $489f: $c9


    adc a                                         ; $48a0: $8f
    push hl                                       ; $48a1: $e5
    ld a, [hl]                                    ; $48a2: $7e
    ld bc, $666d                                  ; $48a3: $01 $6d $66
    or $9e                                        ; $48a6: $f6 $9e
    and $62                                       ; $48a8: $e6 $62
    ld c, d                                       ; $48aa: $4a
    ld a, d                                       ; $48ab: $7a
    sub [hl]                                      ; $48ac: $96
    db $fd                                        ; $48ad: $fd
    ld l, b                                       ; $48ae: $68
    add sp, -$19                                  ; $48af: $e8 $e7
    ld a, [hl]                                    ; $48b1: $7e
    ld bc, $9a87                                  ; $48b2: $01 $87 $9a
    inc de                                        ; $48b5: $13
    ld a, l                                       ; $48b6: $7d
    db $e4                                        ; $48b7: $e4
    rst $08                                       ; $48b8: $cf
    pop de                                        ; $48b9: $d1
    ld e, l                                       ; $48ba: $5d
    or $6b                                        ; $48bb: $f6 $6b
    inc d                                         ; $48bd: $14
    ret nc                                        ; $48be: $d0

    dec a                                         ; $48bf: $3d
    inc bc                                        ; $48c0: $03
    sbc $2f                                       ; $48c1: $de $2f
    ld l, l                                       ; $48c3: $6d
    ld a, [$ab9c]                                 ; $48c4: $fa $9c $ab
    db $dd                                        ; $48c7: $dd
    inc a                                         ; $48c8: $3c
    ld d, b                                       ; $48c9: $50
    jp z, Jump_000_288b                           ; $48ca: $ca $8b $28

    adc c                                         ; $48cd: $89
    ld d, b                                       ; $48ce: $50
    ld l, b                                       ; $48cf: $68
    ld l, e                                       ; $48d0: $6b

jr_061_48d1:
    rst $38                                       ; $48d1: $ff
    sbc c                                         ; $48d2: $99
    sbc d                                         ; $48d3: $9a
    ld a, e                                       ; $48d4: $7b
    rst $20                                       ; $48d5: $e7
    ld b, l                                       ; $48d6: $45
    xor e                                         ; $48d7: $ab
    ld l, h                                       ; $48d8: $6c
    call c, $1c63                                 ; $48d9: $dc $63 $1c
    ld b, d                                       ; $48dc: $42
    add hl, de                                    ; $48dd: $19
    inc d                                         ; $48de: $14
    set 7, l                                      ; $48df: $cb $fd
    ld [bc], a                                    ; $48e1: $02
    ld l, l                                       ; $48e2: $6d
    and $39                                       ; $48e3: $e6 $39
    ld d, a                                       ; $48e5: $57
    xor c                                         ; $48e6: $a9
    cp l                                          ; $48e7: $bd
    ld a, e                                       ; $48e8: $7b
    ccf                                           ; $48e9: $3f
    dec de                                        ; $48ea: $1b
    and [hl]                                      ; $48eb: $a6
    and e                                         ; $48ec: $a3
    ld l, c                                       ; $48ed: $69
    ld l, e                                       ; $48ee: $6b
    rst $38                                       ; $48ef: $ff
    sbc c                                         ; $48f0: $99
    sbc d                                         ; $48f1: $9a
    ld a, e                                       ; $48f2: $7b
    cp e                                          ; $48f3: $bb
    ld [hl-], a                                   ; $48f4: $32
    xor c                                         ; $48f5: $a9
    pop af                                        ; $48f6: $f1
    and b                                         ; $48f7: $a0
    ld e, b                                       ; $48f8: $58
    xor $17                                       ; $48f9: $ee $17
    sub a                                         ; $48fb: $97
    db $eb                                        ; $48fc: $eb
    ld [hl], e                                    ; $48fd: $73
    ld c, $cd                                     ; $48fe: $0e $cd
    db $e3                                        ; $4900: $e3
    inc [hl]                                      ; $4901: $34
    jp nc, $f2bd                                  ; $4902: $d2 $bd $f2

    and l                                         ; $4905: $a5
    inc c                                         ; $4906: $0c
    push af                                       ; $4907: $f5
    db $fd                                        ; $4908: $fd
    xor b                                         ; $4909: $a8
    dec sp                                        ; $490a: $3b
    halt                                          ; $490b: $76
    ld a, [hl-]                                   ; $490c: $3a
    ld b, a                                       ; $490d: $47
    cp $1e                                        ; $490e: $fe $1e
    ld b, a                                       ; $4910: $47
    sub h                                         ; $4911: $94
    ld b, h                                       ; $4912: $44
    jr z, jr_061_48d1                             ; $4913: $28 $bc

    sbc a                                         ; $4915: $9f
    dec c                                         ; $4916: $0d
    db $d3                                        ; $4917: $d3
    pop de                                        ; $4918: $d1
    rst $30                                       ; $4919: $f7
    ld c, $b8                                     ; $491a: $0e $b8
    inc l                                         ; $491c: $2c
    add [hl]                                      ; $491d: $86

jr_061_491e:
    cp [hl]                                       ; $491e: $be
    jr z, jr_061_4945                             ; $491f: $28 $24

    ld d, a                                       ; $4921: $57
    ld a, [bc]                                    ; $4922: $0a
    or e                                          ; $4923: $b3
    rst $30                                       ; $4924: $f7
    jr jr_061_491e                                ; $4925: $18 $f7

    ld a, c                                       ; $4927: $79
    db $fc                                        ; $4928: $fc
    adc e                                         ; $4929: $8b
    ld [hl], a                                    ; $492a: $77

Jump_061_492b:
    ld [c], a                                     ; $492b: $e2
    ld d, h                                       ; $492c: $54
    add sp, -$23                                  ; $492d: $e8 $dd
    dec b                                         ; $492f: $05
    call c, $200a                                 ; $4930: $dc $0a $20
    cp h                                          ; $4933: $bc
    jr z, @+$01                                   ; $4934: $28 $ff

    db $10                                        ; $4936: $10
    jp z, Jump_061_786a                           ; $4937: $ca $6a $78

    ld d, [hl]                                    ; $493a: $56
    add hl, sp                                    ; $493b: $39
    ld a, a                                       ; $493c: $7f
    inc [hl]                                      ; $493d: $34
    ld [hl-], a                                   ; $493e: $32
    halt                                          ; $493f: $76
    adc $e2                                       ; $4940: $ce $e2
    jp z, $f95e                                   ; $4942: $ca $5e $f9

jr_061_4945:
    ld d, d                                       ; $4945: $52
    add [hl]                                      ; $4946: $86
    ld a, [$d47e]                                 ; $4947: $fa $7e $d4
    dec e                                         ; $494a: $1d
    dec sp                                        ; $494b: $3b
    sbc l                                         ; $494c: $9d
    db $d3                                        ; $494d: $d3
    pop de                                        ; $494e: $d1
    or d                                          ; $494f: $b2
    rst $08                                       ; $4950: $cf
    adc e                                         ; $4951: $8b
    db $f4                                        ; $4952: $f4
    adc [hl]                                      ; $4953: $8e
    ld de, $3d35                                  ; $4954: $11 $35 $3d
    inc b                                         ; $4957: $04
    ld e, c                                       ; $4958: $59
    ld l, b                                       ; $4959: $68

Call_061_495a:
    sub l                                         ; $495a: $95
    rra                                           ; $495b: $1f
    ei                                            ; $495c: $fb
    ld a, [hl]                                    ; $495d: $7e
    ld bc, $a517                                  ; $495e: $01 $17 $a5
    sbc a                                         ; $4961: $9f
    db $fc                                        ; $4962: $fc
    push bc                                       ; $4963: $c5
    add d                                         ; $4964: $82
    sbc $cf                                       ; $4965: $de $cf
    add [hl]                                      ; $4967: $86
    jp hl                                         ; $4968: $e9


    ld l, b                                       ; $4969: $68
    jp c, Jump_061_7fda                           ; $496a: $da $da $7f

    and [hl]                                      ; $496d: $a6
    and $5e                                       ; $496e: $e6 $5e
    sbc e                                         ; $4970: $9b
    ld a, $e7                                     ; $4971: $3e $e7
    ret nc                                        ; $4973: $d0

    or d                                          ; $4974: $b2
    adc b                                         ; $4975: $88
    sbc d                                         ; $4976: $9a
    sub l                                         ; $4977: $95
    dec a                                         ; $4978: $3d
    ld [hl], h                                    ; $4979: $74
    ld l, $b6                                     ; $497a: $2e $b6
    and b                                         ; $497c: $a0
    ld [hl], e                                    ; $497d: $73
    inc c                                         ; $497e: $0c
    cp l                                          ; $497f: $bd
    pop af                                        ; $4980: $f1
    adc e                                         ; $4981: $8b
    rst $30                                       ; $4982: $f7
    jr jr_061_499c                                ; $4983: $18 $17

    jp hl                                         ; $4985: $e9


    dec e                                         ; $4986: $1d
    inc hl                                        ; $4987: $23
    ld l, d                                       ; $4988: $6a
    ld a, [c]                                     ; $4989: $f2
    ld b, d                                       ; $498a: $42
    xor e                                         ; $498b: $ab
    db $fc                                        ; $498c: $fc
    ret c                                         ; $498d: $d8

    rst $30                                       ; $498e: $f7
    jp c, $d640                                   ; $498f: $da $40 $d6

    ld [hl], b                                    ; $4992: $70
    and a                                         ; $4993: $a7
    adc d                                         ; $4994: $8a
    add b                                         ; $4995: $80
    sub h                                         ; $4996: $94
    add hl, sp                                    ; $4997: $39
    rst $00                                       ; $4998: $c7
    ld h, c                                       ; $4999: $61
    xor $a0                                       ; $499a: $ee $a0

jr_061_499c:
    ld a, [hl+]                                   ; $499c: $2a
    ld h, h                                       ; $499d: $64
    ld l, b                                       ; $499e: $68
    ld d, l                                       ; $499f: $55
    sub l                                         ; $49a0: $95
    db $10                                        ; $49a1: $10
    or c                                          ; $49a2: $b1
    di                                            ; $49a3: $f3
    sbc $45                                       ; $49a4: $de $45
    jr nz, @-$46                                  ; $49a6: $20 $b8

    ld d, [hl]                                    ; $49a8: $56
    add [hl]                                      ; $49a9: $86
    ret z                                         ; $49aa: $c8

    or l                                          ; $49ab: $b5
    add [hl]                                      ; $49ac: $86
    call c, $f921                                 ; $49ad: $dc $21 $f9
    dec l                                         ; $49b0: $2d

jr_061_49b1:
    cpl                                           ; $49b1: $2f
    sub h                                         ; $49b2: $94
    ld d, l                                       ; $49b3: $55
    jr z, jr_061_49b1                             ; $49b4: $28 $fb

jr_061_49b6:
    inc a                                         ; $49b6: $3c
    cp d                                          ; $49b7: $ba
    res 5, d                                      ; $49b8: $cb $aa
    dec b                                         ; $49ba: $05
    reti                                          ; $49bb: $d9


    ld b, e                                       ; $49bc: $43
    jr z, jr_061_49b6                             ; $49bd: $28 $f7

    dec bc                                        ; $49bf: $0b
    ld d, a                                       ; $49c0: $57
    ld h, [hl]                                    ; $49c1: $66
    adc b                                         ; $49c2: $88
    ld e, h                                       ; $49c3: $5c
    ld l, e                                       ; $49c4: $6b
    ret z                                         ; $49c5: $c8

    dec e                                         ; $49c6: $1d
    sub d                                         ; $49c7: $92
    rst $18                                       ; $49c8: $df
    ld a, [c]                                     ; $49c9: $f2
    add hl, sp                                    ; $49ca: $39
    jp c, $ed5f                                   ; $49cb: $da $5f $ed

    or c                                          ; $49ce: $b1
    sbc a                                         ; $49cf: $9f
    ld [hl], c                                    ; $49d0: $71
    add [hl]                                      ; $49d1: $86
    inc e                                         ; $49d2: $1c
    ld [$ef73], a                                 ; $49d3: $ea $73 $ef
    adc $3a                                       ; $49d6: $ce $3a
    push af                                       ; $49d8: $f5
    ld h, l                                       ; $49d9: $65
    sbc l                                         ; $49da: $9d
    sub d                                         ; $49db: $92
    ld e, $42                                     ; $49dc: $1e $42
    sbc c                                         ; $49de: $99
    dec sp                                        ; $49df: $3b
    xor b                                         ; $49e0: $a8
    ld a, [bc]                                    ; $49e1: $0a
    add hl, de                                    ; $49e2: $19
    ld e, d                                       ; $49e3: $5a
    ld d, l                                       ; $49e4: $55
    dec h                                         ; $49e5: $25
    ld b, h                                       ; $49e6: $44
    db $ec                                        ; $49e7: $ec
    inc a                                         ; $49e8: $3c
    ld h, a                                       ; $49e9: $67
    db $ed                                        ; $49ea: $ed
    ld e, a                                       ; $49eb: $5f
    sub $d0                                       ; $49ec: $d6 $d0
    inc de                                        ; $49ee: $13
    cp l                                          ; $49ef: $bd
    sbc b                                         ; $49f0: $98
    sub d                                         ; $49f1: $92
    ld e, [hl]                                    ; $49f2: $5e
    xor e                                         ; $49f3: $ab
    cp c                                          ; $49f4: $b9
    ld a, [bc]                                    ; $49f5: $0a
    inc a                                         ; $49f6: $3c
    dec d                                         ; $49f7: $15
    add h                                         ; $49f8: $84
    ld b, e                                       ; $49f9: $43
    xor [hl]                                      ; $49fa: $ae
    ld b, e                                       ; $49fb: $43
    pop af                                        ; $49fc: $f1
    ld b, h                                       ; $49fd: $44
    cp a                                          ; $49fe: $bf
    ld [hl], a                                    ; $49ff: $77

jr_061_4a00:
    ld e, [hl]                                    ; $4a00: $5e
    or h                                          ; $4a01: $b4
    jp z, $3dc6                                   ; $4a02: $ca $c6 $3d

    add $21                                       ; $4a05: $c6 $21

Call_061_4a07:
    sub h                                         ; $4a07: $94
    ei                                            ; $4a08: $fb
    dec b                                         ; $4a09: $05
    db $ed                                        ; $4a0a: $ed
    pop af                                        ; $4a0b: $f1
    rst $00                                       ; $4a0c: $c7
    push bc                                       ; $4a0d: $c5
    ret nc                                        ; $4a0e: $d0

    add a                                         ; $4a0f: $87
    ld a, [hl-]                                   ; $4a10: $3a
    ld l, l                                       ; $4a11: $6d
    ld d, a                                       ; $4a12: $57
    ld b, $66                                     ; $4a13: $06 $66
    rst $20                                       ; $4a15: $e7
    add hl, sp                                    ; $4a16: $39
    cpl                                           ; $4a17: $2f
    rlca                                          ; $4a18: $07
    ld e, h                                       ; $4a19: $5c
    ld d, $ff                                     ; $4a1a: $16 $ff
    inc e                                         ; $4a1c: $1c
    ld e, d                                       ; $4a1d: $5a
    ld d, $51                                     ; $4a1e: $16 $51
    or e                                          ; $4a20: $b3
    or d                                          ; $4a21: $b2
    add a                                         ; $4a22: $87
    adc $45                                       ; $4a23: $ce $45
    ld a, d                                       ; $4a25: $7a
    rst $00                                       ; $4a26: $c7
    adc b                                         ; $4a27: $88
    sbc d                                         ; $4a28: $9a
    db $ec                                        ; $4a29: $ec
    push bc                                       ; $4a2a: $c5
    ld hl, $175d                                  ; $4a2b: $21 $5d $17
    ld e, d                                       ; $4a2e: $5a
    push hl                                       ; $4a2f: $e5
    rst $00                                       ; $4a30: $c7
    ld e, $ec                                     ; $4a31: $1e $ec
    db $fc                                        ; $4a33: $fc
    ret nz                                        ; $4a34: $c0

    ld e, a                                       ; $4a35: $5f
    ld b, b                                       ; $4a36: $40
    dec l                                         ; $4a37: $2d
    sub h                                         ; $4a38: $94
    or l                                          ; $4a39: $b5
    ld [hl-], a                                   ; $4a3a: $32
    ld b, h                                       ; $4a3b: $44
    xor [hl]                                      ; $4a3c: $ae
    dec [hl]                                      ; $4a3d: $35
    db $e4                                        ; $4a3e: $e4
    ld c, $b5                                     ; $4a3f: $0e $b5
    jr nz, jr_061_4a00                            ; $4a41: $20 $bd

    ld l, d                                       ; $4a43: $6a
    ld b, c                                       ; $4a44: $41
    or $1e                                        ; $4a45: $f6 $1e
    jr z, jr_061_4a6c                             ; $4a47: $28 $23

    sbc l                                         ; $4a49: $9d
    inc c                                         ; $4a4a: $0c
    ld a, l                                       ; $4a4b: $7d
    ld d, c                                       ; $4a4c: $51
    ret z                                         ; $4a4d: $c8

    ld a, l                                       ; $4a4e: $7d
    ld e, [hl]                                    ; $4a4f: $5e
    call nc, $871c                                ; $4a50: $d4 $1c $87
    cp c                                          ; $4a53: $b9
    add e                                         ; $4a54: $83
    xor d                                         ; $4a55: $aa
    sub b                                         ; $4a56: $90
    and c                                         ; $4a57: $a1
    ld d, l                                       ; $4a58: $55
    ld d, l                                       ; $4a59: $55
    ld b, d                                       ; $4a5a: $42
    call nz, $d5ce                                ; $4a5b: $c4 $ce $d5
    ldh a, [$ac]                                  ; $4a5e: $f0 $ac
    pop hl                                        ; $4a60: $e1
    ld c, [hl]                                    ; $4a61: $4e

Jump_061_4a62:
    dec d                                         ; $4a62: $15
    ld bc, $f729                                  ; $4a63: $01 $29 $f7
    dec bc                                        ; $4a66: $0b
    db $ed                                        ; $4a67: $ed
    cp d                                          ; $4a68: $ba
    adc h                                         ; $4a69: $8c
    db $fc                                        ; $4a6a: $fc
    cp c                                          ; $4a6b: $b9

jr_061_4a6c:
    rst $18                                       ; $4a6c: $df
    cp e                                          ; $4a6d: $bb
    add a                                         ; $4a6e: $87
    cp a                                          ; $4a6f: $bf
    ld a, b                                       ; $4a70: $78
    ld sp, $cd25                                  ; $4a71: $31 $25 $cd
    adc e                                         ; $4a74: $8b

Call_061_4a75:
    ld b, d                                       ; $4a75: $42
    xor [hl]                                      ; $4a76: $ae
    db $fc                                        ; $4a77: $fc
    ld hl, sp-$7f                                 ; $4a78: $f8 $81
    adc [hl]                                      ; $4a7a: $8e
    rst $30                                       ; $4a7b: $f7
    jp c, $c743                                   ; $4a7c: $da $43 $c7

    ld hl, $baf0                                  ; $4a7f: $21 $f0 $ba
    ld d, l                                       ; $4a82: $55
    dec b                                         ; $4a83: $05
    dec d                                         ; $4a84: $15
    ld h, h                                       ; $4a85: $64
    ld d, c                                       ; $4a86: $51
    ld a, [$eda1]                                 ; $4a87: $fa $a1 $ed
    jp z, $ecc0                                   ; $4a8a: $ca $c0 $ec

    cp h                                          ; $4a8d: $bc
    ld e, a                                       ; $4a8e: $5f

jr_061_4a8f:
    ld l, l                                       ; $4a8f: $6d
    adc $91                                       ; $4a90: $ce $91
    ccf                                           ; $4a92: $3f
    add a                                         ; $4a93: $87
    ld a, [$c410]                                 ; $4a94: $fa $10 $c4
    dec bc                                        ; $4a97: $0b
    xor l                                         ; $4a98: $ad
    xor d                                         ; $4a99: $aa
    ld [de], a                                    ; $4a9a: $12
    ld [hl+], a                                   ; $4a9b: $22
    halt                                          ; $4a9c: $76
    jp nc, $6576                                  ; $4a9d: $d2 $76 $65

    ld h, b                                       ; $4aa0: $60
    halt                                          ; $4aa1: $76
    sbc $3b                                       ; $4aa2: $de $3b
    and h                                         ; $4aa4: $a4
    ld d, d                                       ; $4aa5: $52
    ld l, a                                       ; $4aa6: $6f
    xor h                                         ; $4aa7: $ac
    ld [hl], $a7                                  ; $4aa8: $36 $a7
    db $e3                                        ; $4aaa: $e3
    ld a, [hl]                                    ; $4aab: $7e
    or h                                          ; $4aac: $b4
    rlca                                          ; $4aad: $07
    ld a, b                                       ; $4aae: $78
    ld a, [hl+]                                   ; $4aaf: $2a
    ld [$bc87], sp                                ; $4ab0: $08 $87 $bc
    ld e, a                                       ; $4ab3: $5f
    rlca                                          ; $4ab4: $07
    ld e, h                                       ; $4ab5: $5c
    ld d, $7d                                     ; $4ab6: $16 $7d
    ld b, c                                       ; $4ab8: $41
    ld e, $fa                                     ; $4ab9: $1e $fa
    reti                                          ; $4abb: $d9


    rst $28                                       ; $4abc: $ef
    db $dd                                        ; $4abd: $dd
    jp c, $c077                                   ; $4abe: $da $77 $c0

    ld h, l                                       ; $4ac1: $65
    rst $30                                       ; $4ac2: $f7
    ld a, l                                       ; $4ac3: $7d
    xor a                                         ; $4ac4: $af
    ld c, c                                       ; $4ac5: $49
    jp nc, $fed6                                  ; $4ac6: $d2 $d6 $fe

    inc sp                                        ; $4ac9: $33
    dec [hl]                                      ; $4aca: $35
    rst $30                                       ; $4acb: $f7
    ld c, $b8                                     ; $4acc: $0e $b8
    adc h                                         ; $4ace: $8c
    inc sp                                        ; $4acf: $33
    jr jr_061_4a8f                                ; $4ad0: $18 $bd

    rst $08                                       ; $4ad2: $cf
    and e                                         ; $4ad3: $a3
    cp e                                          ; $4ad4: $bb
    inc l                                         ; $4ad5: $2c
    cp $39                                        ; $4ad6: $fe $39
    or h                                          ; $4ad8: $b4
    inc l                                         ; $4ad9: $2c
    and d                                         ; $4ada: $a2
    ld h, [hl]                                    ; $4adb: $66
    ld h, l                                       ; $4adc: $65
    xor a                                         ; $4add: $af
    add [hl]                                      ; $4ade: $86
    ld h, a                                       ; $4adf: $67
    adc l                                         ; $4ae0: $8d
    xor $78                                       ; $4ae1: $ee $78
    ld de, $1125                                  ; $4ae3: $11 $25 $11
    jp z, Jump_000_02fd                           ; $4ae6: $ca $fd $02

    sub a                                         ; $4ae9: $97
    sbc e                                         ; $4aea: $9b
    ld c, [hl]                                    ; $4aeb: $4e
    ld e, e                                       ; $4aec: $5b
    ei                                            ; $4aed: $fb
    rst $08                                       ; $4aee: $cf
    call nc, $854c                                ; $4aef: $d4 $4c $85
    ld h, a                                       ; $4af2: $67
    ld de, $2b35                                  ; $4af3: $11 $35 $2b
    cpl                                           ; $4af6: $2f
    sub h                                         ; $4af7: $94
    ld b, l                                       ; $4af8: $45
    and b                                         ; $4af9: $a0
    ld h, [hl]                                    ; $4afa: $66
    ld e, c                                       ; $4afb: $59
    and l                                         ; $4afc: $a5
    ld h, h                                       ; $4afd: $64
    add a                                         ; $4afe: $87
    or d                                          ; $4aff: $b2
    add [hl]                                      ; $4b00: $86
    dec sp                                        ; $4b01: $3b
    ld d, l                                       ; $4b02: $55
    inc b                                         ; $4b03: $04
    and h                                         ; $4b04: $a4
    call c, $972f                                 ; $4b05: $dc $2f $97
    scf                                           ; $4b08: $37
    ld l, c                                       ; $4b09: $69
    adc e                                         ; $4b0a: $8b
    sbc d                                         ; $4b0b: $9a
    add hl, sp                                    ; $4b0c: $39
    cp d                                          ; $4b0d: $ba
    bit 5, d                                      ; $4b0e: $cb $6a
    ld [hl], e                                    ; $4b10: $73
    ld [de], a                                    ; $4b11: $12
    adc d                                         ; $4b12: $8a
    ld a, c                                       ; $4b13: $79
    ld d, c                                       ; $4b14: $51
    ret z                                         ; $4b15: $c8

    ld a, l                                       ; $4b16: $7d
    ld e, [hl]                                    ; $4b17: $5e
    ld c, h                                       ; $4b18: $4c
    ld c, c                                       ; $4b19: $49
    ld c, a                                       ; $4b1a: $4f
    db $f4                                        ; $4b1b: $f4
    rst $20                                       ; $4b1c: $e7
    ld [hl], c                                    ; $4b1d: $71
    adc [hl]                                      ; $4b1e: $8e
    jp $2f39                                      ; $4b1f: $c3 $39 $2f


    rst $10                                       ; $4b22: $d7
    ret nc                                        ; $4b23: $d0

    ccf                                           ; $4b24: $3f
    ld l, l                                       ; $4b25: $6d
    adc [hl]                                      ; $4b26: $8e
    ret c                                         ; $4b27: $d8

    ld e, c                                       ; $4b28: $59
    jp $d433                                      ; $4b29: $c3 $33 $d4


    rla                                           ; $4b2c: $17
    dec de                                        ; $4b2d: $1b
    ld d, a                                       ; $4b2e: $57
    sbc e                                         ; $4b2f: $9b
    ld a, e                                       ; $4b30: $7b
    ld e, h                                       ; $4b31: $5c
    call z, $cf0b                                 ; $4b32: $cc $0b $cf
    ld a, [de]                                    ; $4b35: $1a
    add c                                         ; $4b36: $81
    cp a                                          ; $4b37: $bf
    add b                                         ; $4b38: $80
    sbc d                                         ; $4b39: $9a
    ld a, [$d432]                                 ; $4b3a: $fa $32 $d4
    and a                                         ; $4b3d: $a7
    ld h, e                                       ; $4b3e: $63
    ld b, h                                       ; $4b3f: $44
    ld c, l                                       ; $4b40: $4d
    rst $08                                       ; $4b41: $cf
    cp h                                          ; $4b42: $bc
    jp z, Jump_061_6b21                           ; $4b43: $ca $21 $6b

    ld l, a                                       ; $4b46: $6f
    sbc d                                         ; $4b47: $9a
    ld d, a                                       ; $4b48: $57
    ld e, c                                       ; $4b49: $59
    and e                                         ; $4b4a: $a3
    sub h                                         ; $4b4b: $94
    rst $30                                       ; $4b4c: $f7
    or e                                          ; $4b4d: $b3
    ld h, c                                       ; $4b4e: $61
    ld a, [hl-]                                   ; $4b4f: $3a
    ld a, d                                       ; $4b50: $7a
    or c                                          ; $4b51: $b1
    ld [hl], c                                    ; $4b52: $71
    sbc a                                         ; $4b53: $9f
    rst $10                                       ; $4b54: $d7
    push af                                       ; $4b55: $f5
    ld [c], a                                     ; $4b56: $e2
    jp hl                                         ; $4b57: $e9


    jr c, jr_061_4b72                             ; $4b58: $38 $18

    ld sp, hl                                     ; $4b5a: $f9
    ld h, e                                       ; $4b5b: $63
    res 7, l                                      ; $4b5c: $cb $bd
    swap h                                        ; $4b5e: $cb $34
    add sp, $1c                                   ; $4b60: $e8 $1c
    sbc d                                         ; $4b62: $9a
    rlca                                          ; $4b63: $07
    ld c, d                                       ; $4b64: $4a
    ld a, c                                       ; $4b65: $79
    sub l                                         ; $4b66: $95
    ld e, $62                                     ; $4b67: $1e $62
    ld a, $e7                                     ; $4b69: $3e $e7
    dec b                                         ; $4b6b: $05
    rlca                                          ; $4b6c: $07
    dec l                                         ; $4b6d: $2d
    rst $30                                       ; $4b6e: $f7
    ld a, l                                       ; $4b6f: $7d
    cp a                                          ; $4b70: $bf
    rst $10                                       ; $4b71: $d7

jr_061_4b72:
    ld b, b                                       ; $4b72: $40
    rst $28                                       ; $4b73: $ef
    ld a, [de]                                    ; $4b74: $1a
    and l                                         ; $4b75: $a5
    ld c, h                                       ; $4b76: $4c
    ld e, e                                       ; $4b77: $5b
    cp e                                          ; $4b78: $bb
    di                                            ; $4b79: $f3
    add c                                         ; $4b7a: $81
    jr nz, @-$40                                  ; $4b7b: $20 $be

    ld e, a                                       ; $4b7d: $5f
    rlca                                          ; $4b7e: $07

Jump_061_4b7f:
    ld e, h                                       ; $4b7f: $5c
    ld b, [hl]                                    ; $4b80: $46
    ld [hl], $1b                                  ; $4b81: $36 $1b
    adc $81                                       ; $4b83: $ce $81
    ld d, d                                       ; $4b85: $52
    sbc $e7                                       ; $4b86: $de $e7
    pop de                                        ; $4b88: $d1
    ld e, l                                       ; $4b89: $5d
    and $dc                                       ; $4b8a: $e6 $dc
    rst $28                                       ; $4b8c: $ef
    db $dd                                        ; $4b8d: $dd
    ld e, c                                       ; $4b8e: $59
    and b                                         ; $4b8f: $a0
    xor d                                         ; $4b90: $aa
    add l                                         ; $4b91: $85
    ret c                                         ; $4b92: $d8

    add hl, de                                    ; $4b93: $19
    add l                                         ; $4b94: $85
    sbc h                                         ; $4b95: $9c
    add h                                         ; $4b96: $84
    jp nc, $1fbd                                  ; $4b97: $d2 $bd $1f

    dec c                                         ; $4b9a: $0d
    and c                                         ; $4b9b: $a1
    ld d, [hl]                                    ; $4b9c: $56
    rrca                                          ; $4b9d: $0f
    and h                                         ; $4b9e: $a4
    and h                                         ; $4b9f: $a4
    ld de, $d52c                                  ; $4ba0: $11 $2c $d5
    ld a, c                                       ; $4ba3: $79
    cp a                                          ; $4ba4: $bf
    db $ed                                        ; $4ba5: $ed
    ld sp, $e574                                  ; $4ba6: $31 $74 $e5
    sub l                                         ; $4ba9: $95
    and h                                         ; $4baa: $a4
    ld d, h                                       ; $4bab: $54
    ld c, $cc                                     ; $4bac: $0e $cc
    adc $39                                       ; $4bae: $ce $39
    add a                                         ; $4bb0: $87
    ld e, [hl]                                    ; $4bb1: $5e
    and l                                         ; $4bb2: $a5

Jump_061_4bb3:
    and h                                         ; $4bb3: $a4
    rst $08                                       ; $4bb4: $cf
    ld a, c                                       ; $4bb5: $79
    ld bc, $4107                                  ; $4bb6: $01 $07 $41
    sub $30                                       ; $4bb9: $d6 $30
    ld d, [hl]                                    ; $4bbb: $56
    or $5a                                        ; $4bbc: $f6 $5a
    db $dd                                        ; $4bbe: $dd
    ld [hl], h                                    ; $4bbf: $74
    and e                                         ; $4bc0: $a3
    rst $30                                       ; $4bc1: $f7
    ld a, c                                       ; $4bc2: $79
    dec l                                         ; $4bc3: $2d
    sbc l                                         ; $4bc4: $9d
    reti                                          ; $4bc5: $d9


    db $eb                                        ; $4bc6: $eb
    add b                                         ; $4bc7: $80
    cp h                                          ; $4bc8: $bc
    rra                                           ; $4bc9: $1f
    dec c                                         ; $4bca: $0d
    and c                                         ; $4bcb: $a1
    ld d, [hl]                                    ; $4bcc: $56
    rrca                                          ; $4bcd: $0f
    and h                                         ; $4bce: $a4
    and h                                         ; $4bcf: $a4
    ld de, $d52c                                  ; $4bd0: $11 $2c $d5
    add hl, sp                                    ; $4bd3: $39
    ld e, b                                       ; $4bd4: $58
    push de                                       ; $4bd5: $d5
    ld e, e                                       ; $4bd6: $5b
    dec l                                         ; $4bd7: $2d
    set 7, l                                      ; $4bd8: $cb $fd
    ld [bc], a                                    ; $4bda: $02
    rlca                                          ; $4bdb: $07
    ld e, h                                       ; $4bdc: $5c
    add $19                                       ; $4bdd: $c6 $19
    ld [hl], d                                    ; $4bdf: $72
    sbc a                                         ; $4be0: $9f
    add a                                         ; $4be1: $87
    adc $39                                       ; $4be2: $ce $39
    rla                                           ; $4be4: $17
    ld b, c                                       ; $4be5: $41
    ld a, d                                       ; $4be6: $7a
    dec h                                         ; $4be7: $25
    add hl, hl                                    ; $4be8: $29
    sub l                                         ; $4be9: $95
    inc bc                                        ; $4bea: $03
    or e                                          ; $4beb: $b3
    ld [hl], e                                    ; $4bec: $73
    dec [hl]                                      ; $4bed: $35
    inc a                                         ; $4bee: $3c
    xor e                                         ; $4bef: $ab
    adc d                                         ; $4bf0: $8a
    xor [hl]                                      ; $4bf1: $ae
    ld [hl], a                                    ; $4bf2: $77
    rst $20                                       ; $4bf3: $e7
    ld b, b                                       ; $4bf4: $40
    ld c, d                                       ; $4bf5: $4a
    ld a, [de]                                    ; $4bf6: $1a
    pop bc                                        ; $4bf7: $c1
    ld d, d                                       ; $4bf8: $52
    sbc l                                         ; $4bf9: $9d
    ld a, e                                       ; $4bfa: $7b
    inc l                                         ; $4bfb: $2c
    and e                                         ; $4bfc: $a3
    cp e                                          ; $4bfd: $bb
    call z, Call_061_5039                         ; $4bfe: $cc $39 $50
    jp z, $a0ab                                   ; $4c01: $ca $ab $a0

    sub h                                         ; $4c04: $94
    di                                            ; $4c05: $f3
    ld a, [hl]                                    ; $4c06: $7e
    ld bc, $5c07                                  ; $4c07: $01 $07 $5c
    add $d4                                       ; $4c0a: $c6 $d4
    ld e, h                                       ; $4c0c: $5c
    ld c, h                                       ; $4c0d: $4c
    ld b, c                                       ; $4c0e: $41
    db $f4                                        ; $4c0f: $f4
    ld e, d                                       ; $4c10: $5a
    call Call_000_1e7d                            ; $4c11: $cd $7d $1e
    ld a, [hl-]                                   ; $4c14: $3a
    rla                                           ; $4c15: $17
    add c                                         ; $4c16: $81
    and b                                         ; $4c17: $a0
    db $eb                                        ; $4c18: $eb
    ld b, b                                       ; $4c19: $40
    ld c, d                                       ; $4c1a: $4a
    ld a, [de]                                    ; $4c1b: $1a
    pop bc                                        ; $4c1c: $c1
    ld d, d                                       ; $4c1d: $52
    sbc l                                         ; $4c1e: $9d
    add e                                         ; $4c1f: $83
    sub c                                         ; $4c20: $91
    ccf                                           ; $4c21: $3f
    or [hl]                                       ; $4c22: $b6
    call c, $ed2f                                 ; $4c23: $dc $2f $ed
    and [hl]                                      ; $4c26: $a6
    db $d3                                        ; $4c27: $d3
    halt                                          ; $4c28: $76
    cp c                                          ; $4c29: $b9
    ld h, e                                       ; $4c2a: $63
    add sp, -$23                                  ; $4c2b: $e8 $dd
    rst $30                                       ; $4c2d: $f7
    dec bc                                        ; $4c2e: $0b
    add a                                         ; $4c2f: $87
    ld c, b                                       ; $4c30: $48
    ld d, d                                       ; $4c31: $52
    ei                                            ; $4c32: $fb
    jp c, $acbf                                   ; $4c33: $da $bf $ac

    add [hl]                                      ; $4c36: $86
    ret c                                         ; $4c37: $d8

    ld a, c                                       ; $4c38: $79
    cp a                                          ; $4c39: $bf
    sub a                                         ; $4c3a: $97
    sbc e                                         ; $4c3b: $9b
    ld c, [hl]                                    ; $4c3c: $4e

jr_061_4c3d:
    dec de                                        ; $4c3d: $1b
    ld sp, hl                                     ; $4c3e: $f9
    ld h, l                                       ; $4c3f: $65
    adc $81                                       ; $4c40: $ce $81
    ld d, d                                       ; $4c42: $52
    and [hl]                                      ; $4c43: $a6
    adc l                                         ; $4c44: $8d
    db $fc                                        ; $4c45: $fc
    or d                                          ; $4c46: $b2
    jp z, $1ccd                                   ; $4c47: $ca $cd $1c

    ld a, [hl-]                                   ; $4c4a: $3a

jr_061_4c4b:
    rla                                           ; $4c4b: $17
    jp z, Jump_061_73aa                           ; $4c4c: $ca $aa $73

    xor l                                         ; $4c4f: $ad
    and $1e                                       ; $4c50: $e6 $1e
    jr z, jr_061_4c4b                             ; $4c52: $28 $f7

jr_061_4c54:
    dec bc                                        ; $4c54: $0b
    sub a                                         ; $4c55: $97
    jr z, jr_061_4c3d                             ; $4c56: $28 $e5

    ld e, l                                       ; $4c58: $5d
    xor $18                                       ; $4c59: $ee $18
    ld a, d                                       ; $4c5b: $7a
    rst $30                                       ; $4c5c: $f7
    cp l                                          ; $4c5d: $bd
    dec hl                                        ; $4c5e: $2b
    inc sp                                        ; $4c5f: $33
    ld b, h                                       ; $4c60: $44
    xor [hl]                                      ; $4c61: $ae
    dec [hl]                                      ; $4c62: $35
    db $e4                                        ; $4c63: $e4
    adc $07                                       ; $4c64: $ce $07
    sub c                                         ; $4c66: $91
    xor d                                         ; $4c67: $aa
    db $fd                                        ; $4c68: $fd
    dec b                                         ; $4c69: $05
    add h                                         ; $4c6a: $84
    or h                                          ; $4c6b: $b4
    ld l, b                                       ; $4c6c: $68
    pop de                                        ; $4c6d: $d1
    and d                                         ; $4c6e: $a2
    ld b, l                                       ; $4c6f: $45
    adc e                                         ; $4c70: $8b
    ld d, $2d                                     ; $4c71: $16 $2d
    rst $30                                       ; $4c73: $f7
    ld a, l                                       ; $4c74: $7d
    rst $18                                       ; $4c75: $df
    rst $30                                       ; $4c76: $f7
    dec bc                                        ; $4c77: $0b
    rst $20                                       ; $4c78: $e7
    db $eb                                        ; $4c79: $eb
    adc c                                         ; $4c7a: $89
    ld e, [hl]                                    ; $4c7b: $5e
    inc c                                         ; $4c7c: $0c
    inc bc                                        ; $4c7d: $03
    and l                                         ; $4c7e: $a5
    cp h                                          ; $4c7f: $bc
    sbc b                                         ; $4c80: $98
    and d                                         ; $4c81: $a2
    sub h                                         ; $4c82: $94
    ld b, a                                       ; $4c83: $47
    cp $e7                                        ; $4c84: $fe $e7
    sbc h                                         ; $4c86: $9c
    rla                                           ; $4c87: $17
    rlca                                          ; $4c88: $07
    ld e, h                                       ; $4c89: $5c
    ld d, $1b                                     ; $4c8a: $16 $1b
    rlca                                          ; $4c8c: $07
    ld c, d                                       ; $4c8d: $4a
    ld a, c                                       ; $4c8e: $79
    pop hl                                        ; $4c8f: $e1
    add hl, de                                    ; $4c90: $19
    sbc d                                         ; $4c91: $9a
    rst $20                                       ; $4c92: $e7
    call c, Call_061_77a3                         ; $4c93: $dc $a3 $77
    jr z, jr_061_4c54                             ; $4c96: $28 $bc

    rst $08                                       ; $4c98: $cf
    adc e                                         ; $4c99: $8b
    add hl, hl                                    ; $4c9a: $29
    ld c, d                                       ; $4c9b: $4a
    ld a, c                                       ; $4c9c: $79
    and $d5                                       ; $4c9d: $e6 $d5
    ld d, $b5                                     ; $4c9f: $16 $b5

Call_061_4ca1:
    cp b                                          ; $4ca1: $b8
    ld d, a                                       ; $4ca2: $57
    rst $18                                       ; $4ca3: $df
    ld l, e                                       ; $4ca4: $6b
    adc a                                         ; $4ca5: $8f
    and c                                         ; $4ca6: $a1
    xor $f9                                       ; $4ca7: $ee $f9
    or d                                          ; $4ca9: $b2
    ld d, [hl]                                    ; $4caa: $56

Call_061_4cab:
    ld d, d                                       ; $4cab: $52
    ld h, e                                       ; $4cac: $63
    rst $20                                       ; $4cad: $e7
    ld a, $2f                                     ; $4cae: $3e $2f
    push af                                       ; $4cb0: $f5
    xor d                                         ; $4cb1: $aa
    inc a                                         ; $4cb2: $3c
    ld a, [c]                                     ; $4cb3: $f2
    ccf                                           ; $4cb4: $3f
    dec hl                                        ; $4cb5: $2b
    call $a59c                                    ; $4cb6: $cd $9c $a5
    adc [hl]                                      ; $4cb9: $8e
    and h                                         ; $4cba: $a4
    ld [$473a], sp                                ; $4cbb: $08 $3a $47
    rrca                                          ; $4cbe: $0f
    ld b, e                                       ; $4cbf: $43
    ld c, b                                       ; $4cc0: $48
    dec hl                                        ; $4cc1: $2b
    or $a0                                        ; $4cc2: $f6 $a0
    ld e, b                                       ; $4cc4: $58
    call nz, $c8cf                                ; $4cc5: $c4 $cf $c8
    rst $38                                       ; $4cc8: $ff
    call c, $842f                                 ; $4cc9: $dc $2f $84
    or h                                          ; $4ccc: $b4
    ld l, b                                       ; $4ccd: $68
    pop de                                        ; $4cce: $d1
    and d                                         ; $4ccf: $a2
    ld b, l                                       ; $4cd0: $45
    bit 7, l                                      ; $4cd1: $cb $7d
    rst $18                                       ; $4cd3: $df
    rst $30                                       ; $4cd4: $f7
    ld a, l                                       ; $4cd5: $7d
    cpl                                           ; $4cd6: $2f
    sub h                                         ; $4cd7: $94
    add hl, sp                                    ; $4cd8: $39
    ld h, d                                       ; $4cd9: $62
    ld h, a                                       ; $4cda: $67
    dec c                                         ; $4cdb: $0d
    rst $08                                       ; $4cdc: $cf
    ret nc                                        ; $4cdd: $d0

    cp h                                          ; $4cde: $bc
    inc de                                        ; $4cdf: $13
    ld c, a                                       ; $4ce0: $4f
    ccf                                           ; $4ce1: $3f
    pop hl                                        ; $4ce2: $e1
    add h                                         ; $4ce3: $84
    dec [hl]                                      ; $4ce4: $35
    sub e                                         ; $4ce5: $93
    call nc, $d305                                ; $4ce6: $d4 $05 $d3
    add sp, -$3b                                  ; $4ce9: $e8 $c5
    ccf                                           ; $4ceb: $3f
    rla                                           ; $4cec: $17
    dec de                                        ; $4ced: $1b
    rst $30                                       ; $4cee: $f7
    ld a, c                                       ; $4cef: $79
    and l                                         ; $4cf0: $a5
    cp c                                          ; $4cf1: $b9
    ld d, [hl]                                    ; $4cf2: $56
    ld [hl], e                                    ; $4cf3: $73
    inc h                                         ; $4cf4: $24
    and l                                         ; $4cf5: $a5
    db $e3                                        ; $4cf6: $e3
    ret z                                         ; $4cf7: $c8

    rra                                           ; $4cf8: $1f

jr_061_4cf9:
    and e                                         ; $4cf9: $a3
    rla                                           ; $4cfa: $17
    jp Jump_000_2940                              ; $4cfb: $c3 $40 $29


    ld c, a                                       ; $4cfe: $4f
    ld b, d                                       ; $4cff: $42
    ld sp, $9e0f                                  ; $4d00: $31 $0f $9e
    add b                                         ; $4d03: $80
    ld b, e                                       ; $4d04: $43
    di                                            ; $4d05: $f3
    xor $fb                                       ; $4d06: $ee $fb
    ld e, [hl]                                    ; $4d08: $5e
    ei                                            ; $4d09: $fb
    rst $08                                       ; $4d0a: $cf
    call nc, $caec                                ; $4d0b: $d4 $ec $ca
    ret nz                                        ; $4d0e: $c0

    db $ec                                        ; $4d0f: $ec
    call nc, $f6be                                ; $4d10: $d4 $be $f6
    jr c, jr_061_4cf9                             ; $4d13: $38 $e4

    ld a, [c]                                     ; $4d15: $f2
    daa                                           ; $4d16: $27
    rst $08                                       ; $4d17: $cf
    add d                                         ; $4d18: $82
    xor $50                                       ; $4d19: $ee $50
    or $79                                        ; $4d1b: $f6 $79
    db $e4                                        ; $4d1d: $e4
    adc a                                         ; $4d1e: $8f
    dec a                                         ; $4d1f: $3d
    add h                                         ; $4d20: $84
    ld [hl-], a                                   ; $4d21: $32
    sbc b                                         ; $4d22: $98
    ld [$56bf], a                                 ; $4d23: $ea $bf $56
    res 7, l                                      ; $4d26: $cb $bd
    inc bc                                        ; $4d28: $03
    ld l, $23                                     ; $4d29: $2e $23
    push af                                       ; $4d2b: $f5
    xor d                                         ; $4d2c: $aa
    sbc h                                         ; $4d2d: $9c
    db $d3                                        ; $4d2e: $d3
    pop af                                        ; $4d2f: $f1
    and c                                         ; $4d30: $a1
    and h                                         ; $4d31: $a4
    ld [hl-], a                                   ; $4d32: $32
    rrca                                          ; $4d33: $0f
    ld b, c                                       ; $4d34: $41
    ld d, $fd                                     ; $4d35: $16 $fd
    cp h                                          ; $4d37: $bc
    ld e, a                                       ; $4d38: $5f
    rst $10                                       ; $4d39: $d7
    ld a, h                                       ; $4d3a: $7c
    ld b, l                                       ; $4d3b: $45
    ld e, e                                       ; $4d3c: $5b
    dec hl                                        ; $4d3d: $2b
    ld b, e                                       ; $4d3e: $43
    db $e4                                        ; $4d3f: $e4
    ld e, d                                       ; $4d40: $5a
    ld b, e                                       ; $4d41: $43
    xor $7c                                       ; $4d42: $ee $7c
    db $10                                        ; $4d44: $10
    xor c                                         ; $4d45: $a9
    rst $30                                       ; $4d46: $f7
    dec bc                                        ; $4d47: $0b
    add a                                         ; $4d48: $87
    cp $d3                                        ; $4d49: $fe $d3
    sbc l                                         ; $4d4b: $9d
    ld b, e                                       ; $4d4c: $43
    ld a, l                                       ; $4d4d: $7d
    xor l                                         ; $4d4e: $ad
    and $ce                                       ; $4d4f: $e6 $ce
    ld [hl], a                                    ; $4d51: $77
    ld d, d                                       ; $4d52: $52
    rra                                           ; $4d53: $1f
    or $48                                        ; $4d54: $f6 $48
    xor e                                         ; $4d56: $ab
    ld [$3285], a                                 ; $4d57: $ea $85 $32
    adc $d0                                       ; $4d5a: $ce $d0
    pop af                                        ; $4d5c: $f1
    and c                                         ; $4d5d: $a1
    ld [$a71e], sp                                ; $4d5e: $08 $1e $a7
    ld b, d                                       ; $4d61: $42
    ld a, [c]                                     ; $4d62: $f2
    ld l, b                                       ; $4d63: $68
    ld l, e                                       ; $4d64: $6b
    rst $38                                       ; $4d65: $ff
    sbc c                                         ; $4d66: $99
    sbc d                                         ; $4d67: $9a
    ld [hl], e                                    ; $4d68: $73
    sub $06                                       ; $4d69: $d6 $06
    or d                                          ; $4d6b: $b2
    add sp, -$19                                  ; $4d6c: $e8 $e7
    ld a, [bc]                                    ; $4d6e: $0a
    dec a                                         ; $4d6f: $3d
    inc h                                         ; $4d70: $24
    ld a, [$01de]                                 ; $4d71: $fa $de $01
    sub a                                         ; $4d74: $97
    ld b, l                                       ; $4d75: $45
    ld hl, $6929                                  ; $4d76: $21 $29 $69
    db $f4                                        ; $4d79: $f4
    ret z                                         ; $4d7a: $c8

    rst $38                                       ; $4d7b: $ff
    call z, $be52                                 ; $4d7c: $cc $52 $be
    sub h                                         ; $4d7f: $94
    sbc c                                         ; $4d80: $99
    and a                                         ; $4d81: $a7
    ld b, d                                       ; $4d82: $42
    ld a, [c]                                     ; $4d83: $f2
    ld e, $e3                                     ; $4d84: $1e $e3
    ld l, $85                                     ; $4d86: $2e $85
    ld d, h                                       ; $4d88: $54
    cp [hl]                                       ; $4d89: $be
    rst $10                                       ; $4d8a: $d7
    cp $65                                        ; $4d8b: $fe $65
    adc l                                         ; $4d8d: $8d

jr_061_4d8e:
    xor $78                                       ; $4d8e: $ee $78
    adc a                                         ; $4d90: $8f
    adc e                                         ; $4d91: $8b
    ld a, c                                       ; $4d92: $79
    and l                                         ; $4d93: $a5
    ld a, a                                       ; $4d94: $7f
    ld e, h                                       ; $4d95: $5c
    inc d                                         ; $4d96: $14
    ld [hl], d                                    ; $4d97: $72
    ld l, b                                       ; $4d98: $68
    cp [hl]                                       ; $4d99: $be
    ld [hl], a                                    ; $4d9a: $77
    pop af                                        ; $4d9b: $f1
    rst $00                                       ; $4d9c: $c7
    push bc                                       ; $4d9d: $c5
    add b                                         ; $4d9e: $80
    ld e, $19                                     ; $4d9f: $1e $19
    add a                                         ; $4da1: $87
    inc e                                         ; $4da2: $1c
    sbc d                                         ; $4da3: $9a
    rst $20                                       ; $4da4: $e7
    ld h, d                                       ; $4da5: $62
    pop hl                                        ; $4da6: $e1

jr_061_4da7:
    ld c, $65                                     ; $4da7: $0e $65
    adc l                                         ; $4da9: $8d
    xor $78                                       ; $4daa: $ee $78
    ccf                                           ; $4dac: $3f
    cp d                                          ; $4dad: $ba
    rst $28                                       ; $4dae: $ef
    ei                                            ; $4daf: $fb
    dec b                                         ; $4db0: $05
    rlca                                          ; $4db1: $07
    ld e, h                                       ; $4db2: $5c
    and [hl]                                      ; $4db3: $a6

jr_061_4db4:
    cp [hl]                                       ; $4db4: $be
    adc h                                         ; $4db5: $8c
    call nc, $f2ab                                ; $4db6: $d4 $ab $f2
    ld a, $8f                                     ; $4db9: $3e $8f
    xor $32                                       ; $4dbb: $ee $32
    cp $9d                                        ; $4dbd: $fe $9d
    cp l                                          ; $4dbf: $bd
    rst $00                                       ; $4dc0: $c7
    jr c, jr_061_4d8e                             ; $4dc1: $38 $cb

    ld h, b                                       ; $4dc3: $60
    ld l, l                                       ; $4dc4: $6d
    ldh a, [rWX]                                  ; $4dc5: $f0 $4b
    sub b                                         ; $4dc7: $90
    rst $18                                       ; $4dc8: $df
    dec hl                                        ; $4dc9: $2b
    daa                                           ; $4dca: $27
    dec b                                         ; $4dcb: $05
    dec a                                         ; $4dcc: $3d
    ld [hl], h                                    ; $4dcd: $74
    xor [hl]                                      ; $4dce: $ae
    sub l                                         ; $4dcf: $95
    call nc, $e8d8                                ; $4dd0: $d4 $d8 $e8
    ld a, l                                       ; $4dd3: $7d
    ld e, [hl]                                    ; $4dd4: $5e
    and l                                         ; $4dd5: $a5
    db $f4                                        ; $4dd6: $f4
    ld [c], a                                     ; $4dd7: $e2
    push de                                       ; $4dd8: $d5
    ld h, $7e                                     ; $4dd9: $26 $7e
    sbc c                                         ; $4ddb: $99
    ld a, c                                       ; $4ddc: $79
    ld a, [hl+]                                   ; $4ddd: $2a
    inc h                                         ; $4dde: $24
    rst $18                                       ; $4ddf: $df
    cpl                                           ; $4de0: $2f
    ld l, l                                       ; $4de1: $6d
    and $55                                       ; $4de2: $e6 $55
    jr z, jr_061_4db4                             ; $4de4: $28 $ce

    and c                                         ; $4de6: $a1
    ld a, $50                                     ; $4de7: $3e $50
    jp z, $ece7                                   ; $4de9: $ca $e7 $ec

    ld h, b                                       ; $4dec: $60
    or e                                          ; $4ded: $b3
    ld a, [hl+]                                   ; $4dee: $2a
    cpl                                           ; $4def: $2f
    cp $39                                        ; $4df0: $fe $39
    inc [hl]                                      ; $4df2: $34
    rst $08                                       ; $4df3: $cf
    add d                                         ; $4df4: $82
    ld hl, sp-$79                                 ; $4df5: $f8 $87
    and $55                                       ; $4df7: $e6 $55
    rst $30                                       ; $4df9: $f7
    cp b                                          ; $4dfa: $b8
    cp $e7                                        ; $4dfb: $fe $e7
    pop af                                        ; $4dfd: $f1
    ld d, h                                       ; $4dfe: $54
    ld c, b                                       ; $4dff: $48
    cp [hl]                                       ; $4e00: $be
    rst $10                                       ; $4e01: $d7
    ld e, $43                                     ; $4e02: $1e $43
    dec e                                         ; $4e04: $1d
    db $dd                                        ; $4e05: $dd
    ld h, l                                       ; $4e06: $65
    adc l                                         ; $4e07: $8d
    sbc a                                         ; $4e08: $9f
    sbc [hl]                                      ; $4e09: $9e
    jp nc, $bc45                                  ; $4e0a: $d2 $45 $bc

    xor b                                         ; $4e0d: $a8
    add hl, sp                                    ; $4e0e: $39
    inc [hl]                                      ; $4e0f: $34
    rst $28                                       ; $4e10: $ef
    di                                            ; $4e11: $f3
    xor d                                         ; $4e12: $aa
    rla                                           ; $4e13: $17
    ld b, e                                       ; $4e14: $43
    rst $28                                       ; $4e15: $ef
    ld e, $dd                                     ; $4e16: $1e $dd
    ld h, l                                       ; $4e18: $65
    ld sp, $3d25                                  ; $4e19: $31 $25 $3d
    ld e, b                                       ; $4e1c: $58
    push hl                                       ; $4e1d: $e5
    cpl                                           ; $4e1e: $2f
    jr c, jr_061_4da7                             ; $4e1f: $38 $86

    cp [hl]                                       ; $4e21: $be
    rst $08                                       ; $4e22: $cf
    ei                                            ; $4e23: $fb
    ld d, c                                       ; $4e24: $51
    and c                                         ; $4e25: $a1
    and [hl]                                      ; $4e26: $a6
    add a                                         ; $4e27: $87
    and $fb                                       ; $4e28: $e6 $fb
    dec b                                         ; $4e2a: $05
    add a                                         ; $4e2b: $87
    call nc, $a3ef                                ; $4e2c: $d4 $ef $a3
    cp e                                          ; $4e2f: $bb
    xor h                                         ; $4e30: $ac
    xor d                                         ; $4e31: $aa
    rra                                           ; $4e32: $1f
    ld b, l                                       ; $4e33: $45
    ld e, $9a                                     ; $4e34: $1e $9a
    rst $00                                       ; $4e36: $c7
    ret nc                                        ; $4e37: $d0

    add a                                         ; $4e38: $87
    ld d, b                                       ; $4e39: $50
    adc $79                                       ; $4e3a: $ce $79
    ld bc, $a517                                  ; $4e3c: $01 $17 $a5
    sbc a                                         ; $4e3f: $9f
    db $fc                                        ; $4e40: $fc
    push bc                                       ; $4e41: $c5
    add d                                         ; $4e42: $82
    ld e, $a0                                     ; $4e43: $1e $a0
    rst $28                                       ; $4e45: $ef

jr_061_4e46:
    dec e                                         ; $4e46: $1d
    ld a, [c]                                     ; $4e47: $f2
    db $e3                                        ; $4e48: $e3
    jp z, $c8ce                                   ; $4e49: $ca $ce $c8

    add hl, bc                                    ; $4e4c: $09
    sub [hl]                                      ; $4e4d: $96
    dec [hl]                                      ; $4e4e: $35
    ld e, h                                       ; $4e4f: $5c
    inc [hl]                                      ; $4e50: $34
    add d                                         ; $4e51: $82
    adc $c1                                       ; $4e52: $ce $c1
    ldh a, [$97]                                  ; $4e54: $f0 $97
    push de                                       ; $4e56: $d5
    and $50                                       ; $4e57: $e6 $50
    rra                                           ; $4e59: $1f
    ld sp, hl                                     ; $4e5a: $f9
    ld [hl], e                                    ; $4e5b: $73
    dec a                                         ; $4e5c: $3d
    call nz, $e863                                ; $4e5d: $c4 $63 $e8
    ei                                            ; $4e60: $fb
    inc a                                         ; $4e61: $3c
    cp $c5                                        ; $4e62: $fe $c5
    ld h, e                                       ; $4e64: $63
    add sp, $6b                                   ; $4e65: $e8 $6b
    add e                                         ; $4e67: $83
    ld e, a                                       ; $4e68: $5f
    add d                                         ; $4e69: $82
    db $fc                                        ; $4e6a: $fc
    ld e, [hl]                                    ; $4e6b: $5e
    add hl, sp                                    ; $4e6c: $39
    add hl, hl                                    ; $4e6d: $29
    add sp, $7b                                   ; $4e6e: $e8 $7b
    rst $10                                       ; $4e70: $d7
    db $fc                                        ; $4e71: $fc
    ld [hl-], a                                   ; $4e72: $32
    or h                                          ; $4e73: $b4
    adc b                                         ; $4e74: $88
    rst $10                                       ; $4e75: $d7
    ld a, [$3ab5]                                 ; $4e76: $fa $b5 $3a
    xor e                                         ; $4e79: $ab
    ld de, $f7dd                                  ; $4e7a: $11 $dd $f7
    jr jr_061_4e46                                ; $4e7d: $18 $c7

    ret nc                                        ; $4e7f: $d0

    rst $10                                       ; $4e80: $d7
    cp $4b                                        ; $4e81: $fe $4b
    ld [bc], a                                    ; $4e83: $02
    ld l, $94                                     ; $4e84: $2e $94
    push de                                       ; $4e86: $d5
    and $62                                       ; $4e87: $e6 $62
    add sp, $23                                   ; $4e89: $e8 $23
    cp a                                          ; $4e8b: $bf
    inc l                                         ; $4e8c: $2c
    and d                                         ; $4e8d: $a2
    or $e2                                        ; $4e8e: $f6 $e2
    ld hl, $a194                                  ; $4e90: $21 $94 $a1
    sub e                                         ; $4e93: $93
    and c                                         ; $4e94: $a1
    rst $18                                       ; $4e95: $df
    ld l, e                                       ; $4e96: $6b
    adc a                                         ; $4e97: $8f
    ccf                                           ; $4e98: $3f
    ld l, $fe                                     ; $4e99: $2e $fe
    add hl, sp                                    ; $4e9b: $39
    inc [hl]                                      ; $4e9c: $34
    ld c, a                                       ; $4e9d: $4f
    db $f4                                        ; $4e9e: $f4
    and c                                         ; $4e9f: $a1
    cp [hl]                                       ; $4ea0: $be
    ld a, [$7a0b]                                 ; $4ea1: $fa $0b $7a
    sbc a                                         ; $4ea4: $9f
    add a                                         ; $4ea5: $87
    ld a, [$e348]                                 ; $4ea6: $fa $48 $e3
    add hl, sp                                    ; $4ea9: $39
    cpl                                           ; $4eaa: $2f
    db $ed                                        ; $4eab: $ed
    ccf                                           ; $4eac: $3f
    ld d, e                                       ; $4ead: $53
    or e                                          ; $4eae: $b3
    dec hl                                        ; $4eaf: $2b
    inc bc                                        ; $4eb0: $03
    or e                                          ; $4eb1: $b3
    di                                            ; $4eb2: $f3
    ld a, [hl]                                    ; $4eb3: $7e
    ld bc, $3e07                                  ; $4eb4: $01 $07 $3e

jr_061_4eb7:
    ld l, l                                       ; $4eb7: $6d
    db $ed                                        ; $4eb8: $ed
    ccf                                           ; $4eb9: $3f
    ld d, e                                       ; $4eba: $53
    or e                                          ; $4ebb: $b3
    dec hl                                        ; $4ebc: $2b
    inc bc                                        ; $4ebd: $03
    or e                                          ; $4ebe: $b3
    di                                            ; $4ebf: $f3
    sbc $45                                       ; $4ec0: $de $45
    dec e                                         ; $4ec2: $1d
    ld b, h                                       ; $4ec3: $44
    ld c, l                                       ; $4ec4: $4d
    sub a                                         ; $4ec5: $97
    or d                                          ; $4ec6: $b2
    ld c, b                                       ; $4ec7: $48
    sub e                                         ; $4ec8: $93
    rst $30                                       ; $4ec9: $f7
    ld c, $b8                                     ; $4eca: $0e $b8
    xor h                                         ; $4ecc: $ac
    ld [hl], d                                    ; $4ecd: $72
    ret nz                                        ; $4ece: $c0

    ld [hl], l                                    ; $4ecf: $75
    jr z, jr_061_4f30                             ; $4ed0: $28 $5e

    jr z, jr_061_4eb7                             ; $4ed2: $28 $e3

jr_061_4ed4:
    rst $18                                       ; $4ed4: $df
    reti                                          ; $4ed5: $d9


    ld a, e                                       ; $4ed6: $7b
    adc h                                         ; $4ed7: $8c
    inc hl                                        ; $4ed8: $23
    rst $38                                       ; $4ed9: $ff
    ld [hl], e                                    ; $4eda: $73
    cp a                                          ; $4edb: $bf
    db $ed                                        ; $4edc: $ed
    cp a                                          ; $4edd: $bf
    inc h                                         ; $4ede: $24
    and b                                         ; $4edf: $a0
    or $1d                                        ; $4ee0: $f6 $1d
    ld [hl], b                                    ; $4ee2: $70
    ld e, c                                       ; $4ee3: $59
    db $fc                                        ; $4ee4: $fc
    ld [hl], e                                    ; $4ee5: $73
    ld h, d                                       ; $4ee6: $62
    ld c, $ad                                     ; $4ee7: $0e $ad
    ld b, l                                       ; $4ee9: $45
    ld hl, $9b17                                  ; $4eea: $21 $17 $9b
    cp [hl]                                       ; $4eed: $be
    jr z, jr_061_4ed4                             ; $4eee: $28 $e4

    ld a, $2f                                     ; $4ef0: $3e $2f
    ld [bc], a                                    ; $4ef2: $02
    ld b, c                                       ; $4ef3: $41
    rrca                                          ; $4ef4: $0f
    and c                                         ; $4ef5: $a1
    call c, $ed2f                                 ; $4ef6: $dc $2f $ed
    and [hl]                                      ; $4ef9: $a6
    db $d3                                        ; $4efa: $d3

jr_061_4efb:
    sub $fe                                       ; $4efb: $d6 $fe
    inc sp                                        ; $4efd: $33
    dec [hl]                                      ; $4efe: $35
    rst $30                                       ; $4eff: $f7
    ld c, $b8                                     ; $4f00: $0e $b8
    xor h                                         ; $4f02: $ac
    dec de                                        ; $4f03: $1b
    sbc l                                         ; $4f04: $9d
    ld [hl], e                                    ; $4f05: $73
    call nz, $b5ce                                ; $4f06: $c4 $ce $b5
    add a                                         ; $4f09: $87
    ld d, h                                       ; $4f0a: $54
    ld e, l                                       ; $4f0b: $5d
    ld a, a                                       ; $4f0c: $7f
    ld e, d                                       ; $4f0d: $5a
    adc $7b                                       ; $4f0e: $ce $7b
    rlca                                          ; $4f10: $07
    ld e, h                                       ; $4f11: $5c
    ld b, [hl]                                    ; $4f12: $46
    ld d, d                                       ; $4f13: $52
    sub e                                         ; $4f14: $93
    cp l                                          ; $4f15: $bd
    rst $08                                       ; $4f16: $cf
    ld b, e                                       ; $4f17: $43
    rst $20                                       ; $4f18: $e7
    ld [c], a                                     ; $4f19: $e2
    sbc a                                         ; $4f1a: $9f
    or e                                          ; $4f1b: $b3
    inc l                                         ; $4f1c: $2c
    adc l                                         ; $4f1d: $8d
    adc [hl]                                      ; $4f1e: $8e
    db $f4                                        ; $4f1f: $f4
    adc [hl]                                      ; $4f20: $8e
    add e                                         ; $4f21: $83
    push de                                       ; $4f22: $d5
    ld e, $98                                     ; $4f23: $1e $98
    call $af33                                    ; $4f25: $cd $33 $af
    or d                                          ; $4f28: $b2
    pop af                                        ; $4f29: $f1
    ld a, [hl]                                    ; $4f2a: $7e
    ld bc, $6657                                  ; $4f2b: $01 $57 $66
    adc b                                         ; $4f2e: $88
    ld e, h                                       ; $4f2f: $5c

jr_061_4f30:
    ld l, e                                       ; $4f30: $6b
    ret z                                         ; $4f31: $c8

    sbc l                                         ; $4f32: $9d
    rrca                                          ; $4f33: $0f
    ld [hl+], a                                   ; $4f34: $22
    ld [hl], l                                    ; $4f35: $75
    push hl                                       ; $4f36: $e5
    rst $00                                       ; $4f37: $c7
    ld a, e                                       ; $4f38: $7b
    and b                                         ; $4f39: $a0
    call z, $d6b2                                 ; $4f3a: $cc $b2 $d6
    xor a                                         ; $4f3d: $af
    push de                                       ; $4f3e: $d5
    ld e, c                                       ; $4f3f: $59
    adc l                                         ; $4f40: $8d
    add sp, $3e                                   ; $4f41: $e8 $3e
    add [hl]                                      ; $4f43: $86
    cp [hl]                                       ; $4f44: $be
    ld [hl], $f8                                  ; $4f45: $36 $f8
    dec h                                         ; $4f47: $25
    ret z                                         ; $4f48: $c8

    rst $28                                       ; $4f49: $ef
    sub l                                         ; $4f4a: $95
    sub e                                         ; $4f4b: $93
    add d                                         ; $4f4c: $82
    ld e, [hl]                                    ; $4f4d: $5e
    jr z, jr_061_4efb                             ; $4f4e: $28 $ab

    cp a                                          ; $4f50: $bf
    and b                                         ; $4f51: $a0
    ld l, c                                       ; $4f52: $69
    ei                                            ; $4f53: $fb
    inc a                                         ; $4f54: $3c
    cp d                                          ; $4f55: $ba
    res 5, d                                      ; $4f56: $cb $aa
    jp nc, $f77b                                  ; $4f58: $d2 $7b $f7

    ld a, [hl]                                    ; $4f5b: $7e
    call nc, Call_000_3b1d                        ; $4f5c: $d4 $1d $3b
    dec a                                         ; $4f5f: $3d
    or h                                          ; $4f60: $b4
    adc h                                         ; $4f61: $8c
    and c                                         ; $4f62: $a1
    rrca                                          ; $4f63: $0f
    and c                                         ; $4f64: $a1

Jump_061_4f65:
    call c, $e03b                                 ; $4f65: $dc $3b $e0
    or d                                          ; $4f68: $b2
    xor d                                         ; $4f69: $aa
    ld a, [hl]                                    ; $4f6a: $7e
    ld e, a                                       ; $4f6b: $5f
    inc b                                         ; $4f6c: $04
    add d                                         ; $4f6d: $82
    sbc [hl]                                      ; $4f6e: $9e
    ld a, c                                       ; $4f6f: $79
    rst $20                                       ; $4f70: $e7
    dec sp                                        ; $4f71: $3b
    xor c                                         ; $4f72: $a9
    rrca                                          ; $4f73: $0f
    ld a, e                                       ; $4f74: $7b
    and h                                         ; $4f75: $a4
    ld d, l                                       ; $4f76: $55
    push af                                       ; $4f77: $f5
    ld b, d                                       ; $4f78: $42
    add hl, de                                    ; $4f79: $19
    ld h, a                                       ; $4f7a: $67
    add sp, -$08                                  ; $4f7b: $e8 $f8
    ld d, b                                       ; $4f7d: $50
    inc b                                         ; $4f7e: $04
    adc a                                         ; $4f7f: $8f
    ld d, e                                       ; $4f80: $53
    ld hl, $ab79                                  ; $4f81: $21 $79 $ab
    pop hl                                        ; $4f84: $e1
    reti                                          ; $4f85: $d9


    ld sp, hl                                     ; $4f86: $f9
    jr nz, @+$54                                  ; $4f87: $20 $52

    rst $30                                       ; $4f89: $f7
    inc [hl]                                      ; $4f8a: $34
    xor e                                         ; $4f8b: $ab
    ld a, [c]                                     ; $4f8c: $f2
    jp z, $c78f                                   ; $4f8d: $ca $8f $c7

    ret nc                                        ; $4f90: $d0

    rst $30                                       ; $4f91: $f7
    add b                                         ; $4f92: $80
    inc l                                         ; $4f93: $2c
    ld a, [$bf79]                                 ; $4f94: $fa $79 $bf
    rlca                                          ; $4f97: $07
    ld e, h                                       ; $4f98: $5c
    ld d, $81                                     ; $4f99: $16 $81
    and b                                         ; $4f9b: $a0
    ld [hl], e                                    ; $4f9c: $73
    ld h, h                                       ; $4f9d: $64
    ld c, b                                       ; $4f9e: $48
    push de                                       ; $4f9f: $d5
    push af                                       ; $4fa0: $f5
    and a                                         ; $4fa1: $a7
    push hl                                       ; $4fa2: $e5
    inc d                                         ; $4fa3: $14
    xor a                                         ; $4fa4: $af
    ld e, d                                       ; $4fa5: $5a
    sbc h                                         ; $4fa6: $9c
    cp [hl]                                       ; $4fa7: $be
    ld [hl], a                                    ; $4fa8: $77
    ld l, c                                       ; $4fa9: $69
    ld a, b                                       ; $4faa: $78
    ld l, b                                       ; $4fab: $68
    xor e                                         ; $4fac: $ab
    call Call_000_3ff1                            ; $4fad: $cd $f1 $3f
    ld [hl-], a                                   ; $4fb0: $32
    rla                                           ; $4fb1: $17
    jp $b47e                                      ; $4fb2: $c3 $7e $b4


    jp z, $da46                                   ; $4fb5: $ca $46 $da

    jp c, $a67f                                   ; $4fb8: $da $7f $a6

    ld b, [hl]                                    ; $4fbb: $46
    ei                                            ; $4fbc: $fb
    dec bc                                        ; $4fbd: $0b
    rlca                                          ; $4fbe: $07
    ld e, h                                       ; $4fbf: $5c
    ld d, $5b                                     ; $4fc0: $16 $5b
    ret c                                         ; $4fc2: $d8

    add hl, sp                                    ; $4fc3: $39
    jp nc, Jump_061_5b49                          ; $4fc4: $d2 $49 $5b

    ei                                            ; $4fc7: $fb
    rst $08                                       ; $4fc8: $cf
    call nc, Call_061_6bdc                        ; $4fc9: $d4 $dc $6b
    db $d3                                        ; $4fcc: $d3
    ld b, a                                       ; $4fcd: $47
    cp $1c                                        ; $4fce: $fe $1c
    xor b                                         ; $4fd0: $a8
    inc hl                                        ; $4fd1: $23
    rst $10                                       ; $4fd2: $d7
    ld c, b                                       ; $4fd3: $48
    cp l                                          ; $4fd4: $bd
    inc l                                         ; $4fd5: $2c
    ld a, [bc]                                    ; $4fd6: $0a
    cp c                                          ; $4fd7: $b9
    rlca                                          ; $4fd8: $07
    jp z, $fa18                                   ; $4fd9: $ca $18 $fa

    ld l, d                                       ; $4fdc: $6a
    di                                            ; $4fdd: $f3
    ld c, b                                       ; $4fde: $48
    sbc c                                         ; $4fdf: $99
    ld h, l                                       ; $4fe0: $65
    db $dd                                        ; $4fe1: $dd
    inc a                                         ; $4fe2: $3c
    ld a, [c]                                     ; $4fe3: $f2
    dec bc                                        ; $4fe4: $0b
    cp d                                          ; $4fe5: $ba
    rst $18                                       ; $4fe6: $df
    cpl                                           ; $4fe7: $2f
    db $ed                                        ; $4fe8: $ed
    ccf                                           ; $4fe9: $3f
    add a                                         ; $4fea: $87
    ld a, [$79aa]                                 ; $4feb: $fa $aa $79
    sub [hl]                                      ; $4fee: $96
    dec a                                         ; $4fef: $3d
    ld e, a                                       ; $4ff0: $5f
    ld [hl], b                                    ; $4ff1: $70
    and h                                         ; $4ff2: $a4
    ld [hl], e                                    ; $4ff3: $73
    pop hl                                        ; $4ff4: $e1
    ld d, c                                       ; $4ff5: $51
    add hl, bc                                    ; $4ff6: $09
    ld d, d                                       ; $4ff7: $52
    add [hl]                                      ; $4ff8: $86
    adc $91                                       ; $4ff9: $ce $91
    ccf                                           ; $4ffb: $3f
    ld [hl], a                                    ; $4ffc: $77
    cp [hl]                                       ; $4ffd: $be
    sub e                                         ; $4ffe: $93
    ld a, [$47b0]                                 ; $4fff: $fa $b0 $47
    ld e, d                                       ; $5002: $5a
    ld d, l                                       ; $5003: $55
    cpl                                           ; $5004: $2f
    sub h                                         ; $5005: $94
    ld [hl], c                                    ; $5006: $71
    add [hl]                                      ; $5007: $86
    adc [hl]                                      ; $5008: $8e
    rrca                                          ; $5009: $0f
    ld b, l                                       ; $500a: $45
    ldh a, [$38]                                  ; $500b: $f0 $38
    dec d                                         ; $500d: $15
    sub d                                         ; $500e: $92
    scf                                           ; $500f: $37
    add [hl]                                      ; $5010: $86
    cp [hl]                                       ; $5011: $be
    ld a, [$397b]                                 ; $5012: $fa $7b $39
    rst $20                                       ; $5015: $e7
    dec b                                         ; $5016: $05
    rlca                                          ; $5017: $07
    ld e, h                                       ; $5018: $5c
    add $19                                       ; $5019: $c6 $19
    ld [hl], d                                    ; $501b: $72
    sbc a                                         ; $501c: $9f
    ld b, a                                       ; $501d: $47
    ld a, [hl]                                    ; $501e: $7e
    add hl, de                                    ; $501f: $19
    ld b, e                                       ; $5020: $43
    ld l, a                                       ; $5021: $6f
    inc h                                         ; $5022: $24
    ld c, b                                       ; $5023: $48
    ld [hl], c                                    ; $5024: $71
    ld c, $7f                                     ; $5025: $0e $7f
    or c                                          ; $5027: $b1
    inc c                                         ; $5028: $0c
    ld h, $94                                     ; $5029: $26 $94
    inc h                                         ; $502b: $24
    adc l                                         ; $502c: $8d
    sub [hl]                                      ; $502d: $96
    db $fd                                        ; $502e: $fd
    ld l, b                                       ; $502f: $68
    rla                                           ; $5030: $17
    daa                                           ; $5031: $27
    ld c, b                                       ; $5032: $48
    add hl, bc                                    ; $5033: $09
    call z, $f1b5                                 ; $5034: $cc $b5 $f1
    ld b, l                                       ; $5037: $45
    ld e, c                                       ; $5038: $59

Call_061_5039:
    xor $17                                       ; $5039: $ee $17
    sub a                                         ; $503b: $97
    sbc e                                         ; $503c: $9b
    ld c, [hl]                                    ; $503d: $4e
    dec de                                        ; $503e: $1b
    sbc d                                         ; $503f: $9a
    ld b, a                                       ; $5040: $47
    cp $1c                                        ; $5041: $fe $1c
    db $dd                                        ; $5043: $dd
    ld h, l                                       ; $5044: $65
    and b                                         ; $5045: $a0
    sub h                                         ; $5046: $94
    rst $28                                       ; $5047: $ef
    rla                                           ; $5048: $17
    ld l, l                                       ; $5049: $6d
    and $c5                                       ; $504a: $e6 $c5
    add $d1                                       ; $504c: $c6 $d1
    ld e, l                                       ; $504e: $5d
    ld b, $4a                                     ; $504f: $06 $4a
    ld a, c                                       ; $5051: $79
    ld [de], a                                    ; $5052: $12
    adc d                                         ; $5053: $8a
    ld a, c                                       ; $5054: $79
    pop hl                                        ; $5055: $e1
    cp c                                          ; $5056: $b9
    ld e, a                                       ; $5057: $5f
    rlca                                          ; $5058: $07
    ld e, h                                       ; $5059: $5c
    ld d, [hl]                                    ; $505a: $56
    sbc l                                         ; $505b: $9d
    or e                                          ; $505c: $b3
    db $ec                                        ; $505d: $ec
    ld sp, hl                                     ; $505e: $f9
    or l                                          ; $505f: $b5
    ld a, d                                       ; $5060: $7a
    ld d, c                                       ; $5061: $51
    add sp, $6a                                   ; $5062: $e8 $6a
    adc a                                         ; $5064: $8f
    ld [hl], c                                    ; $5065: $71
    rst $20                                       ; $5066: $e7
    dec sp                                        ; $5067: $3b
    xor c                                         ; $5068: $a9
    rrca                                          ; $5069: $0f
    ld a, e                                       ; $506a: $7b
    and h                                         ; $506b: $a4
    ld d, l                                       ; $506c: $55
    push af                                       ; $506d: $f5
    ld b, d                                       ; $506e: $42
    add hl, de                                    ; $506f: $19
    ld h, a                                       ; $5070: $67
    add sp, -$08                                  ; $5071: $e8 $f8
    ld d, b                                       ; $5073: $50
    inc b                                         ; $5074: $04
    adc a                                         ; $5075: $8f
    ld d, e                                       ; $5076: $53
    ld hl, $6379                                  ; $5077: $21 $79 $63
    add sp, -$55                                  ; $507a: $e8 $ab
    cp a                                          ; $507c: $bf
    sub a                                         ; $507d: $97
    ei                                            ; $507e: $fb
    dec b                                         ; $507f: $05
    ld l, l                                       ; $5080: $6d
    sub [hl]                                      ; $5081: $96
    push de                                       ; $5082: $d5
    cp $4b                                        ; $5083: $fe $4b
    ld e, l                                       ; $5085: $5d
    and a                                         ; $5086: $a7
    sub h                                         ; $5087: $94
    ld [c], a                                     ; $5088: $e2
    inc e                                         ; $5089: $1c
    db $dd                                        ; $508a: $dd
    ld h, l                                       ; $508b: $65
    and b                                         ; $508c: $a0
    sub h                                         ; $508d: $94
    rst $30                                       ; $508e: $f7
    ld d, b                                       ; $508f: $50
    ld d, d                                       ; $5090: $52
    ld a, c                                       ; $5091: $79
    inc c                                         ; $5092: $0c
    db $fd                                        ; $5093: $fd
    ld a, [hl]                                    ; $5094: $7e
    ld bc, $9b97                                  ; $5095: $01 $97 $9b
    ld c, [hl]                                    ; $5098: $4e
    db $db                                        ; $5099: $db
    ld h, e                                       ; $509a: $63
    add hl, de                                    ; $509b: $19
    db $dd                                        ; $509c: $dd

jr_061_509d:
    ld h, l                                       ; $509d: $65
    db $e4                                        ; $509e: $e4
    rst $08                                       ; $509f: $cf
    dec a                                         ; $50a0: $3d
    call $3caa                                    ; $50a1: $cd $aa $3c
    jp nc, Jump_000_3bbd                          ; $50a4: $d2 $bd $3b

    rlca                                          ; $50a7: $07
    ld c, d                                       ; $50a8: $4a
    ld a, c                                       ; $50a9: $79
    ld sp, $cd25                                  ; $50aa: $31 $25 $cd
    dec bc                                        ; $50ad: $0b
    xor l                                         ; $50ae: $ad
    add a                                         ; $50af: $87
    sub d                                         ; $50b0: $92
    xor d                                         ; $50b1: $aa

Jump_061_50b2:
    add [hl]                                      ; $50b2: $86
    rst $20                                       ; $50b3: $e7
    ld a, [hl]                                    ; $50b4: $7e
    ld bc, $5c07                                  ; $50b5: $01 $07 $5c
    add $19                                       ; $50b8: $c6 $19
    ld [hl], d                                    ; $50ba: $72
    sbc a                                         ; $50bb: $9f
    ld b, a                                       ; $50bc: $47
    ld [hl], a                                    ; $50bd: $77
    ld e, c                                       ; $50be: $59
    ld l, l                                       ; $50bf: $6d
    adc $32                                       ; $50c0: $ce $32
    ld [hl], h                                    ; $50c2: $74
    ld c, [hl]                                    ; $50c3: $4e
    jp hl                                         ; $50c4: $e9


    ld [hl+], a                                   ; $50c5: $22
    ld e, [hl]                                    ; $50c6: $5e
    add a                                         ; $50c7: $87
    ld [hl+], a                                   ; $50c8: $22
    ld e, $f9                                     ; $50c9: $1e $f9
    sbc a                                         ; $50cb: $9f
    push bc                                       ; $50cc: $c5
    add $35                                       ; $50cd: $c6 $35
    cp [hl]                                       ; $50cf: $be
    jr z, jr_061_509d                             ; $50d0: $28 $cb

    db $fd                                        ; $50d2: $fd
    ld [bc], a                                    ; $50d3: $02
    rlca                                          ; $50d4: $07
    ld e, h                                       ; $50d5: $5c
    halt                                          ; $50d6: $76
    pop hl                                        ; $50d7: $e1
    push de                                       ; $50d8: $d5
    or e                                          ; $50d9: $b3
    db $ec                                        ; $50da: $ec
    ld sp, hl                                     ; $50db: $f9
    add d                                         ; $50dc: $82
    ld a, e                                       ; $50dd: $7b
    adc h                                         ; $50de: $8c
    inc sp                                        ; $50df: $33
    rst $28                                       ; $50e0: $ef
    ld a, h                                       ; $50e1: $7c
    daa                                           ; $50e2: $27
    push af                                       ; $50e3: $f5
    ld h, c                                       ; $50e4: $61
    adc a                                         ; $50e5: $8f
    or h                                          ; $50e6: $b4
    xor d                                         ; $50e7: $aa
    ld e, [hl]                                    ; $50e8: $5e
    jr z, @-$1b                                   ; $50e9: $28 $e3

    inc c                                         ; $50eb: $0c
    dec e                                         ; $50ec: $1d
    rra                                           ; $50ed: $1f

Jump_061_50ee:
    adc d                                         ; $50ee: $8a
    ldh [$71], a                                  ; $50ef: $e0 $71
    ld a, [hl+]                                   ; $50f1: $2a
    inc h                                         ; $50f2: $24
    ld l, a                                       ; $50f3: $6f
    inc c                                         ; $50f4: $0c
    ld a, l                                       ; $50f5: $7d
    push af                                       ; $50f6: $f5
    rst $30                                       ; $50f7: $f7
    ld [hl], d                                    ; $50f8: $72
    rst $28                                       ; $50f9: $ef
    and b                                         ; $50fa: $a0
    ld h, l                                       ; $50fb: $65
    ld l, b                                       ; $50fc: $68
    ld e, [hl]                                    ; $50fd: $5e
    add a                                         ; $50fe: $87
    ld d, d                                       ; $50ff: $52
    sbc h                                         ; $5100: $9c
    add e                                         ; $5101: $83
    dec a                                         ; $5102: $3d
    jr nz, @+$6d                                  ; $5103: $20 $6b

    inc b                                         ; $5105: $04
    ld d, l                                       ; $5106: $55
    rlca                                          ; $5107: $07
    cp e                                          ; $5108: $bb
    jr c, jr_061_514c                             ; $5109: $38 $41

    ld c, d                                       ; $510b: $4a
    ld h, b                                       ; $510c: $60
    xor [hl]                                      ; $510d: $ae
    adc l                                         ; $510e: $8d
    cpl                                           ; $510f: $2f
    jp z, $af72                                   ; $5110: $ca $72 $af

    dec a                                         ; $5113: $3d
    add [hl]                                      ; $5114: $86
    ld a, [hl-]                                   ; $5115: $3a
    call nc, $dd57                                ; $5116: $d4 $57 $dd
    db $e3                                        ; $5119: $e3
    sub l                                         ; $511a: $95
    ld h, [hl]                                    ; $511b: $66
    ld c, $04                                     ; $511c: $0e $04
    rla                                           ; $511e: $17
    jp z, Jump_000_0b48                           ; $511f: $ca $48 $0b

    dec sp                                        ; $5122: $3b
    add a                                         ; $5123: $87
    and $c5                                       ; $5124: $e6 $c5
    ret nc                                        ; $5126: $d0

    ld b, a                                       ; $5127: $47
    ld [hl], a                                    ; $5128: $77
    ld e, c                                       ; $5129: $59
    and l                                         ; $512a: $a5
    adc b                                         ; $512b: $88
    ld a, [c]                                     ; $512c: $f2
    ld e, d                                       ; $512d: $5a
    add hl, bc                                    ; $512e: $09
    push de                                       ; $512f: $d5
    or d                                          ; $5130: $b2
    jr z, @+$01                                   ; $5131: $28 $ff

    inc l                                         ; $5133: $2c
    ld l, e                                       ; $5134: $6b
    ld e, b                                       ; $5135: $58
    ld c, e                                       ; $5136: $4b
    ld hl, sp+$59                                 ; $5137: $f8 $59
    reti                                          ; $5139: $d9


    ld [hl-], a                                   ; $513a: $32
    add [hl]                                      ; $513b: $86
    cp [hl]                                       ; $513c: $be
    inc de                                        ; $513d: $13
    ld c, a                                       ; $513e: $4f
    ret c                                         ; $513f: $d8

    ld hl, $8f6a                                  ; $5140: $21 $6a $8f
    xor e                                         ; $5143: $ab
    ld c, e                                       ; $5144: $4b
    cp a                                          ; $5145: $bf
    ld e, a                                       ; $5146: $5f
    rst $10                                       ; $5147: $d7
    ld d, c                                       ; $5148: $51
    or d                                          ; $5149: $b2
    ld [hl], $4b                                  ; $514a: $36 $4b

jr_061_514c:
    ret nz                                        ; $514c: $c0

    ei                                            ; $514d: $fb
    dec b                                         ; $514e: $05
    rla                                           ; $514f: $17
    ld [hl], a                                    ; $5150: $77
    ld a, b                                       ; $5151: $78
    jp nc, $be82                                  ; $5152: $d2 $82 $be

    ld [hl], a                                    ; $5155: $77
    reti                                          ; $5156: $d9


    rst $00                                       ; $5157: $c7
    add l                                         ; $5158: $85
    cp d                                          ; $5159: $ba
    jp nc, Jump_000_081c                          ; $515a: $d2 $1c $08

    ld c, $76                                     ; $515d: $0e $76
    ld [hl], c                                    ; $515f: $71
    add d                                         ; $5160: $82
    sub h                                         ; $5161: $94
    ret nz                                        ; $5162: $c0

    ld e, h                                       ; $5163: $5c
    dec de                                        ; $5164: $1b
    ld e, a                                       ; $5165: $5f
    sub h                                         ; $5166: $94
    ld h, l                                       ; $5167: $65
    and c                                         ; $5168: $a1
    xor h                                         ; $5169: $ac
    ld [hl], $57                                  ; $516a: $36 $57
    jr nz, jr_061_51e4                            ; $516c: $20 $76

    adc [hl]                                      ; $516e: $8e
    xor $32                                       ; $516f: $ee $32
    add h                                         ; $5171: $84
    ld [hl-], a                                   ; $5172: $32
    add [hl]                                      ; $5173: $86
    sbc $3f                                       ; $5174: $de $3f
    cp d                                          ; $5176: $ba
    ld d, a                                       ; $5177: $57
    adc a                                         ; $5178: $8f
    and c                                         ; $5179: $a1
    rst $28                                       ; $517a: $ef
    di                                            ; $517b: $f3
    ld c, d                                       ; $517c: $4a
    ld [hl], e                                    ; $517d: $73
    jr nz, jr_061_51b8                            ; $517e: $20 $38

    ret c                                         ; $5180: $d8

    inc bc                                        ; $5181: $03
    or d                                          ; $5182: $b2
    ld b, [hl]                                    ; $5183: $46
    ld d, b                                       ; $5184: $50
    push af                                       ; $5185: $f5
    ld a, [hl]                                    ; $5186: $7e
    ld bc, $5c07                                  ; $5187: $01 $07 $5c
    ld b, [hl]                                    ; $518a: $46
    cp $1c                                        ; $518b: $fe $1c
    cp d                                          ; $518d: $ba
    add $94                                       ; $518e: $c6 $94
    ld c, h                                       ; $5190: $4c
    rrca                                          ; $5191: $0f
    sub h                                         ; $5192: $94
    ld a, [c]                                     ; $5193: $f2
    ld l, d                                       ; $5194: $6a
    ld [hl], e                                    ; $5195: $73
    adc a                                         ; $5196: $8f
    adc e                                         ; $5197: $8b
    ld sp, hl                                     ; $5198: $f9
    ld a, [hl]                                    ; $5199: $7e
    ld bc, $e66d                                  ; $519a: $01 $6d $e6
    push bc                                       ; $519d: $c5
    ccf                                           ; $519e: $3f
    ld h, a                                       ; $519f: $67
    ld e, c                                       ; $51a0: $59
    ld d, l                                       ; $51a1: $55
    rst $38                                       ; $51a2: $ff
    cp c                                          ; $51a3: $b9
    ld [hl], a                                    ; $51a4: $77
    ld l, c                                       ; $51a5: $69
    ld a, b                                       ; $51a6: $78
    add $d0                                       ; $51a7: $c6 $d0
    dec de                                        ; $51a9: $1b
    cp a                                          ; $51aa: $bf
    ld a, b                                       ; $51ab: $78
    jp nc, $a1cc                                  ; $51ac: $d2 $cc $a1

    ld a, $f2                                     ; $51af: $3e $f2
    rst $20                                       ; $51b1: $e7
    ld e, d                                       ; $51b2: $5a
    sub [hl]                                      ; $51b3: $96
    ld h, d                                       ; $51b4: $62
    pop af                                        ; $51b5: $f1
    cp l                                          ; $51b6: $bd
    inc bc                                        ; $51b7: $03

jr_061_51b8:
    ld l, $6b                                     ; $51b8: $2e $6b
    ld [hl], h                                    ; $51ba: $74
    adc b                                         ; $51bb: $88
    sbc l                                         ; $51bc: $9d
    inc hl                                        ; $51bd: $23
    sbc l                                         ; $51be: $9d

jr_061_51bf:
    rst $30                                       ; $51bf: $f7
    dec bc                                        ; $51c0: $0b
    sub a                                         ; $51c1: $97
    add [hl]                                      ; $51c2: $86
    ld h, h                                       ; $51c3: $64
    di                                            ; $51c4: $f3
    ld d, h                                       ; $51c5: $54
    xor b                                         ; $51c6: $a8
    db $ec                                        ; $51c7: $ec
    call c, Call_000_2789                         ; $51c8: $dc $89 $27
    db $ec                                        ; $51cb: $ec
    db $10                                        ; $51cc: $10
    or l                                          ; $51cd: $b5
    rst $00                                       ; $51ce: $c7
    push de                                       ; $51cf: $d5
    and l                                         ; $51d0: $a5
    rst $28                                       ; $51d1: $ef
    or c                                          ; $51d2: $b1
    adc h                                         ; $51d3: $8c
    xor $32                                       ; $51d4: $ee $32
    ld d, b                                       ; $51d6: $50
    jp z, $cdab                                   ; $51d7: $ca $ab $cd

    dec a                                         ; $51da: $3d
    ld l, $e6                                     ; $51db: $2e $e6
    ld a, e                                       ; $51dd: $7b
    sub a                                         ; $51de: $97
    ld a, [hl]                                    ; $51df: $7e
    add hl, de                                    ; $51e0: $19
    db $dd                                        ; $51e1: $dd
    ld h, l                                       ; $51e2: $65
    ld d, c                                       ; $51e3: $51

jr_061_51e4:
    ld [hl], e                                    ; $51e4: $73
    daa                                           ; $51e5: $27
    sbc [hl]                                      ; $51e6: $9e
    or b                                          ; $51e7: $b0
    ld b, e                                       ; $51e8: $43
    call nc, Call_061_571e                        ; $51e9: $d4 $1e $57
    sub a                                         ; $51ec: $97
    ld a, [hl]                                    ; $51ed: $7e
    adc $0b                                       ; $51ee: $ce $0b
    rlca                                          ; $51f0: $07
    cp $fd                                        ; $51f1: $fe $fd
    ld [bc], a                                    ; $51f3: $02
    db $ed                                        ; $51f4: $ed
    pop af                                        ; $51f5: $f1
    rst $00                                       ; $51f6: $c7
    xor c                                         ; $51f7: $a9
    cpl                                           ; $51f8: $2f
    and e                                         ; $51f9: $a3
    cp e                                          ; $51fa: $bb
    adc h                                         ; $51fb: $8c
    and h                                         ; $51fc: $a4
    ld d, e                                       ; $51fd: $53
    ld a, d                                       ; $51fe: $7a
    bit 7, e                                      ; $51ff: $cb $7b
    adc h                                         ; $5201: $8c
    rst $20                                       ; $5202: $e7
    cp h                                          ; $5203: $bc
    db $ed                                        ; $5204: $ed
    ld a, c                                       ; $5205: $79
    rst $28                                       ; $5206: $ef
    jp z, $ecc0                                   ; $5207: $ca $c0 $ec

    inc e                                         ; $520a: $1c
    ld sp, hl                                     ; $520b: $f9
    ld [hl], e                                    ; $520c: $73
    inc c                                         ; $520d: $0c
    cp l                                          ; $520e: $bd
    ld a, a                                       ; $520f: $7f
    ld [hl], h                                    ; $5210: $74
    xor a                                         ; $5211: $af
    ld e, $43                                     ; $5212: $1e $43
    rst $18                                       ; $5214: $df
    rst $20                                       ; $5215: $e7
    sub l                                         ; $5216: $95
    and $40                                       ; $5217: $e6 $40
    ld [hl], b                                    ; $5219: $70
    or b                                          ; $521a: $b0
    rlca                                          ; $521b: $07
    ld h, h                                       ; $521c: $64
    adc l                                         ; $521d: $8d
    and b                                         ; $521e: $a0
    ld [$ef24], a                                 ; $521f: $ea $24 $ef
    sbc l                                         ; $5222: $9d
    ld a, c                                       ; $5223: $79
    and $19                                       ; $5224: $e6 $19
    adc e                                         ; $5226: $8b
    ld b, d                                       ; $5227: $42
    xor $f3                                       ; $5228: $ee $f3
    ld hl, sp+$17                                 ; $522a: $f8 $17
    rst $08                                       ; $522c: $cf
    cp h                                          ; $522d: $bc
    di                                            ; $522e: $f3
    sbc l                                         ; $522f: $9d
    call nc, $3d87                                ; $5230: $d4 $87 $3d
    jp nc, $7aaa                                  ; $5233: $d2 $aa $7a

    and c                                         ; $5236: $a1
    adc h                                         ; $5237: $8c
    inc sp                                        ; $5238: $33
    ld [hl], h                                    ; $5239: $74
    ld a, h                                       ; $523a: $7c
    jr z, jr_061_51bf                             ; $523b: $28 $82

    rst $00                                       ; $523d: $c7
    xor c                                         ; $523e: $a9
    sub b                                         ; $523f: $90
    ld a, h                                       ; $5240: $7c
    cp a                                          ; $5241: $bf
    rlca                                          ; $5242: $07
    sbc e                                         ; $5243: $9b
    and e                                         ; $5244: $a3
    cp e                                          ; $5245: $bb
    xor h                                         ; $5246: $ac
    ld a, d                                       ; $5247: $7a
    ld [$a132], sp                                ; $5248: $08 $32 $a1
    sub [hl]                                      ; $524b: $96
    ld l, [hl]                                    ; $524c: $6e
    jp c, $bcc8                                   ; $524d: $da $c8 $bc

    rst $08                                       ; $5250: $cf
    ld a, c                                       ; $5251: $79
    ld bc, $ceed                                  ; $5252: $01 $ed $ce
    add hl, sp                                    ; $5255: $39
    add a                                         ; $5256: $87
    sub [hl]                                      ; $5257: $96
    ld a, e                                       ; $5258: $7b
    db $ed                                        ; $5259: $ed
    ld a, c                                       ; $525a: $79
    rst $28                                       ; $525b: $ef
    jp z, $ecc0                                   ; $525c: $ca $c0 $ec

    ld e, h                                       ; $525f: $5c
    ld l, c                                       ; $5260: $69
    and $d0                                       ; $5261: $e6 $d0
    add hl, bc                                    ; $5263: $09
    add d                                         ; $5264: $82
    ld l, e                                       ; $5265: $6b
    dec [hl]                                      ; $5266: $35
    rst $20                                       ; $5267: $e7
    ld h, d                                       ; $5268: $62
    add hl, de                                    ; $5269: $19
    reti                                          ; $526a: $d9


    inc d                                         ; $526b: $14
    cp h                                          ; $526c: $bc
    ld [hl], a                                    ; $526d: $77
    dec e                                         ; $526e: $1d
    xor h                                         ; $526f: $ac
    cp d                                          ; $5270: $ba
    xor [hl]                                      ; $5271: $ae
    ld e, d                                       ; $5272: $5a
    sbc h                                         ; $5273: $9c
    and [hl]                                      ; $5274: $a6
    xor l                                         ; $5275: $ad
    db $fd                                        ; $5276: $fd
    ld h, a                                       ; $5277: $67
    ld l, d                                       ; $5278: $6a
    xor $17                                       ; $5279: $ee $17
    rst $10                                       ; $527b: $d7
    ld [c], a                                     ; $527c: $e2
    ld b, e                                       ; $527d: $43
    ld c, c                                       ; $527e: $49
    ld h, l                                       ; $527f: $65
    cp [hl]                                       ; $5280: $be
    ld [hl], a                                    ; $5281: $77
    dec e                                         ; $5282: $1d
    xor h                                         ; $5283: $ac
    inc [hl]                                      ; $5284: $34
    ld [hl], e                                    ; $5285: $73
    jr nz, jr_061_52c0                            ; $5286: $20 $38

    add [hl]                                      ; $5288: $86
    cp [hl]                                       ; $5289: $be
    ld b, [hl]                                    ; $528a: $46
    ld d, b                                       ; $528b: $50
    push de                                       ; $528c: $d5
    ld [c], a                                     ; $528d: $e2
    ld a, e                                       ; $528e: $7b
    rst $10                                       ; $528f: $d7
    ld d, c                                       ; $5290: $51
    ld [hl], d                                    ; $5291: $72
    or c                                          ; $5292: $b1
    and l                                         ; $5293: $a5
    ld b, e                                       ; $5294: $43
    reti                                          ; $5295: $d9


    rst $20                                       ; $5296: $e7
    ld b, l                                       ; $5297: $45
    call nc, $bc5e                                ; $5298: $d4 $5e $bc
    rlca                                          ; $529b: $07
    jp z, Jump_000_02fd                           ; $529c: $ca $fd $02

    rst $20                                       ; $529f: $e7
    rlca                                          ; $52a0: $07
    ld d, l                                       ; $52a1: $55
    ld [hl], a                                    ; $52a2: $77
    and $99                                       ; $52a3: $e6 $99
    ld h, a                                       ; $52a5: $67
    call z, Call_061_7439                         ; $52a6: $cc $39 $74
    add d                                         ; $52a9: $82
    and b                                         ; $52aa: $a0
    rst $28                                       ; $52ab: $ef
    or l                                          ; $52ac: $b5
    db $eb                                        ; $52ad: $eb
    ld d, l                                       ; $52ae: $55
    db $ed                                        ; $52af: $ed
    di                                            ; $52b0: $f3
    ld d, b                                       ; $52b1: $50
    sbc a                                         ; $52b2: $9f
    jp nc, Jump_061_4f65                          ; $52b3: $d2 $65 $4f

    ld [hl], e                                    ; $52b6: $73
    and l                                         ; $52b7: $a5
    add hl, sp                                    ; $52b8: $39
    db $10                                        ; $52b9: $10
    inc e                                         ; $52ba: $1c
    inc c                                         ; $52bb: $0c
    dec l                                         ; $52bc: $2d
    ld l, e                                       ; $52bd: $6b
    inc b                                         ; $52be: $04
    ld d, l                                       ; $52bf: $55

jr_061_52c0:
    add a                                         ; $52c0: $87
    ld a, [$9fc8]                                 ; $52c1: $fa $c8 $9f
    ld h, e                                       ; $52c4: $63
    add sp, -$03                                  ; $52c5: $e8 $fd
    and e                                         ; $52c7: $a3
    ld a, e                                       ; $52c8: $7b
    push af                                       ; $52c9: $f5
    jr @-$04                                      ; $52ca: $18 $fa

    ld a, $af                                     ; $52cc: $3e $af
    reti                                          ; $52ce: $d9


    db $10                                        ; $52cf: $10
    rst $18                                       ; $52d0: $df
    cp e                                          ; $52d1: $bb
    jr c, @+$43                                   ; $52d2: $38 $41

    ld c, d                                       ; $52d4: $4a
    ld h, b                                       ; $52d5: $60
    xor [hl]                                      ; $52d6: $ae
    adc l                                         ; $52d7: $8d
    cpl                                           ; $52d8: $2f
    jp z, $fe32                                   ; $52d9: $ca $32 $fe

    push bc                                       ; $52dc: $c5
    add hl, sp                                    ; $52dd: $39
    ld d, b                                       ; $52de: $50
    jp z, $52fb                                   ; $52df: $ca $fb $52

    db $e3                                        ; $52e2: $e3
    sbc a                                         ; $52e3: $9f
    and $45                                       ; $52e4: $e6 $45
    ld hl, $40f7                                  ; $52e6: $21 $f7 $40
    ld h, l                                       ; $52e9: $65
    and e                                         ; $52ea: $a3
    rla                                           ; $52eb: $17
    ld a, [de]                                    ; $52ec: $1a
    ld [hl], h                                    ; $52ed: $74
    dec hl                                        ; $52ee: $2b
    halt                                          ; $52ef: $76
    adc $bd                                       ; $52f0: $ce $bd
    dec sp                                        ; $52f2: $3b
    and a                                         ; $52f3: $a7
    ld [hl-], a                                   ; $52f4: $32
    or h                                          ; $52f5: $b4
    ld a, [hl+]                                   ; $52f6: $2a
    cp d                                          ; $52f7: $ba
    ei                                            ; $52f8: $fb
    ld a, [hl]                                    ; $52f9: $7e
    ld bc, $5c07                                  ; $52fa: $01 $07 $5c
    and $5c                                       ; $52fd: $e6 $5c
    sub h                                         ; $52ff: $94
    sbc d                                         ; $5300: $9a
    jp nz, Jump_061_50ee                          ; $5301: $c2 $ee $50

    and [hl]                                      ; $5304: $a6
    adc h                                         ; $5305: $8c
    ei                                            ; $5306: $fb
    pop de                                        ; $5307: $d1
    ret nc                                        ; $5308: $d0

    ld c, h                                       ; $5309: $4c
    dec de                                        ; $530a: $1b
    sbc c                                         ; $530b: $99
    scf                                           ; $530c: $37
    ld l, l                                       ; $530d: $6d
    adc a                                         ; $530e: $8f
    ld h, l                                       ; $530f: $65
    ld [hl], h                                    ; $5310: $74
    sub a                                         ; $5311: $97
    dec a                                         ; $5312: $3d
    call $f431                                    ; $5313: $cd $31 $f4
    add $2f                                       ; $5316: $c6 $2f
    ld e, $43                                     ; $5318: $1e $43
    rst $18                                       ; $531a: $df
    rst $10                                       ; $531b: $d7
    ei                                            ; $531c: $fb
    or a                                          ; $531d: $b7
    call c, $e72f                                 ; $531e: $dc $2f $e7
    ld e, e                                       ; $5321: $5b
    push af                                       ; $5322: $f5
    ld e, a                                       ; $5323: $5f
    sbc h                                         ; $5324: $9c
    or h                                          ; $5325: $b4
    and c                                         ; $5326: $a1
    sbc c                                         ; $5327: $99
    cp l                                          ; $5328: $bd
    jr jr_061_532f                                ; $5329: $18 $04

    ld [hl], l                                    ; $532b: $75
    rst $08                                       ; $532c: $cf
    cp c                                          ; $532d: $b9
    xor [hl]                                      ; $532e: $ae

jr_061_532f:
    dec hl                                        ; $532f: $2b
    ld h, l                                       ; $5330: $65
    cp [hl]                                       ; $5331: $be
    ld e, a                                       ; $5332: $5f
    rst $10                                       ; $5333: $d7
    ld d, c                                       ; $5334: $51
    ld [hl], d                                    ; $5335: $72
    or c                                          ; $5336: $b1
    and l                                         ; $5337: $a5
    ld b, e                                       ; $5338: $43
    reti                                          ; $5339: $d9


    rst $20                                       ; $533a: $e7
    sub c                                         ; $533b: $91
    sub [hl]                                      ; $533c: $96
    ret c                                         ; $533d: $d8

    add d                                         ; $533e: $82
    ld e, $42                                     ; $533f: $1e $42
    add hl, de                                    ; $5341: $19
    add hl, de                                    ; $5342: $19
    ld [$32d0], a                                 ; $5343: $ea $d0 $32
    and c                                         ; $5346: $a1
    ld d, h                                       ; $5347: $54
    or $d4                                        ; $5348: $f6 $d4
    xor a                                         ; $534a: $af
    push de                                       ; $534b: $d5
    jp hl                                         ; $534c: $e9


    cp h                                          ; $534d: $bc
    ld e, a                                       ; $534e: $5f
    rlca                                          ; $534f: $07
    sbc e                                         ; $5350: $9b
    and e                                         ; $5351: $a3
    cp e                                          ; $5352: $bb
    inc l                                         ; $5353: $2c
    ld l, d                                       ; $5354: $6a

jr_061_5355:
    xor [hl]                                      ; $5355: $ae
    add a                                         ; $5356: $87
    ld a, b                                       ; $5357: $78
    inc c                                         ; $5358: $0c
    ld a, l                                       ; $5359: $7d
    sbc a                                         ; $535a: $9f
    rst $00                                       ; $535b: $c7
    cp a                                          ; $535c: $bf
    ld a, e                                       ; $535d: $7b
    adc a                                         ; $535e: $8f
    ld [hl], c                                    ; $535f: $71
    ld l, b                                       ; $5360: $68
    ld e, c                                       ; $5361: $59
    inc d                                         ; $5362: $14
    ld [hl-], a                                   ; $5363: $32
    and c                                         ; $5364: $a1
    ld a, b                                       ; $5365: $78
    ld [$ead7], a                                 ; $5366: $ea $d7 $ea
    ld [hl], h                                    ; $5369: $74
    sbc $2f                                       ; $536a: $de $2f
    rst $20                                       ; $536c: $e7
    ld e, e                                       ; $536d: $5b
    push af                                       ; $536e: $f5
    ld e, a                                       ; $536f: $5f
    sbc h                                         ; $5370: $9c
    or h                                          ; $5371: $b4
    sub c                                         ; $5372: $91
    ld a, c                                       ; $5373: $79
    db $d3                                        ; $5374: $d3
    or $80                                        ; $5375: $f6 $80
    ld c, h                                       ; $5377: $4c
    db $fd                                        ; $5378: $fd
    ld e, d                                       ; $5379: $5a
    dec a                                         ; $537a: $3d
    rst $20                                       ; $537b: $e7
    ld a, [de]                                    ; $537c: $1a
    xor c                                         ; $537d: $a9
    inc hl                                        ; $537e: $23
    xor a                                         ; $537f: $af
    cp $e7                                        ; $5380: $fe $e7
    or c                                          ; $5382: $b1
    call c, $172f                                 ; $5383: $dc $2f $17
    add l                                         ; $5386: $85
    xor h                                         ; $5387: $ac
    ld d, b                                       ; $5388: $50
    jr jr_061_5355                                ; $5389: $18 $ca

    ret z                                         ; $538b: $c8

    cp h                                          ; $538c: $bc
    ld l, c                                       ; $538d: $69
    adc e                                         ; $538e: $8b
    ld b, e                                       ; $538f: $43
    cp d                                          ; $5390: $ba
    ld c, [hl]                                    ; $5391: $4e
    inc [hl]                                      ; $5392: $34
    ld e, [hl]                                    ; $5393: $5e
    pop de                                        ; $5394: $d1
    ld a, e                                       ; $5395: $7b
    inc a                                         ; $5396: $3c
    rst $20                                       ; $5397: $e7
    ld a, [hl+]                                   ; $5398: $2a
    ld a, a                                       ; $5399: $7f
    add h                                         ; $539a: $84
    or d                                          ; $539b: $b2
    jp nc, $df3f                                  ; $539c: $d2 $3f $df

    cpl                                           ; $539f: $2f
    db $ed                                        ; $53a0: $ed
    ccf                                           ; $53a1: $3f
    add a                                         ; $53a2: $87
    ld a, [$4854]                                 ; $53a3: $fa $54 $48
    ld [hl], $9f                                  ; $53a6: $36 $9f
    di                                            ; $53a8: $f3
    ld [bc], a                                    ; $53a9: $02
    sub a                                         ; $53aa: $97
    sbc e                                         ; $53ab: $9b
    ld a, [hl]                                    ; $53ac: $7e
    cp a                                          ; $53ad: $bf
    sub a                                         ; $53ae: $97
    scf                                           ; $53af: $37
    ld l, c                                       ; $53b0: $69
    ld a, e                                       ; $53b1: $7b
    inc l                                         ; $53b2: $2c
    xor e                                         ; $53b3: $ab
    ld e, [hl]                                    ; $53b4: $5e
    ld l, l                                       ; $53b5: $6d
    xor $f3                                       ; $53b6: $ee $f3
    and d                                         ; $53b8: $a2
    and $a2                                       ; $53b9: $e6 $a2
    rst $08                                       ; $53bb: $cf
    add e                                         ; $53bc: $83
    and c                                         ; $53bd: $a1
    ld sp, hl                                     ; $53be: $f9
    sbc $01                                       ; $53bf: $de $01
    sub a                                         ; $53c1: $97
    xor c                                         ; $53c2: $a9
    cpl                                           ; $53c3: $2f
    inc bc                                        ; $53c4: $03
    and l                                         ; $53c5: $a5
    cp h                                          ; $53c6: $bc
    ret c                                         ; $53c7: $d8

    jp nz, $e91e                                  ; $53c8: $c2 $1e $e9

    inc e                                         ; $53cb: $1c
    jp hl                                         ; $53cc: $e9


    xor $e1                                       ; $53cd: $ee $e1
    cpl                                           ; $53cf: $2f
    sub [hl]                                      ; $53d0: $96
    ei                                            ; $53d1: $fb
    dec b                                         ; $53d2: $05
    sub a                                         ; $53d3: $97
    scf                                           ; $53d4: $37
    ld [hl], e                                    ; $53d5: $73
    xor b                                         ; $53d6: $a8
    rst $08                                       ; $53d7: $cf
    cp c                                          ; $53d8: $b9
    adc b                                         ; $53d9: $88
    sub d                                         ; $53da: $92
    ld [$b685], sp                                ; $53db: $08 $85 $b6
    or $9f                                        ; $53de: $f6 $9f
    xor c                                         ; $53e0: $a9
    and c                                         ; $53e1: $a1
    ld c, l                                       ; $53e2: $4d
    ld a, l                                       ; $53e3: $7d
    ld e, c                                       ; $53e4: $59
    inc c                                         ; $53e5: $0c
    db $e3                                        ; $53e6: $e3
    ld e, a                                       ; $53e7: $5f
    inc a                                         ; $53e8: $3c
    add [hl]                                      ; $53e9: $86
    sbc $f8                                       ; $53ea: $de $f8
    push bc                                       ; $53ec: $c5
    ld h, e                                       ; $53ed: $63
    add sp, $6b                                   ; $53ee: $e8 $6b
    rrca                                          ; $53f0: $0f
    add l                                         ; $53f1: $85
    ret c                                         ; $53f2: $d8

    ld c, a                                       ; $53f3: $4f
    xor [hl]                                      ; $53f4: $ae
    rst $30                                       ; $53f5: $f7
    dec bc                                        ; $53f6: $0b
    ld l, l                                       ; $53f7: $6d
    ld a, [$7854]                                 ; $53f8: $fa $54 $78
    ld d, [hl]                                    ; $53fb: $56
    cp e                                          ; $53fc: $bb
    rra                                           ; $53fd: $1f
    ld e, $43                                     ; $53fe: $1e $43
    ld e, a                                       ; $5400: $5f
    ld d, l                                       ; $5401: $55
    rra                                           ; $5402: $1f
    cp l                                          ; $5403: $bd
    rst $00                                       ; $5404: $c7
    ld [hl-], a                                   ; $5405: $32
    pop de                                        ; $5406: $d1
    rst $20                                       ; $5407: $e7
    inc e                                         ; $5408: $1c
    add d                                         ; $5409: $82
    ld a, b                                       ; $540a: $78
    or l                                          ; $540b: $b5
    sbc c                                         ; $540c: $99
    inc hl                                        ; $540d: $23
    db $dd                                        ; $540e: $dd
    call Call_000_0bf7                            ; $540f: $cd $f7 $0b
    ld l, l                                       ; $5412: $6d
    ld a, [$9fc8]                                 ; $5413: $fa $c8 $9f
    adc e                                         ; $5416: $8b
    add hl, hl                                    ; $5417: $29
    ld l, c                                       ; $5418: $69
    ld e, $19                                     ; $5419: $1e $19
    ld [$ff48], a                                 ; $541b: $ea $48 $ff
    xor $b4                                       ; $541e: $ee $b4
    ret nc                                        ; $5420: $d0

    ld d, [hl]                                    ; $5421: $56
    sbc l                                         ; $5422: $9d
    and e                                         ; $5423: $a3
    cp e                                          ; $5424: $bb
    call c, Call_061_6d2f                         ; $5425: $dc $2f $6d
    ld a, [$73aa]                                 ; $5428: $fa $aa $73
    db $fd                                        ; $542b: $fd
    ld c, e                                       ; $542c: $4b
    pop hl                                        ; $542d: $e1
    dec [hl]                                      ; $542e: $35
    adc h                                         ; $542f: $8c
    jp hl                                         ; $5430: $e9


    jp hl                                         ; $5431: $e9


    jr c, jr_061_543f                             ; $5432: $38 $0b

    xor [hl]                                      ; $5434: $ae
    ld [bc], a                                    ; $5435: $02
    ld d, [hl]                                    ; $5436: $56
    or $ca                                        ; $5437: $f6 $ca
    sub a                                         ; $5439: $97
    ld [hl-], a                                   ; $543a: $32
    cp d                                          ; $543b: $ba
    bit 5, d                                      ; $543c: $cb $6a
    ld [hl], e                                    ; $543e: $73

jr_061_543f:
    ld [$7ee5], sp                                ; $543f: $08 $e5 $7e
    ld bc, $5c07                                  ; $5442: $01 $07 $5c
    ld b, [hl]                                    ; $5445: $46
    ld [hl], $1b                                  ; $5446: $36 $1b
    adc $7d                                       ; $5448: $ce $7d
    sbc [hl]                                      ; $544a: $9e
    ld a, [$cb4f]                                 ; $544b: $fa $4f $cb
    or d                                          ; $544e: $b2
    add sp, $77                                   ; $544f: $e8 $77
    ld [hl], h                                    ; $5451: $74
    xor [hl]                                      ; $5452: $ae
    ld h, c                                       ; $5453: $61
    ld c, h                                       ; $5454: $4c
    ld c, a                                       ; $5455: $4f
    rst $00                                       ; $5456: $c7
    ld b, l                                       ; $5457: $45
    ld hl, $5087                                  ; $5458: $21 $87 $50
    add [hl]                                      ; $545b: $86
    ld d, $f1                                     ; $545c: $16 $f1
    jp z, Jump_061_4297                           ; $545e: $ca $97 $42

    dec de                                        ; $5461: $1b
    sbc c                                         ; $5462: $99
    rst $30                                       ; $5463: $f7
    dec bc                                        ; $5464: $0b
    rst $10                                       ; $5465: $d7
    pop bc                                        ; $5466: $c1
    ld h, d                                       ; $5467: $62
    add sp, $6b                                   ; $5468: $e8 $6b

jr_061_546a:
    dec h                                         ; $546a: $25
    and l                                         ; $546b: $a5
    ld a, b                                       ; $546c: $78
    sub [hl]                                      ; $546d: $96
    dec a                                         ; $546e: $3d
    jr nz, @-$16                                  ; $546f: $20 $e8

    add a                                         ; $5471: $87
    ld a, [hl+]                                   ; $5472: $2a
    inc a                                         ; $5473: $3c
    add [hl]                                      ; $5474: $86
    ld a, $4a                                     ; $5475: $3e $4a
    ld a, d                                       ; $5477: $7a
    ld d, c                                       ; $5478: $51
    ret z                                         ; $5479: $c8

    ld hl, $da14                                  ; $547a: $21 $14 $da
    ret z                                         ; $547d: $c8

    jr jr_061_546a                                ; $547e: $18 $ea

    ld d, b                                       ; $5480: $50
    ld e, a                                       ; $5481: $5f
    and e                                         ; $5482: $a3
    ld b, e                                       ; $5483: $43
    db $ec                                        ; $5484: $ec
    ld e, h                                       ; $5485: $5c
    ld l, h                                       ; $5486: $6c
    call c, $dc63                                 ; $5487: $dc $63 $dc
    rst $20                                       ; $548a: $e7
    pop af                                        ; $548b: $f1
    ld l, a                                       ; $548c: $6f
    ld hl, sp+$7e                                 ; $548d: $f8 $7e
    ld bc, $1be7                                  ; $548f: $01 $e7 $1b
    db $d3                                        ; $5492: $d3
    inc hl                                        ; $5493: $23
    db $dd                                        ; $5494: $dd
    ld [hl], c                                    ; $5495: $71
    ld l, b                                       ; $5496: $68
    ld de, $7caf                                  ; $5497: $11 $af $7c
    add hl, hl                                    ; $549a: $29
    or h                                          ; $549b: $b4
    sub c                                         ; $549c: $91
    ld a, c                                       ; $549d: $79
    cp a                                          ; $549e: $bf
    rlca                                          ; $549f: $07
    ld e, h                                       ; $54a0: $5c
    ld b, [hl]                                    ; $54a1: $46
    ld [hl], $1b                                  ; $54a2: $36 $1b
    adc $81                                       ; $54a4: $ce $81
    ld d, d                                       ; $54a6: $52
    sbc $e7                                       ; $54a7: $de $e7
    and c                                         ; $54a9: $a1
    ld a, $15                                     ; $54aa: $3e $15
    sbc [hl]                                      ; $54ac: $9e
    rst $00                                       ; $54ad: $c7
    cp c                                          ; $54ae: $b9
    jp c, $ed5c                                   ; $54af: $da $5c $ed

    ld a, [hl]                                    ; $54b2: $7e
    ld a, b                                       ; $54b3: $78
    inc c                                         ; $54b4: $0c
    ld a, l                                       ; $54b5: $7d
    ld d, l                                       ; $54b6: $55
    ld a, l                                       ; $54b7: $7d
    db $f4                                        ; $54b8: $f4
    ret nc                                        ; $54b9: $d0

    ld [hl+], a                                   ; $54ba: $22
    ld e, [hl]                                    ; $54bb: $5e
    ld sp, hl                                     ; $54bc: $f9
    ld d, d                                       ; $54bd: $52
    ld l, b                                       ; $54be: $68
    inc hl                                        ; $54bf: $23
    di                                            ; $54c0: $f3
    ld a, [hl]                                    ; $54c1: $7e
    ld bc, $fa6d                                  ; $54c2: $01 $6d $fa
    sbc h                                         ; $54c5: $9c
    ld a, e                                       ; $54c6: $7b
    ld e, h                                       ; $54c7: $5c
    call z, $dfe3                                 ; $54c8: $cc $e3 $df
    ld l, d                                       ; $54cb: $6a
    add hl, sp                                    ; $54cc: $39
    ld l, c                                       ; $54cd: $69
    inc hl                                        ; $54ce: $23
    di                                            ; $54cf: $f3
    ld a, [hl]                                    ; $54d0: $7e
    ld bc, $e7e7                                  ; $54d1: $01 $e7 $e7
    adc a                                         ; $54d4: $8f
    inc bc                                        ; $54d5: $03
    ld l, l                                       ; $54d6: $6d
    ld l, b                                       ; $54d7: $68
    sbc [hl]                                      ; $54d8: $9e
    ld [hl], e                                    ; $54d9: $73
    db $fc                                        ; $54da: $fc
    ld e, e                                       ; $54db: $5b
    dec l                                         ; $54dc: $2d
    daa                                           ; $54dd: $27
    rst $28                                       ; $54de: $ef
    di                                            ; $54df: $f3
    ld h, d                                       ; $54e0: $62
    dec bc                                        ; $54e1: $0b
    ld a, d                                       ; $54e2: $7a
    inc c                                         ; $54e3: $0c
    cp l                                          ; $54e4: $bd
    pop af                                        ; $54e5: $f1
    adc e                                         ; $54e6: $8b
    rst $00                                       ; $54e7: $c7
    ret nc                                        ; $54e8: $d0

    ld h, a                                       ; $54e9: $67
    ld b, c                                       ; $54ea: $41
    pop de                                        ; $54eb: $d1
    ld h, a                                       ; $54ec: $67
    sbc c                                         ; $54ed: $99
    ld a, [$8b4f]                                 ; $54ee: $fa $4f $8b
    ld [hl], $32                                  ; $54f1: $36 $32

jr_061_54f3:
    rst $28                                       ; $54f3: $ef
    rla                                           ; $54f4: $17
    ld l, l                                       ; $54f5: $6d
    ld a, [$ab9c]                                 ; $54f6: $fa $9c $ab
    ld e, a                                       ; $54f9: $5f
    ret nc                                        ; $54fa: $d0

    dec e                                         ; $54fb: $1d
    jp z, Jump_000_2940                           ; $54fc: $ca $40 $29

    ld c, a                                       ; $54ff: $4f
    ld b, d                                       ; $5500: $42
    or c                                          ; $5501: $b1
    adc h                                         ; $5502: $8c
    xor c                                         ; $5503: $a9
    push de                                       ; $5504: $d5
    sbc b                                         ; $5505: $98
    sub [hl]                                      ; $5506: $96
    ld b, d                                       ; $5507: $42
    dec de                                        ; $5508: $1b
    sbc c                                         ; $5509: $99
    rst $30                                       ; $550a: $f7
    dec bc                                        ; $550b: $0b
    db $ed                                        ; $550c: $ed
    cp $dd                                        ; $550d: $fe $dd
    ld l, c                                       ; $550f: $69
    reti                                          ; $5510: $d9


    db $d3                                        ; $5511: $d3
    sbc h                                         ; $5512: $9c
    inc hl                                        ; $5513: $23
    halt                                          ; $5514: $76
    sub d                                         ; $5515: $92
    ld c, l                                       ; $5516: $4d
    ld b, c                                       ; $5517: $41
    res 2, h                                      ; $5518: $cb $94
    dec b                                         ; $551a: $05
    dec a                                         ; $551b: $3d
    add h                                         ; $551c: $84
    or d                                          ; $551d: $b2
    ld a, [c]                                     ; $551e: $f2
    and l                                         ; $551f: $a5
    ld a, [hl+]                                   ; $5520: $2a
    xor a                                         ; $5521: $af
    inc b                                         ; $5522: $04
    ld h, h                                       ; $5523: $64
    jp c, $bcc8                                   ; $5524: $da $c8 $bc

    ld e, a                                       ; $5527: $5f
    ld l, l                                       ; $5528: $6d
    ld a, [$ab9c]                                 ; $5529: $fa $9c $ab
    ld a, [c]                                     ; $552c: $f2
    sub e                                         ; $552d: $93
    rla                                           ; $552e: $17
    add a                                         ; $552f: $87
    ld [hl], h                                    ; $5530: $74
    sbc l                                         ; $5531: $9d
    ld b, [hl]                                    ; $5532: $46
    or b                                          ; $5533: $b0
    add e                                         ; $5534: $83
    sub h                                         ; $5535: $94
    xor d                                         ; $5536: $aa
    ld [hl], h                                    ; $5537: $74
    ld b, c                                       ; $5538: $41
    db $d3                                        ; $5539: $d3
    ld b, [hl]                                    ; $553a: $46
    and $fd                                       ; $553b: $e6 $fd
    ld [bc], a                                    ; $553d: $02
    rla                                           ; $553e: $17
    add c                                         ; $553f: $81
    ld a, [de]                                    ; $5540: $1a
    ld [$2153], a                                 ; $5541: $ea $53 $21
    reti                                          ; $5544: $d9


    ld a, h                                       ; $5545: $7c
    adc $0b                                       ; $5546: $ce $0b
    rlca                                          ; $5548: $07
    ld a, $6d                                     ; $5549: $3e $6d
    ld [hl], h                                    ; $554b: $74
    sub a                                         ; $554c: $97
    dec d                                         ; $554d: $15
    ld a, d                                       ; $554e: $7a
    ld c, b                                       ; $554f: $48
    db $f4                                        ; $5550: $f4
    cp l                                          ; $5551: $bd
    halt                                          ; $5552: $76
    rst $20                                       ; $5553: $e7
    sbc h                                         ; $5554: $9c
    ld b, e                                       ; $5555: $43
    sub b                                         ; $5556: $90
    dec [hl]                                      ; $5557: $35
    add d                                         ; $5558: $82
    xor d                                         ; $5559: $aa
    ld b, d                                       ; $555a: $42
    dec l                                         ; $555b: $2d
    db $dd                                        ; $555c: $dd
    rst $30                                       ; $555d: $f7
    xor [hl]                                      ; $555e: $ae
    inc bc                                        ; $555f: $03
    xor h                                         ; $5560: $ac
    db $ec                                        ; $5561: $ec
    and c                                         ; $5562: $a1
    cp [hl]                                       ; $5563: $be
    rst $08                                       ; $5564: $cf
    ld b, e                                       ; $5565: $43
    rst $20                                       ; $5566: $e7
    ld [c], a                                     ; $5567: $e2
    sbc a                                         ; $5568: $9f
    inc sp                                        ; $5569: $33
    rst $28                                       ; $556a: $ef
    add hl, bc                                    ; $556b: $09
    ld d, d                                       ; $556c: $52
    reti                                          ; $556d: $d9


    add hl, sp                                    ; $556e: $39
    jr jr_061_54f3                                ; $556f: $18 $82

    xor h                                         ; $5571: $ac
    ld de, $3d54                                  ; $5572: $11 $54 $3d
    rst $20                                       ; $5575: $e7
    dec b                                         ; $5576: $05
    sub a                                         ; $5577: $97
    sbc e                                         ; $5578: $9b
    ld c, [hl]                                    ; $5579: $4e
    ld e, e                                       ; $557a: $5b
    db $fd                                        ; $557b: $fd
    add d                                         ; $557c: $82
    xor $50                                       ; $557d: $ee $50
    ld b, $4a                                     ; $557f: $06 $4a
    ld sp, hl                                     ; $5581: $f9
    sbc $01                                       ; $5582: $de $01
    sub a                                         ; $5584: $97
    ld [hl], c                                    ; $5585: $71
    ld b, $a3                                     ; $5586: $06 $a3
    rst $30                                       ; $5588: $f7
    ld a, c                                       ; $5589: $79
    add sp, -$6f                                  ; $558a: $e8 $91
    ccf                                           ; $558c: $3f
    ld b, [hl]                                    ; $558d: $46
    xor a                                         ; $558e: $af
    ld h, c                                       ; $558f: $61
    ld c, h                                       ; $5590: $4c
    xor a                                         ; $5591: $af
    xor d                                         ; $5592: $aa
    adc a                                         ; $5593: $8f
    ld b, [hl]                                    ; $5594: $46
    ld c, l                                       ; $5595: $4d
    sub $86                                       ; $5596: $d6 $86
    dec d                                         ; $5598: $15
    push hl                                       ; $5599: $e5
    ld l, c                                       ; $559a: $69
    cp c                                          ; $559b: $b9
    ld d, a                                       ; $559c: $57
    rrca                                          ; $559d: $0f
    halt                                          ; $559e: $76
    ld [hl], c                                    ; $559f: $71
    add d                                         ; $55a0: $82
    sub h                                         ; $55a1: $94
    ret nz                                        ; $55a2: $c0

    ld e, h                                       ; $55a3: $5c
    dec de                                        ; $55a4: $1b
    ld e, a                                       ; $55a5: $5f
    sub h                                         ; $55a6: $94
    push hl                                       ; $55a7: $e5
    sbc $75                                       ; $55a8: $de $75
    ld hl, $475d                                  ; $55aa: $21 $5d $47
    ld a, [hl]                                    ; $55ad: $7e
    ld b, c                                       ; $55ae: $41
    rst $30                                       ; $55af: $f7
    add hl, sp                                    ; $55b0: $39
    ld d, a                                       ; $55b1: $57
    add sp, $21                                   ; $55b2: $e8 $21
    ld sp, hl                                     ; $55b4: $f9
    sbc $c5                                       ; $55b5: $de $c5
    ld bc, $7ac7                                  ; $55b7: $01 $c7 $7a
    adc [hl]                                      ; $55ba: $8e

jr_061_55bb:
    and c                                         ; $55bb: $a1
    scf                                           ; $55bc: $37
    ld a, [hl]                                    ; $55bd: $7e
    pop af                                        ; $55be: $f1
    jr jr_061_55bb                                ; $55bf: $18 $fa

    jp c, Jump_000_2143                           ; $55c1: $da $43 $21

    or $93                                        ; $55c4: $f6 $93
    db $eb                                        ; $55c6: $eb

jr_061_55c7:
    db $fd                                        ; $55c7: $fd
    ld [bc], a                                    ; $55c8: $02
    rla                                           ; $55c9: $17
    and $62                                       ; $55ca: $e6 $62
    ld e, b                                       ; $55cc: $58
    ld b, h                                       ; $55cd: $44
    ld c, c                                       ; $55ce: $49
    add h                                         ; $55cf: $84
    ld [c], a                                     ; $55d0: $e2
    adc c                                         ; $55d1: $89
    ld c, [hl]                                    ; $55d2: $4e
    ld e, e                                       ; $55d3: $5b
    ei                                            ; $55d4: $fb
    rst $08                                       ; $55d5: $cf
    call nc, $f39c                                ; $55d6: $d4 $9c $f3
    ld [bc], a                                    ; $55d9: $02
    ld l, l                                       ; $55da: $6d
    and $71                                       ; $55db: $e6 $71
    add [hl]                                      ; $55dd: $86
    inc e                                         ; $55de: $1c
    db $dd                                        ; $55df: $dd
    push hl                                       ; $55e0: $e5
    sbc $41                                       ; $55e1: $de $41
    set 2, b                                      ; $55e3: $cb $d0
    cp h                                          ; $55e5: $bc
    jr jr_061_563a                                ; $55e6: $18 $52

    add hl, sp                                    ; $55e8: $39
    rst $30                                       ; $55e9: $f7
    ld a, e                                       ; $55ea: $7b
    add a                                         ; $55eb: $87
    ld [c], a                                     ; $55ec: $e2
    ret c                                         ; $55ed: $d8

    ld a, l                                       ; $55ee: $7d
    dec e                                         ; $55ef: $1d
    sub b                                         ; $55f0: $90
    ld d, a                                       ; $55f1: $57
    add hl, hl                                    ; $55f2: $29
    ret                                           ; $55f3: $c9


    rst $30                                       ; $55f4: $f7
    ld a, l                                       ; $55f5: $7d
    cp a                                          ; $55f6: $bf
    rlca                                          ; $55f7: $07
    ld b, c                                       ; $55f8: $41
    ld d, $51                                     ; $55f9: $16 $51
    ld a, [hl-]                                   ; $55fb: $3a
    ld a, d                                       ; $55fc: $7a
    and l                                         ; $55fd: $a5
    ld b, e                                       ; $55fe: $43
    xor e                                         ; $55ff: $ab
    ld h, l                                       ; $5600: $65
    db $f4                                        ; $5601: $f4
    cp l                                          ; $5602: $bd
    ld [hl], $7d                                  ; $5603: $36 $7d
    adc $55                                       ; $5605: $ce $55
    and [hl]                                      ; $5607: $a6
    and h                                         ; $5608: $a4
    ld [hl], d                                    ; $5609: $72
    ld a, d                                       ; $560a: $7a
    ld d, $1c                                     ; $560b: $16 $1c
    db $dd                                        ; $560d: $dd
    ld h, l                                       ; $560e: $65
    sbc h                                         ; $560f: $9c
    pop bc                                        ; $5610: $c1
    ld l, b                                       ; $5611: $68
    jp c, Jump_061_7fda                           ; $5612: $da $da $7f

    and [hl]                                      ; $5615: $a6
    and $7e                                       ; $5616: $e6 $7e
    ld bc, $ca17                                  ; $5618: $01 $17 $ca
    ret nc                                        ; $561b: $d0

    db $f4                                        ; $561c: $f4
    ld c, $65                                     ; $561d: $0e $65
    ld hl, sp+$0b                                 ; $561f: $f8 $0b
    ld l, l                                       ; $5621: $6d
    and b                                         ; $5622: $a0
    sub h                                         ; $5623: $94
    ld d, a                                       ; $5624: $57
    cp a                                          ; $5625: $bf
    jr nz, jr_061_55c7                            ; $5626: $20 $9f

    di                                            ; $5628: $f3
    ld [bc], a                                    ; $5629: $02
    rlca                                          ; $562a: $07
    ld e, h                                       ; $562b: $5c
    ld b, [hl]                                    ; $562c: $46
    ld [$3955], a                                 ; $562d: $ea $55 $39
    rst $30                                       ; $5630: $f7
    add b                                         ; $5631: $80
    xor h                                         ; $5632: $ac
    xor d                                         ; $5633: $aa
    ret nc                                        ; $5634: $d0

    call Call_061_6b80                            ; $5635: $cd $80 $6b
    dec [hl]                                      ; $5638: $35
    rst $10                                       ; $5639: $d7

jr_061_563a:
    ld e, $0a                                     ; $563a: $1e $0a
    or c                                          ; $563c: $b1
    sbc a                                         ; $563d: $9f

jr_061_563e:
    ld e, h                                       ; $563e: $5c
    rst $28                                       ; $563f: $ef
    or l                                          ; $5640: $b5
    ld a, c                                       ; $5641: $79
    and h                                         ; $5642: $a4
    sbc a                                         ; $5643: $9f
    rst $00                                       ; $5644: $c7
    dec e                                         ; $5645: $1d
    adc d                                         ; $5646: $8a
    ld d, a                                       ; $5647: $57
    cp [hl]                                       ; $5648: $be
    inc d                                         ; $5649: $14
    adc a                                         ; $564a: $8f
    and h                                         ; $564b: $a4
    rst $38                                       ; $564c: $ff
    sbc $da                                       ; $564d: $de $da
    inc bc                                        ; $564f: $03
    ld h, l                                       ; $5650: $65
    inc c                                         ; $5651: $0c
    ld a, l                                       ; $5652: $7d
    sbc a                                         ; $5653: $9f
    and a                                         ; $5654: $a7
    jp nz, $78f3                                  ; $5655: $c2 $f3 $78

    and h                                         ; $5658: $a4
    sbc [hl]                                      ; $5659: $9e
    inc c                                         ; $565a: $0c
    push bc                                       ; $565b: $c5
    jp hl                                         ; $565c: $e9


    ld b, l                                       ; $565d: $45
    jp hl                                         ; $565e: $e9


    ld h, a                                       ; $565f: $67
    inc c                                         ; $5660: $0c
    ld a, l                                       ; $5661: $7d
    inc c                                         ; $5662: $0c
    adc a                                         ; $5663: $8f
    ld d, e                                       ; $5664: $53
    ld a, h                                       ; $5665: $7c
    cp a                                          ; $5666: $bf
    rla                                           ; $5667: $17
    and $ae                                       ; $5668: $e6 $ae
    jp nc, $d321                                  ; $566a: $d2 $21 $d3

    cp l                                          ; $566d: $bd
    rst $08                                       ; $566e: $cf
    or d                                          ; $566f: $b2
    rra                                           ; $5670: $1f
    dec c                                         ; $5671: $0d
    ld b, c                                       ; $5672: $41
    cp h                                          ; $5673: $bc
    ld c, [hl]                                    ; $5674: $4e
    ld c, c                                       ; $5675: $49
    and a                                         ; $5676: $a7
    rst $08                                       ; $5677: $cf
    ld e, c                                       ; $5678: $59
    ei                                            ; $5679: $fb
    sub a                                         ; $567a: $97
    push bc                                       ; $567b: $c5
    sub b                                         ; $567c: $90
    jp z, $81e8                                   ; $567d: $ca $e8 $81

    ld d, d                                       ; $5680: $52
    ld e, $e9                                     ; $5681: $1e $e9
    adc $ab                                       ; $5683: $ce $ab
    pop hl                                        ; $5685: $e1
    ld e, c                                       ; $5686: $59
    add l                                         ; $5687: $85
    or d                                          ; $5688: $b2
    ld [$af1e], a                                 ; $5689: $ea $1e $af
    ld [bc], a                                    ; $568c: $02
    ld d, [hl]                                    ; $568d: $56
    or $ca                                        ; $568e: $f6 $ca
    sub a                                         ; $5690: $97
    ld [hl-], a                                   ; $5691: $32
    cp d                                          ; $5692: $ba
    bit 5, d                                      ; $5693: $cb $6a
    ld [hl], e                                    ; $5695: $73
    db $e4                                        ; $5696: $e4
    ld a, a                                       ; $5697: $7f
    or $02                                        ; $5698: $f6 $02
    rlca                                          ; $569a: $07
    ld e, h                                       ; $569b: $5c
    ld d, [hl]                                    ; $569c: $56
    sbc e                                         ; $569d: $9b
    or e                                          ; $569e: $b3
    db $ec                                        ; $569f: $ec
    and c                                         ; $56a0: $a1
    and [hl]                                      ; $56a1: $a6
    ld e, d                                       ; $56a2: $5a
    ld d, l                                       ; $56a3: $55
    and b                                         ; $56a4: $a0
    sub h                                         ; $56a5: $94
    ld a, e                                       ; $56a6: $7b
    push af                                       ; $56a7: $f5
    cp d                                          ; $56a8: $ba
    ld e, [hl]                                    ; $56a9: $5e
    sub l                                         ; $56aa: $95
    sub a                                         ; $56ab: $97
    cp d                                          ; $56ac: $ba
    jr nz, jr_061_563e                            ; $56ad: $20 $8f

    ld [hl], h                                    ; $56af: $74
    ld l, $0a                                     ; $56b0: $2e $0a
    reti                                          ; $56b2: $d9


    adc l                                         ; $56b3: $8d
    sub [hl]                                      ; $56b4: $96
    ret                                           ; $56b5: $c9


    rst $20                                       ; $56b6: $e7
    ld a, e                                       ; $56b7: $7b
    rlca                                          ; $56b8: $07
    dec l                                         ; $56b9: $2d
    ld a, e                                       ; $56ba: $7b
    sbc d                                         ; $56bb: $9a
    ld d, l                                       ; $56bc: $55

Jump_061_56bd:
    ld a, c                                       ; $56bd: $79
    pop af                                        ; $56be: $f1
    rst $08                                       ; $56bf: $cf
    and c                                         ; $56c0: $a1
    ld a, c                                       ; $56c1: $79
    adc l                                         ; $56c2: $8d
    sbc a                                         ; $56c3: $9f
    ld e, $08                                     ; $56c4: $1e $08
    ld [hl], $a0                                  ; $56c6: $36 $a0
    and e                                         ; $56c8: $a3
    add b                                         ; $56c9: $80
    sub h                                         ; $56ca: $94
    ei                                            ; $56cb: $fb
    dec b                                         ; $56cc: $05
    rlca                                          ; $56cd: $07
    ld e, h                                       ; $56ce: $5c
    ld d, [hl]                                    ; $56cf: $56
    inc l                                         ; $56d0: $2c
    ld [c], a                                     ; $56d1: $e2
    ld h, a                                       ; $56d2: $67
    dec b                                         ; $56d3: $05
    call nc, $901e                                ; $56d4: $d4 $1e $90
    sub l                                         ; $56d7: $95
    rst $38                                       ; $56d8: $ff
    ld [hl], h                                    ; $56d9: $74
    rst $28                                       ; $56da: $ef
    and d                                         ; $56db: $a2
    ret nc                                        ; $56dc: $d0

    ld hl, $e0ec                                  ; $56dd: $21 $ec $e0
    cpl                                           ; $56e0: $2f
    or b                                          ; $56e1: $b0
    jr z, jr_061_5748                             ; $56e2: $28 $64

    scf                                           ; $56e4: $37
    ld e, d                                       ; $56e5: $5a
    or $23                                        ; $56e6: $f6 $23
    or [hl]                                       ; $56e8: $b6
    call c, Call_061_683b                         ; $56e9: $dc $3b $68
    add hl, de                                    ; $56ec: $19
    db $dd                                        ; $56ed: $dd
    ld h, l                                       ; $56ee: $65
    db $e4                                        ; $56ef: $e4
    rst $08                                       ; $56f0: $cf
    sub l                                         ; $56f1: $95
    xor $87                                       ; $56f2: $ee $87
    rst $30                                       ; $56f4: $f7
    ld a, e                                       ; $56f5: $7b
    rst $30                                       ; $56f6: $f7
    ld d, h                                       ; $56f7: $54
    ld c, b                                       ; $56f8: $48
    ld d, [hl]                                    ; $56f9: $56
    pop hl                                        ; $56fa: $e1
    ld l, c                                       ; $56fb: $69
    add b                                         ; $56fc: $80
    ld a, h                                       ; $56fd: $7c
    add [hl]                                      ; $56fe: $86
    jr nz, jr_061_574f                            ; $56ff: $20 $4e

    pop af                                        ; $5701: $f1
    db $fd                                        ; $5702: $fd
    ld [bc], a                                    ; $5703: $02
    rla                                           ; $5704: $17
    and $50                                       ; $5705: $e6 $50
    rra                                           ; $5707: $1f
    jp hl                                         ; $5708: $e9


    inc e                                         ; $5709: $1c
    inc d                                         ; $570a: $14
    dec bc                                        ; $570b: $0b
    ld l, l                                       ; $570c: $6d
    db $ed                                        ; $570d: $ed
    ccf                                           ; $570e: $3f
    ld d, e                                       ; $570f: $53
    ld [hl], e                                    ; $5710: $73
    adc $da                                       ; $5711: $ce $da
    call z, $ee73                                 ; $5713: $cc $73 $ee
    ld [hl], a                                    ; $5716: $77
    ld b, $5c                                     ; $5717: $06 $5c
    cp $e4                                        ; $5719: $fe $e4
    ld a, l                                       ; $571b: $7d
    ld e, [hl]                                    ; $571c: $5e
    push af                                       ; $571d: $f5

Call_061_571e:
    inc l                                         ; $571e: $2c
    cp e                                          ; $571f: $bb
    ld [hl-], a                                   ; $5720: $32
    jr nc, jr_061_575e                            ; $5721: $30 $3b

    rlca                                          ; $5723: $07
    ld l, e                                       ; $5724: $6b
    add e                                         ; $5725: $83
    ld e, a                                       ; $5726: $5f
    add d                                         ; $5727: $82
    db $fc                                        ; $5728: $fc
    ld e, [hl]                                    ; $5729: $5e
    add hl, sp                                    ; $572a: $39
    add hl, hl                                    ; $572b: $29

jr_061_572c:
    add sp, -$05                                  ; $572c: $e8 $fb
    dec b                                         ; $572e: $05

Call_061_572f:
    db $ed                                        ; $572f: $ed
    ret nc                                        ; $5730: $d0

    db $eb                                        ; $5731: $eb
    jp c, $a7f4                                   ; $5732: $da $f4 $a7

    pop de                                        ; $5735: $d1
    adc l                                         ; $5736: $8d
    ld hl, $28bd                                  ; $5737: $21 $bd $28
    rst $38                                       ; $573a: $ff
    ld e, $28                                     ; $573b: $1e $28
    or h                                          ; $573d: $b4
    or l                                          ; $573e: $b5
    rst $38                                       ; $573f: $ff
    ld c, h                                       ; $5740: $4c
    call Call_000_02fd                            ; $5741: $cd $fd $02
    sub a                                         ; $5744: $97
    jr z, jr_061_572c                             ; $5745: $28 $e5

    ld e, c                                       ; $5747: $59

jr_061_5748:
    ld d, b                                       ; $5748: $50
    ld [hl], h                                    ; $5749: $74
    jp c, Jump_000_2ee8                           ; $574a: $da $e8 $2e

    ld a, e                                       ; $574d: $7b
    sbc d                                         ; $574e: $9a

jr_061_574f:
    ei                                            ; $574f: $fb
    ld d, c                                       ; $5750: $51
    ld [hl], a                                    ; $5751: $77
    db $ec                                        ; $5752: $ec
    db $f4                                        ; $5753: $f4
    ret nc                                        ; $5754: $d0

    ld [hl+], a                                   ; $5755: $22
    sbc [hl]                                      ; $5756: $9e
    ld d, b                                       ; $5757: $50
    ld c, e                                       ; $5758: $4b
    rst $30                                       ; $5759: $f7
    db $fd                                        ; $575a: $fd
    ld [bc], a                                    ; $575b: $02
    ld d, a                                       ; $575c: $57
    ld h, [hl]                                    ; $575d: $66

jr_061_575e:
    adc b                                         ; $575e: $88
    ld e, h                                       ; $575f: $5c
    ld l, e                                       ; $5760: $6b
    ret z                                         ; $5761: $c8

    sbc l                                         ; $5762: $9d
    rrca                                          ; $5763: $0f
    ld [hl+], a                                   ; $5764: $22
    push af                                       ; $5765: $f5
    sbc h                                         ; $5766: $9c
    rla                                           ; $5767: $17
    add h                                         ; $5768: $84
    or h                                          ; $5769: $b4
    ld l, b                                       ; $576a: $68
    pop de                                        ; $576b: $d1
    ld [hl], d                                    ; $576c: $72
    rst $18                                       ; $576d: $df
    rst $30                                       ; $576e: $f7
    ld b, d                                       ; $576f: $42
    add hl, de                                    ; $5770: $19
    sbc d                                         ; $5771: $9a
    ld d, a                                       ; $5772: $57
    ld b, b                                       ; $5773: $40
    db $ed                                        ; $5774: $ed
    ld [hl], a                                    ; $5775: $77
    ld c, h                                       ; $5776: $4c
    jr z, jr_061_5784                             ; $5777: $28 $0b

    xor l                                         ; $5779: $ad
    ld b, l                                       ; $577a: $45
    ld hl, $7e87                                  ; $577b: $21 $87 $7e
    or $79                                        ; $577e: $f6 $79
    xor h                                         ; $5780: $ac
    add hl, hl                                    ; $5781: $29
    push bc                                       ; $5782: $c5
    ld b, l                                       ; $5783: $45

jr_061_5784:
    ld a, a                                       ; $5784: $7f
    ld e, $18                                     ; $5785: $1e $18
    inc l                                         ; $5787: $2c
    db $fd                                        ; $5788: $fd
    dec sp                                        ; $5789: $3b
    or b                                          ; $578a: $b0
    reti                                          ; $578b: $d9


    ld [hl-], a                                   ; $578c: $32
    rst $20                                       ; $578d: $e7
    sbc [hl]                                      ; $578e: $9e
    ld e, a                                       ; $578f: $5f
    and b                                         ; $5790: $a0
    xor d                                         ; $5791: $aa
    db $dd                                        ; $5792: $dd
    rst $30                                       ; $5793: $f7
    cp l                                          ; $5794: $bd
    ld h, $49                                     ; $5795: $26 $49
    dec de                                        ; $5797: $1b
    ld l, c                                       ; $5798: $69
    ld a, [$7fda]                                 ; $5799: $fa $da $7f
    and [hl]                                      ; $579c: $a6

Jump_061_579d:
    and $7e                                       ; $579d: $e6 $7e
    ld bc, $5c07                                  ; $579f: $01 $07 $5c
    ld b, [hl]                                    ; $57a2: $46
    cp $1c                                        ; $57a3: $fe $1c
    sbc d                                         ; $57a5: $9a
    ld [hl], a                                    ; $57a6: $77
    cp [hl]                                       ; $57a7: $be
    sub e                                         ; $57a8: $93
    ld a, [$47b0]                                 ; $57a9: $fa $b0 $47
    ld e, d                                       ; $57ac: $5a
    ld d, l                                       ; $57ad: $55
    cpl                                           ; $57ae: $2f
    sub h                                         ; $57af: $94
    ld [hl], c                                    ; $57b0: $71
    add [hl]                                      ; $57b1: $86
    adc [hl]                                      ; $57b2: $8e
    rrca                                          ; $57b3: $0f
    ld b, l                                       ; $57b4: $45
    ldh a, [$38]                                  ; $57b5: $f0 $38
    dec d                                         ; $57b7: $15
    sub d                                         ; $57b8: $92
    or a                                          ; $57b9: $b7
    rst $00                                       ; $57ba: $c7
    cp b                                          ; $57bb: $b8
    ld c, e                                       ; $57bc: $4b
    ld hl, $d795                                  ; $57bd: $21 $95 $d7
    ld l, d                                       ; $57c0: $6a
    sbc $2f                                       ; $57c1: $de $2f
    rlca                                          ; $57c3: $07
    ld a, $6d                                     ; $57c4: $3e $6d
    ld [hl], h                                    ; $57c6: $74
    sub a                                         ; $57c7: $97
    ld [hl], c                                    ; $57c8: $71
    add [hl]                                      ; $57c9: $86
    call c, $a1e7                                 ; $57ca: $dc $e7 $a1
    sbc c                                         ; $57cd: $99
    dec a                                         ; $57ce: $3d
    rst $20                                       ; $57cf: $e7
    ret nc                                        ; $57d0: $d0

    cp h                                          ; $57d1: $bc
    ld a, [$c79f]                                 ; $57d2: $fa $9f $c7
    ld d, e                                       ; $57d5: $53
    ld hl, $def9                                  ; $57d6: $21 $f9 $de
    ld b, c                                       ; $57d9: $41
    set 5, b                                      ; $57da: $cb $e8
    ld l, $e3                                     ; $57dc: $2e $e3
    inc c                                         ; $57de: $0c
    cp c                                          ; $57df: $b9
    rst $08                                       ; $57e0: $cf
    ld b, e                                       ; $57e1: $43
    sub b                                         ; $57e2: $90
    ld b, l                                       ; $57e3: $45
    ccf                                           ; $57e4: $3f
    rla                                           ; $57e5: $17
    ld b, e                                       ; $57e6: $43
    rst $28                                       ; $57e7: $ef
    ld e, $f9                                     ; $57e8: $1e $f9
    ld h, e                                       ; $57ea: $63
    adc a                                         ; $57eb: $8f
    ld a, [hl+]                                   ; $57ec: $2a
    ld d, l                                       ; $57ed: $55
    sbc c                                         ; $57ee: $99
    rst $30                                       ; $57ef: $f7
    ld a, c                                       ; $57f0: $79
    xor b                                         ; $57f1: $a8
    xor a                                         ; $57f2: $af
    ld a, [hl+]                                   ; $57f3: $2a
    cp l                                          ; $57f4: $bd
    ld [hl], a                                    ; $57f5: $77
    adc a                                         ; $57f6: $8f
    db $fc                                        ; $57f7: $fc
    or c                                          ; $57f8: $b1
    add a                                         ; $57f9: $87
    and $fb                                       ; $57fa: $e6 $fb
    dec b                                         ; $57fc: $05
    rst $10                                       ; $57fd: $d7
    ld a, h                                       ; $57fe: $7c
    ld b, l                                       ; $57ff: $45
    ld e, e                                       ; $5800: $5b
    dec hl                                        ; $5801: $2b
    ld b, e                                       ; $5802: $43
    db $e4                                        ; $5803: $e4
    ld e, d                                       ; $5804: $5a
    ld b, e                                       ; $5805: $43
    xor $7c                                       ; $5806: $ee $7c
    db $10                                        ; $5808: $10
    xor c                                         ; $5809: $a9
    jp c, $d75f                                   ; $580a: $da $5f $d7

    ret nz                                        ; $580d: $c0

    ld h, e                                       ; $580e: $63
    sbc c                                         ; $580f: $99
    ld [hl], e                                    ; $5810: $73
    inc c                                         ; $5811: $0c
    ld a, l                                       ; $5812: $7d
    ld d, $f4                                     ; $5813: $16 $f4
    xor $fb                                       ; $5815: $ee $fb
    sbc [hl]                                      ; $5817: $9e
    ld d, $2d                                     ; $5818: $16 $2d
    ld e, d                                       ; $581a: $5a
    or h                                          ; $581b: $b4
    ld l, b                                       ; $581c: $68
    pop de                                        ; $581d: $d1
    ld [hl], d                                    ; $581e: $72
    rst $18                                       ; $581f: $df
    rst $30                                       ; $5820: $f7
    ld a, l                                       ; $5821: $7d
    cp a                                          ; $5822: $bf
    add h                                         ; $5823: $84
    or h                                          ; $5824: $b4
    ld l, b                                       ; $5825: $68
    pop de                                        ; $5826: $d1
    ld [hl], d                                    ; $5827: $72
    rst $18                                       ; $5828: $df
    rst $30                                       ; $5829: $f7
    db $fd                                        ; $582a: $fd
    ld [bc], a                                    ; $582b: $02
    rla                                           ; $582c: $17
    and $d0                                       ; $582d: $e6 $d0
    inc a                                         ; $582f: $3c
    ld b, $1c                                     ; $5830: $06 $1c
    ld b, e                                       ; $5832: $43
    sbc a                                         ; $5833: $9f
    ld l, $e8                                     ; $5834: $2e $e8
    adc h                                         ; $5836: $8c
    and c                                         ; $5837: $a1
    ld a, [bc]                                    ; $5838: $0a
    ld c, b                                       ; $5839: $48
    sbc c                                         ; $583a: $99
    ld a, e                                       ; $583b: $7b
    ld [hl], a                                    ; $583c: $77
    xor $01                                       ; $583d: $ee $01
    call nz, Call_061_6a5f                        ; $583f: $c4 $5f $6a
    rst $10                                       ; $5842: $d7
    di                                            ; $5843: $f3
    sbc h                                         ; $5844: $9c
    rla                                           ; $5845: $17
    add a                                         ; $5846: $87
    ld b, b                                       ; $5847: $40
    add hl, hl                                    ; $5848: $29
    res 2, h                                      ; $5849: $cb $94
    pop de                                        ; $584b: $d1
    dec e                                         ; $584c: $1d
    jp z, $1e18                                   ; $584d: $ca $18 $1e

    rst $18                                       ; $5850: $df
    dec sp                                        ; $5851: $3b
    ldh [$b2], a                                  ; $5852: $e0 $b2
    xor d                                         ; $5854: $aa
    db $f4                                        ; $5855: $f4
    sbc $3d                                       ; $5856: $de $3d
    ld a, [c]                                     ; $5858: $f2
    rst $00                                       ; $5859: $c7
    sbc $63                                       ; $585a: $de $63
    ld l, h                                       ; $585c: $6c
    db $e4                                        ; $585d: $e4
    cpl                                           ; $585e: $2f
    inc a                                         ; $585f: $3c
    add hl, bc                                    ; $5860: $09
    push bc                                       ; $5861: $c5
    cp h                                          ; $5862: $bc
    rst $08                                       ; $5863: $cf
    db $eb                                        ; $5864: $eb
    sub h                                         ; $5865: $94
    ld [$fdc1], a                                 ; $5866: $ea $c1 $fd
    ld [bc], a                                    ; $5869: $02
    db $ed                                        ; $586a: $ed
    and [hl]                                      ; $586b: $a6
    db $d3                                        ; $586c: $d3
    sub $ca                                       ; $586d: $d6 $ca
    db $10                                        ; $586f: $10
    cp c                                          ; $5870: $b9
    sub $90                                       ; $5871: $d6 $90
    cp e                                          ; $5873: $bb
    xor b                                         ; $5874: $a8
    inc bc                                        ; $5875: $03
    inc de                                        ; $5876: $13
    inc bc                                        ; $5877: $03
    and d                                         ; $5878: $a2
    ld [$017e], a                                 ; $5879: $ea $7e $01
    add a                                         ; $587c: $87
    jp nz, $fc33                                  ; $587d: $c2 $33 $fc

    push bc                                       ; $5880: $c5
    ld d, d                                       ; $5881: $52
    ld b, a                                       ; $5882: $47
    adc l                                         ; $5883: $8d
    db $dd                                        ; $5884: $dd
    xor e                                         ; $5885: $ab
    ld d, a                                       ; $5886: $57
    push de                                       ; $5887: $d5
    rst $28                                       ; $5888: $ef
    adc e                                         ; $5889: $8b
    ld h, c                                       ; $588a: $61
    ld [$f657], a                                 ; $588b: $ea $57 $f6
    inc l                                         ; $588e: $2c
    ld l, e                                       ; $588f: $6b
    cp b                                          ; $5890: $b8
    add $94                                       ; $5891: $c6 $94
    inc l                                         ; $5893: $2c
    xor $d5                                       ; $5894: $ee $d5
    dec bc                                        ; $5896: $0b
    or c                                          ; $5897: $b1
    ld [hl], e                                    ; $5898: $73
    sub [hl]                                      ; $5899: $96
    ld b, l                                       ; $589a: $45
    ld [hl], h                                    ; $589b: $74
    rst $20                                       ; $589c: $e7
    ld l, d                                       ; $589d: $6a
    ld [hl], e                                    ; $589e: $73
    ld l, b                                       ; $589f: $68
    ld e, c                                       ; $58a0: $59
    adc l                                         ; $58a1: $8d
    add hl, hl                                    ; $58a2: $29
    or c                                          ; $58a3: $b1
    di                                            ; $58a4: $f3
    sbc $e5                                       ; $58a5: $de $e5
    call $ea1c                                    ; $58a7: $cd $1c $ea
    ei                                            ; $58aa: $fb
    cp l                                          ; $58ab: $bd
    ld b, e                                       ; $58ac: $43
    ld [hl], c                                    ; $58ad: $71
    db $ec                                        ; $58ae: $ec
    cp [hl]                                       ; $58af: $be
    jp z, $1ccd                                   ; $58b0: $ca $cd $1c

    jp hl                                         ; $58b3: $e9


    and h                                         ; $58b4: $a4
    xor l                                         ; $58b5: $ad
    db $fd                                        ; $58b6: $fd
    ld h, a                                       ; $58b7: $67
    ld l, d                                       ; $58b8: $6a
    ld l, b                                       ; $58b9: $68
    adc e                                         ; $58ba: $8b
    and c                                         ; $58bb: $a1
    adc a                                         ; $58bc: $8f
    xor $b2                                       ; $58bd: $ee $b2
    add [hl]                                      ; $58bf: $86
    pop de                                        ; $58c0: $d1
    ld b, e                                       ; $58c1: $43
    jr z, jr_061_58cf                             ; $58c2: $28 $0b

    rst $08                                       ; $58c4: $cf
    ld a, $0f                                     ; $58c5: $3e $0f
    db $fd                                        ; $58c7: $fd
    inc b                                         ; $58c8: $04
    xor c                                         ; $58c9: $a9
    sbc h                                         ; $58ca: $9c
    ld c, [hl]                                    ; $58cb: $4e
    rst $18                                       ; $58cc: $df
    cpl                                           ; $58cd: $2f
    db $ed                                        ; $58ce: $ed

jr_061_58cf:
    ld e, a                                       ; $58cf: $5f
    ld d, [hl]                                    ; $58d0: $56
    sub l                                         ; $58d1: $95
    sbc $bb                                       ; $58d2: $de $bb
    ld b, a                                       ; $58d4: $47
    cp $d8                                        ; $58d5: $fe $d8
    adc e                                         ; $58d7: $8b
    ld a, a                                       ; $58d8: $7f
    cpl                                           ; $58d9: $2f
    cp h                                          ; $58da: $bc
    rlca                                          ; $58db: $07
    jp z, Jump_000_03bd                           ; $58dc: $ca $bd $03

    ld l, $53                                     ; $58df: $2e $53
    ld e, a                                       ; $58e1: $5f
    or $7b                                        ; $58e2: $f6 $7b
    ld [hl], a                                    ; $58e4: $77
    ld a, [de]                                    ; $58e5: $1a
    dec a                                         ; $58e6: $3d
    and c                                         ; $58e7: $a1
    ld d, h                                       ; $58e8: $54
    or [hl]                                       ; $58e9: $b6
    inc l                                         ; $58ea: $2c
    ld l, d                                       ; $58eb: $6a
    adc $b2                                       ; $58ec: $ce $b2
    adc b                                         ; $58ee: $88
    xor $1c                                       ; $58ef: $ee $1c
    ld b, e                                       ; $58f1: $43
    rst $18                                       ; $58f2: $df
    rst $20                                       ; $58f3: $e7
    push de                                       ; $58f4: $d5
    sbc b                                         ; $58f5: $98
    ld [de], a                                    ; $58f6: $12
    ei                                            ; $58f7: $fb
    ld a, [hl]                                    ; $58f8: $7e
    ld bc, $3787                                  ; $58f9: $01 $87 $37
    sbc e                                         ; $58fc: $9b
    inc h                                         ; $58fd: $24
    ld l, l                                       ; $58fe: $6d
    xor b                                         ; $58ff: $a8
    rst $08                                       ; $5900: $cf
    cp c                                          ; $5901: $b9
    jr jr_061_5956                                ; $5902: $18 $52

    cp c                                          ; $5904: $b9
    ld b, e                                       ; $5905: $43
    reti                                          ; $5906: $d9


    rst $28                                       ; $5907: $ef
    db $dd                                        ; $5908: $dd
    ld l, c                                       ; $5909: $69
    db $f4                                        ; $590a: $f4
    inc l                                         ; $590b: $2c
    xor e                                         ; $590c: $ab
    ld c, h                                       ; $590d: $4c
    ld c, c                                       ; $590e: $49
    or l                                          ; $590f: $b5
    rst $20                                       ; $5910: $e7
    rla                                           ; $5911: $17
    ld d, b                                       ; $5912: $50
    adc $7b                                       ; $5913: $ce $7b
    add a                                         ; $5915: $87
    ld c, h                                       ; $5916: $4c
    dec de                                        ; $5917: $1b
    ld [$5f53], a                                 ; $5918: $ea $53 $5f
    ld d, $35                                     ; $591b: $16 $35
    rst $30                                       ; $591d: $f7
    ld b, b                                       ; $591e: $40
    add hl, de                                    ; $591f: $19
    ld b, e                                       ; $5920: $43
    rst $18                                       ; $5921: $df
    rst $20                                       ; $5922: $e7
    push bc                                       ; $5923: $c5
    ld d, $f4                                     ; $5924: $16 $f4
    xor b                                         ; $5926: $a8
    ld [hl], h                                    ; $5927: $74
    or c                                          ; $5928: $b1
    or $17                                        ; $5929: $f6 $17
    rla                                           ; $592b: $17
    rlca                                          ; $592c: $07
    db $e4                                        ; $592d: $e4
    xor c                                         ; $592e: $a9
    cp $d3                                        ; $592f: $fe $d3
    ld c, h                                       ; $5931: $4c
    ld e, e                                       ; $5932: $5b
    ei                                            ; $5933: $fb
    rst $08                                       ; $5934: $cf
    call nc, Call_000_3bdc                        ; $5935: $d4 $dc $3b
    ld [hl], l                                    ; $5938: $75
    ld a, [hl+]                                   ; $5939: $2a
    db $f4                                        ; $593a: $f4
    xor $02                                       ; $593b: $ee $02
    ld l, [hl]                                    ; $593d: $6e
    dec b                                         ; $593e: $05
    db $10                                        ; $593f: $10
    ld e, [hl]                                    ; $5940: $5e
    inc d                                         ; $5941: $14

Jump_061_5942:
    ld [hl], d                                    ; $5942: $72
    sub [hl]                                      ; $5943: $96
    ld b, l                                       ; $5944: $45
    jr nz, @+$05                                  ; $5945: $20 $03

    pop bc                                        ; $5947: $c1
    ld a, [$deb9]                                 ; $5948: $fa $b9 $de
    cpl                                           ; $594b: $2f
    rla                                           ; $594c: $17
    and l                                         ; $594d: $a5
    sbc a                                         ; $594e: $9f
    db $fc                                        ; $594f: $fc
    push bc                                       ; $5950: $c5
    add d                                         ; $5951: $82
    sub $be                                       ; $5952: $d6 $be
    dec bc                                        ; $5954: $0b
    ld [hl], e                                    ; $5955: $73

jr_061_5956:
    xor b                                         ; $5956: $a8
    xor a                                         ; $5957: $af
    add d                                         ; $5958: $82
    ld d, d                                       ; $5959: $52
    adc $b5                                       ; $595a: $ce $b5
    sbc d                                         ; $595c: $9a
    ei                                            ; $595d: $fb
    inc a                                         ; $595e: $3c
    call nc, Call_061_4a07                        ; $595f: $d4 $07 $4a
    ld a, c                                       ; $5962: $79
    db $e4                                        ; $5963: $e4
    rst $08                                       ; $5964: $cf
    ld [hl], l                                    ; $5965: $75
    rst $00                                       ; $5966: $c7
    ret nz                                        ; $5967: $c0

    ld c, [hl]                                    ; $5968: $4e

Jump_061_5969:
    di                                            ; $5969: $f3
    ld [hl+], a                                   ; $596a: $22
    cp d                                          ; $596b: $ba
    ld [hl], e                                    ; $596c: $73
    ld de, $cf35                                  ; $596d: $11 $35 $cf
    reti                                          ; $5970: $d9


    adc c                                         ; $5971: $89
    daa                                           ; $5972: $27
    db $ec                                        ; $5973: $ec
    jp z, $c200                                   ; $5974: $ca $00 $c2

    adc e                                         ; $5977: $8b
    ld b, d                                       ; $5978: $42
    adc $bc                                       ; $5979: $ce $bc
    ld [de], a                                    ; $597b: $12
    sub b                                         ; $597c: $90
    ld b, a                                       ; $597d: $47
    ld [hl], $05                                  ; $597e: $36 $05
    db $dd                                        ; $5980: $dd
    ld a, a                                       ; $5981: $7f
    pop de                                        ; $5982: $d1
    cp $02                                        ; $5983: $fe $02
    ld l, l                                       ; $5985: $6d
    ld a, [$8c74]                                 ; $5986: $fa $74 $8c
    xor b                                         ; $5989: $a8
    ret                                           ; $598a: $c9


    ld e, [hl]                                    ; $598b: $5e
    ld l, b                                       ; $598c: $68
    sub l                                         ; $598d: $95
    rra                                           ; $598e: $1f
    ld e, e                                       ; $598f: $5b
    add $d0                                       ; $5990: $c6 $d0
    rst $10                                       ; $5992: $d7
    ld [hl], d                                    ; $5993: $72
    ld b, [hl]                                    ; $5994: $46
    ld d, [hl]                                    ; $5995: $56
    inc c                                         ; $5996: $0c
    ld b, c                                       ; $5997: $41
    ld l, b                                       ; $5998: $68
    ld l, e                                       ; $5999: $6b
    rst $38                                       ; $599a: $ff
    sbc c                                         ; $599b: $99
    ld a, [de]                                    ; $599c: $1a
    db $ed                                        ; $599d: $ed
    dec sp                                        ; $599e: $3b
    pop af                                        ; $599f: $f1
    call nc, $d0a9                                ; $59a0: $d4 $a9 $d0
    cp e                                          ; $59a3: $bb
    dec bc                                        ; $59a4: $0b
    cp b                                          ; $59a5: $b8
    dec d                                         ; $59a6: $15
    ld b, b                                       ; $59a7: $40
    ld a, b                                       ; $59a8: $78
    ld d, c                                       ; $59a9: $51
    ret z                                         ; $59aa: $c8

    ld e, c                                       ; $59ab: $59
    ld e, h                                       ; $59ac: $5c
    cp c                                          ; $59ad: $b9
    ld l, c                                       ; $59ae: $69
    ld b, c                                       ; $59af: $41
    rrca                                          ; $59b0: $0f
    inc b                                         ; $59b1: $04
    db $eb                                        ; $59b2: $eb
    rst $20                                       ; $59b3: $e7
    xor d                                         ; $59b4: $aa
    db $fd                                        ; $59b5: $fd
    dec b                                         ; $59b6: $05
    rlca                                          ; $59b7: $07
    ld e, h                                       ; $59b8: $5c
    and $5c                                       ; $59b9: $e6 $5c
    db $e3                                        ; $59bb: $e3
    ld c, e                                       ; $59bc: $4b
    pop af                                        ; $59bd: $f1

jr_061_59be:
    and d                                         ; $59be: $a2
    sub b                                         ; $59bf: $90
    ei                                            ; $59c0: $fb
    inc a                                         ; $59c1: $3c
    inc [hl]                                      ; $59c2: $34
    rrca                                          ; $59c3: $0f
    sub h                                         ; $59c4: $94
    ld a, [c]                                     ; $59c5: $f2
    sbc h                                         ; $59c6: $9c
    db $eb                                        ; $59c7: $eb
    ld a, [de]                                    ; $59c8: $1a

jr_061_59c9:
    and l                                         ; $59c9: $a5

jr_061_59ca:
    adc h                                         ; $59ca: $8c
    xor [hl]                                      ; $59cb: $ae
    ld b, e                                       ; $59cc: $43
    jr z, jr_061_59ca                             ; $59cd: $28 $fb

    cp h                                          ; $59cf: $bc
    add sp, $4b                                   ; $59d0: $e8 $4b
    pop af                                        ; $59d2: $f1
    ld [hl+], a                                   ; $59d3: $22
    cp d                                          ; $59d4: $ba
    db $d3                                        ; $59d5: $d3
    ld d, d                                       ; $59d6: $52
    rla                                           ; $59d7: $17
    ld e, d                                       ; $59d8: $5a
    rrca                                          ; $59d9: $0f
    dec h                                         ; $59da: $25
    ld d, l                                       ; $59db: $55
    dec c                                         ; $59dc: $0d
    rrca                                          ; $59dd: $0f
    ld l, c                                       ; $59de: $69
    cp h                                          ; $59df: $bc
    ld [hl], a                                    ; $59e0: $77
    reti                                          ; $59e1: $d9


    rst $00                                       ; $59e2: $c7
    add l                                         ; $59e3: $85
    cp d                                          ; $59e4: $ba
    ld d, [hl]                                    ; $59e5: $56
    ld d, d                                       ; $59e6: $52
    ld h, e                                       ; $59e7: $63
    rrca                                          ; $59e8: $0f
    adc d                                         ; $59e9: $8a
    push hl                                       ; $59ea: $e5
    ld a, [hl]                                    ; $59eb: $7e
    ld bc, $4c87                                  ; $59ec: $01 $87 $4c
    ld e, e                                       ; $59ef: $5b
    ei                                            ; $59f0: $fb
    rst $08                                       ; $59f1: $cf
    call nc, $e6d0                                ; $59f2: $d4 $d0 $e6
    adc b                                         ; $59f5: $88
    sbc l                                         ; $59f6: $9d
    dec e                                         ; $59f7: $1d
    adc d                                         ; $59f8: $8a
    ld c, h                                       ; $59f9: $4c
    xor b                                         ; $59fa: $a8
    db $f4                                        ; $59fb: $f4
    ld e, a                                       ; $59fc: $5f
    jr jr_061_59c9                                ; $59fd: $18 $ca

    ld e, $90                                     ; $59ff: $1e $90
    ld [hl], c                                    ; $5a01: $71
    ld l, d                                       ; $5a02: $6a
    ld a, d                                       ; $5a03: $7a
    ld [hl], a                                    ; $5a04: $77
    push hl                                       ; $5a05: $e5
    rra                                           ; $5a06: $1f
    rst $10                                       ; $5a07: $d7
    dec [hl]                                      ; $5a08: $35
    inc e                                         ; $5a09: $1c
    ld d, e                                       ; $5a0a: $53
    adc d                                         ; $5a0b: $8a
    ld a, e                                       ; $5a0c: $7b
    ld [hl], l                                    ; $5a0d: $75

jr_061_5a0e:
    sbc $bb                                       ; $5a0e: $de $bb
    and d                                         ; $5a10: $a2
    db $ec                                        ; $5a11: $ec
    sub d                                         ; $5a12: $92
    ld a, l                                       ; $5a13: $7d
    pop bc                                        ; $5a14: $c1
    db $f4                                        ; $5a15: $f4
    ld h, b                                       ; $5a16: $60
    xor d                                         ; $5a17: $aa
    rst $38                                       ; $5a18: $ff
    ld e, d                                       ; $5a19: $5a
    dec l                                         ; $5a1a: $2d
    ld d, e                                       ; $5a1b: $53
    ld b, c                                       ; $5a1c: $41
    adc b                                         ; $5a1d: $88
    ld e, d                                       ; $5a1e: $5a
    jr c, jr_061_59be                             ; $5a1f: $38 $9d

    adc $d1                                       ; $5a21: $ce $d1
    sbc l                                         ; $5a23: $9d
    xor [hl]                                      ; $5a24: $ae
    dec bc                                        ; $5a25: $0b
    xor l                                         ; $5a26: $ad
    add a                                         ; $5a27: $87
    sub d                                         ; $5a28: $92
    xor d                                         ; $5a29: $aa
    add [hl]                                      ; $5a2a: $86
    add a                                         ; $5a2b: $87
    inc [hl]                                      ; $5a2c: $34
    sbc $2f                                       ; $5a2d: $de $2f
    rla                                           ; $5a2f: $17
    rlca                                          ; $5a30: $07
    db $e4                                        ; $5a31: $e4
    xor c                                         ; $5a32: $a9
    cp $d3                                        ; $5a33: $fe $d3
    ld c, h                                       ; $5a35: $4c
    ld e, e                                       ; $5a36: $5b
    ei                                            ; $5a37: $fb
    rst $08                                       ; $5a38: $cf
    call nc, Call_061_5f68                        ; $5a39: $d4 $68 $5f
    sbc e                                         ; $5a3c: $9b
    cp [hl]                                       ; $5a3d: $be
    ld b, d                                       ; $5a3e: $42
    call $9c5d                                    ; $5a3f: $cd $5d $9c
    sbc d                                         ; $5a42: $9a
    jr z, jr_061_5a47                             ; $5a43: $28 $02

    pop bc                                        ; $5a45: $c1
    sub b                                         ; $5a46: $90

jr_061_5a47:
    and e                                         ; $5a47: $a3
    and h                                         ; $5a48: $a4
    or l                                          ; $5a49: $b5
    cp a                                          ; $5a4a: $bf
    rlca                                          ; $5a4b: $07
    ld a, $6d                                     ; $5a4c: $3e $6d
    db $ed                                        ; $5a4e: $ed
    ccf                                           ; $5a4f: $3f
    ld d, e                                       ; $5a50: $53
    ld b, e                                       ; $5a51: $43
    ld e, e                                       ; $5a52: $5b
    ld [hl], l                                    ; $5a53: $75
    adc a                                         ; $5a54: $8f
    ld b, a                                       ; $5a55: $47
    ld [hl], a                                    ; $5a56: $77
    sbc c                                         ; $5a57: $99
    jp nc, Jump_000_3c45                          ; $5a58: $d2 $45 $3c

    ld d, b                                       ; $5a5b: $50
    jp z, Jump_061_7f23                           ; $5a5c: $ca $23 $7f

    db $ec                                        ; $5a5f: $ec
    dec d                                         ; $5a60: $15
    ld a, d                                       ; $5a61: $7a
    ld c, b                                       ; $5a62: $48
    ld e, $9a                                     ; $5a63: $1e $9a
    rst $10                                       ; $5a65: $d7
    jr nc, jr_061_5a0e                            ; $5a66: $30 $a6

    rst $28                                       ; $5a68: $ef
    rla                                           ; $5a69: $17
    rla                                           ; $5a6a: $17
    halt                                          ; $5a6b: $76
    rst $00                                       ; $5a6c: $c7
    ld c, [hl]                                    ; $5a6d: $4e
    jp c, Jump_061_4a62                           ; $5a6e: $da $62 $4a

jr_061_5a71:
    ld l, $b6                                     ; $5a71: $2e $b6
    ld [hl], h                                    ; $5a73: $74
    jr z, jr_061_5a71                             ; $5a74: $28 $fb

    inc a                                         ; $5a76: $3c
    ld l, d                                       ; $5a77: $6a
    db $ec                                        ; $5a78: $ec
    pop de                                        ; $5a79: $d1
    sbc l                                         ; $5a7a: $9d
    ld l, e                                       ; $5a7b: $6b
    dec [hl]                                      ; $5a7c: $35
    add a                                         ; $5a7d: $87
    ld e, $a7                                     ; $5a7e: $1e $a7
    and [hl]                                      ; $5a80: $a6
    ld [hl], a                                    ; $5a81: $77
    ld d, a                                       ; $5a82: $57
    cp $71                                        ; $5a83: $fe $71
    ld l, l                                       ; $5a85: $6d
    jr c, @-$58                                   ; $5a86: $38 $a6

    inc d                                         ; $5a88: $14
    rst $30                                       ; $5a89: $f7
    ld [$0d5c], a                                 ; $5a8a: $ea $5c $0d
    rst $08                                       ; $5a8d: $cf
    jp c, $a67f                                   ; $5a8e: $da $7f $a6

    ld h, [hl]                                    ; $5a91: $66
    and c                                         ; $5a92: $a1
    adc h                                         ; $5a93: $8c
    xor $32                                       ; $5a94: $ee $32
    ld a, [c]                                     ; $5a96: $f2
    rst $20                                       ; $5a97: $e7
    ld h, d                                       ; $5a98: $62
    xor b                                         ; $5a99: $a8
    inc a                                         ; $5a9a: $3c
    cp d                                          ; $5a9b: $ba
    di                                            ; $5a9c: $f3
    sbc $45                                       ; $5a9d: $de $45
    ld hl, $4e1b                                  ; $5a9f: $21 $1b $4e
    db $e3                                        ; $5aa2: $e3
    add sp, -$32                                  ; $5aa3: $e8 $ce
    or l                                          ; $5aa5: $b5
    sbc d                                         ; $5aa6: $9a
    ei                                            ; $5aa7: $fb
    cp h                                          ; $5aa8: $bc
    xor $18                                       ; $5aa9: $ee $18
    ret c                                         ; $5aab: $d8

    jp hl                                         ; $5aac: $e9


    ld e, c                                       ; $5aad: $59
    ld d, $d1                                     ; $5aae: $16 $d1
    sbc l                                         ; $5ab0: $9d
    ld h, e                                       ; $5ab1: $63
    add sp, $13                                   ; $5ab2: $e8 $13
    ld c, d                                       ; $5ab4: $4a
    ld h, l                                       ; $5ab5: $65
    adc a                                         ; $5ab6: $8f
    pop hl                                        ; $5ab7: $e1
    pop af                                        ; $5ab8: $f1
    cp l                                          ; $5ab9: $bd
    ld l, e                                       ; $5aba: $6b
    ldh [$b1], a                                  ; $5abb: $e0 $b1
    call z, $dab9                                 ; $5abd: $cc $b9 $da
    ld [hl], l                                    ; $5ac0: $75
    cp [hl]                                       ; $5ac1: $be
    ld e, a                                       ; $5ac2: $5f
    add a                                         ; $5ac3: $87
    sub h                                         ; $5ac4: $94
    ld b, [hl]                                    ; $5ac5: $46
    ld [hl], b                                    ; $5ac6: $70
    ld [$b685], sp                                ; $5ac7: $08 $85 $b6
    or $9f                                        ; $5aca: $f6 $9f
    xor c                                         ; $5acc: $a9
    cp c                                          ; $5acd: $b9
    rst $10                                       ; $5ace: $d7
    ld e, $43                                     ; $5acf: $1e $43
    dec e                                         ; $5ad1: $1d
    ld [$e153], a                                 ; $5ad2: $ea $53 $e1
    ld a, c                                       ; $5ad5: $79
    sbc h                                         ; $5ad6: $9c
    adc e                                         ; $5ad7: $8b
    ld b, d                                       ; $5ad8: $42
    xor [hl]                                      ; $5ad9: $ae
    ld e, d                                       ; $5ada: $5a
    ld a, b                                       ; $5adb: $78
    add hl, bc                                    ; $5adc: $09
    dec d                                         ; $5add: $15
    sub h                                         ; $5ade: $94
    db $d3                                        ; $5adf: $d3
    add hl, sp                                    ; $5ae0: $39
    call nc, $79f7                                ; $5ae1: $d4 $f7 $79
    rrca                                          ; $5ae4: $0f
    ld d, h                                       ; $5ae5: $54
    or $d0                                        ; $5ae6: $f6 $d0
    ld d, e                                       ; $5ae8: $53
    and c                                         ; $5ae9: $a1
    ld [hl], a                                    ; $5aea: $77
    rla                                           ; $5aeb: $17
    ld [hl], b                                    ; $5aec: $70
    dec hl                                        ; $5aed: $2b
    add b                                         ; $5aee: $80
    ldh a, [$50]                                  ; $5aef: $f0 $50
    sbc a                                         ; $5af1: $9f
    sbc b                                         ; $5af2: $98
    ld b, e                                       ; $5af3: $43
    ld l, e                                       ; $5af4: $6b
    db $e4                                        ; $5af5: $e4
    rst $08                                       ; $5af6: $cf
    push bc                                       ; $5af7: $c5
    cp d                                          ; $5af8: $ba
    and b                                         ; $5af9: $a0
    ld sp, hl                                     ; $5afa: $f9
    ld a, [hl]                                    ; $5afb: $7e
    ld bc, $01d7                                  ; $5afc: $01 $d7 $01
    ld a, [hl-]                                   ; $5aff: $3a
    dec a                                         ; $5b00: $3d
    add [hl]                                      ; $5b01: $86
    ld a, $a1                                     ; $5b02: $3e $a1
    ld d, h                                       ; $5b04: $54
    or $18                                        ; $5b05: $f6 $18
    ld e, $d3                                     ; $5b07: $1e $d3
    sub $fe                                       ; $5b09: $d6 $fe
    inc sp                                        ; $5b0b: $33
    dec [hl]                                      ; $5b0c: $35
    rst $30                                       ; $5b0d: $f7
    dec bc                                        ; $5b0e: $0b
    sub a                                         ; $5b0f: $97
    ld c, b                                       ; $5b10: $48
    or c                                          ; $5b11: $b1
    xor h                                         ; $5b12: $ac
    and h                                         ; $5b13: $a4
    ld l, $38                                     ; $5b14: $2e $38
    add [hl]                                      ; $5b16: $86
    cp [hl]                                       ; $5b17: $be
    rst $08                                       ; $5b18: $cf
    ld l, e                                       ; $5b19: $6b
    ld [hl], h                                    ; $5b1a: $74
    adc b                                         ; $5b1b: $88
    dec a                                         ; $5b1c: $3d
    sub d                                         ; $5b1d: $92
    ld [hl+], a                                   ; $5b1e: $22
    push bc                                       ; $5b1f: $c5
    add d                                         ; $5b20: $82
    sbc [hl]                                      ; $5b21: $9e
    inc [hl]                                      ; $5b22: $34
    ld [hl], e                                    ; $5b23: $73
    inc c                                         ; $5b24: $0c
    adc a                                         ; $5b25: $8f
    ld h, l                                       ; $5b26: $65
    adc $85                                       ; $5b27: $ce $85
    jr c, jr_061_5ba8                             ; $5b29: $38 $7d

    xor a                                         ; $5b2b: $af
    call $e739                                    ; $5b2c: $cd $39 $e7
    sbc [hl]                                      ; $5b2f: $9e
    ld e, a                                       ; $5b30: $5f
    xor e                                         ; $5b31: $ab
    ld [hl], e                                    ; $5b32: $73
    sbc a                                         ; $5b33: $9f
    rst $10                                       ; $5b34: $d7
    add hl, hl                                    ; $5b35: $29
    jp hl                                         ; $5b36: $e9


    ld a, l                                       ; $5b37: $7d
    pop bc                                        ; $5b38: $c1
    db $f4                                        ; $5b39: $f4
    ld a, [hl+]                                   ; $5b3a: $2a
    dec de                                        ; $5b3b: $1b
    sbc l                                         ; $5b3c: $9d
    rst $30                                       ; $5b3d: $f7
    dec bc                                        ; $5b3e: $0b
    db $ed                                        ; $5b3f: $ed
    ld [hl], c                                    ; $5b40: $71
    ret z                                         ; $5b41: $c8

    jr z, @-$1a                                   ; $5b42: $28 $e4

    xor d                                         ; $5b44: $aa
    ld [hl], e                                    ; $5b45: $73
    xor l                                         ; $5b46: $ad
    inc c                                         ; $5b47: $0c
    sub c                                         ; $5b48: $91

Jump_061_5b49:
    ld l, e                                       ; $5b49: $6b
    dec c                                         ; $5b4a: $0d
    cp c                                          ; $5b4b: $b9
    xor e                                         ; $5b4c: $ab
    ld [hl], h                                    ; $5b4d: $74
    ret z                                         ; $5b4e: $c8

    ld [hl], h                                    ; $5b4f: $74
    rst $28                                       ; $5b50: $ef
    ei                                            ; $5b51: $fb
    sbc l                                         ; $5b52: $9d
    ld bc, $9b57                                  ; $5b53: $01 $57 $9b
    inc de                                        ; $5b56: $13
    ld h, a                                       ; $5b57: $67
    ld c, h                                       ; $5b58: $4c
    xor l                                         ; $5b59: $ad
    db $d3                                        ; $5b5a: $d3
    pop af                                        ; $5b5b: $f1
    sbc h                                         ; $5b5c: $9c
    rla                                           ; $5b5d: $17
    ld d, a                                       ; $5b5e: $57
    jp hl                                         ; $5b5f: $e9


    sub b                                         ; $5b60: $90
    jp hl                                         ; $5b61: $e9


    sbc $17                                       ; $5b62: $de $17
    dec de                                        ; $5b64: $1b
    rst $30                                       ; $5b65: $f7
    dec sp                                        ; $5b66: $3b
    inc bc                                        ; $5b67: $03
    adc [hl]                                      ; $5b68: $8e
    adc h                                         ; $5b69: $8c
    ccf                                           ; $5b6a: $3f
    xor $f9                                       ; $5b6b: $ee $f9
    ld [hl-], a                                   ; $5b6d: $32
    rst $20                                       ; $5b6e: $e7
    ld [hl], h                                    ; $5b6f: $74
    db $f4                                        ; $5b70: $f4
    ld e, d                                       ; $5b71: $5a
    call Call_061_6d7b                            ; $5b72: $cd $7b $6d
    and $39                                       ; $5b75: $e6 $39
    ld d, a                                       ; $5b77: $57
    jp $f0b3                                      ; $5b78: $c3 $b3 $f0


    adc h                                         ; $5b7b: $8c
    db $fc                                        ; $5b7c: $fc
    ld [hl-], a                                   ; $5b7d: $32
    ld a, [c]                                     ; $5b7e: $f2
    rst $20                                       ; $5b7f: $e7
    xor b                                         ; $5b80: $a8
    ld [hl], h                                    ; $5b81: $74
    pop af                                        ; $5b82: $f1
    ld h, b                                       ; $5b83: $60
    ld a, [c]                                     ; $5b84: $f2
    sub l                                         ; $5b85: $95
    or d                                          ; $5b86: $b2
    call c, $172f                                 ; $5b87: $dc $2f $17
    ld a, a                                       ; $5b8a: $7f
    ld e, h                                       ; $5b8b: $5c
    inc c                                         ; $5b8c: $0c
    add sp, -$6f                                  ; $5b8d: $e8 $91
    ld [hl], c                                    ; $5b8f: $71
    ld c, b                                       ; $5b90: $48
    db $fc                                        ; $5b91: $fc
    ld [hl-], a                                   ; $5b92: $32
    cp d                                          ; $5b93: $ba
    bit 4, d                                      ; $5b94: $cb $62
    add sp, -$23                                  ; $5b96: $e8 $dd
    xor e                                         ; $5b98: $ab
    sbc [hl]                                      ; $5b99: $9e
    adc [hl]                                      ; $5b9a: $8e
    add e                                         ; $5b9b: $83
    or c                                          ; $5b9c: $b1
    sbc [hl]                                      ; $5b9d: $9e
    adc l                                         ; $5b9e: $8d
    cpl                                           ; $5b9f: $2f
    rst $20                                       ; $5ba0: $e7
    cp h                                          ; $5ba1: $bc
    ld l, l                                       ; $5ba2: $6d
    ld h, [hl]                                    ; $5ba3: $66
    or $54                                        ; $5ba4: $f6 $54
    rst $38                                       ; $5ba6: $ff
    or l                                          ; $5ba7: $b5

jr_061_5ba8:
    cp d                                          ; $5ba8: $ba
    rlca                                          ; $5ba9: $07
    push af                                       ; $5baa: $f5
    cp e                                          ; $5bab: $bb
    rst $20                                       ; $5bac: $e7
    sbc h                                         ; $5bad: $9c
    ld h, l                                       ; $5bae: $65
    push af                                       ; $5baf: $f5

jr_061_5bb0:
    pop de                                        ; $5bb0: $d1
    cp e                                          ; $5bb1: $bb
    and a                                         ; $5bb2: $a7
    sub e                                         ; $5bb3: $93
    sbc d                                         ; $5bb4: $9a
    ld d, d                                       ; $5bb5: $52
    call c, $f0a1                                 ; $5bb6: $dc $a1 $f0
    db $fd                                        ; $5bb9: $fd
    ld [bc], a                                    ; $5bba: $02
    db $ed                                        ; $5bbb: $ed
    ccf                                           ; $5bbc: $3f
    ld d, e                                       ; $5bbd: $53
    or e                                          ; $5bbe: $b3
    dec hl                                        ; $5bbf: $2b
    inc bc                                        ; $5bc0: $03
    or e                                          ; $5bc1: $b3
    sub e                                         ; $5bc2: $93
    ld [hl], $12                                  ; $5bc3: $36 $12
    sbc [hl]                                      ; $5bc5: $9e
    ld l, [hl]                                    ; $5bc6: $6e
    ld e, c                                       ; $5bc7: $59
    ld c, h                                       ; $5bc8: $4c
    ld c, c                                       ; $5bc9: $49
    xor a                                         ; $5bca: $af
    add a                                         ; $5bcb: $87
    ret c                                         ; $5bcc: $d8

    cp h                                          ; $5bcd: $bc
    rst $08                                       ; $5bce: $cf
    ld b, e                                       ; $5bcf: $43
    ld a, l                                       ; $5bd0: $7d
    adc $91                                       ; $5bd1: $ce $91
    ld c, [hl]                                    ; $5bd3: $4e
    db $ed                                        ; $5bd4: $ed
    cpl                                           ; $5bd5: $2f
    ld l, l                                       ; $5bd6: $6d
    adc $39                                       ; $5bd7: $ce $39
    ld d, a                                       ; $5bd9: $57
    sub l                                         ; $5bda: $95
    ld a, c                                       ; $5bdb: $79
    sub [hl]                                      ; $5bdc: $96
    jp hl                                         ; $5bdd: $e9


    ld e, l                                       ; $5bde: $5d
    and e                                         ; $5bdf: $a3
    sub h                                         ; $5be0: $94
    rst $08                                       ; $5be1: $cf
    sbc [hl]                                      ; $5be2: $9e
    ld a, c                                       ; $5be3: $79

jr_061_5be4:
    ld e, l                                       ; $5be4: $5d
    ld d, e                                       ; $5be5: $53
    rst $20                                       ; $5be6: $e7
    ld e, h                                       ; $5be7: $5c
    and e                                         ; $5be8: $a3
    dec sp                                        ; $5be9: $3b
    ld [hl], $2f                                  ; $5bea: $36 $2f
    ld a, [bc]                                    ; $5bec: $0a
    add hl, de                                    ; $5bed: $19
    ld a, a                                       ; $5bee: $7f
    pop bc                                        ; $5bef: $c1
    ld l, [hl]                                    ; $5bf0: $6e
    ld e, $43                                     ; $5bf1: $1e $43
    sbc a                                         ; $5bf3: $9f
    ld h, l                                       ; $5bf4: $65
    ld [$c80b], a                                 ; $5bf5: $ea $0b $c8
    db $fd                                        ; $5bf8: $fd
    ld [bc], a                                    ; $5bf9: $02
    ld l, l                                       ; $5bfa: $6d
    and $75                                       ; $5bfb: $e6 $75
    dec c                                         ; $5bfd: $0d
    ld a, [hl-]                                   ; $5bfe: $3a
    rla                                           ; $5bff: $17
    ld b, e                                       ; $5c00: $43
    ld a, [hl+]                                   ; $5c01: $2a
    ld [hl], a                                    ; $5c02: $77
    jr z, jr_061_5bb0                             ; $5c03: $28 $ab

    pop hl                                        ; $5c05: $e1
    sbc c                                         ; $5c06: $99
    ld h, l                                       ; $5c07: $65
    cp a                                          ; $5c08: $bf
    rst $00                                       ; $5c09: $c7
    ld hl, $943b                                  ; $5c0a: $21 $3b $94
    jp hl                                         ; $5c0d: $e9


    ld e, l                                       ; $5c0e: $5d
    and e                                         ; $5c0f: $a3
    sub h                                         ; $5c10: $94
    rst $28                                       ; $5c11: $ef
    rla                                           ; $5c12: $17
    ld l, l                                       ; $5c13: $6d
    and $c5                                       ; $5c14: $e6 $c5
    ccf                                           ; $5c16: $3f
    ld h, a                                       ; $5c17: $67
    ld e, $53                                     ; $5c18: $1e $53
    inc b                                         ; $5c1a: $04
    ld a, c                                       ; $5c1b: $79
    sub l                                         ; $5c1c: $95
    db $fd                                        ; $5c1d: $fd
    inc de                                        ; $5c1e: $13
    and h                                         ; $5c1f: $a4
    ld l, e                                       ; $5c20: $6b
    ld [$fbee], a                                 ; $5c21: $ea $ee $fb
    ld e, [hl]                                    ; $5c24: $5e
    jr z, jr_061_5c6a                             ; $5c25: $28 $43

    di                                            ; $5c27: $f3
    ld [hl], h                                    ; $5c28: $74
    pop bc                                        ; $5c29: $c1
    jp c, Jump_061_4b7f                           ; $5c2a: $da $7f $4b

    ei                                            ; $5c2d: $fb
    ld c, $b8                                     ; $5c2e: $0e $b8
    call z, $c6b9                                 ; $5c30: $cc $b9 $c6
    sub a                                         ; $5c33: $97
    ld [c], a                                     ; $5c34: $e2
    ld b, l                                       ; $5c35: $45
    ld hl, $79f7                                  ; $5c36: $21 $f7 $79
    ld l, b                                       ; $5c39: $68
    sbc [hl]                                      ; $5c3a: $9e
    ld a, [$2fb2]                                 ; $5c3b: $fa $b2 $2f
    ld c, h                                       ; $5c3e: $4c
    ld de, $a0f4                                  ; $5c3f: $11 $f4 $a0

jr_061_5c42:
    db $e3                                        ; $5c42: $e3
    cp l                                          ; $5c43: $bd
    inc bc                                        ; $5c44: $03
    ld l, $7b                                     ; $5c45: $2e $7b
    sbc d                                         ; $5c47: $9a
    inc hl                                        ; $5c48: $23
    ld a, a                                       ; $5c49: $7f
    db $ec                                        ; $5c4a: $ec
    ld c, c                                       ; $5c4b: $49
    jr z, jr_061_5be4                             ; $5c4c: $28 $96

    ld sp, $7df4                                  ; $5c4e: $31 $f4 $7d
    ld e, [hl]                                    ; $5c51: $5e
    db $f4                                        ; $5c52: $f4
    and l                                         ; $5c53: $a5
    ld a, b                                       ; $5c54: $78
    ld l, b                                       ; $5c55: $68
    ld e, [hl]                                    ; $5c56: $5e
    jr z, @-$5b                                   ; $5c57: $28 $a3

    cp e                                          ; $5c59: $bb
    xor h                                         ; $5c5a: $ac
    ld d, d                                       ; $5c5b: $52
    sbc b                                         ; $5c5c: $98
    sbc l                                         ; $5c5d: $9d
    ld b, e                                       ; $5c5e: $43

Call_061_5c5f:
    jr z, jr_061_5ccc                             ; $5c5f: $28 $6b

    dec [hl]                                      ; $5c61: $35
    rla                                           ; $5c62: $17
    ld e, d                                       ; $5c63: $5a
    push hl                                       ; $5c64: $e5
    rst $00                                       ; $5c65: $c7
    sub [hl]                                      ; $5c66: $96
    ei                                            ; $5c67: $fb
    dec b                                         ; $5c68: $05
    db $ed                                        ; $5c69: $ed

jr_061_5c6a:
    ld [hl], c                                    ; $5c6a: $71
    ld c, b                                       ; $5c6b: $48
    db $fc                                        ; $5c6c: $fc
    ld [hl-], a                                   ; $5c6d: $32
    push af                                       ; $5c6e: $f5
    ld h, l                                       ; $5c6f: $65
    ld [hl], h                                    ; $5c70: $74
    sub a                                         ; $5c71: $97
    dec d                                         ; $5c72: $15
    adc e                                         ; $5c73: $8b
    or d                                          ; $5c74: $b2
    and b                                         ; $5c75: $a0
    and a                                         ; $5c76: $a7
    cp [hl]                                       ; $5c77: $be
    add b                                         ; $5c78: $80
    ld e, b                                       ; $5c79: $58
    ld l, b                                       ; $5c7a: $68
    sub e                                         ; $5c7b: $93
    ld h, [hl]                                    ; $5c7c: $66
    adc [hl]                                      ; $5c7d: $8e
    xor $b2                                       ; $5c7e: $ee $b2
    xor b                                         ; $5c80: $a8
    sbc c                                         ; $5c81: $99
    and e                                         ; $5c82: $a3
    jp nc, Jump_061_56bd                          ; $5c83: $d2 $bd $56

    ld [hl], e                                    ; $5c86: $73
    ld l, b                                       ; $5c87: $68
    add hl, sp                                    ; $5c88: $39
    rst $20                                       ; $5c89: $e7
    dec b                                         ; $5c8a: $05
    ld l, l                                       ; $5c8b: $6d
    sub [hl]                                      ; $5c8c: $96
    add hl, sp                                    ; $5c8d: $39
    rla                                           ; $5c8e: $17
    ld b, e                                       ; $5c8f: $43
    add sp, -$1a                                  ; $5c90: $e8 $e6
    ld a, e                                       ; $5c92: $7b
    ld l, l                                       ; $5c93: $6d
    and $39                                       ; $5c94: $e6 $39
    and a                                         ; $5c96: $a7
    ld d, a                                       ; $5c97: $57
    ld a, [bc]                                    ; $5c98: $0a
    add $5f                                       ; $5c99: $c6 $5f
    ld a, [hl-]                                   ; $5c9b: $3a
    inc d                                         ; $5c9c: $14
    and [hl]                                      ; $5c9d: $a6
    xor l                                         ; $5c9e: $ad
    cp d                                          ; $5c9f: $ba
    rst $00                                       ; $5ca0: $c7
    ld l, e                                       ; $5ca1: $6b
    dec [hl]                                      ; $5ca2: $35
    rst $10                                       ; $5ca3: $d7
    ld e, $0a                                     ; $5ca4: $1e $0a
    or c                                          ; $5ca6: $b1
    sbc a                                         ; $5ca7: $9f
    ld e, h                                       ; $5ca8: $5c
    rst $28                                       ; $5ca9: $ef
    or l                                          ; $5caa: $b5
    rst $00                                       ; $5cab: $c7
    ld d, b                                       ; $5cac: $50
    add a                                         ; $5cad: $87
    ld a, [$2fa2]                                 ; $5cae: $fa $a2 $2f
    push bc                                       ; $5cb1: $c5
    add hl, sp                                    ; $5cb2: $39
    or h                                          ; $5cb3: $b4
    inc l                                         ; $5cb4: $2c
    sub h                                         ; $5cb5: $94
    dec [hl]                                      ; $5cb6: $35
    ld [de], a                                    ; $5cb7: $12
    and h                                         ; $5cb8: $a4
    jr c, jr_061_5c42                             ; $5cb9: $38 $87

    sub [hl]                                      ; $5cbb: $96
    ld sp, $c6f4                                  ; $5cbc: $31 $f4 $c6
    cpl                                           ; $5cbf: $2f
    ld e, [hl]                                    ; $5cc0: $5e
    inc c                                         ; $5cc1: $0c
    ld a, l                                       ; $5cc2: $7d
    ld [hl], h                                    ; $5cc3: $74
    sub a                                         ; $5cc4: $97
    ld [hl], l                                    ; $5cc5: $75
    ld c, d                                       ; $5cc6: $4a
    ld a, d                                       ; $5cc7: $7a
    ld [$9665], sp                                ; $5cc8: $08 $65 $96
    adc c                                         ; $5ccb: $89

jr_061_5ccc:
    ld h, [hl]                                    ; $5ccc: $66
    sbc h                                         ; $5ccd: $9c
    sbc d                                         ; $5cce: $9a
    sbc $1d                                       ; $5ccf: $de $1d
    add l                                         ; $5cd1: $85
    ld a, h                                       ; $5cd2: $7c
    db $f4                                        ; $5cd3: $f4
    cp $f3                                        ; $5cd4: $fe $f3
    ld a, [hl]                                    ; $5cd6: $7e
    ld bc, $5c07                                  ; $5cd7: $01 $07 $5c
    add $d4                                       ; $5cda: $c6 $d4
    ld e, h                                       ; $5cdc: $5c
    ld c, h                                       ; $5cdd: $4c
    ld b, c                                       ; $5cde: $41
    db $f4                                        ; $5cdf: $f4
    ld e, d                                       ; $5ce0: $5a
    call Call_000_1e7d                            ; $5ce1: $cd $7d $1e
    ld e, d                                       ; $5ce4: $5a
    ld d, $43                                     ; $5ce5: $16 $43
    ld e, a                                       ; $5ce7: $5f
    inc d                                         ; $5ce8: $14
    or d                                          ; $5ce9: $b2
    ld d, d                                       ; $5cea: $52
    adc e                                         ; $5ceb: $8b
    rst $30                                       ; $5cec: $f7
    ld a, c                                       ; $5ced: $79
    or l                                          ; $5cee: $b5
    ld b, e                                       ; $5cef: $43
    xor e                                         ; $5cf0: $ab
    push hl                                       ; $5cf1: $e5
    jp hl                                         ; $5cf2: $e9


    ld l, b                                       ; $5cf3: $68
    adc c                                         ; $5cf4: $89
    ld b, d                                       ; $5cf5: $42
    sbc $2f                                       ; $5cf6: $de $2f
    db $ed                                        ; $5cf8: $ed
    xor $b8                                       ; $5cf9: $ee $b8
    ld d, b                                       ; $5cfb: $50
    sub $35                                       ; $5cfc: $d6 $35
    ld c, d                                       ; $5cfe: $4a
    sbc c                                         ; $5cff: $99
    or [hl]                                       ; $5d00: $b6
    or $9f                                        ; $5d01: $f6 $9f
    xor c                                         ; $5d03: $a9
    cp c                                          ; $5d04: $b9
    ld [hl], a                                    ; $5d05: $77
    push hl                                       ; $5d06: $e5
    xor a                                         ; $5d07: $af
    ld l, e                                       ; $5d08: $6b
    dec [hl]                                      ; $5d09: $35
    rst $30                                       ; $5d0a: $f7
    ld a, c                                       ; $5d0b: $79
    xor b                                         ; $5d0c: $a8
    rrca                                          ; $5d0d: $0f
    sub h                                         ; $5d0e: $94
    ld a, [c]                                     ; $5d0f: $f2
    ld a, [de]                                    ; $5d10: $1a
    ld c, c                                       ; $5d11: $49
    ld de, $0e74                                  ; $5d12: $11 $74 $0e
    and c                                         ; $5d15: $a1
    call c, $972f                                 ; $5d16: $dc $2f $97
    ld a, [hl]                                    ; $5d19: $7e
    ld bc, $ccb1                                  ; $5d1a: $01 $b1 $cc
    add hl, sp                                    ; $5d1d: $39
    ld d, b                                       ; $5d1e: $50
    jp z, $9d23                                   ; $5d1f: $ca $23 $9d

    or h                                          ; $5d22: $b4
    or l                                          ; $5d23: $b5
    rst $38                                       ; $5d24: $ff
    ld c, h                                       ; $5d25: $4c
    adc l                                         ; $5d26: $8d
    or $5d                                        ; $5d27: $f6 $5d
    rlca                                          ; $5d29: $07
    ld a, l                                       ; $5d2a: $7d
    xor b                                         ; $5d2b: $a8
    rrca                                          ; $5d2c: $0f
    sub h                                         ; $5d2d: $94
    ld a, [c]                                     ; $5d2e: $f2
    inc h                                         ; $5d2f: $24
    xor b                                         ; $5d30: $a8
    ld d, l                                       ; $5d31: $55
    and l                                         ; $5d32: $a5
    ld de, $10f4                                  ; $5d33: $11 $f4 $10
    jp z, $2f3e                                   ; $5d36: $ca $3e $2f

    ld [bc], a                                    ; $5d39: $02
    ld b, c                                       ; $5d3a: $41
    rrca                                          ; $5d3b: $0f
    dec l                                         ; $5d3c: $2d
    jp c, $ed5f                                   ; $5d3d: $da $5f $ed

    ccf                                           ; $5d40: $3f
    add a                                         ; $5d41: $87
    ld a, [$79aa]                                 ; $5d42: $fa $aa $79
    sub [hl]                                      ; $5d45: $96
    push bc                                       ; $5d46: $c5
    db $10                                        ; $5d47: $10
    cp d                                          ; $5d48: $ba
    ld a, c                                       ; $5d49: $79
    ld [$c80b], a                                 ; $5d4a: $ea $0b $c8
    add hl, sp                                    ; $5d4d: $39
    cpl                                           ; $5d4e: $2f
    rlca                                          ; $5d4f: $07
    ld a, $6d                                     ; $5d50: $3e $6d
    ld l, b                                       ; $5d52: $68
    ld e, c                                       ; $5d53: $59
    and a                                         ; $5d54: $a7
    ld [hl], $f6                                  ; $5d55: $36 $f6
    and e                                         ; $5d57: $a3
    ld d, l                                       ; $5d58: $55
    ld [hl], $0e                                  ; $5d59: $36 $0e
    sub [hl]                                      ; $5d5b: $96
    ld h, [hl]                                    ; $5d5c: $66
    ld bc, $fb29                                  ; $5d5d: $01 $29 $fb
    pop de                                        ; $5d60: $d1
    jr c, jr_061_5de2                             ; $5d61: $38 $7f

    xor e                                         ; $5d63: $ab
    ld h, l                                       ; $5d64: $65
    cp c                                          ; $5d65: $b9
    ld e, a                                       ; $5d66: $5f
    rlca                                          ; $5d67: $07
    ld e, h                                       ; $5d68: $5c
    ld d, [hl]                                    ; $5d69: $56

jr_061_5d6a:
    sbc e                                         ; $5d6a: $9b
    or e                                          ; $5d6b: $b3
    ld c, h                                       ; $5d6c: $4c
    ld a, l                                       ; $5d6d: $7d
    ld bc, $ab59                                  ; $5d6e: $01 $59 $ab
    add hl, sp                                    ; $5d71: $39
    adc $df                                       ; $5d72: $ce $df
    ld l, d                                       ; $5d74: $6a
    ld e, c                                       ; $5d75: $59
    ld h, $c6                                     ; $5d76: $26 $c6
    ld sp, $55f4                                  ; $5d78: $31 $f4 $55
    sub $6d                                       ; $5d7b: $d6 $6d
    cp $c5                                        ; $5d7d: $fe $c5
    ld [hl], d                                    ; $5d7f: $72
    rst $28                                       ; $5d80: $ef
    add b                                         ; $5d81: $80
    set 2, h                                      ; $5d82: $cb $d4
    sub a                                         ; $5d84: $97
    add c                                         ; $5d85: $81
    ld d, d                                       ; $5d86: $52
    ld e, $a9                                     ; $5d87: $1e $a9
    ld d, a                                       ; $5d89: $57
    push hl                                       ; $5d8a: $e5
    sub c                                         ; $5d8b: $91
    ld sp, $6574                                  ; $5d8c: $31 $74 $65
    ld e, c                                       ; $5d8f: $59
    db $f4                                        ; $5d90: $f4
    inc sp                                        ; $5d91: $33
    or $d0                                        ; $5d92: $f6 $d0
    ld [hl-], a                                   ; $5d94: $32
    ld a, [c]                                     ; $5d95: $f2
    rst $00                                       ; $5d96: $c7
    add sp, -$05                                  ; $5d97: $e8 $fb
    dec b                                         ; $5d99: $05
    ld l, l                                       ; $5d9a: $6d
    ld a, [$745a]                                 ; $5d9b: $fa $5a $74
    adc d                                         ; $5d9e: $8a
    ld d, d                                       ; $5d9f: $52
    adc $3d                                       ; $5da0: $ce $3d
    ld l, $e6                                     ; $5da2: $2e $e6
    ld b, l                                       ; $5da4: $45
    ld sp, hl                                     ; $5da5: $f9
    rst $00                                       ; $5da6: $c7
    ldh a, [$38]                                  ; $5da7: $f0 $38
    push bc                                       ; $5da9: $c5
    or h                                          ; $5daa: $b4
    or l                                          ; $5dab: $b5
    rst $38                                       ; $5dac: $ff
    ld c, h                                       ; $5dad: $4c
    call Call_000_02fd                            ; $5dae: $cd $fd $02
    ld d, a                                       ; $5db1: $57
    ld a, [hl-]                                   ; $5db2: $3a
    adc c                                         ; $5db3: $89
    ld l, d                                       ; $5db4: $6a
    ld l, b                                       ; $5db5: $68
    inc hl                                        ; $5db6: $23
    ld a, a                                       ; $5db7: $7f
    ld c, $f5                                     ; $5db8: $0e $f5
    ld d, l                                       ; $5dba: $55
    di                                            ; $5dbb: $f3
    inc l                                         ; $5dbc: $2c
    adc e                                         ; $5dbd: $8b
    ld hl, $f374                                  ; $5dbe: $21 $74 $f3
    call nc, $9017                                ; $5dc1: $d4 $17 $90
    sub c                                         ; $5dc4: $91
    adc $85                                       ; $5dc5: $ce $85
    ld b, a                                       ; $5dc7: $47
    dec h                                         ; $5dc8: $25
    ld c, b                                       ; $5dc9: $48
    add hl, sp                                    ; $5dca: $39
    rst $20                                       ; $5dcb: $e7
    dec b                                         ; $5dcc: $05
    rlca                                          ; $5dcd: $07
    ld a, $6d                                     ; $5dce: $3e $6d
    ld l, b                                       ; $5dd0: $68

Call_061_5dd1:
    add hl, de                                    ; $5dd1: $19
    add hl, de                                    ; $5dd2: $19
    ld e, d                                       ; $5dd3: $5a
    dec l                                         ; $5dd4: $2d
    and e                                         ; $5dd5: $a3
    and a                                         ; $5dd6: $a7
    db $e3                                        ; $5dd7: $e3
    ld a, $0e                                     ; $5dd8: $3e $0e
    xor c                                         ; $5dda: $a9
    ld l, c                                       ; $5ddb: $69
    ld e, c                                       ; $5ddc: $59
    jr z, jr_061_5d6a                             ; $5ddd: $28 $8b

    ld bc, $9e9d                                  ; $5ddf: $01 $9d $9e

jr_061_5de2:
    adc [hl]                                      ; $5de2: $8e
    ld l, e                                       ; $5de3: $6b
    dec [hl]                                      ; $5de4: $35
    ld d, a                                       ; $5de5: $57
    ld d, l                                       ; $5de6: $55
    add sp, -$6a                                  ; $5de7: $e8 $96
    cp d                                          ; $5de9: $ba
    ldh a, [$64]                                  ; $5dea: $f0 $64
    inc de                                        ; $5dec: $13
    ld a, l                                       ; $5ded: $7d
    xor a                                         ; $5dee: $af
    dec a                                         ; $5def: $3d
    ld c, $19                                     ; $5df0: $0e $19
    add l                                         ; $5df2: $85
    sbc h                                         ; $5df3: $9c
    ld [hl], e                                    ; $5df4: $73
    ld l, b                                       ; $5df5: $68
    ld e, c                                       ; $5df6: $59
    inc c                                         ; $5df7: $0c
    and c                                         ; $5df8: $a1
    sbc e                                         ; $5df9: $9b
    rst $08                                       ; $5dfa: $cf
    ld a, c                                       ; $5dfb: $79
    ld bc, $e66d                                  ; $5dfc: $01 $6d $e6
    add hl, sp                                    ; $5dff: $39
    ld h, a                                       ; $5e00: $67
    ld e, $53                                     ; $5e01: $1e $53

jr_061_5e03:
    inc b                                         ; $5e03: $04
    ld a, c                                       ; $5e04: $79
    sub l                                         ; $5e05: $95
    db $fd                                        ; $5e06: $fd
    inc de                                        ; $5e07: $13
    and h                                         ; $5e08: $a4
    ld l, e                                       ; $5e09: $6b
    ld [$b9d0], a                                 ; $5e0a: $ea $d0 $b9
    ret c                                         ; $5e0d: $d8

    jr c, jr_061_5e03                             ; $5e0e: $38 $f3

    ld [hl], h                                    ; $5e10: $74
    jp nc, $d71d                                  ; $5e11: $d2 $1d $d7

    add sp, -$72                                  ; $5e14: $e8 $8e
    rla                                           ; $5e16: $17
    add l                                         ; $5e17: $85
    adc h                                         ; $5e18: $8c
    cp a                                          ; $5e19: $bf
    ld h, b                                       ; $5e1a: $60
    scf                                           ; $5e1b: $37
    adc a                                         ; $5e1c: $8f
    and c                                         ; $5e1d: $a1
    rst $08                                       ; $5e1e: $cf
    ld [hl-], a                                   ; $5e1f: $32
    push af                                       ; $5e20: $f5
    dec b                                         ; $5e21: $05
    db $e4                                        ; $5e22: $e4
    ld a, [hl]                                    ; $5e23: $7e
    ld bc, $e66d                                  ; $5e24: $01 $6d $e6
    ld b, l                                       ; $5e27: $45
    ld hl, $ff55                                  ; $5e28: $21 $55 $ff
    jp hl                                         ; $5e2b: $e9


    ld e, h                                       ; $5e2c: $5c
    ld h, l                                       ; $5e2d: $65
    rst $38                                       ; $5e2e: $ff
    inc b                                         ; $5e2f: $04
    or c                                          ; $5e30: $b1
    xor h                                         ; $5e31: $ac
    push de                                       ; $5e32: $d5
    ld e, h                                       ; $5e33: $5c
    pop de                                        ; $5e34: $d1
    ld a, e                                       ; $5e35: $7b
    ld l, h                                       ; $5e36: $6c
    cp [hl]                                       ; $5e37: $be
    ld e, a                                       ; $5e38: $5f
    rlca                                          ; $5e39: $07
    adc c                                         ; $5e3a: $89
    ld e, [hl]                                    ; $5e3b: $5e
    inc e                                         ; $5e3c: $1c
    db $e4                                        ; $5e3d: $e4
    sub a                                         ; $5e3e: $97
    rst $18                                       ; $5e3f: $df
    ei                                            ; $5e40: $fb
    ld h, d                                       ; $5e41: $62
    add sp, $23                                   ; $5e42: $e8 $23
    ld a, a                                       ; $5e44: $7f
    db $ec                                        ; $5e45: $ec
    dec a                                         ; $5e46: $3d
    ld d, b                                       ; $5e47: $50
    add $d0                                       ; $5e48: $c6 $d0
    rst $30                                       ; $5e4a: $f7
    ld a, c                                       ; $5e4b: $79
    pop de                                        ; $5e4c: $d1
    sub a                                         ; $5e4d: $97
    ld [c], a                                     ; $5e4e: $e2
    and c                                         ; $5e4f: $a1
    push hl                                       ; $5e50: $e5
    ld a, [hl]                                    ; $5e51: $7e
    ld bc, $5c07                                  ; $5e52: $01 $07 $5c
    ld d, [hl]                                    ; $5e55: $56
    sbc e                                         ; $5e56: $9b
    db $eb                                        ; $5e57: $eb
    ld d, b                                       ; $5e58: $50
    inc a                                         ; $5e59: $3c
    set 0, h                                      ; $5e5a: $cb $c4
    add sp, -$3f                                  ; $5e5c: $e8 $c1
    ld a, [hl+]                                   ; $5e5e: $2a
    db $eb                                        ; $5e5f: $eb
    ld [hl], $ff                                  ; $5e60: $36 $ff
    ld h, d                                       ; $5e62: $62
    cp c                                          ; $5e63: $b9
    ld e, a                                       ; $5e64: $5f
    sub a                                         ; $5e65: $97
    sbc e                                         ; $5e66: $9b

Call_061_5e67:
    ld a, [hl]                                    ; $5e67: $7e
    xor a                                         ; $5e68: $af
    db $fd                                        ; $5e69: $fd
    rst $20                                       ; $5e6a: $e7
    ld d, b                                       ; $5e6b: $50
    ccf                                           ; $5e6c: $3f
    rst $20                                       ; $5e6d: $e7
    dec b                                         ; $5e6e: $05
    rlca                                          ; $5e6f: $07
    ld e, h                                       ; $5e70: $5c
    ld d, $1b                                     ; $5e71: $16 $1b
    rlca                                          ; $5e73: $07
    ld c, d                                       ; $5e74: $4a
    ld a, c                                       ; $5e75: $79
    ld [de], a                                    ; $5e76: $12
    adc d                                         ; $5e77: $8a
    ld a, c                                       ; $5e78: $79
    pop hl                                        ; $5e79: $e1
    add hl, de                                    ; $5e7a: $19
    sbc d                                         ; $5e7b: $9a
    rst $28                                       ; $5e7c: $ef
    ei                                            ; $5e7d: $fb
    dec b                                         ; $5e7e: $05
    sub a                                         ; $5e7f: $97
    sbc e                                         ; $5e80: $9b
    ld a, [hl]                                    ; $5e81: $7e
    rst $28                                       ; $5e82: $ef
    ld a, h                                       ; $5e83: $7c
    dec a                                         ; $5e84: $3d
    pop de                                        ; $5e85: $d1
    and e                                         ; $5e86: $a3
    cp e                                          ; $5e87: $bb
    inc c                                         ; $5e88: $0c
    call $bce7                                    ; $5e89: $cd $e7 $bc
    rlca                                          ; $5e8c: $07
    ld e, h                                       ; $5e8d: $5c
    ld b, [hl]                                    ; $5e8e: $46
    cp $5c                                        ; $5e8f: $fe $5c
    db $ed                                        ; $5e91: $ed
    and $81                                       ; $5e92: $e6 $81
    ld d, d                                       ; $5e94: $52
    ld e, [hl]                                    ; $5e95: $5e
    dec [hl]                                      ; $5e96: $35
    ld c, a                                       ; $5e97: $4f
    ld b, d                                       ; $5e98: $42
    or c                                          ; $5e99: $b1
    ld c, h                                       ; $5e9a: $4c
    ld a, l                                       ; $5e9b: $7d
    ld bc, $5fb9                                  ; $5e9c: $01 $b9 $5f
    rla                                           ; $5e9f: $17
    and $d0                                       ; $5ea0: $e6 $d0
    add hl, sp                                    ; $5ea2: $39
    add hl, bc                                    ; $5ea3: $09
    push bc                                       ; $5ea4: $c5
    inc a                                         ; $5ea5: $3c
    ld e, b                                       ; $5ea6: $58
    ld l, h                                       ; $5ea7: $6c
    cp d                                          ; $5ea8: $ba
    add l                                         ; $5ea9: $85
    or [hl]                                       ; $5eaa: $b6
    or $9f                                        ; $5eab: $f6 $9f
    xor c                                         ; $5ead: $a9
    add hl, sp                                    ; $5eae: $39
    rst $20                                       ; $5eaf: $e7
    dec b                                         ; $5eb0: $05
    rla                                           ; $5eb1: $17
    add c                                         ; $5eb2: $81
    ldh [$2c], a                                  ; $5eb3: $e0 $2c
    ei                                            ; $5eb5: $fb
    add d                                         ; $5eb6: $82
    sub [hl]                                      ; $5eb7: $96
    and c                                         ; $5eb8: $a1
    ld a, $f5                                     ; $5eb9: $3e $f5
    ld h, l                                       ; $5ebb: $65
    or l                                          ; $5ebc: $b5
    ld b, l                                       ; $5ebd: $45
    call $85e2                                    ; $5ebe: $cd $e2 $85
    ld h, a                                       ; $5ec1: $67
    ld [de], a                                    ; $5ec2: $12
    adc d                                         ; $5ec3: $8a

jr_061_5ec4:
    ld a, c                                       ; $5ec4: $79
    xor b                                         ; $5ec5: $a8
    ccf                                           ; $5ec6: $3f
    xor h                                         ; $5ec7: $ac
    db $fd                                        ; $5ec8: $fd
    dec b                                         ; $5ec9: $05
    db $ed                                        ; $5eca: $ed
    ld sp, $dea5                                  ; $5ecb: $31 $a5 $de
    cpl                                           ; $5ece: $2f
    sub a                                         ; $5ecf: $97
    sbc e                                         ; $5ed0: $9b
    ld c, [hl]                                    ; $5ed1: $4e
    db $db                                        ; $5ed2: $db
    ld h, e                                       ; $5ed3: $63
    add hl, de                                    ; $5ed4: $19
    sbc d                                         ; $5ed5: $9a
    rla                                           ; $5ed6: $17
    ld b, e                                       ; $5ed7: $43
    rst $28                                       ; $5ed8: $ef
    ld e, $dd                                     ; $5ed9: $1e $dd
    ld h, l                                       ; $5edb: $65
    ld hl, sp+$47                                 ; $5edc: $f8 $47
    sub l                                         ; $5ede: $95
    xor d                                         ; $5edf: $aa
    ld a, h                                       ; $5ee0: $7c
    cp a                                          ; $5ee1: $bf
    sub a                                         ; $5ee2: $97
    sbc e                                         ; $5ee3: $9b
    ld c, [hl]                                    ; $5ee4: $4e
    db $db                                        ; $5ee5: $db
    ld h, e                                       ; $5ee6: $63
    add hl, de                                    ; $5ee7: $19
    sbc d                                         ; $5ee8: $9a
    rla                                           ; $5ee9: $17
    ld b, e                                       ; $5eea: $43
    rst $28                                       ; $5eeb: $ef
    ld e, $dd                                     ; $5eec: $1e $dd
    ld h, l                                       ; $5eee: $65
    ld hl, sp+$47                                 ; $5eef: $f8 $47
    sub l                                         ; $5ef1: $95
    xor d                                         ; $5ef2: $aa
    ld a, h                                       ; $5ef3: $7c
    cp a                                          ; $5ef4: $bf
    add a                                         ; $5ef5: $87
    ld e, d                                       ; $5ef6: $5a
    call nc, $6b2c                                ; $5ef7: $d4 $2c $6b
    rst $38                                       ; $5efa: $ff
    dec h                                         ; $5efb: $25
    ld bc, $b5ef                                  ; $5efc: $01 $ef $b5
    ld a, a                                       ; $5eff: $7f
    ld e, c                                       ; $5f00: $59
    ld l, h                                       ; $5f01: $6c
    call c, $bcef                                 ; $5f02: $dc $ef $bc
    ldh a, [$0c]                                  ; $5f05: $f0 $0c
    dec [hl]                                      ; $5f07: $35
    add hl, sp                                    ; $5f08: $39
    ld [hl], h                                    ; $5f09: $74
    xor [hl]                                      ; $5f0a: $ae
    pop hl                                        ; $5f0b: $e1
    sbc b                                         ; $5f0c: $98
    ld d, d                                       ; $5f0d: $52
    sbc h                                         ; $5f0e: $9c
    xor e                                         ; $5f0f: $ab
    ld d, b                                       ; $5f10: $50
    sub [hl]                                      ; $5f11: $96
    cp d                                          ; $5f12: $ba
    jr nz, jr_061_5ec4                            ; $5f13: $20 $af

    push de                                       ; $5f15: $d5
    ld e, h                                       ; $5f16: $5c
    ld d, l                                       ; $5f17: $55
    and c                                         ; $5f18: $a1
    ld e, e                                       ; $5f19: $5b
    ld [$93c2], a                                 ; $5f1a: $ea $c2 $93
    ld c, l                                       ; $5f1d: $4d
    db $f4                                        ; $5f1e: $f4
    db $fd                                        ; $5f1f: $fd
    ld [bc], a                                    ; $5f20: $02
    add a                                         ; $5f21: $87
    add sp, $21                                   ; $5f22: $e8 $21
    and $7d                                       ; $5f24: $e6 $7d
    ld e, $ea                                     ; $5f26: $1e $ea
    xor e                                         ; $5f28: $ab
    dec l                                         ; $5f29: $2d
    ld [$7991], a                                 ; $5f2a: $ea $91 $79
    xor a                                         ; $5f2d: $af
    call $f8b9                                    ; $5f2e: $cd $b9 $f8
    rst $20                                       ; $5f31: $e7
    ld a, [hl-]                                   ; $5f32: $3a
    inc d                                         ; $5f33: $14
    rst $08                                       ; $5f34: $cf
    or d                                          ; $5f35: $b2
    ld a, [de]                                    ; $5f36: $1a
    sbc [hl]                                      ; $5f37: $9e
    sub c                                         ; $5f38: $91
    and c                                         ; $5f39: $a1
    push de                                       ; $5f3a: $d5
    ld [hl-], a                                   ; $5f3b: $32
    ld a, d                                       ; $5f3c: $7a
    ld d, c                                       ; $5f3d: $51
    ret z                                         ; $5f3e: $c8

    ld b, $dc                                     ; $5f3f: $06 $dc
    cp e                                          ; $5f41: $bb
    ld h, $43                                     ; $5f42: $26 $43
    db $f4                                        ; $5f44: $f4
    dec hl                                        ; $5f45: $2b
    xor a                                         ; $5f46: $af
    push de                                       ; $5f47: $d5
    ld c, l                                       ; $5f48: $4d
    ld [hl], a                                    ; $5f49: $77
    adc $bd                                       ; $5f4a: $ce $bd
    dec sp                                        ; $5f4c: $3b
    db $eb                                        ; $5f4d: $eb
    ld a, [hl]                                    ; $5f4e: $7e
    ld h, a                                       ; $5f4f: $67
    ret nz                                        ; $5f50: $c0

    ld a, l                                       ; $5f51: $7d
    ld e, $fd                                     ; $5f52: $1e $fd
    rla                                           ; $5f54: $17
    ld c, a                                       ; $5f55: $4f
    ld a, l                                       ; $5f56: $7d
    ld bc, $ee71                                  ; $5f57: $01 $71 $ee
    or c                                          ; $5f5a: $b1
    inc c                                         ; $5f5b: $0c
    dec l                                         ; $5f5c: $2d
    ld [c], a                                     ; $5f5d: $e2
    sub c                                         ; $5f5e: $91
    adc $55                                       ; $5f5f: $ce $55
    and l                                         ; $5f61: $a5
    rra                                           ; $5f62: $1f
    add hl, sp                                    ; $5f63: $39
    ld a, [c]                                     ; $5f64: $f2
    bit 0, b                                      ; $5f65: $cb $40
    dec e                                         ; $5f67: $1d

Call_061_5f68:
    add hl, sp                                    ; $5f68: $39
    sbc b                                         ; $5f69: $98
    ld d, b                                       ; $5f6a: $50
    sub d                                         ; $5f6b: $92
    inc [hl]                                      ; $5f6c: $34
    ld e, d                                       ; $5f6d: $5a
    or $a3                                        ; $5f6e: $f6 $a3
    ei                                            ; $5f70: $fb
    dec b                                         ; $5f71: $05
    ld l, l                                       ; $5f72: $6d
    and $c5                                       ; $5f73: $e6 $c5
    ccf                                           ; $5f75: $3f
    ld d, a                                       ; $5f76: $57
    cp e                                          ; $5f77: $bb
    ld a, c                                       ; $5f78: $79
    and b                                         ; $5f79: $a0
    sub h                                         ; $5f7a: $94
    daa                                           ; $5f7b: $27
    and c                                         ; $5f7c: $a1
    ld e, b                                       ; $5f7d: $58
    and [hl]                                      ; $5f7e: $a6
    cp [hl]                                       ; $5f7f: $be
    add b                                         ; $5f80: $80
    db $ec                                        ; $5f81: $ec
    or c                                          ; $5f82: $b1
    call z, $a63c                                 ; $5f83: $cc $3c $a6
    ld [$2af2], sp                                ; $5f86: $08 $f2 $2a
    ei                                            ; $5f89: $fb
    daa                                           ; $5f8a: $27
    ld c, b                                       ; $5f8b: $48
    rst $10                                       ; $5f8c: $d7
    call nc, Call_061_73a1                        ; $5f8d: $d4 $a1 $73
    adc $35                                       ; $5f90: $ce $35
    cp d                                          ; $5f92: $ba
    ld h, e                                       ; $5f93: $63
    di                                            ; $5f94: $f3
    and d                                         ; $5f95: $a2
    sub b                                         ; $5f96: $90
    pop af                                        ; $5f97: $f1
    rla                                           ; $5f98: $17
    db $ec                                        ; $5f99: $ec
    ld h, [hl]                                    ; $5f9a: $66
    db $ed                                        ; $5f9b: $ed
    cpl                                           ; $5f9c: $2f
    ld l, l                                       ; $5f9d: $6d
    and $45                                       ; $5f9e: $e6 $45
    ld hl, $ff55                                  ; $5fa0: $21 $55 $ff
    jp hl                                         ; $5fa3: $e9


    inc e                                         ; $5fa4: $1c
    ld e, d                                       ; $5fa5: $5a
    sub $48                                       ; $5fa6: $d6 $48
    adc d                                         ; $5fa8: $8a
    jr nz, jr_061_6026                            ; $5fa9: $20 $7b

    ld e, l                                       ; $5fab: $5d
    cpl                                           ; $5fac: $2f
    ld a, h                                       ; $5fad: $7c
    cp a                                          ; $5fae: $bf
    db $ed                                        ; $5faf: $ed
    ld [hl], c                                    ; $5fb0: $71
    ret z                                         ; $5fb1: $c8

    dec [hl]                                      ; $5fb2: $35
    cp d                                          ; $5fb3: $ba
    db $e3                                        ; $5fb4: $e3
    and c                                         ; $5fb5: $a1
    ld h, l                                       ; $5fb6: $65
    ccf                                           ; $5fb7: $3f
    ld a, [hl-]                                   ; $5fb8: $3a
    rst $20                                       ; $5fb9: $e7
    dec b                                         ; $5fba: $05
    ld l, l                                       ; $5fbb: $6d
    sub [hl]                                      ; $5fbc: $96
    ld [hl], l                                    ; $5fbd: $75

Jump_061_5fbe:
    ld l, d                                       ; $5fbe: $6a
    ld h, e                                       ; $5fbf: $63
    and h                                         ; $5fc0: $a4
    ld h, l                                       ; $5fc1: $65
    ld c, a                                       ; $5fc2: $4f
    ret nz                                        ; $5fc3: $c0

    ld h, c                                       ; $5fc4: $61
    ld b, d                                       ; $5fc5: $42
    ld c, h                                       ; $5fc6: $4c
    ld [$e2d5], a                                 ; $5fc7: $ea $d5 $e2
    ld a, e                                       ; $5fca: $7b
    add a                                         ; $5fcb: $87
    ld b, b                                       ; $5fcc: $40
    add hl, hl                                    ; $5fcd: $29
    daa                                           ; $5fce: $27
    xor a                                         ; $5fcf: $af
    push de                                       ; $5fd0: $d5
    sbc h                                         ; $5fd1: $9c
    adc [hl]                                      ; $5fd2: $8e
    ld a, [bc]                                    ; $5fd3: $0a
    jp z, $b11c                                   ; $5fd4: $ca $1c $b1

    ld [hl], e                                    ; $5fd7: $73
    sub l                                         ; $5fd8: $95
    db $fd                                        ; $5fd9: $fd

Jump_061_5fda:
    inc de                                        ; $5fda: $13
    and h                                         ; $5fdb: $a4
    inc h                                         ; $5fdc: $24
    ld d, l                                       ; $5fdd: $55
    ld [$ce2f], a                                 ; $5fde: $ea $2f $ce
    ei                                            ; $5fe1: $fb
    dec b                                         ; $5fe2: $05

Jump_061_5fe3:
    ld l, l                                       ; $5fe3: $6d
    ld a, [$e69e]                                 ; $5fe4: $fa $9e $e6
    ld c, b                                       ; $5fe7: $48
    rst $30                                       ; $5fe8: $f7
    xor $f4                                       ; $5fe9: $ee $f4
    xor d                                         ; $5feb: $aa
    jp nc, Jump_061_7a08                          ; $5fec: $d2 $08 $7a

    ld [$9f65], sp                                ; $5fef: $08 $65 $9f
    rla                                           ; $5ff2: $17
    add c                                         ; $5ff3: $81
    and b                                         ; $5ff4: $a0
    add a                                         ; $5ff5: $87
    ld d, $da                                     ; $5ff6: $16 $da
    jp c, $a67f                                   ; $5ff8: $da $7f $a6

    and $de                                       ; $5ffb: $e6 $de
    ld [hl], l                                    ; $5ffd: $75
    or b                                          ; $5ffe: $b0
    xor d                                         ; $5fff: $aa
    ld a, [hl]                                    ; $6000: $7e
    rra                                           ; $6001: $1f
    xor b                                         ; $6002: $a8
    inc hl                                        ; $6003: $23
    ld b, a                                       ; $6004: $47
    cp $23                                        ; $6005: $fe $23
    daa                                           ; $6007: $27
    pop hl                                        ; $6008: $e1
    ld c, b                                       ; $6009: $48
    res 5, d                                      ; $600a: $cb $aa
    ld a, [bc]                                    ; $600c: $0a
    ld [hl], c                                    ; $600d: $71
    inc hl                                        ; $600e: $23
    cp a                                          ; $600f: $bf
    ldh [$fd], a                                  ; $6010: $e0 $fd
    ld [bc], a                                    ; $6012: $02
    db $ed                                        ; $6013: $ed
    rst $08                                       ; $6014: $cf
    ld b, e                                       ; $6015: $43
    db $db                                        ; $6016: $db
    db $d3                                        ; $6017: $d3
    xor h                                         ; $6018: $ac
    jp z, $7f8b                                   ; $6019: $ca $8b $7f

    ld c, $cd                                     ; $601c: $0e $cd
    ld b, e                                       ; $601e: $43
    bit 4, d                                      ; $601f: $cb $62
    ld [$ccdd], sp                                ; $6021: $08 $dd $cc
    ld e, $83                                     ; $6024: $1e $83

jr_061_6026:
    inc d                                         ; $6026: $14
    ld d, a                                       ; $6027: $57
    ld e, $dd                                     ; $6028: $1e $dd
    ld h, l                                       ; $602a: $65
    or l                                          ; $602b: $b5
    cp c                                          ; $602c: $b9
    jp c, $904a                                   ; $602d: $da $4a $90

    ld [c], a                                     ; $6030: $e2
    and l                                         ; $6031: $a5
    ld l, $c8                                     ; $6032: $2e $c8
    inc hl                                        ; $6034: $23
    sbc l                                         ; $6035: $9d
    ld a, [hl-]                                   ; $6036: $3a
    ld a, [$85de]                                 ; $6037: $fa $de $85
    add hl, sp                                    ; $603a: $39
    inc [hl]                                      ; $603b: $34
    rrca                                          ; $603c: $0f
    ld b, c                                       ; $603d: $41
    adc $79                                       ; $603e: $ce $79
    ld bc, $9b97                                  ; $6040: $01 $97 $9b
    ld c, [hl]                                    ; $6043: $4e
    dec de                                        ; $6044: $1b
    sbc d                                         ; $6045: $9a
    rst $20                                       ; $6046: $e7
    sbc h                                         ; $6047: $9c
    ld h, l                                       ; $6048: $65
    rst $08                                       ; $6049: $cf
    cpl                                           ; $604a: $2f
    ld d, b                                       ; $604b: $50
    push de                                       ; $604c: $d5
    ld [hl+], a                                   ; $604d: $22
    db $d3                                        ; $604e: $d3
    dec sp                                        ; $604f: $3b
    rst $38                                       ; $6050: $ff
    ld [c], a                                     ; $6051: $e2

jr_061_6052:
    ld e, [hl]                                    ; $6052: $5e
    ld a, l                                       ; $6053: $7d
    rst $28                                       ; $6054: $ef
    jp z, $910c                                   ; $6055: $ca $0c $91

    ld l, e                                       ; $6058: $6b
    dec c                                         ; $6059: $0d
    cp c                                          ; $605a: $b9
    add e                                         ; $605b: $83
    ld b, h                                       ; $605c: $44
    cpl                                           ; $605d: $2f
    ld c, $f2                                     ; $605e: $0e $f2
    set 5, a                                      ; $6060: $cb $ef
    ld a, l                                       ; $6062: $7d
    push de                                       ; $6063: $d5
    add d                                         ; $6064: $82
    db $ec                                        ; $6065: $ec
    dec a                                         ; $6066: $3d
    ld d, b                                       ; $6067: $50
    and [hl]                                      ; $6068: $a6
    db $e3                                        ; $6069: $e3
    and d                                         ; $606a: $a2
    sub b                                         ; $606b: $90
    ei                                            ; $606c: $fb
    cp h                                          ; $606d: $bc
    ld [$bd04], sp                                ; $606e: $08 $04 $bd
    ld d, b                                       ; $6071: $50
    ld d, $7d                                     ; $6072: $16 $7d
    add hl, hl                                    ; $6074: $29
    ld e, $5a                                     ; $6075: $1e $5a
    xor $17                                       ; $6077: $ee $17
    sub a                                         ; $6079: $97
    scf                                           ; $607a: $37
    ld l, c                                       ; $607b: $69
    inc hl                                        ; $607c: $23
    db $dd                                        ; $607d: $dd
    ld [hl], c                                    ; $607e: $71
    and c                                         ; $607f: $a1
    xor h                                         ; $6080: $ac
    ld l, e                                       ; $6081: $6b
    sub h                                         ; $6082: $94
    ld a, [c]                                     ; $6083: $f2
    cp l                                          ; $6084: $bd
    inc bc                                        ; $6085: $03
    ld l, $8b                                     ; $6086: $2e $8b
    and c                                         ; $6088: $a1
    ld [hl], a                                    ; $6089: $77
    xor a                                         ; $608a: $af
    jr c, jr_061_6052                             ; $608b: $38 $c5

    inc hl                                        ; $608d: $23
    jp hl                                         ; $608e: $e9


    sub h                                         ; $608f: $94
    sbc $f2                                       ; $6090: $de $f2
    ld e, $cb                                     ; $6092: $1e $cb
    add sp, $2e                                   ; $6094: $e8 $2e

jr_061_6096:
    inc hl                                        ; $6096: $23
    ld a, a                                       ; $6097: $7f
    adc [hl]                                      ; $6098: $8e
    di                                            ; $6099: $f3
    rst $00                                       ; $609a: $c7
    sbc l                                         ; $609b: $9d
    rst $30                                       ; $609c: $f7
    jr jr_061_6096                                ; $609d: $18 $f7

    ld a, c                                       ; $609f: $79
    ld c, h                                       ; $60a0: $4c
    ld a, c                                       ; $60a1: $79
    ld e, $4f                                     ; $60a2: $1e $4f
    ld b, d                                       ; $60a4: $42
    jp hl                                         ; $60a5: $e9


    ld e, [hl]                                    ; $60a6: $5e
    inc c                                         ; $60a7: $0c
    dec e                                         ; $60a8: $1d
    cp l                                          ; $60a9: $bd
    add h                                         ; $60aa: $84
    ld a, d                                       ; $60ab: $7a
    cp a                                          ; $60ac: $bf
    ld l, l                                       ; $60ad: $6d
    and $3d                                       ; $60ae: $e6 $3d
    call $94c5                                    ; $60b0: $cd $c5 $94
    db $f4                                        ; $60b3: $f4
    ret nc                                        ; $60b4: $d0

    and d                                         ; $60b5: $a2
    db $fd                                        ; $60b6: $fd
    dec b                                         ; $60b7: $05
    add a                                         ; $60b8: $87
    sbc d                                         ; $60b9: $9a
    ld hl, sp-$7b                                 ; $60ba: $f8 $85
    or [hl]                                       ; $60bc: $b6
    or $9f                                        ; $60bd: $f6 $9f
    xor c                                         ; $60bf: $a9
    and c                                         ; $60c0: $a1
    ld c, l                                       ; $60c1: $4d
    db $f4                                        ; $60c2: $f4
    add hl, sp                                    ; $60c3: $39
    add a                                         ; $60c4: $87
    ld a, [$736a]                                 ; $60c5: $fa $6a $73
    dec h                                         ; $60c8: $25
    ldh [rOCPS], a                                ; $60c9: $e0 $6a
    ld a, b                                       ; $60cb: $78
    ld h, $9a                                     ; $60cc: $26 $9a
    ei                                            ; $60ce: $fb
    dec b                                         ; $60cf: $05
    ld l, l                                       ; $60d0: $6d
    ld h, [hl]                                    ; $60d1: $66
    or $9c                                        ; $60d2: $f6 $9c
    ld b, e                                       ; $60d4: $43
    sra h                                         ; $60d5: $cb $2c
    xor [hl]                                      ; $60d7: $ae
    db $ec                                        ; $60d8: $ec
    push bc                                       ; $60d9: $c5
    db $10                                        ; $60da: $10
    cp d                                          ; $60db: $ba
    sbc c                                         ; $60dc: $99
    dec a                                         ; $60dd: $3d
    push af                                       ; $60de: $f5
    dec b                                         ; $60df: $05
    ld h, h                                       ; $60e0: $64
    ld [hl], h                                    ; $60e1: $74
    sub a                                         ; $60e2: $97
    add hl, hl                                    ; $60e3: $29
    ld e, l                                       ; $60e4: $5d
    call nz, Call_061_408b                        ; $60e5: $c4 $8b $40
    ret nc                                        ; $60e8: $d0

    rst $30                                       ; $60e9: $f7
    dec bc                                        ; $60ea: $0b
    rla                                           ; $60eb: $17
    rlca                                          ; $60ec: $07
    db $e4                                        ; $60ed: $e4
    xor c                                         ; $60ee: $a9
    cp $d3                                        ; $60ef: $fe $d3
    ld c, h                                       ; $60f1: $4c
    ld e, e                                       ; $60f2: $5b
    ei                                            ; $60f3: $fb
    rst $08                                       ; $60f4: $cf
    call nc, $df68                                ; $60f5: $d4 $68 $df
    ld bc, $3597                                  ; $60f8: $01 $97 $35
    call c, Call_000_22a9                         ; $60fb: $dc $a9 $22
    adc $21                                       ; $60fe: $ce $21
    sub h                                         ; $6100: $94
    dec a                                         ; $6101: $3d
    add $9d                                       ; $6102: $c6 $9d
    ld [hl], h                                    ; $6104: $74
    ld [$e854], a                                 ; $6105: $ea $54 $e8
    db $dd                                        ; $6108: $dd
    dec b                                         ; $6109: $05
    call c, $200a                                 ; $610a: $dc $0a $20
    inc a                                         ; $610d: $3c
    add [hl]                                      ; $610e: $86
    cp [hl]                                       ; $610f: $be
    adc e                                         ; $6110: $8b
    ld d, e                                       ; $6111: $53
    inc de                                        ; $6112: $13
    ld b, l                                       ; $6113: $45
    jr nz, jr_061_612e                            ; $6114: $20 $18

    ld a, [c]                                     ; $6116: $f2
    ld e, [hl]                                    ; $6117: $5e
    sbc e                                         ; $6118: $9b
    xor e                                         ; $6119: $ab
    adc [hl]                                      ; $611a: $8e
    sub [hl]                                      ; $611b: $96
    push bc                                       ; $611c: $c5
    ret nc                                        ; $611d: $d0

    add a                                         ; $611e: $87
    ld a, [$1022]                                 ; $611f: $fa $22 $10
    db $f4                                        ; $6122: $f4
    inc l                                         ; $6123: $2c
    inc de                                        ; $6124: $13
    call Call_000_3538                            ; $6125: $cd $38 $35
    cp l                                          ; $6128: $bd
    dec sp                                        ; $6129: $3b
    ld a, [bc]                                    ; $612a: $0a
    ld sp, hl                                     ; $612b: $f9
    add sp, -$03                                  ; $612c: $e8 $fd

jr_061_612e:
    rst $20                                       ; $612e: $e7
    ld b, b                                       ; $612f: $40
    or b                                          ; $6130: $b0
    ld a, [hl]                                    ; $6131: $7e
    ld e, $0c                                     ; $6132: $1e $0c
    ld b, c                                       ; $6134: $41
    add $a9                                       ; $6135: $c6 $a9
    jp hl                                         ; $6137: $e9


    db $dd                                        ; $6138: $dd
    ld d, c                                       ; $6139: $51
    ret z                                         ; $613a: $c8

    ld b, a                                       ; $613b: $47
    rst $28                                       ; $613c: $ef
    ccf                                           ; $613d: $3f
    dec de                                        ; $613e: $1b
    and c                                         ; $613f: $a1
    call c, $ed2f                                 ; $6140: $dc $2f $ed
    ccf                                           ; $6143: $3f
    add a                                         ; $6144: $87
    ld a, [$17d4]                                 ; $6145: $fa $d4 $17
    db $10                                        ; $6148: $10
    dec bc                                        ; $6149: $0b
    ld l, l                                       ; $614a: $6d
    db $ed                                        ; $614b: $ed
    ccf                                           ; $614c: $3f
    ld d, e                                       ; $614d: $53
    ld [hl], e                                    ; $614e: $73
    adc $0b                                       ; $614f: $ce $0b
    sub a                                         ; $6151: $97
    sbc e                                         ; $6152: $9b
    ld c, [hl]                                    ; $6153: $4e
    dec de                                        ; $6154: $1b
    db $dd                                        ; $6155: $dd
    ld h, l                                       ; $6156: $65
    ld c, d                                       ; $6157: $4a
    rla                                           ; $6158: $17
    pop af                                        ; $6159: $f1
    ld b, b                                       ; $615a: $40
    add hl, hl                                    ; $615b: $29
    cpl                                           ; $615c: $2f
    ld [bc], a                                    ; $615d: $02
    ld b, c                                       ; $615e: $41
    rrca                                          ; $615f: $0f
    dec l                                         ; $6160: $2d
    rst $30                                       ; $6161: $f7
    dec bc                                        ; $6162: $0b
    sub a                                         ; $6163: $97
    scf                                           ; $6164: $37
    ld l, c                                       ; $6165: $69

jr_061_6166:
    ld a, e                                       ; $6166: $7b
    inc l                                         ; $6167: $2c
    xor e                                         ; $6168: $ab
    call $cd3d                                    ; $6169: $cd $3d $cd
    and c                                         ; $616c: $a1

jr_061_616d:
    cp [hl]                                       ; $616d: $be
    jr z, jr_061_6194                             ; $616e: $28 $24

    ld d, a                                       ; $6170: $57
    ld a, [bc]                                    ; $6171: $0a
    or e                                          ; $6172: $b3
    rst $30                                       ; $6173: $f7
    jr jr_061_616d                                ; $6174: $18 $f7

    ld a, c                                       ; $6176: $79
    db $dd                                        ; $6177: $dd
    add sp, $7b                                   ; $6178: $e8 $7b
    rlca                                          ; $617a: $07
    ld e, h                                       ; $617b: $5c
    ld d, $43                                     ; $617c: $16 $43
    rra                                           ; $617e: $1f
    jr z, jr_061_6166                             ; $617f: $28 $e5

    sub c                                         ; $6181: $91
    ccf                                           ; $6182: $3f
    or $be                                        ; $6183: $f6 $be
    ld d, h                                       ; $6185: $54
    add [hl]                                      ; $6186: $86
    adc b                                         ; $6187: $88
    db $dd                                        ; $6188: $dd
    xor e                                         ; $6189: $ab
    rst $30                                       ; $618a: $f7
    and e                                         ; $618b: $a3
    db $fd                                        ; $618c: $fd
    ld e, $87                                     ; $618d: $1e $87
    db $ec                                        ; $618f: $ec
    ld d, b                                       ; $6190: $50
    cp h                                          ; $6191: $bc
    ld b, [hl]                                    ; $6192: $46
    ld a, [hl]                                    ; $6193: $7e

jr_061_6194:
    ld b, c                                       ; $6194: $41
    ld l, e                                       ; $6195: $6b
    ld a, a                                       ; $6196: $7f
    ld bc, $7d17                                  ; $6197: $01 $17 $7d
    ld b, c                                       ; $619a: $41
    ld e, $ea                                     ; $619b: $1e $ea
    ld d, e                                       ; $619d: $53
    ld e, a                                       ; $619e: $5f
    ld b, b                                       ; $619f: $40
    inc l                                         ; $61a0: $2c
    ld b, e                                       ; $61a1: $43
    adc e                                         ; $61a2: $8b
    ld a, b                                       ; $61a3: $78
    push hl                                       ; $61a4: $e5
    ld c, e                                       ; $61a5: $4b
    and c                                         ; $61a6: $a1
    xor l                                         ; $61a7: $ad
    db $fd                                        ; $61a8: $fd
    ld h, a                                       ; $61a9: $67
    ld l, d                                       ; $61aa: $6a
    adc $79                                       ; $61ab: $ce $79
    ld bc, $9b97                                  ; $61ad: $01 $97 $9b
    ld c, [hl]                                    ; $61b0: $4e
    dec de                                        ; $61b1: $1b
    ld e, d                                       ; $61b2: $5a
    and $5c                                       ; $61b3: $e6 $5c
    push hl                                       ; $61b5: $e5
    adc a                                         ; $61b6: $8f
    ld d, b                                       ; $61b7: $50
    sub $a9                                       ; $61b8: $d6 $a9
    ld [hl], l                                    ; $61ba: $75
    and $b9                                       ; $61bb: $e6 $b9
    ld [hl], a                                    ; $61bd: $77
    rst $20                                       ; $61be: $e7
    cp [hl]                                       ; $61bf: $be
    and b                                         ; $61c0: $a0
    ld a, c                                       ; $61c1: $79
    sub l                                         ; $61c2: $95
    adc l                                         ; $61c3: $8d
    rst $30                                       ; $61c4: $f7
    dec bc                                        ; $61c5: $0b
    ld l, l                                       ; $61c6: $6d
    ld a, [$1d1a]                                 ; $61c7: $fa $1a $1d
    ld h, d                                       ; $61ca: $62
    rst $20                                       ; $61cb: $e7
    add h                                         ; $61cc: $84
    adc d                                         ; $61cd: $8a
    inc a                                         ; $61ce: $3c
    add [hl]                                      ; $61cf: $86
    cp [hl]                                       ; $61d0: $be
    rst $08                                       ; $61d1: $cf
    adc e                                         ; $61d2: $8b
    ld b, b                                       ; $61d3: $40
    ret nc                                        ; $61d4: $d0

    ld b, e                                       ; $61d5: $43
    res 7, l                                      ; $61d6: $cb $bd
    ld b, e                                       ; $61d8: $43
    ld c, d                                       ; $61d9: $4a
    adc a                                         ; $61da: $8f
    or $40                                        ; $61db: $f6 $40
    sbc c                                         ; $61dd: $99
    add sp, $03                                   ; $61de: $e8 $03
    and l                                         ; $61e0: $a5
    inc a                                         ; $61e1: $3c
    jr z, jr_061_61fa                             ; $61e2: $28 $16

    db $ed                                        ; $61e4: $ed
    cpl                                           ; $61e5: $2f
    ld l, l                                       ; $61e6: $6d
    ld a, [$9fc8]                                 ; $61e7: $fa $c8 $9f
    inc bc                                        ; $61ea: $03
    and l                                         ; $61eb: $a5
    cp h                                          ; $61ec: $bc
    ld c, b                                       ; $61ed: $48
    rst $28                                       ; $61ee: $ef
    jr jr_061_6242                                ; $61ef: $18 $51

    sub e                                         ; $61f1: $93
    add a                                         ; $61f2: $87
    jr nz, jr_061_6200                            ; $61f3: $20 $0b

    xor l                                         ; $61f5: $ad
    ld a, [c]                                     ; $61f6: $f2
    ld h, e                                       ; $61f7: $63
    rst $18                                       ; $61f8: $df
    dec sp                                        ; $61f9: $3b

jr_061_61fa:
    ldh [$b2], a                                  ; $61fa: $e0 $b2
    jr z, jr_061_623d                             ; $61fc: $28 $3f

    daa                                           ; $61fe: $27
    ld b, l                                       ; $61ff: $45

jr_061_6200:
    add hl, hl                                    ; $6200: $29
    rst $20                                       ; $6201: $e7
    call z, $a153                                 ; $6202: $cc $53 $a1
    ld [hl], a                                    ; $6205: $77
    rla                                           ; $6206: $17
    ld [hl], b                                    ; $6207: $70
    dec hl                                        ; $6208: $2b
    add b                                         ; $6209: $80
    ldh a, [$a2]                                  ; $620a: $f0 $a2
    db $fc                                        ; $620c: $fc
    cp e                                          ; $620d: $bb
    jr c, jr_061_6245                             ; $620e: $38 $35

    ld d, c                                       ; $6210: $51
    inc b                                         ; $6211: $04
    add d                                         ; $6212: $82
    ld hl, $17ef                                  ; $6213: $21 $ef $17
    rst $30                                       ; $6216: $f7
    ld a, l                                       ; $6217: $7d
    rrca                                          ; $6218: $0f
    call $f13b                                    ; $6219: $cd $3b $f1
    sub h                                         ; $621c: $94
    ld a, e                                       ; $621d: $7b
    call $7524                                    ; $621e: $cd $24 $75
    pop bc                                        ; $6221: $c1
    inc [hl]                                      ; $6222: $34
    cp d                                          ; $6223: $ba
    adc [hl]                                      ; $6224: $8e
    xor d                                         ; $6225: $aa
    add d                                         ; $6226: $82
    add h                                         ; $6227: $84
    rlca                                          ; $6228: $07
    xor d                                         ; $6229: $aa
    ld a, [c]                                     ; $622a: $f2
    ld a, [de]                                    ; $622b: $1a
    and c                                         ; $622c: $a1
    pop de                                        ; $622d: $d1
    cp l                                          ; $622e: $bd
    ld b, [hl]                                    ; $622f: $46
    cp $ca                                        ; $6230: $fe $ca
    xor e                                         ; $6232: $ab
    pop hl                                        ; $6233: $e1
    ld e, c                                       ; $6234: $59
    ld b, h                                       ; $6235: $44
    db $ed                                        ; $6236: $ed
    push bc                                       ; $6237: $c5
    ei                                            ; $6238: $fb
    pop de                                        ; $6239: $d1
    ld c, $51                                     ; $623a: $0e $51
    ld a, [de]                                    ; $623c: $1a

jr_061_623d:
    xor [hl]                                      ; $623d: $ae
    inc e                                         ; $623e: $1c
    ld a, [c]                                     ; $623f: $f2
    or c                                          ; $6240: $b1
    inc c                                         ; $6241: $0c

jr_061_6242:
    halt                                          ; $6242: $76
    ld [c], a                                     ; $6243: $e2
    ret                                           ; $6244: $c9


jr_061_6245:
    and a                                         ; $6245: $a7
    sbc a                                         ; $6246: $9f
    ld [hl], c                                    ; $6247: $71
    rst $18                                       ; $6248: $df
    rst $30                                       ; $6249: $f7
    dec bc                                        ; $624a: $0b
    db $ed                                        ; $624b: $ed
    ccf                                           ; $624c: $3f
    ld d, e                                       ; $624d: $53
    ld b, e                                       ; $624e: $43
    dec de                                        ; $624f: $1b

jr_061_6250:
    ld [$428b], a                                 ; $6250: $ea $8b $42
    ld d, [hl]                                    ; $6253: $56
    sub l                                         ; $6254: $95
    inc d                                         ; $6255: $14
    and l                                         ; $6256: $a5
    adc h                                         ; $6257: $8c
    sbc $03                                       ; $6258: $de $03
    ld b, l                                       ; $625a: $45
    ei                                            ; $625b: $fb
    ld c, $5a                                     ; $625c: $0e $5a
    ld b, [hl]                                    ; $625e: $46
    ld [hl], a                                    ; $625f: $77
    ld e, c                                       ; $6260: $59
    inc c                                         ; $6261: $0c
    ld a, l                                       ; $6262: $7d
    and b                                         ; $6263: $a0
    sub h                                         ; $6264: $94
    rla                                           ; $6265: $17
    push hl                                       ; $6266: $e5
    rst $20                                       ; $6267: $e7
    and h                                         ; $6268: $a4
    jr z, jr_061_6250                             ; $6269: $28 $e5

    ld e, c                                       ; $626b: $59
    ld d, l                                       ; $626c: $55
    adc $3f                                       ; $626d: $ce $3f
    dec d                                         ; $626f: $15
    ld a, d                                       ; $6270: $7a
    ld [hl], a                                    ; $6271: $77
    ld bc, $02b7                                  ; $6272: $01 $b7 $02
    ld [$a6d3], sp                                ; $6275: $08 $d3 $a6
    ld [hl], h                                    ; $6278: $74
    add hl, de                                    ; $6279: $19
    ld a, d                                       ; $627a: $7a
    sub l                                         ; $627b: $95
    add d                                         ; $627c: $82
    pop af                                        ; $627d: $f1
    sub a                                         ; $627e: $97
    ld c, $c5                                     ; $627f: $0e $c5
    adc e                                         ; $6281: $8b
    db $fc                                        ; $6282: $fc
    inc l                                         ; $6283: $2c
    ld a, [bc]                                    ; $6284: $0a
    cp c                                          ; $6285: $b9
    jr z, jr_061_62ec                             ; $6286: $28 $64

    ld h, l                                       ; $6288: $65
    ld c, l                                       ; $6289: $4d
    and [hl]                                      ; $628a: $a6
    ld a, e                                       ; $628b: $7b
    push af                                       ; $628c: $f5
    db $fd                                        ; $628d: $fd
    ld [bc], a                                    ; $628e: $02
    rst $20                                       ; $628f: $e7
    ld [hl], l                                    ; $6290: $75
    ld b, $9c                                     ; $6291: $06 $9c
    ld h, l                                       ; $6293: $65
    sub h                                         ; $6294: $94
    db $f4                                        ; $6295: $f4
    ld a, $af                                     ; $6296: $3e $af
    ld a, d                                       ; $6298: $7a
    ld [$0c65], sp                                ; $6299: $08 $65 $0c
    ld a, l                                       ; $629c: $7d
    rrca                                          ; $629d: $0f
    adc b                                         ; $629e: $88
    rst $00                                       ; $629f: $c7
    ldh a, [$38]                                  ; $62a0: $f0 $38
    rst $28                                       ; $62a2: $ef
    sbc l                                         ; $62a3: $9d
    ld l, a                                       ; $62a4: $6f
    push de                                       ; $62a5: $d5

jr_061_62a6:
    ld a, a                                       ; $62a6: $7f
    ld [hl], c                                    ; $62a7: $71
    xor $f3                                       ; $62a8: $ee $f3
    sbc [hl]                                      ; $62aa: $9e
    ld h, $b3                                     ; $62ab: $26 $b3
    ld d, a                                       ; $62ad: $57
    jr nz, jr_061_62a6                            ; $62ae: $20 $f6

    db $10                                        ; $62b0: $10
    jp z, $6b2c                                   ; $62b1: $ca $2c $6b

    ld d, b                                       ; $62b4: $50
    pop de                                        ; $62b5: $d1
    ld l, e                                       ; $62b6: $6b
    dec [hl]                                      ; $62b7: $35
    ld [hl], a                                    ; $62b8: $77
    ld [$015a], a                                 ; $62b9: $ea $5a $01
    add h                                         ; $62bc: $84
    rla                                           ; $62bd: $17
    add l                                         ; $62be: $85
    call c, Call_061_45e7                         ; $62bf: $dc $e7 $45
    ld hl, $6b2b                                  ; $62c2: $21 $2b $6b
    ld [hl-], a                                   ; $62c5: $32
    ld a, l                                       ; $62c6: $7d
    cp a                                          ; $62c7: $bf
    rlca                                          ; $62c8: $07
    ld e, h                                       ; $62c9: $5c
    ld d, [hl]                                    ; $62ca: $56
    sbc e                                         ; $62cb: $9b
    or e                                          ; $62cc: $b3
    ld c, h                                       ; $62cd: $4c
    ld a, l                                       ; $62ce: $7d
    ld bc, $1459                                  ; $62cf: $01 $59 $14
    or d                                          ; $62d2: $b2
    add $20                                       ; $62d3: $c6 $20
    add sp, -$17                                  ; $62d5: $e8 $e9
    cp b                                          ; $62d7: $b8
    adc a                                         ; $62d8: $8f
    inc hl                                        ; $62d9: $23
    ld b, e                                       ; $62da: $43
    ld l, h                                       ; $62db: $6c
    ld b, h                                       ; $62dc: $44
    ld l, d                                       ; $62dd: $6a
    ld e, d                                       ; $62de: $5a
    or $58                                        ; $62df: $f6 $58
    ld b, [hl]                                    ; $62e1: $46
    ld [hl], a                                    ; $62e2: $77
    reti                                          ; $62e3: $d9


    ld h, e                                       ; $62e4: $63
    ld [hl], c                                    ; $62e5: $71
    xor $f3                                       ; $62e6: $ee $f3
    ret nc                                        ; $62e8: $d0

    ld [hl-], a                                   ; $62e9: $32
    and c                                         ; $62ea: $a1
    db $e4                                        ; $62eb: $e4

jr_061_62ec:
    db $e3                                        ; $62ec: $e3
    jp z, $7f8b                                   ; $62ed: $ca $8b $7f

    xor [hl]                                      ; $62f0: $ae
    rst $38                                       ; $62f1: $ff
    ret c                                         ; $62f2: $d8

    add d                                         ; $62f3: $82
    xor $d1                                       ; $62f4: $ee $d1
    rst $08                                       ; $62f6: $cf
    ret c                                         ; $62f7: $d8

    ld a, h                                       ; $62f8: $7c
    cp a                                          ; $62f9: $bf
    sub a                                         ; $62fa: $97
    sbc e                                         ; $62fb: $9b
    ld c, [hl]                                    ; $62fc: $4e
    db $db                                        ; $62fd: $db
    ld h, e                                       ; $62fe: $63
    add hl, de                                    ; $62ff: $19
    db $dd                                        ; $6300: $dd
    ld h, l                                       ; $6301: $65
    db $e4                                        ; $6302: $e4
    rst $08                                       ; $6303: $cf
    sub c                                         ; $6304: $91
    xor $dd                                       ; $6305: $ee $dd
    add hl, sp                                    ; $6307: $39
    ld d, b                                       ; $6308: $50
    jp z, $284b                                   ; $6309: $ca $4b $28

    inc c                                         ; $630c: $0c
    ld h, l                                       ; $630d: $65
    ld sp, $cd25                                  ; $630e: $31 $25 $cd
    dec bc                                        ; $6311: $0b
    xor l                                         ; $6312: $ad
    add a                                         ; $6313: $87
    sub d                                         ; $6314: $92
    xor d                                         ; $6315: $aa
    add [hl]                                      ; $6316: $86
    rst $20                                       ; $6317: $e7
    ld a, [hl]                                    ; $6318: $7e
    ld bc, $9b97                                  ; $6319: $01 $97 $9b
    ld c, [hl]                                    ; $631c: $4e
    db $db                                        ; $631d: $db
    ld h, e                                       ; $631e: $63
    add hl, de                                    ; $631f: $19
    add hl, de                                    ; $6320: $19
    ld b, e                                       ; $6321: $43
    dec e                                         ; $6322: $1d
    ld a, [hl-]                                   ; $6323: $3a
    rst $20                                       ; $6324: $e7
    ld e, h                                       ; $6325: $5c
    ld l, l                                       ; $6326: $6d
    ld [c], a                                     ; $6327: $e2
    sub a                                         ; $6328: $97
    ld e, c                                       ; $6329: $59
    sub $6a                                       ; $632a: $d6 $6a
    xor [hl]                                      ; $632c: $ae
    xor d                                         ; $632d: $aa
    ret nc                                        ; $632e: $d0

    dec l                                         ; $632f: $2d
    ld h, e                                       ; $6330: $63
    ld l, d                                       ; $6331: $6a
    adc [hl]                                      ; $6332: $8e
    xor $b2                                       ; $6333: $ee $b2
    sbc b                                         ; $6335: $98
    add d                                         ; $6336: $82
    add sp, -$4b                                  ; $6337: $e8 $b5
    sbc d                                         ; $6339: $9a
    ei                                            ; $633a: $fb
    inc a                                         ; $633b: $3c
    or h                                          ; $633c: $b4
    inc l                                         ; $633d: $2c
    add [hl]                                      ; $633e: $86
    cp [hl]                                       ; $633f: $be
    jr z, @+$66                                   ; $6340: $28 $64

    and l                                         ; $6342: $a5
    ld d, $ef                                     ; $6343: $16 $ef
    di                                            ; $6345: $f3
    ld d, h                                       ; $6346: $54
    ld a, b                                       ; $6347: $78
    ld e, $4f                                     ; $6348: $1e $4f
    ld b, a                                       ; $634a: $47
    ld c, e                                       ; $634b: $4b
    inc d                                         ; $634c: $14
    ld a, [c]                                     ; $634d: $f2
    ld a, [hl]                                    ; $634e: $7e
    ld bc, $5c07                                  ; $634f: $01 $07 $5c
    ld b, [hl]                                    ; $6352: $46
    cp $dc                                        ; $6353: $fe $dc

Call_061_6355:
    rst $28                                       ; $6355: $ef
    sbc b                                         ; $6356: $98
    ld d, b                                       ; $6357: $50
    ld d, [hl]                                    ; $6358: $56
    call Call_000_2cb3                            ; $6359: $cd $b3 $2c
    add [hl]                                      ; $635c: $86
    ret nc                                        ; $635d: $d0

    call $5f53                                    ; $635e: $cd $53 $5f
    ld b, b                                       ; $6361: $40
    xor $1d                                       ; $6362: $ee $1d
    ld [hl], b                                    ; $6364: $70
    add hl, de                                    ; $6365: $19
    reti                                          ; $6366: $d9


    ld l, h                                       ; $6367: $6c
    jr c, jr_061_63b1                             ; $6368: $38 $47

    cp d                                          ; $636a: $ba
    ld [hl], a                                    ; $636b: $77
    rst $20                                       ; $636c: $e7
    ld a, [hl]                                    ; $636d: $7e
    rst $00                                       ; $636e: $c7
    add h                                         ; $636f: $84
    or d                                          ; $6370: $b2
    rst $08                                       ; $6371: $cf
    and e                                         ; $6372: $a3
    cp e                                          ; $6373: $bb
    inc l                                         ; $6374: $2c
    ld l, d                                       ; $6375: $6a
    and $6a                                       ; $6376: $e6 $6a
    inc de                                        ; $6378: $13
    cp a                                          ; $6379: $bf
    call z, $cfb2                                 ; $637a: $cc $b2 $cf
    xor e                                         ; $637d: $ab
    cp [hl]                                       ; $637e: $be
    ld e, a                                       ; $637f: $5f
    rlca                                          ; $6380: $07
    ld e, h                                       ; $6381: $5c
    ld d, [hl]                                    ; $6382: $56
    sbc e                                         ; $6383: $9b
    or e                                          ; $6384: $b3
    inc c                                         ; $6385: $0c
    ld h, [hl]                                    ; $6386: $66
    add hl, de                                    ; $6387: $19
    ld h, $f5                                     ; $6388: $26 $f5
    sbc c                                         ; $638a: $99
    inc hl                                        ; $638b: $23
    halt                                          ; $638c: $76
    xor $f3                                       ; $638d: $ee $f3
    ret z                                         ; $638f: $c8

    rra                                           ; $6390: $1f
    ld a, e                                       ; $6391: $7b
    or l                                          ; $6392: $b5
    dec b                                         ; $6393: $05
    sub l                                         ; $6394: $95
    rla                                           ; $6395: $17
    add l                                         ; $6396: $85
    call c, $a5f3                                 ; $6397: $dc $f3 $a5
    ld a, b                                       ; $639a: $78
    dec h                                         ; $639b: $25
    add hl, hl                                    ; $639c: $29
    ld d, l                                       ; $639d: $55
    db $fd                                        ; $639e: $fd
    ld h, h                                       ; $639f: $64
    ld c, d                                       ; $63a0: $4a
    or d                                          ; $63a1: $b2
    di                                            ; $63a2: $f3
    ld a, [hl]                                    ; $63a3: $7e
    ld bc, $9b97                                  ; $63a4: $01 $97 $9b
    ld c, [hl]                                    ; $63a7: $4e
    sbc e                                         ; $63a8: $9b
    jp nc, Jump_000_3165                          ; $63a9: $d2 $65 $31

    add h                                         ; $63ac: $84
    ld l, [hl]                                    ; $63ad: $6e
    ld h, [hl]                                    ; $63ae: $66
    adc a                                         ; $63af: $8f
    ld [hl], l                                    ; $63b0: $75

jr_061_63b1:
    xor h                                         ; $63b1: $ac
    adc $fb                                       ; $63b2: $ce $fb
    dec b                                         ; $63b4: $05
    sub a                                         ; $63b5: $97
    sbc e                                         ; $63b6: $9b
    ld a, [hl]                                    ; $63b7: $7e
    rst $28                                       ; $63b8: $ef
    and b                                         ; $63b9: $a0
    ld h, l                                       ; $63ba: $65
    ld [hl], h                                    ; $63bb: $74
    sub a                                         ; $63bc: $97
    push de                                       ; $63bd: $d5
    and $2c                                       ; $63be: $e6 $2c
    push hl                                       ; $63c0: $e5
    ld c, e                                       ; $63c1: $4b
    sbc c                                         ; $63c2: $99
    ld h, l                                       ; $63c3: $65
    adc d                                         ; $63c4: $8a
    ld a, [c]                                     ; $63c5: $f2
    or h                                          ; $63c6: $b4
    cp h                                          ; $63c7: $bc
    xor a                                         ; $63c8: $af
    scf                                           ; $63c9: $37
    sbc h                                         ; $63ca: $9c
    dec b                                         ; $63cb: $05
    call nz, $8c7b                                ; $63cc: $c4 $7b $8c
    xor e                                         ; $63cf: $ab
    rst $38                                       ; $63d0: $ff
    ld a, c                                       ; $63d1: $79
    cp h                                          ; $63d2: $bc
    add sp, $13                                   ; $63d3: $e8 $13
    dec c                                         ; $63d5: $0d
    or d                                          ; $63d6: $b2
    ld a, [de]                                    ; $63d7: $1a
    sbc [hl]                                      ; $63d8: $9e
    ld e, c                                       ; $63d9: $59
    and [hl]                                      ; $63da: $a6
    cp [hl]                                       ; $63db: $be
    add b                                         ; $63dc: $80
    call c, Call_000_072f                         ; $63dd: $dc $2f $07
    ld e, h                                       ; $63e0: $5c
    ld b, [hl]                                    ; $63e1: $46
    cp $1c                                        ; $63e2: $fe $1c
    ld c, b                                       ; $63e4: $48
    or c                                          ; $63e5: $b1
    db $ec                                        ; $63e6: $ec
    adc e                                         ; $63e7: $8b
    ld a, e                                       ; $63e8: $7b
    push af                                       ; $63e9: $f5
    ret z                                         ; $63ea: $c8

    ld hl, sp-$1d                                 ; $63eb: $f8 $e3
    ld d, b                                       ; $63ed: $50
    rra                                           ; $63ee: $1f
    rst $38                                       ; $63ef: $ff
    xor $5c                                       ; $63f0: $ee $5c
    ld a, b                                       ; $63f2: $78
    xor $17                                       ; $63f3: $ee $17
    db $ed                                        ; $63f5: $ed
    ccf                                           ; $63f6: $3f
    add a                                         ; $63f7: $87
    ld a, [$79aa]                                 ; $63f8: $fa $aa $79
    sub [hl]                                      ; $63fb: $96
    push bc                                       ; $63fc: $c5
    db $10                                        ; $63fd: $10
    cp d                                          ; $63fe: $ba
    ld a, c                                       ; $63ff: $79
    ld [$c80b], a                                 ; $6400: $ea $0b $c8
    add hl, sp                                    ; $6403: $39
    cpl                                           ; $6404: $2f
    sub a                                         ; $6405: $97
    sbc e                                         ; $6406: $9b
    ld a, [hl]                                    ; $6407: $7e
    rst $28                                       ; $6408: $ef
    ld h, b                                       ; $6409: $60
    or e                                          ; $640a: $b3
    ld a, [hl+]                                   ; $640b: $2a
    ld c, a                                       ; $640c: $4f
    jp hl                                         ; $640d: $e9


    ld [hl+], a                                   ; $640e: $22
    ld e, $ea                                     ; $640f: $1e $ea
    adc e                                         ; $6411: $8b
    ld b, b                                       ; $6412: $40
    ret nc                                        ; $6413: $d0

    or e                                          ; $6414: $b3
    adc h                                         ; $6415: $8c
    adc h                                         ; $6416: $8c
    and c                                         ; $6417: $a1
    ld c, $f5                                     ; $6418: $0e $f5
    sub c                                         ; $641a: $91
    ccf                                           ; $641b: $3f
    ld b, [hl]                                    ; $641c: $46
    rst $08                                       ; $641d: $cf
    or d                                          ; $641e: $b2
    jr jr_061_6463                                ; $641f: $18 $42

    scf                                           ; $6421: $37
    xor a                                         ; $6422: $af
    add sp, -$23                                  ; $6423: $e8 $dd
    add hl, de                                    ; $6425: $19
    ldh a, [$7e]                                  ; $6426: $f0 $7e
    ld bc, $5c07                                  ; $6428: $01 $07 $5c
    ld d, [hl]                                    ; $642b: $56
    sbc e                                         ; $642c: $9b
    or e                                          ; $642d: $b3
    sub h                                         ; $642e: $94
    cpl                                           ; $642f: $2f
    ld h, l                                       ; $6430: $65
    sub [hl]                                      ; $6431: $96
    push de                                       ; $6432: $d5
    ldh a, [$2c]                                  ; $6433: $f0 $2c
    cp $b9                                        ; $6435: $fe $b9
    xor d                                         ; $6437: $aa
    ld b, c                                       ; $6438: $41
    dec bc                                        ; $6439: $0b
    ld a, d                                       ; $643a: $7a
    ccf                                           ; $643b: $3f
    ld e, d                                       ; $643c: $5a
    cp $ea                                        ; $643d: $fe $ea
    inc b                                         ; $643f: $04
    jp c, $cb1e                                   ; $6440: $da $1e $cb

    ret nc                                        ; $6443: $d0

jr_061_6444:
    or d                                          ; $6444: $b2
    ld hl, sp-$19                                 ; $6445: $f8 $e7
    ld b, b                                       ; $6447: $40
    add hl, hl                                    ; $6448: $29
    adc a                                         ; $6449: $8f
    ld [hl], h                                    ; $644a: $74
    rst $20                                       ; $644b: $e7
    push bc                                       ; $644c: $c5
    db $10                                        ; $644d: $10
    cp d                                          ; $644e: $ba
    ld sp, hl                                     ; $644f: $f9
    ld a, [hl]                                    ; $6450: $7e
    ld bc, $9b97                                  ; $6451: $01 $97 $9b
    ld a, [hl]                                    ; $6454: $7e
    rst $28                                       ; $6455: $ef
    ld h, b                                       ; $6456: $60
    or e                                          ; $6457: $b3
    ld a, [hl+]                                   ; $6458: $2a
    xor a                                         ; $6459: $af
    ld b, c                                       ; $645a: $41
    call $bea1                                    ; $645b: $cd $a1 $be
    ld l, [hl]                                    ; $645e: $6e
    db $f4                                        ; $645f: $f4
    ld [hl], h                                    ; $6460: $74
    or h                                          ; $6461: $b4
    ld b, h                                       ; $6462: $44

jr_061_6463:
    ld hl, $5def                                  ; $6463: $21 $ef $5d
    ld a, [$c405]                                 ; $6466: $fa $05 $c4
    add hl, sp                                    ; $6469: $39
    ld a, [c]                                     ; $646a: $f2
    and e                                         ; $646b: $a3
    ld [hl], e                                    ; $646c: $73
    sbc a                                         ; $646d: $9f
    ld d, a                                       ; $646e: $57
    add hl, de                                    ; $646f: $19
    adc d                                         ; $6470: $8a
    rla                                           ; $6471: $17
    ld e, d                                       ; $6472: $5a
    ei                                            ; $6473: $fb
    jr c, jr_061_6444                             ; $6474: $38 $ce

    rst $18                                       ; $6476: $df
    ld l, d                                       ; $6477: $6a
    add hl, sp                                    ; $6478: $39
    rst $28                                       ; $6479: $ef
    rla                                           ; $647a: $17
    sub a                                         ; $647b: $97
    sbc e                                         ; $647c: $9b
    ld a, [hl]                                    ; $647d: $7e
    rst $28                                       ; $647e: $ef
    ld a, h                                       ; $647f: $7c
    dec a                                         ; $6480: $3d
    pop de                                        ; $6481: $d1
    and e                                         ; $6482: $a3
    cp e                                          ; $6483: $bb
    inc c                                         ; $6484: $0c
    call $bce7                                    ; $6485: $cd $e7 $bc
    sub a                                         ; $6488: $97
    sbc e                                         ; $6489: $9b
    ld c, [hl]                                    ; $648a: $4e
    dec de                                        ; $648b: $1b
    add hl, de                                    ; $648c: $19
    ld b, e                                       ; $648d: $43
    dec e                                         ; $648e: $1d
    db $dd                                        ; $648f: $dd
    ld h, l                                       ; $6490: $65
    add l                                         ; $6491: $85
    sbc d                                         ; $6492: $9a
    xor e                                         ; $6493: $ab
    ld [$d1f7], a                                 ; $6494: $ea $f7 $d1
    ld e, l                                       ; $6497: $5d
    ld d, $85                                     ; $6498: $16 $85
    ld h, h                                       ; $649a: $64
    ld c, d                                       ; $649b: $4a
    rst $28                                       ; $649c: $ef
    ld e, $5a                                     ; $649d: $1e $5a
    or $79                                        ; $649f: $f6 $79
    xor b                                         ; $64a1: $a8
    xor a                                         ; $64a2: $af
    dec de                                        ; $64a3: $1b
    sbc l                                         ; $64a4: $9d
    ld [hl], e                                    ; $64a5: $73
    call nz, $a1ce                                ; $64a6: $c4 $ce $a1
    push hl                                       ; $64a9: $e5
    ld a, [hl]                                    ; $64aa: $7e
    ld bc, $9b97                                  ; $64ab: $01 $97 $9b
    ld c, [hl]                                    ; $64ae: $4e
    ld e, e                                       ; $64af: $5b
    db $fd                                        ; $64b0: $fd
    add d                                         ; $64b1: $82
    xor $50                                       ; $64b2: $ee $50
    ld h, $a6                                     ; $64b4: $26 $a6
    ld l, e                                       ; $64b6: $6b
    ld a, a                                       ; $64b7: $7f
    ld bc, $f1ed                                  ; $64b8: $01 $ed $f1

Call_061_64bb:
    rst $00                                       ; $64bb: $c7
    ld d, l                                       ; $64bc: $55
    and l                                         ; $64bd: $a5
    rst $30                                       ; $64be: $f7
    xor $59                                       ; $64bf: $ee $59
    and [hl]                                      ; $64c1: $a6
    cp [hl]                                       ; $64c2: $be
    add b                                         ; $64c3: $80
    inc l                                         ; $64c4: $2c
    ld a, [bc]                                    ; $64c5: $0a
    ld l, c                                       ; $64c6: $69
    cp $c5                                        ; $64c7: $fe $c5
    xor e                                         ; $64c9: $ab
    ld d, b                                       ; $64ca: $50
    ld b, [hl]                                    ; $64cb: $46
    cp d                                          ; $64cc: $ba
    di                                            ; $64cd: $f3
    ld c, b                                       ; $64ce: $48
    ld h, a                                       ; $64cf: $67
    ld l, b                                       ; $64d0: $68
    or l                                          ; $64d1: $b5
    ld a, h                                       ; $64d2: $7c
    adc $0b                                       ; $64d3: $ce $0b
    rlca                                          ; $64d5: $07
    ld e, h                                       ; $64d6: $5c
    ld b, [hl]                                    ; $64d7: $46
    cp $5c                                        ; $64d8: $fe $5c
    db $ed                                        ; $64da: $ed
    and $81                                       ; $64db: $e6 $81
    ld d, d                                       ; $64dd: $52
    ld e, [hl]                                    ; $64de: $5e
    dec [hl]                                      ; $64df: $35
    ld c, a                                       ; $64e0: $4f
    ld b, d                                       ; $64e1: $42
    or c                                          ; $64e2: $b1
    ld c, h                                       ; $64e3: $4c
    ld a, l                                       ; $64e4: $7d
    ld bc, $5fb9                                  ; $64e5: $01 $b9 $5f
    sub a                                         ; $64e8: $97
    sbc e                                         ; $64e9: $9b
    ld c, [hl]                                    ; $64ea: $4e
    db $db                                        ; $64eb: $db
    push de                                       ; $64ec: $d5
    ld b, c                                       ; $64ed: $41
    halt                                          ; $64ee: $76
    cp l                                          ; $64ef: $bd
    ld a, a                                       ; $64f0: $7f
    db $ed                                        ; $64f1: $ed
    sub $8c                                       ; $64f2: $d6 $8c
    db $fc                                        ; $64f4: $fc
    add hl, sp                                    ; $64f5: $39
    res 1, d                                      ; $64f6: $cb $8a
    sbc $3b                                       ; $64f8: $de $3b
    sub h                                         ; $64fa: $94
    ld h, l                                       ; $64fb: $65
    ld h, b                                       ; $64fc: $60
    or $bd                                        ; $64fd: $f6 $bd
    ld c, e                                       ; $64ff: $4b
    cp a                                          ; $6500: $bf
    inc c                                         ; $6501: $0c
    push af                                       ; $6502: $f5
    add c                                         ; $6503: $81
    ld d, d                                       ; $6504: $52
    ld e, [hl]                                    ; $6505: $5e
    inc hl                                        ; $6506: $23
    push af                                       ; $6507: $f5
    ld [c], a                                     ; $6508: $e2
    and c                                         ; $6509: $a1
    push hl                                       ; $650a: $e5
    sbc h                                         ; $650b: $9c
    rla                                           ; $650c: $17
    ld l, l                                       ; $650d: $6d
    ld a, [$d2aa]                                 ; $650e: $fa $aa $d2
    ld a, e                                       ; $6511: $7b
    rst $30                                       ; $6512: $f7
    xor d                                         ; $6513: $aa
    rst $30                                       ; $6514: $f7
    ld a, c                                       ; $6515: $79
    ld a, [hl+]                                   ; $6516: $2a
    inc a                                         ; $6517: $3c
    adc a                                         ; $6518: $8f
    and a                                         ; $6519: $a7
    and e                                         ; $651a: $a3
    dec h                                         ; $651b: $25
    ld a, [bc]                                    ; $651c: $0a
    ld a, c                                       ; $651d: $79
    xor a                                         ; $651e: $af
    ld c, l                                       ; $651f: $4d
    ld e, a                                       ; $6520: $5f
    rst $10                                       ; $6521: $d7
    and b                                         ; $6522: $a0
    ld [hl], e                                    ; $6523: $73
    dec [hl]                                      ; $6524: $35
    inc a                                         ; $6525: $3c
    dec bc                                        ; $6526: $0b
    rst $08                                       ; $6527: $cf
    ld d, b                                       ; $6528: $50
    rra                                           ; $6529: $1f
    ld sp, hl                                     ; $652a: $f9
    ld [hl], e                                    ; $652b: $73
    adc l                                         ; $652c: $8d
    call nc, $a2cb                                ; $652d: $d4 $cb $a2
    sub b                                         ; $6530: $90
    adc e                                         ; $6531: $8b
    ld [de], a                                    ; $6532: $12
    xor d                                         ; $6533: $aa
    ld e, d                                       ; $6534: $5a
    rst $10                                       ; $6535: $d7
    inc hl                                        ; $6536: $23
    cp [hl]                                       ; $6537: $be
    ld e, a                                       ; $6538: $5f
    db $ed                                        ; $6539: $ed
    ccf                                           ; $653a: $3f
    add a                                         ; $653b: $87
    ld a, [$3cd0]                                 ; $653c: $fa $d0 $3c
    jp nc, Jump_061_579d                          ; $653f: $d2 $9d $57

    ld [bc], a                                    ; $6542: $02
    ld [hl-], a                                   ; $6543: $32
    ld l, l                                       ; $6544: $6d
    db $ed                                        ; $6545: $ed
    ccf                                           ; $6546: $3f
    ld d, e                                       ; $6547: $53
    ld [hl], e                                    ; $6548: $73
    adc $0b                                       ; $6549: $ce $0b
    rlca                                          ; $654b: $07
    ld e, h                                       ; $654c: $5c
    ld d, [hl]                                    ; $654d: $56
    sbc e                                         ; $654e: $9b
    db $eb                                        ; $654f: $eb
    ld d, b                                       ; $6550: $50
    inc a                                         ; $6551: $3c
    dec e                                         ; $6552: $1d
    rst $30                                       ; $6553: $f7
    ld [hl], c                                    ; $6554: $71
    ld sp, $ea08                                  ; $6555: $31 $08 $ea
    and $85                                       ; $6558: $e6 $85
    or d                                          ; $655a: $b2
    ld [$a8d4], sp                                ; $655b: $08 $d4 $a8
    ld [hl], h                                    ; $655e: $74
    xor a                                         ; $655f: $af
    push de                                       ; $6560: $d5
    sbc h                                         ; $6561: $9c
    add h                                         ; $6562: $84
    ld h, d                                       ; $6563: $62
    ld e, [hl]                                    ; $6564: $5e
    inc c                                         ; $6565: $0c
    and c                                         ; $6566: $a1
    sbc e                                         ; $6567: $9b
    add a                                         ; $6568: $87
    adc $a9                                       ; $6569: $ce $a9
    ldh a, [$ac]                                  ; $656b: $f0 $ac
    ld d, e                                       ; $656d: $53
    dec de                                        ; $656e: $1b
    ld d, $f4                                     ; $656f: $16 $f4
    ld [hl], h                                    ; $6571: $74
    or h                                          ; $6572: $b4
    ld b, h                                       ; $6573: $44
    ld hl, $17ef                                  ; $6574: $21 $ef $17
    sub a                                         ; $6577: $97
    sbc e                                         ; $6578: $9b
    ld c, [hl]                                    ; $6579: $4e
    dec de                                        ; $657a: $1b
    sbc d                                         ; $657b: $9a
    ld b, a                                       ; $657c: $47
    cp $1c                                        ; $657d: $fe $1c
    db $dd                                        ; $657f: $dd
    ld h, l                                       ; $6580: $65
    ld sp, $72a4                                  ; $6581: $31 $a4 $72
    add a                                         ; $6584: $87
    ld [hl-], a                                   ; $6585: $32
    ld d, b                                       ; $6586: $50
    jp z, Jump_061_5fda                           ; $6587: $ca $da $5f

    add a                                         ; $658a: $87
    ld c, b                                       ; $658b: $48
    ld d, d                                       ; $658c: $52
    ei                                            ; $658d: $fb
    ld c, $b8                                     ; $658e: $0e $b8
    inc l                                         ; $6590: $2c
    ld a, [bc]                                    ; $6591: $0a
    ld e, c                                       ; $6592: $59
    xor c                                         ; $6593: $a9
    push bc                                       ; $6594: $c5
    cp c                                          ; $6595: $b9
    rst $08                                       ; $6596: $cf
    db $eb                                        ; $6597: $eb
    ld a, [de]                                    ; $6598: $1a
    ld h, [hl]                                    ; $6599: $66
    adc a                                         ; $659a: $8f
    and c                                         ; $659b: $a1
    xor a                                         ; $659c: $af
    ld d, e                                       ; $659d: $53
    jp nc, $d169                                  ; $659e: $d2 $69 $d1

    cp $02                                        ; $65a1: $fe $02
    db $ed                                        ; $65a3: $ed
    ld sp, $a1d4                                  ; $65a4: $31 $d4 $a1
    cp [hl]                                       ; $65a7: $be
    xor d                                         ; $65a8: $aa
    ld de, $da57                                  ; $65a9: $11 $57 $da
    call nc, $d197                                ; $65ac: $d4 $97 $d1
    ld e, l                                       ; $65af: $5d
    add $bf                                       ; $65b0: $c6 $bf
    ld a, b                                       ; $65b2: $78
    ld [de], a                                    ; $65b3: $12
    ld hl, sp-$4d                                 ; $65b4: $f8 $b3
    ld [hl], e                                    ; $65b6: $73
    and c                                         ; $65b7: $a1
    inc l                                         ; $65b8: $2c
    ld a, [bc]                                    ; $65b9: $0a
    xor c                                         ; $65ba: $a9
    ld a, [$0f4f]                                 ; $65bb: $fa $4f $0f
    db $fd                                        ; $65be: $fd
    inc l                                         ; $65bf: $2c
    ld a, [bc]                                    ; $65c0: $0a
    add hl, sp                                    ; $65c1: $39
    add h                                         ; $65c2: $84
    or d                                          ; $65c3: $b2
    ld l, d                                       ; $65c4: $6a
    ld [hl], c                                    ; $65c5: $71
    ld a, [$017e]                                 ; $65c6: $fa $7e $01
    db $ed                                        ; $65c9: $ed
    ld sp, $d1d4                                  ; $65ca: $31 $d4 $d1
    ld e, l                                       ; $65cd: $5d
    ld d, [hl]                                    ; $65ce: $56
    push de                                       ; $65cf: $d5
    rst $28                                       ; $65d0: $ef
    adc e                                         ; $65d1: $8b
    ld b, d                                       ; $65d2: $42
    xor d                                         ; $65d3: $aa
    cp $d3                                        ; $65d4: $fe $d3
    ld b, e                                       ; $65d6: $43
    jr z, @-$6b                                   ; $65d7: $28 $93

    ld d, b                                       ; $65d9: $50
    call z, $cdab                                 ; $65da: $cc $ab $cd
    push bc                                       ; $65dd: $c5
    ld d, $1e                                     ; $65de: $16 $1e
    ld b, e                                       ; $65e0: $43
    sbc a                                         ; $65e1: $9f
    inc hl                                        ; $65e2: $23
    halt                                          ; $65e3: $76
    adc [hl]                                      ; $65e4: $8e
    pop hl                                        ; $65e5: $e1
    or c                                          ; $65e6: $b1
    ld l, b                                       ; $65e7: $68
    ld a, a                                       ; $65e8: $7f
    ld bc, $4887                                  ; $65e9: $01 $87 $48
    ld d, d                                       ; $65ec: $52
    ei                                            ; $65ed: $fb
    ld l, $a3                                     ; $65ee: $2e $a3

jr_061_65f0:
    and h                                         ; $65f0: $a4
    db $d3                                        ; $65f1: $d3
    or d                                          ; $65f2: $b2
    ld a, [bc]                                    ; $65f3: $0a
    push bc                                       ; $65f4: $c5
    cp c                                          ; $65f5: $b9
    and a                                         ; $65f6: $a7
    ld e, c                                       ; $65f7: $59
    sub l                                         ; $65f8: $95
    daa                                           ; $65f9: $27
    and c                                         ; $65fa: $a1
    sbc b                                         ; $65fb: $98
    rla                                           ; $65fc: $17
    ld b, e                                       ; $65fd: $43
    ld h, c                                       ; $65fe: $61
    jr z, @-$42                                   ; $65ff: $28 $bc

    ld d, b                                       ; $6601: $50
    add [hl]                                      ; $6602: $86
    and $c5                                       ; $6603: $e6 $c5
    ret nc                                        ; $6605: $d0

    ld b, a                                       ; $6606: $47
    ld [hl], a                                    ; $6607: $77
    add hl, de                                    ; $6608: $19
    jr z, jr_061_65f0                             ; $6609: $28 $e5

    sub l                                         ; $660b: $95
    and $4a                                       ; $660c: $e6 $4a
    add a                                         ; $660e: $87
    sub $7e                                       ; $660f: $d6 $7e
    ld [hl], h                                    ; $6611: $74
    cp a                                          ; $6612: $bf
    add a                                         ; $6613: $87
    ld c, b                                       ; $6614: $48
    ld d, d                                       ; $6615: $52
    ei                                            ; $6616: $fb
    xor [hl]                                      ; $6617: $ae
    dec bc                                        ; $6618: $0b
    pop af                                        ; $6619: $f1
    ld b, b                                       ; $661a: $40
    add hl, hl                                    ; $661b: $29
    xor a                                         ; $661c: $af
    push de                                       ; $661d: $d5
    call c, $f5e7                                 ; $661e: $dc $e7 $f5
    and b                                         ; $6621: $a0
    sub h                                         ; $6622: $94
    rst $30                                       ; $6623: $f7
    ld b, b                                       ; $6624: $40
    sbc c                                         ; $6625: $99
    adc [hl]                                      ; $6626: $8e
    add e                                         ; $6627: $83
    dec [hl]                                      ; $6628: $35
    ld a, [hl]                                    ; $6629: $7e
    rst $28                                       ; $662a: $ef
    rra                                           ; $662b: $1f
    xor l                                         ; $662c: $ad
    db $fd                                        ; $662d: $fd
    dec b                                         ; $662e: $05
    rlca                                          ; $662f: $07
    ld e, h                                       ; $6630: $5c
    add $19                                       ; $6631: $c6 $19
    ld [hl], d                                    ; $6633: $72
    and b                                         ; $6634: $a0
    sub h                                         ; $6635: $94
    rst $30                                       ; $6636: $f7
    ld a, c                                       ; $6637: $79
    rst $08                                       ; $6638: $cf
    sub a                                         ; $6639: $97
    dec a                                         ; $663a: $3d
    call $f955                                    ; $663b: $cd $55 $f9
    ld c, d                                       ; $663e: $4a
    ld a, c                                       ; $663f: $79
    jr nc, @-$78                                  ; $6640: $30 $86

    rst $00                                       ; $6642: $c7
    add hl, hl                                    ; $6643: $29
    cp [hl]                                       ; $6644: $be
    ld e, a                                       ; $6645: $5f
    ld l, l                                       ; $6646: $6d
    ld a, [$e69e]                                 ; $6647: $fa $9e $e6
    ld c, b                                       ; $664a: $48
    rst $30                                       ; $664b: $f7
    xor $f4                                       ; $664c: $ee $f4
    xor d                                         ; $664e: $aa
    rst $30                                       ; $664f: $f7
    ld a, c                                       ; $6650: $79
    ld a, [hl+]                                   ; $6651: $2a

jr_061_6652:
    inc a                                         ; $6652: $3c
    adc a                                         ; $6653: $8f
    rst $30                                       ; $6654: $f7
    and e                                         ; $6655: $a3
    ld d, l                                       ; $6656: $55
    ld [hl], $ae                                  ; $6657: $36 $ae
    ld [hl], $87                                  ; $6659: $36 $87
    ld a, [$2940]                                 ; $665b: $fa $40 $29
    cpl                                           ; $665e: $2f
    ld l, d                                       ; $665f: $6a
    and $1a                                       ; $6660: $e6 $1a
    cp a                                          ; $6662: $bf
    rst $30                                       ; $6663: $f7
    adc a                                         ; $6664: $8f
    cp [hl]                                       ; $6665: $be
    ld e, a                                       ; $6666: $5f
    add a                                         ; $6667: $87
    ld c, b                                       ; $6668: $48
    ld d, d                                       ; $6669: $52
    ei                                            ; $666a: $fb
    ld c, $b8                                     ; $666b: $0e $b8
    adc h                                         ; $666d: $8c
    inc sp                                        ; $666e: $33
    db $e4                                        ; $666f: $e4
    ld a, $af                                     ; $6670: $3e $af
    ld d, e                                       ; $6672: $53
    jp nc, Jump_061_5969                          ; $6673: $d2 $69 $59

    ld [hl], l                                    ; $6676: $75
    xor [hl]                                      ; $6677: $ae
    push de                                       ; $6678: $d5
    ld e, h                                       ; $6679: $5c
    xor b                                         ; $667a: $a8
    rst $30                                       ; $667b: $f7
    dec bc                                        ; $667c: $0b
    rst $10                                       ; $667d: $d7
    pop bc                                        ; $667e: $c1
    sbc [hl]                                      ; $667f: $9e
    and $48                                       ; $6680: $e6 $48
    rst $30                                       ; $6682: $f7
    xor $f4                                       ; $6683: $ee $f4
    ld a, [$2f47]                                 ; $6685: $fa $47 $2f
    and [hl]                                      ; $6688: $a6
    and h                                         ; $6689: $a4
    rst $30                                       ; $668a: $f7
    jr @-$07                                      ; $668b: $18 $f7

    ld a, c                                       ; $668d: $79
    ld d, l                                       ; $668e: $55
    cp [hl]                                       ; $668f: $be
    ld d, d                                       ; $6690: $52
    ld e, $8c                                     ; $6691: $1e $8c
    pop hl                                        ; $6693: $e1
    ld [hl], c                                    ; $6694: $71
    adc d                                         ; $6695: $8a
    rst $28                                       ; $6696: $ef
    ld e, l                                       ; $6697: $5d
    rlca                                          ; $6698: $07
    ld c, e                                       ; $6699: $4b
    xor b                                         ; $669a: $a8
    and b                                         ; $669b: $a0
    sbc h                                         ; $669c: $9c
    adc $59                                       ; $669d: $ce $59
    ld d, [hl]                                    ; $669f: $56
    ld h, e                                       ; $66a0: $63
    and e                                         ; $66a1: $a3
    di                                            ; $66a2: $f3
    ld a, [hl]                                    ; $66a3: $7e
    ld bc, $51d7                                  ; $66a4: $01 $d7 $51
    ld [hl], d                                    ; $66a7: $72
    and d                                         ; $66a8: $a2
    xor a                                         ; $66a9: $af
    ld d, d                                       ; $66aa: $52
    ld [hl], c                                    ; $66ab: $71
    sbc a                                         ; $66ac: $9f
    ld d, a                                       ; $66ad: $57
    sbc d                                         ; $66ae: $9a
    ld b, e                                       ; $66af: $43
    sub b                                         ; $66b0: $90
    push bc                                       ; $66b1: $c5
    and [hl]                                      ; $66b2: $a6
    ld l, e                                       ; $66b3: $6b
    rst $18                                       ; $66b4: $df
    ld bc, $c597                                  ; $66b5: $01 $97 $c5
    ret nc                                        ; $66b8: $d0

    rlca                                          ; $66b9: $07
    ld c, d                                       ; $66ba: $4a
    ld a, c                                       ; $66bb: $79
    add l                                         ; $66bc: $85
    sbc d                                         ; $66bd: $9a
    ld e, [hl]                                    ; $66be: $5e
    and a                                         ; $66bf: $a7
    and h                                         ; $66c0: $a4
    db $d3                                        ; $66c1: $d3
    or d                                          ; $66c2: $b2
    jr c, jr_061_6652                             ; $66c3: $38 $8d

    rst $30                                       ; $66c5: $f7
    dec bc                                        ; $66c6: $0b
    rlca                                          ; $66c7: $07
    ld e, h                                       ; $66c8: $5c
    ld d, $43                                     ; $66c9: $16 $43
    rst $28                                       ; $66cb: $ef
    ld e, $55                                     ; $66cc: $1e $55
    xor d                                         ; $66ce: $aa
    ld a, [c]                                     ; $66cf: $f2
    ld a, $8f                                     ; $66d0: $3e $8f
    xor $32                                       ; $66d2: $ee $32
    and l                                         ; $66d4: $a5
    adc e                                         ; $66d5: $8b
    ld a, b                                       ; $66d6: $78

Jump_061_66d7:
    ld a, [hl+]                                   ; $66d7: $2a
    inc a                                         ; $66d8: $3c
    adc a                                         ; $66d9: $8f
    rst $30                                       ; $66da: $f7
    jr jr_061_66f4                                ; $66db: $18 $17

    jp z, Jump_000_3a48                           ; $66dd: $ca $48 $3a

    and l                                         ; $66e0: $a5
    or a                                          ; $66e1: $b7
    ld c, h                                       ; $66e2: $4c
    db $db                                        ; $66e3: $db
    ld h, e                                       ; $66e4: $63
    add hl, de                                    ; $66e5: $19
    db $dd                                        ; $66e6: $dd
    ld h, l                                       ; $66e7: $65
    adc l                                         ; $66e8: $8d
    ld c, $b1                                     ; $66e9: $0e $b1
    ld [hl], e                                    ; $66eb: $73
    ld b, d                                       ; $66ec: $42
    ld b, l                                       ; $66ed: $45
    ld e, $43                                     ; $66ee: $1e $43
    rst $18                                       ; $66f0: $df
    rst $20                                       ; $66f1: $e7
    dec [hl]                                      ; $66f2: $35
    ld a, [hl-]                                   ; $66f3: $3a

jr_061_66f4:
    call nz, $e91e                                ; $66f4: $c4 $1e $e9
    cp h                                          ; $66f7: $bc
    ld e, a                                       ; $66f8: $5f
    db $ed                                        ; $66f9: $ed
    xor $b8                                       ; $66fa: $ee $b8
    ld d, b                                       ; $66fc: $50
    sub $35                                       ; $66fd: $d6 $35
    ld c, d                                       ; $66ff: $4a
    sbc c                                         ; $6700: $99
    or [hl]                                       ; $6701: $b6
    or $9f                                        ; $6702: $f6 $9f
    xor c                                         ; $6704: $a9
    cp c                                          ; $6705: $b9
    ld [hl], a                                    ; $6706: $77
    ld d, c                                       ; $6707: $51
    ld c, b                                       ; $6708: $48
    and [hl]                                      ; $6709: $a6
    db $f4                                        ; $670a: $f4
    dec a                                         ; $670b: $3d
    ld d, b                                       ; $670c: $50
    ld d, [hl]                                    ; $670d: $56
    dec l                                         ; $670e: $2d
    ld c, [hl]                                    ; $670f: $4e
    adc a                                         ; $6710: $8f
    adc h                                         ; $6711: $8c
    ccf                                           ; $6712: $3f
    ld c, $9d                                     ; $6713: $0e $9d
    xor e                                         ; $6715: $ab
    jp z, $fbec                                   ; $6716: $ca $ec $fb

    dec b                                         ; $6719: $05
    ld l, l                                       ; $671a: $6d
    ld a, [$e69e]                                 ; $671b: $fa $9e $e6
    ld c, b                                       ; $671e: $48
    rst $30                                       ; $671f: $f7
    xor $f4                                       ; $6720: $ee $f4
    ld d, h                                       ; $6722: $54
    ld a, b                                       ; $6723: $78
    ld e, $ef                                     ; $6724: $1e $ef
    ld b, a                                       ; $6726: $47
    xor e                                         ; $6727: $ab
    ld l, h                                       ; $6728: $6c
    ld e, h                                       ; $6729: $5c
    ld b, h                                       ; $672a: $44
    call Call_061_4a75                            ; $672b: $cd $75 $4a
    ld a, [hl-]                                   ; $672e: $3a
    dec l                                         ; $672f: $2d
    ld l, e                                       ; $6730: $6b
    ld [hl], h                                    ; $6731: $74
    adc b                                         ; $6732: $88
    sbc l                                         ; $6733: $9d
    dec hl                                        ; $6734: $2b
    cp a                                          ; $6735: $bf
    rst $18                                       ; $6736: $df
    cpl                                           ; $6737: $2f
    db $ed                                        ; $6738: $ed
    xor $b8                                       ; $6739: $ee $b8
    ld d, b                                       ; $673b: $50
    sub $35                                       ; $673c: $d6 $35
    ld c, d                                       ; $673e: $4a
    sbc c                                         ; $673f: $99
    or [hl]                                       ; $6740: $b6
    or $9f                                        ; $6741: $f6 $9f
    xor c                                         ; $6743: $a9
    and c                                         ; $6744: $a1
    adc l                                         ; $6745: $8d
    xor $b2                                       ; $6746: $ee $b2
    ret c                                         ; $6748: $d8

    cp b                                          ; $6749: $b8
    rst $08                                       ; $674a: $cf
    ld b, e                                       ; $674b: $43
    ld a, l                                       ; $674c: $7d
    ld [$54cb], a                                 ; $674d: $ea $cb $54
    rst $38                                       ; $6750: $ff
    jp hl                                         ; $6751: $e9


    and c                                         ; $6752: $a1
    ld sp, hl                                     ; $6753: $f9
    ld a, [hl]                                    ; $6754: $7e
    ld bc, $fa6d                                  ; $6755: $01 $6d $fa
    sbc [hl]                                      ; $6758: $9e
    and $48                                       ; $6759: $e6 $48
    rst $30                                       ; $675b: $f7
    xor $f4                                       ; $675c: $ee $f4
    ld d, h                                       ; $675e: $54
    ld a, b                                       ; $675f: $78
    ld e, $ef                                     ; $6760: $1e $ef
    ld b, a                                       ; $6762: $47
    xor e                                         ; $6763: $ab
    ld l, h                                       ; $6764: $6c
    and h                                         ; $6765: $a4
    xor l                                         ; $6766: $ad
    ld d, e                                       ; $6767: $53
    jp nc, $9969                                  ; $6768: $d2 $69 $99

    add d                                         ; $676b: $82
    ld d, d                                       ; $676c: $52
    sbc h                                         ; $676d: $9c
    ld l, e                                       ; $676e: $6b
    dec [hl]                                      ; $676f: $35
    add a                                         ; $6770: $87
    ld d, b                                       ; $6771: $50
    xor $17                                       ; $6772: $ee $17
    ld l, l                                       ; $6774: $6d
    add hl, bc                                    ; $6775: $09
    ld sp, $57a9                                  ; $6776: $31 $a9 $57
    sbc a                                         ; $6779: $9f
    or l                                          ; $677a: $b5
    bit 0, e                                      ; $677b: $cb $43
    ld h, d                                       ; $677d: $62
    db $ec                                        ; $677e: $ec
    jp z, $daf7                                   ; $677f: $ca $f7 $da

    ld a, a                                       ; $6782: $7f
    ld c, c                                       ; $6783: $49
    ret nz                                        ; $6784: $c0

    ld a, [hl-]                                   ; $6785: $3a
    ld d, d                                       ; $6786: $52
    jp $b3ec                                      ; $6787: $c3 $ec $b3


    halt                                          ; $678a: $76
    ld c, b                                       ; $678b: $48
    add e                                         ; $678c: $83
    or c                                          ; $678d: $b1
    dec hl                                        ; $678e: $2b
    rst $18                                       ; $678f: $df
    cpl                                           ; $6790: $2f
    add a                                         ; $6791: $87
    ld d, h                                       ; $6792: $54
    add sp, -$6a                                  ; $6793: $e8 $96
    add hl, sp                                    ; $6795: $39
    ld d, a                                       ; $6796: $57
    cp e                                          ; $6797: $bb
    adc $8b                                       ; $6798: $ce $8b
    ld b, d                                       ; $679a: $42
    ld c, $86                                     ; $679b: $0e $86
    cp a                                          ; $679d: $bf
    call c, $b8bb                                 ; $679e: $dc $bb $b8
    add hl, sp                                    ; $67a1: $39
    add [hl]                                      ; $67a2: $86
    cp [hl]                                       ; $67a3: $be
    ld b, e                                       ; $67a4: $43
    inc e                                         ; $67a5: $1c
    or d                                          ; $67a6: $b2
    cp $6e                                        ; $67a7: $fe $6e
    and c                                         ; $67a9: $a1
    db $ed                                        ; $67aa: $ed
    ld bc, $5fc4                                  ; $67ab: $01 $c4 $5f
    inc l                                         ; $67ae: $2c
    ld l, e                                       ; $67af: $6b
    ld [hl], h                                    ; $67b0: $74
    adc b                                         ; $67b1: $88
    sbc l                                         ; $67b2: $9d
    xor e                                         ; $67b3: $ab
    ld a, [c]                                     ; $67b4: $f2
    sub e                                         ; $67b5: $93
    ld d, a                                       ; $67b6: $57
    sbc l                                         ; $67b7: $9d
    or c                                          ; $67b8: $b1
    db $d3                                        ; $67b9: $d3
    ld a, h                                       ; $67ba: $7c
    cp a                                          ; $67bb: $bf
    ld l, l                                       ; $67bc: $6d
    ld a, [$faaa]                                 ; $67bd: $fa $aa $fa
    ld a, l                                       ; $67c0: $7d
    and b                                         ; $67c1: $a0
    sub h                                         ; $67c2: $94
    ld d, a                                       ; $67c3: $57
    dec sp                                        ; $67c4: $3b
    or h                                          ; $67c5: $b4
    ld e, d                                       ; $67c6: $5a
    ld e, [hl]                                    ; $67c7: $5e
    add hl, bc                                    ; $67c8: $09
    ret z                                         ; $67c9: $c8

    adc e                                         ; $67ca: $8b
    ld a, [c]                                     ; $67cb: $f2
    adc a                                         ; $67cc: $8f
    adc h                                         ; $67cd: $8c
    ccf                                           ; $67ce: $3f
    ld c, $9d                                     ; $67cf: $0e $9d
    xor e                                         ; $67d1: $ab
    jp z, Jump_000_31ec                           ; $67d2: $ca $ec $31

    db $f4                                        ; $67d5: $f4
    ld b, l                                       ; $67d6: $45
    ld e, l                                       ; $67d7: $5d
    inc de                                        ; $67d8: $13
    sbc e                                         ; $67d9: $9b
    pop hl                                        ; $67da: $e1
    or c                                          ; $67db: $b1
    ret nc                                        ; $67dc: $d0

    halt                                          ; $67dd: $76
    ld h, l                                       ; $67de: $65
    ld h, b                                       ; $67df: $60
    halt                                          ; $67e0: $76
    sbc $2f                                       ; $67e1: $de $2f
    ld l, l                                       ; $67e3: $6d
    ld a, [$eb9c]                                 ; $67e4: $fa $9c $eb
    ld e, a                                       ; $67e7: $5f
    ld a, [bc]                                    ; $67e8: $0a
    rst $28                                       ; $67e9: $ef
    add hl, bc                                    ; $67ea: $09
    ld [$e9c5], sp                                ; $67eb: $08 $c5 $e9
    adc c                                         ; $67ee: $89
    pop de                                        ; $67ef: $d1
    ld l, e                                       ; $67f0: $6b
    dec [hl]                                      ; $67f1: $35
    ld b, a                                       ; $67f2: $47
    rrca                                          ; $67f3: $0f
    adc c                                         ; $67f4: $89
    sub [hl]                                      ; $67f5: $96
    dec a                                         ; $67f6: $3d
    add $21                                       ; $67f7: $c6 $21
    adc b                                         ; $67f9: $88
    ld d, a                                       ; $67fa: $57
    sbc a                                         ; $67fb: $9f
    and $62                                       ; $67fc: $e6 $62
    adc e                                         ; $67fe: $8b
    jr c, jr_061_6848                             ; $67ff: $38 $47

    add [hl]                                      ; $6801: $86
    ld a, [hl-]                                   ; $6802: $3a
    add h                                         ; $6803: $84
    ld [hl], d                                    ; $6804: $72
    cp a                                          ; $6805: $bf
    rlca                                          ; $6806: $07
    ld e, h                                       ; $6807: $5c
    ld d, $43                                     ; $6808: $16 $43
    rst $18                                       ; $680a: $df
    ld h, e                                       ; $680b: $63
    ld e, h                                       ; $680c: $5c
    jp hl                                         ; $680d: $e9


    inc d                                         ; $680e: $14
    db $f4                                        ; $680f: $f4
    ld l, d                                       ; $6810: $6a
    ld l, a                                       ; $6811: $6f
    sub $3d                                       ; $6812: $d6 $3d
    ld bc, $5087                                  ; $6814: $01 $87 $50
    or $7c                                        ; $6817: $f6 $7c
    pop bc                                        ; $6819: $c1
    dec a                                         ; $681a: $3d
    ld bc, $7cf7                                  ; $681b: $01 $f7 $7c
    pop bc                                        ; $681e: $c1
    ld a, e                                       ; $681f: $7b
    db $ed                                        ; $6820: $ed
    pop af                                        ; $6821: $f1
    rst $00                                       ; $6822: $c7
    dec a                                         ; $6823: $3d
    add $59                                       ; $6824: $c6 $59
    add $19                                       ; $6826: $c6 $19
    ld a, [hl-]                                   ; $6828: $3a
    ld a, $5f                                     ; $6829: $3e $5f
    or b                                          ; $682b: $b0
    and d                                         ; $682c: $a2
    xor $be                                       ; $682d: $ee $be
    ret c                                         ; $682f: $d8

    cp b                                          ; $6830: $b8
    rlca                                          ; $6831: $07
    ld d, b                                       ; $6832: $50
    ld a, $d3                                     ; $6833: $3e $d3
    and [hl]                                      ; $6835: $a6
    ld [hl], h                                    ; $6836: $74
    reti                                          ; $6837: $d9


    ld h, e                                       ; $6838: $63
    inc e                                         ; $6839: $1c
    and a                                         ; $683a: $a7

Call_061_683b:
    and [hl]                                      ; $683b: $a6
    ld [hl], a                                    ; $683c: $77
    ld d, a                                       ; $683d: $57
    cp $b1                                        ; $683e: $fe $b1
    rst $28                                       ; $6840: $ef
    rla                                           ; $6841: $17
    rla                                           ; $6842: $17
    jp z, $f8c8                                   ; $6843: $ca $c8 $f8

    db $e3                                        ; $6846: $e3
    add hl, sp                                    ; $6847: $39

jr_061_6848:
    cpl                                           ; $6848: $2f
    ld l, l                                       ; $6849: $6d
    and $39                                       ; $684a: $e6 $39
    ld h, a                                       ; $684c: $67
    reti                                          ; $684d: $d9


    adc a                                         ; $684e: $8f
    ld hl, sp+$77                                 ; $684f: $f8 $77

jr_061_6851:
    rst $18                                       ; $6851: $df
    dec sp                                        ; $6852: $3b
    ldh [$b2], a                                  ; $6853: $e0 $b2
    jr jr_061_6851                                ; $6855: $18 $fa

    ld h, d                                       ; $6857: $62
    ld c, d                                       ; $6858: $4a
    ld a, d                                       ; $6859: $7a
    db $e4                                        ; $685a: $e4
    sub a                                         ; $685b: $97
    cp d                                          ; $685c: $ba
    ld l, d                                       ; $685d: $6a
    and l                                         ; $685e: $a5
    dec bc                                        ; $685f: $0b

Jump_061_6860:
    ld a, [hl]                                    ; $6860: $7e
    pop hl                                        ; $6861: $e1
    ei                                            ; $6862: $fb
    dec b                                         ; $6863: $05
    rla                                           ; $6864: $17
    db $e4                                        ; $6865: $e4
    ld l, a                                       ; $6866: $6f
    inc [hl]                                      ; $6867: $34
    inc a                                         ; $6868: $3c
    rst $20                                       ; $6869: $e7
    ld e, $90                                     ; $686a: $1e $90
    ld d, l                                       ; $686c: $55
    dec hl                                        ; $686d: $2b
    ld e, l                                       ; $686e: $5d
    ldh a, [$0b]                                  ; $686f: $f0 $0b
    rst $18                                       ; $6871: $df
    cp e                                          ; $6872: $bb
    ld c, $56                                     ; $6873: $0e $56
    ld e, l                                       ; $6875: $5d
    rlca                                          ; $6876: $07
    cp e                                          ; $6877: $bb
    ld h, $43                                     ; $6878: $26 $43
    ld b, h                                       ; $687a: $44
    jp hl                                         ; $687b: $e9


    ld b, c                                       ; $687c: $41
    db $fd                                        ; $687d: $fd
    ld l, [hl]                                    ; $687e: $6e
    cp [hl]                                       ; $687f: $be
    ld e, a                                       ; $6880: $5f
    db $ed                                        ; $6881: $ed
    pop af                                        ; $6882: $f1
    rst $00                                       ; $6883: $c7
    pop bc                                        ; $6884: $c1
    ld a, [hl]                                    ; $6885: $7e
    adc a                                         ; $6886: $8f
    sbc l                                         ; $6887: $9d
    ld l, b                                       ; $6888: $68
    sbc c                                         ; $6889: $99
    ld [hl], e                                    ; $688a: $73
    sub [hl]                                      ; $688b: $96
    ld [hl], c                                    ; $688c: $71
    add [hl]                                      ; $688d: $86
    adc [hl]                                      ; $688e: $8e
    rst $08                                       ; $688f: $cf
    rla                                           ; $6890: $17
    xor h                                         ; $6891: $ac
    xor b                                         ; $6892: $a8
    cp e                                          ; $6893: $bb
    sbc a                                         ; $6894: $9f
    di                                            ; $6895: $f3
    ld [bc], a                                    ; $6896: $02
    rla                                           ; $6897: $17
    jp z, Jump_061_7fd4                           ; $6898: $ca $d4 $7f

    ld e, d                                       ; $689b: $5a
    or h                                          ; $689c: $b4
    sub c                                         ; $689d: $91
    ld [hl], c                                    ; $689e: $71
    ret z                                         ; $689f: $c8

    dec a                                         ; $68a0: $3d

Jump_061_68a1:
    ld e, a                                       ; $68a1: $5f
    and [hl]                                      ; $68a2: $a6
    ld [hl], h                                    ; $68a3: $74
    ld e, c                                       ; $68a4: $59
    inc hl                                        ; $68a5: $23
    push af                                       ; $68a6: $f5
    ld [c], a                                     ; $68a7: $e2
    inc e                                         ; $68a8: $1c
    and a                                         ; $68a9: $a7
    and [hl]                                      ; $68aa: $a6
    ld [hl], a                                    ; $68ab: $77
    ld b, a                                       ; $68ac: $47
    ld hl, $bd1f                                  ; $68ad: $21 $1f $bd
    rst $38                                       ; $68b0: $ff
    ld [hl], h                                    ; $68b1: $74
    sbc $bb                                       ; $68b2: $de $bb
    ld b, h                                       ; $68b4: $44
    adc d                                         ; $68b5: $8a
    ld h, l                                       ; $68b6: $65
    ccf                                           ; $68b7: $3f
    ld a, [de]                                    ; $68b8: $1a
    db $dd                                        ; $68b9: $dd
    add hl, sp                                    ; $68ba: $39
    ld h, l                                       ; $68bb: $65
    ld b, c                                       ; $68bc: $41
    rst $20                                       ; $68bd: $e7
    inc h                                         ; $68be: $24

jr_061_68bf:
    xor b                                         ; $68bf: $a8
    dec a                                         ; $68c0: $3d

jr_061_68c1:
    cp a                                          ; $68c1: $bf
    ret nz                                        ; $68c2: $c0

    jr jr_061_68bf                                ; $68c3: $18 $fa

    ld a, $af                                     ; $68c5: $3e $af
    xor d                                         ; $68c7: $aa
    adc a                                         ; $68c8: $8f
    ld e, $09                                     ; $68c9: $1e $09
    ld a, [c]                                     ; $68cb: $f2
    dec b                                         ; $68cc: $05
    dec l                                         ; $68cd: $2d
    xor e                                         ; $68ce: $ab
    db $dd                                        ; $68cf: $dd
    rrca                                          ; $68d0: $0f
    rst $18                                       ; $68d1: $df
    dec sp                                        ; $68d2: $3b
    inc d                                         ; $68d3: $14
    sbc [hl]                                      ; $68d4: $9e
    ld hl, $aac8                                  ; $68d5: $21 $c8 $aa
    sub l                                         ; $68d8: $95
    ld l, $f8                                     ; $68d9: $2e $f8
    add l                                         ; $68db: $85
    rst $20                                       ; $68dc: $e7
    inc e                                         ; $68dd: $1c
    sbc d                                         ; $68de: $9a
    rst $30                                       ; $68df: $f7
    add b                                         ; $68e0: $80
    inc l                                         ; $68e1: $2c
    or h                                          ; $68e2: $b4
    jp z, $bd8f                                   ; $68e3: $ca $8f $bd

    rst $08                                       ; $68e6: $cf
    ld l, e                                       ; $68e7: $6b
    ld a, h                                       ; $68e8: $7c
    and l                                         ; $68e9: $a5
    inc a                                         ; $68ea: $3c
    add h                                         ; $68eb: $84
    or d                                          ; $68ec: $b2
    ret nc                                        ; $68ed: $d0

    cp d                                          ; $68ee: $ba
    ld e, a                                       ; $68ef: $5f
    rlca                                          ; $68f0: $07
    ld e, h                                       ; $68f1: $5c
    ld b, [hl]                                    ; $68f2: $46
    ld d, d                                       ; $68f3: $52
    sub e                                         ; $68f4: $93
    dec a                                         ; $68f5: $3d
    ld [hl-], a                                   ; $68f6: $32
    cp $b8                                        ; $68f7: $fe $b8
    ld c, e                                       ; $68f9: $4b
    ld d, [hl]                                    ; $68fa: $56
    ld a, a                                       ; $68fb: $7f
    ld b, c                                       ; $68fc: $41
    rst $18                                       ; $68fd: $df
    cp e                                          ; $68fe: $bb
    ld h, h                                       ; $68ff: $64
    dec b                                         ; $6900: $05
    ld h, d                                       ; $6901: $62
    rst $20                                       ; $6902: $e7
    ld c, b                                       ; $6903: $48
    ld [hl], a                                    ; $6904: $77
    ld c, a                                       ; $6905: $4f
    add l                                         ; $6906: $85
    sbc $5d                                       ; $6907: $de $5d
    ret nz                                        ; $6909: $c0

    cp h                                          ; $690a: $bc
    ld d, [hl]                                    ; $690b: $56
    add [hl]                                      ; $690c: $86
    ld b, [hl]                                    ; $690d: $46
    rst $30                                       ; $690e: $f7
    db $e3                                        ; $690f: $e3
    cp h                                          ; $6910: $bc
    ld e, a                                       ; $6911: $5f
    ld l, l                                       ; $6912: $6d
    and $a9                                       ; $6913: $e6 $a9
    ldh a, [$3c]                                  ; $6915: $f0 $3c
    adc $81                                       ; $6917: $ce $81
    ld d, d                                       ; $6919: $52
    ld e, $42                                     ; $691a: $1e $42

Jump_061_691c:
    ld e, c                                       ; $691c: $59
    ld l, h                                       ; $691d: $6c
    cp h                                          ; $691e: $bc
    ld [hl], a                                    ; $691f: $77
    dec e                                         ; $6920: $1d
    db $ec                                        ; $6921: $ec
    ld l, c                                       ; $6922: $69
    adc [hl]                                      ; $6923: $8e
    ld [hl], h                                    ; $6924: $74
    rst $28                                       ; $6925: $ef
    ld c, [hl]                                    ; $6926: $4e
    xor a                                         ; $6927: $af
    inc [hl]                                      ; $6928: $34
    rla                                           ; $6929: $17
    ld h, d                                       ; $692a: $62
    ld c, e                                       ; $692b: $4b
    xor e                                         ; $692c: $ab
    cp c                                          ; $692d: $b9
    ld d, b                                       ; $692e: $50

jr_061_692f:
    ld d, $85                                     ; $692f: $16 $85
    ld l, h                                       ; $6931: $6c
    jr c, jr_061_68c1                             ; $6932: $38 $8d

    ld e, [hl]                                    ; $6934: $5e
    xor b                                         ; $6935: $a8
    rst $30                                       ; $6936: $f7
    dec bc                                        ; $6937: $0b
    db $ed                                        ; $6938: $ed
    cp a                                          ; $6939: $bf
    rst $00                                       ; $693a: $c7
    inc e                                         ; $693b: $1c
    ld a, d                                       ; $693c: $7a
    ld a, h                                       ; $693d: $7c
    rst $28                                       ; $693e: $ef
    ld a, [hl-]                                   ; $693f: $3a
    ret c                                         ; $6940: $d8

    db $d3                                        ; $6941: $d3
    inc e                                         ; $6942: $1c
    jp hl                                         ; $6943: $e9


    sbc $9d                                       ; $6944: $de $9d
    ld e, [hl]                                    ; $6946: $5e
    ld d, l                                       ; $6947: $55
    ld a, [de]                                    ; $6948: $1a
    ld b, c                                       ; $6949: $41
    cpl                                           ; $694a: $2f
    call nc, Call_000_05fb                        ; $694b: $d4 $fb $05
    rlca                                          ; $694e: $07
    ld e, h                                       ; $694f: $5c
    ld d, $7d                                     ; $6950: $16 $7d
    ld h, [hl]                                    ; $6952: $66
    rst $20                                       ; $6953: $e7
    ld b, b                                       ; $6954: $40
    add hl, hl                                    ; $6955: $29
    rst $28                                       ; $6956: $ef
    di                                            ; $6957: $f3
    ld d, b                                       ; $6958: $50
    ld e, a                                       ; $6959: $5f
    inc c                                         ; $695a: $0c
    ld a, l                                       ; $695b: $7d
    push bc                                       ; $695c: $c5
    ld [hl+], a                                   ; $695d: $22
    ld a, [hl]                                    ; $695e: $7e
    ld [hl+], a                                   ; $695f: $22
    ld l, d                                       ; $6960: $6a
    ld a, d                                       ; $6961: $7a
    ld l, b                                       ; $6962: $68
    and [hl]                                      ; $6963: $a6
    xor l                                         ; $6964: $ad
    db $fd                                        ; $6965: $fd
    ld h, a                                       ; $6966: $67
    ld l, d                                       ; $6967: $6a
    xor $17                                       ; $6968: $ee $17
    ld l, l                                       ; $696a: $6d
    cp d                                          ; $696b: $ba
    or $1d                                        ; $696c: $f6 $1d
    ld a, [c]                                     ; $696e: $f2
    ld a, $4f                                     ; $696f: $3e $4f
    add l                                         ; $6971: $85
    rst $20                                       ; $6972: $e7
    pop af                                        ; $6973: $f1
    jr jr_061_69f0                                ; $6974: $18 $7a

    db $e3                                        ; $6976: $e3
    rla                                           ; $6977: $17
    rrca                                          ; $6978: $0f
    ld d, [hl]                                    ; $6979: $56
    dec l                                         ; $697a: $2d
    ld b, l                                       ; $697b: $45
    ei                                            ; $697c: $fb
    dec bc                                        ; $697d: $0b
    ld l, l                                       ; $697e: $6d
    ld a, [$a81e]                                 ; $697f: $fa $1e $a8
    db $ec                                        ; $6982: $ec
    call c, $ddef                                 ; $6983: $dc $ef $dd
    ld b, e                                       ; $6986: $43
    xor a                                         ; $6987: $af
    dec d                                         ; $6988: $15
    ld b, b                                       ; $6989: $40
    ld a, b                                       ; $698a: $78
    ld sp, $fc8c                                  ; $698b: $31 $8c $fc
    ld c, c                                       ; $698e: $49
    dec de                                        ; $698f: $1b
    add hl, de                                    ; $6990: $19
    ld b, e                                       ; $6991: $43
    dec e                                         ; $6992: $1d
    ld [$746b], a                                 ; $6993: $ea $6b $74
    adc b                                         ; $6996: $88
    sbc l                                         ; $6997: $9d
    xor e                                         ; $6998: $ab
    and d                                         ; $6999: $a2
    or a                                          ; $699a: $b7
    ld e, d                                       ; $699b: $5a
    and $fb                                       ; $699c: $e6 $fb
    dec b                                         ; $699e: $05
    rla                                           ; $699f: $17
    scf                                           ; $69a0: $37
    add a                                         ; $69a1: $87
    jr nz, jr_061_692f                            ; $69a2: $20 $8b

    ld c, l                                       ; $69a4: $4d
    rst $10                                       ; $69a5: $d7
    cp $02                                        ; $69a6: $fe $02
    ld d, a                                       ; $69a8: $57
    xor b                                         ; $69a9: $a8
    xor a                                         ; $69aa: $af
    and c                                         ; $69ab: $a1
    db $ed                                        ; $69ac: $ed
    or c                                          ; $69ad: $b1
    ld c, h                                       ; $69ae: $4c
    db $f4                                        ; $69af: $f4
    sub c                                         ; $69b0: $91
    ccf                                           ; $69b1: $3f
    ld b, a                                       ; $69b2: $47
    ld [hl], a                                    ; $69b3: $77
    reti                                          ; $69b4: $d9


    rst $00                                       ; $69b5: $c7
    ld hl, sp-$59                                 ; $69b6: $f8 $a7
    ld a, c                                       ; $69b8: $79
    ld [$7ee5], sp                                ; $69b9: $08 $e5 $7e
    ld bc, $966d                                  ; $69bc: $01 $6d $96
    ld b, l                                       ; $69bf: $45
    ld b, [hl]                                    ; $69c0: $46
    rrca                                          ; $69c1: $0f
    rst $38                                       ; $69c2: $ff
    db $e3                                        ; $69c3: $e3
    db $dd                                        ; $69c4: $dd
    rst $30                                       ; $69c5: $f7
    ld c, b                                       ; $69c6: $48
    ld e, l                                       ; $69c7: $5d
    and $1c                                       ; $69c8: $e6 $1c
    ld a, [hl-]                                   ; $69ca: $3a
    rlca                                          ; $69cb: $07
    ld c, d                                       ; $69cc: $4a
    ld e, c                                       ; $69cd: $59
    ei                                            ; $69ce: $fb
    ld c, $b8                                     ; $69cf: $0e $b8
    adc h                                         ; $69d1: $8c
    db $fc                                        ; $69d2: $fc
    add hl, sp                                    ; $69d3: $39
    sub d                                         ; $69d4: $92
    sbc d                                         ; $69d5: $9a
    cp h                                          ; $69d6: $bc
    rst $08                                       ; $69d7: $cf
    inc hl                                        ; $69d8: $23
    ld [hl], l                                    ; $69d9: $75

jr_061_69da:
    ld e, c                                       ; $69da: $59
    dec c                                         ; $69db: $0d
    rst $08                                       ; $69dc: $cf
    db $e3                                        ; $69dd: $e3
    ld sp, $73a0                                  ; $69de: $31 $a0 $73
    sub l                                         ; $69e1: $95
    db $d3                                        ; $69e2: $d3
    ld [hl], h                                    ; $69e3: $74
    rst $20                                       ; $69e4: $e7
    ld d, d                                       ; $69e5: $52
    rla                                           ; $69e6: $17
    db $e4                                        ; $69e7: $e4
    add l                                         ; $69e8: $85
    ld h, a                                       ; $69e9: $67
    ld a, [c]                                     ; $69ea: $f2
    sbc c                                         ; $69eb: $99
    dec l                                         ; $69ec: $2d
    rst $30                                       ; $69ed: $f7
    ld c, $b8                                     ; $69ee: $0e $b8

jr_061_69f0:
    ld c, h                                       ; $69f0: $4c
    ld a, l                                       ; $69f1: $7d
    add hl, de                                    ; $69f2: $19
    jr z, jr_061_69da                             ; $69f3: $28 $e5

    xor c                                         ; $69f5: $a9
    ldh a, [$3c]                                  ; $69f6: $f0 $3c
    ld e, $08                                     ; $69f8: $1e $08
    ld c, $8a                                     ; $69fa: $0e $8a
    ld b, l                                       ; $69fc: $45
    ei                                            ; $69fd: $fb
    dec bc                                        ; $69fe: $0b
    ld l, l                                       ; $69ff: $6d
    and $39                                       ; $6a00: $e6 $39
    rst $10                                       ; $6a02: $d7
    halt                                          ; $6a03: $76
    ret                                           ; $6a04: $c9


    dec [hl]                                      ; $6a05: $35
    ld l, e                                       ; $6a06: $6b
    ld h, l                                       ; $6a07: $65
    ld l, b                                       ; $6a08: $68
    ld [hl], h                                    ; $6a09: $74
    ccf                                           ; $6a0a: $3f
    rst $30                                       ; $6a0b: $f7
    dec bc                                        ; $6a0c: $0b
    add a                                         ; $6a0d: $87
    jr jr_061_6a8a                                ; $6a0e: $18 $7a

    or a                                          ; $6a10: $b7
    or $1d                                        ; $6a11: $f6 $1d
    ld [hl], b                                    ; $6a13: $70
    add hl, de                                    ; $6a14: $19
    ld c, c                                       ; $6a15: $49
    ld c, l                                       ; $6a16: $4d
    or $24                                        ; $6a17: $f6 $24
    inc d                                         ; $6a19: $14
    di                                            ; $6a1a: $f3
    db $fd                                        ; $6a1b: $fd
    ld [bc], a                                    ; $6a1c: $02
    rlca                                          ; $6a1d: $07
    ld e, h                                       ; $6a1e: $5c
    ld b, [hl]                                    ; $6a1f: $46
    cp $5c                                        ; $6a20: $fe $5c
    ld c, h                                       ; $6a22: $4c
    ld c, c                                       ; $6a23: $49
    di                                            ; $6a24: $f3
    ld c, b                                       ; $6a25: $48
    and a                                         ; $6a26: $a7
    adc [hl]                                      ; $6a27: $8e
    ld e, $8c                                     ; $6a28: $1e $8c
    pop hl                                        ; $6a2a: $e1
    ld [hl], c                                    ; $6a2b: $71
    inc c                                         ; $6a2c: $0c
    push af                                       ; $6a2d: $f5
    sbc $01                                       ; $6a2e: $de $01
    sub a                                         ; $6a30: $97
    add hl, hl                                    ; $6a31: $29
    ld e, l                                       ; $6a32: $5d
    call nz, $a503                                ; $6a33: $c4 $03 $a5
    inc a                                         ; $6a36: $3c
    ld d, d                                       ; $6a37: $52
    xor a                                         ; $6a38: $af
    jp z, $f343                                   ; $6a39: $ca $43 $f3

    ld b, h                                       ; $6a3c: $44
    db $e3                                        ; $6a3d: $e3
    xor c                                         ; $6a3e: $a9
    add b                                         ; $6a3f: $80
    ld c, $89                                     ; $6a40: $0e $89
    rst $30                                       ; $6a42: $f7
    dec bc                                        ; $6a43: $0b
    ld l, l                                       ; $6a44: $6d
    and $39                                       ; $6a45: $e6 $39
    ld [hl], a                                    ; $6a47: $77
    ld h, h                                       ; $6a48: $64
    ld c, c                                       ; $6a49: $49
    xor b                                         ; $6a4a: $a8
    and $d4                                       ; $6a4b: $e6 $d4
    adc b                                         ; $6a4d: $88
    adc a                                         ; $6a4e: $8f
    cp h                                          ; $6a4f: $bc
    ld [hl], a                                    ; $6a50: $77
    dec e                                         ; $6a51: $1d
    xor h                                         ; $6a52: $ac
    xor d                                         ; $6a53: $aa
    rst $18                                       ; $6a54: $df
    daa                                           ; $6a55: $27
    call Call_000_2849                            ; $6a56: $cd $49 $28
    ld h, [hl]                                    ; $6a59: $66
    jp c, $772e                                   ; $6a5a: $da $2e $77

    inc c                                         ; $6a5d: $0c
    cp l                                          ; $6a5e: $bd

Call_061_6a5f:
    ei                                            ; $6a5f: $fb
    sbc $75                                       ; $6a60: $de $75
    or b                                          ; $6a62: $b0
    ld [$6aba], a                                 ; $6a63: $ea $ba $6a
    ld [hl], c                                    ; $6a66: $71
    ld a, [$017e]                                 ; $6a67: $fa $7e $01
    sub a                                         ; $6a6a: $97
    ld c, h                                       ; $6a6b: $4c
    ld a, l                                       ; $6a6c: $7d
    add hl, de                                    ; $6a6d: $19
    cp $81                                        ; $6a6e: $fe $81
    ld d, d                                       ; $6a70: $52
    ld e, [hl]                                    ; $6a71: $5e
    db $e3                                        ; $6a72: $e3
    and a                                         ; $6a73: $a7
    rst $20                                       ; $6a74: $e7
    adc b                                         ; $6a75: $88
    sbc l                                         ; $6a76: $9d
    db $fd                                        ; $6a77: $fd
    and e                                         ; $6a78: $a3
    rst $30                                       ; $6a79: $f7
    ld b, b                                       ; $6a7a: $40
    add hl, de                                    ; $6a7b: $19
    jp hl                                         ; $6a7c: $e9


    call nc, $02fe                                ; $6a7d: $d4 $fe $02
    rla                                           ; $6a80: $17
    or $ee                                        ; $6a81: $f6 $ee
    call c, Call_061_4503                         ; $6a83: $dc $03 $45
    ei                                            ; $6a86: $fb
    dec bc                                        ; $6a87: $0b
    ld d, a                                       ; $6a88: $57
    xor b                                         ; $6a89: $a8

jr_061_6a8a:
    xor a                                         ; $6a8a: $af
    and c                                         ; $6a8b: $a1
    ld c, l                                       ; $6a8c: $4d
    add l                                         ; $6a8d: $85
    ld h, a                                       ; $6a8e: $67
    adc a                                         ; $6a8f: $8f
    ld [hl], c                                    ; $6a90: $71
    adc a                                         ; $6a91: $8f
    ld h, l                                       ; $6a92: $65
    ld sp, $5725                                  ; $6a93: $31 $25 $57
    add hl, de                                    ; $6a96: $19
    ld a, d                                       ; $6a97: $7a
    rst $30                                       ; $6a98: $f7
    db $fd                                        ; $6a99: $fd
    ld [bc], a                                    ; $6a9a: $02
    db $ed                                        ; $6a9b: $ed
    adc $39                                       ; $6a9c: $ce $39
    add a                                         ; $6a9e: $87
    and $7b                                       ; $6a9f: $e6 $7b
    db $ed                                        ; $6aa1: $ed
    and c                                         ; $6aa2: $a1
    db $e3                                        ; $6aa3: $e3
    ld [hl], h                                    ; $6aa4: $74
    ld d, h                                       ; $6aa5: $54
    ld d, b                                       ; $6aa6: $50
    and $88                                       ; $6aa7: $e6 $88
    sbc l                                         ; $6aa9: $9d
    ld l, e                                       ; $6aaa: $6b
    bit 1, a                                      ; $6aab: $cb $4f
    inc [hl]                                      ; $6aad: $34
    inc l                                         ; $6aae: $2c
    sub h                                         ; $6aaf: $94
    ld e, l                                       ; $6ab0: $5d
    sub b                                         ; $6ab1: $90
    cp a                                          ; $6ab2: $bf
    pop de                                        ; $6ab3: $d1
    ldh a, [$fd]                                  ; $6ab4: $f0 $fd
    ld [bc], a                                    ; $6ab6: $02
    add a                                         ; $6ab7: $87
    ld b, h                                       ; $6ab8: $44
    xor a                                         ; $6ab9: $af
    dec bc                                        ; $6aba: $0b
    adc a                                         ; $6abb: $8f
    ld c, d                                       ; $6abc: $4a
    sub b                                         ; $6abd: $90
    ld b, d                                       ; $6abe: $42
    db $db                                        ; $6abf: $db
    inc bc                                        ; $6ac0: $03
    or d                                          ; $6ac1: $b2
    ld c, d                                       ; $6ac2: $4a
    ld b, l                                       ; $6ac3: $45
    db $d3                                        ; $6ac4: $d3
    add [hl]                                      ; $6ac5: $86
    and $39                                       ; $6ac6: $e6 $39
    ld b, a                                       ; $6ac8: $47
    ld a, [hl-]                                   ; $6ac9: $3a
    and a                                         ; $6aca: $a7
    ld c, e                                       ; $6acb: $4b
    pop af                                        ; $6acc: $f1
    ld c, $fe                                     ; $6acd: $0e $fe
    ld e, $05                                     ; $6acf: $1e $05
    call Call_000_2fea                            ; $6ad1: $cd $ea $2f
    add sp, $7d                                   ; $6ad4: $e8 $7d
    ld e, $7a                                     ; $6ad6: $1e $7a
    ld sp, $eef4                                  ; $6ad8: $31 $f4 $ee
    push bc                                       ; $6adb: $c5
    sub h                                         ; $6adc: $94
    db $f4                                        ; $6add: $f4
    db $fd                                        ; $6ade: $fd
    ld [bc], a                                    ; $6adf: $02
    ld d, a                                       ; $6ae0: $57
    rlca                                          ; $6ae1: $07
    ld h, d                                       ; $6ae2: $62
    call nz, $ef32                                ; $6ae3: $c4 $32 $ef
    ei                                            ; $6ae6: $fb
    cp [hl]                                       ; $6ae7: $be
    ld e, a                                       ; $6ae8: $5f
    sub a                                         ; $6ae9: $97
    scf                                           ; $6aea: $37
    ld l, c                                       ; $6aeb: $69
    ld b, e                                       ; $6aec: $43
    rst $20                                       ; $6aed: $e7
    sbc h                                         ; $6aee: $9c
    cp e                                          ; $6aef: $bb
    add h                                         ; $6af0: $84
    ld [hl], $d1                                  ; $6af1: $36 $d1
    rst $10                                       ; $6af3: $d7
    add sp, $10                                   ; $6af4: $e8 $10
    dec sp                                        ; $6af6: $3b
    add a                                         ; $6af7: $87
    adc $35                                       ; $6af8: $ce $35
    ld a, [hl]                                    ; $6afa: $7e
    rst $28                                       ; $6afb: $ef
    rra                                           ; $6afc: $1f
    xor l                                         ; $6afd: $ad
    db $fd                                        ; $6afe: $fd
    dec b                                         ; $6aff: $05
    db $ed                                        ; $6b00: $ed
    pop af                                        ; $6b01: $f1
    rst $00                                       ; $6b02: $c7
    ld b, l                                       ; $6b03: $45
    ld hl, $a1cd                                  ; $6b04: $21 $cd $a1
    db $ec                                        ; $6b07: $ec
    sub d                                         ; $6b08: $92
    pop de                                        ; $6b09: $d1
    sbc l                                         ; $6b0a: $9d
    db $d3                                        ; $6b0b: $d3
    pop de                                        ; $6b0c: $d1
    ld [de], a                                    ; $6b0d: $12
    add l                                         ; $6b0e: $85
    ld e, h                                       ; $6b0f: $5c
    dec c                                         ; $6b10: $0d
    or c                                          ; $6b11: $b1
    db $eb                                        ; $6b12: $eb
    rst $28                                       ; $6b13: $ef
    ld d, $af                                     ; $6b14: $16 $af
    push de                                       ; $6b16: $d5
    inc e                                         ; $6b17: $1c
    ld e, d                                       ; $6b18: $5a
    call nz, $c063                                ; $6b19: $c4 $63 $c0
    ld [hl], e                                    ; $6b1c: $73
    ld e, [hl]                                    ; $6b1d: $5e
    rst $10                                       ; $6b1e: $d7

jr_061_6b1f:
    ret nc                                        ; $6b1f: $d0

    ccf                                           ; $6b20: $3f

Jump_061_6b21:
    ld l, l                                       ; $6b21: $6d
    ld [hl], h                                    ; $6b22: $74
    sub a                                         ; $6b23: $97
    sub l                                         ; $6b24: $95
    xor $87                                       ; $6b25: $ee $87
    dec a                                         ; $6b27: $3d
    dec d                                         ; $6b28: $15
    ret nc                                        ; $6b29: $d0

    ld hl, $7cd1                                  ; $6b2a: $21 $d1 $7c
    rst $18                                       ; $6b2d: $df
    rst $30                                       ; $6b2e: $f7
    dec bc                                        ; $6b2f: $0b
    add a                                         ; $6b30: $87
    jr @+$7c                                      ; $6b31: $18 $7a

    or a                                          ; $6b33: $b7
    or $b5                                        ; $6b34: $f6 $b5
    sbc c                                         ; $6b36: $99
    reti                                          ; $6b37: $d9


    ld [hl], e                                    ; $6b38: $73
    adc $b2                                       ; $6b39: $ce $b2
    rst $18                                       ; $6b3b: $df
    db $e3                                        ; $6b3c: $e3
    sub b                                         ; $6b3d: $90
    dec e                                         ; $6b3e: $1d
    jp z, $ec42                                   ; $6b3f: $ca $42 $ec

Jump_061_6b42:
    db $e4                                        ; $6b42: $e4
    and h                                         ; $6b43: $a4
    and b                                         ; $6b44: $a0
    ld a, e                                       ; $6b45: $7b
    push af                                       ; $6b46: $f5
    cp l                                          ; $6b47: $bd
    inc de                                        ; $6b48: $13
    ld c, a                                       ; $6b49: $4f
    ld e, b                                       ; $6b4a: $58
    dec hl                                        ; $6b4b: $2b
    add b                                         ; $6b4c: $80
    ldh a, [$a2]                                  ; $6b4d: $f0 $a2
    db $fc                                        ; $6b4f: $fc
    cp e                                          ; $6b50: $bb
    jr c, jr_061_6b88                             ; $6b51: $38 $35

    ld d, c                                       ; $6b53: $51
    inc b                                         ; $6b54: $04
    add d                                         ; $6b55: $82
    ld hl, $ca17                                  ; $6b56: $21 $17 $ca
    inc l                                         ; $6b59: $2c
    xor e                                         ; $6b5a: $ab
    or c                                          ; $6b5b: $b1
    pop de                                        ; $6b5c: $d1
    ld a, c                                       ; $6b5d: $79
    rst $28                                       ; $6b5e: $ef
    add b                                         ; $6b5f: $80
    res 3, h                                      ; $6b60: $cb $9c
    xor e                                         ; $6b62: $ab
    and b                                         ; $6b63: $a0
    sub h                                         ; $6b64: $94
    ld [hl], e                                    ; $6b65: $73
    xor l                                         ; $6b66: $ad
    and $3e                                       ; $6b67: $e6 $3e
    rst $28                                       ; $6b69: $ef
    ld sp, hl                                     ; $6b6a: $f9
    ld hl, sp-$61                                 ; $6b6b: $f8 $9f
    ld e, l                                       ; $6b6d: $5d
    add hl, de                                    ; $6b6e: $19
    sbc [hl]                                      ; $6b6f: $9e
    jr z, jr_061_6b1f                             ; $6b70: $28 $ad

    ld e, c                                       ; $6b72: $59
    inc c                                         ; $6b73: $0c
    ld a, l                                       ; $6b74: $7d
    sub l                                         ; $6b75: $95
    jp nz, $b5ec                                  ; $6b76: $c2 $ec $b5

    ld [de], a                                    ; $6b79: $12
    ld [$cd5a], a                                 ; $6b7a: $ea $5a $cd
    pop de                                        ; $6b7d: $d1
    sbc l                                         ; $6b7e: $9d
    xor [hl]                                      ; $6b7f: $ae

Call_061_6b80:
    inc hl                                        ; $6b80: $23
    jp hl                                         ; $6b81: $e9


    sub h                                         ; $6b82: $94
    sbc $1a                                       ; $6b83: $de $1a
    db $ec                                        ; $6b85: $ec
    add hl, bc                                    ; $6b86: $09
    ld e, c                                       ; $6b87: $59

jr_061_6b88:
    inc l                                         ; $6b88: $2c
    cp e                                          ; $6b89: $bb
    rst $28                                       ; $6b8a: $ef
    ld a, e                                       ; $6b8b: $7b
    adc a                                         ; $6b8c: $8f
    ld [hl], c                                    ; $6b8d: $71
    sbc a                                         ; $6b8e: $9f
    ld d, a                                       ; $6b8f: $57
    xor b                                         ; $6b90: $a8
    jp hl                                         ; $6b91: $e9


jr_061_6b92:
    and l                                         ; $6b92: $a5
    add l                                         ; $6b93: $85
    rlca                                          ; $6b94: $07
    sub e                                         ; $6b95: $93
    rst $08                                       ; $6b96: $cf
    xor l                                         ; $6b97: $ad
    ret nz                                        ; $6b98: $c0

    db $ec                                        ; $6b99: $ec
    call nc, $c79f                                ; $6b9a: $d4 $9f $c7
    ld a, h                                       ; $6b9d: $7c
    cp a                                          ; $6b9e: $bf
    sub a                                         ; $6b9f: $97
    ld a, a                                       ; $6ba0: $7f
    ld l, [hl]                                    ; $6ba1: $6e
    dec b                                         ; $6ba2: $05
    ld h, [hl]                                    ; $6ba3: $66
    ld d, a                                       ; $6ba4: $57
    push af                                       ; $6ba5: $f5
    dec de                                        ; $6ba6: $1b
    ld h, [hl]                                    ; $6ba7: $66
    db $ed                                        ; $6ba8: $ed
    cpl                                           ; $6ba9: $2f
    rst $10                                       ; $6baa: $d7
    ld b, [hl]                                    ; $6bab: $46
    jp c, $875f                                   ; $6bac: $da $5f $87

    cp h                                          ; $6baf: $bc
    jp c, $e7dc                                   ; $6bb0: $da $dc $e7

    xor c                                         ; $6bb3: $a9
    ldh a, [$3c]                                  ; $6bb4: $f0 $3c
    ld e, $43                                     ; $6bb6: $1e $43
    ld l, a                                       ; $6bb8: $6f
    db $fc                                        ; $6bb9: $fc
    ld [c], a                                     ; $6bba: $e2
    or l                                          ; $6bbb: $b5
    sbc d                                         ; $6bbc: $9a
    and e                                         ; $6bbd: $a3
    dec sp                                        ; $6bbe: $3b
    ld e, l                                       ; $6bbf: $5d
    ld d, a                                       ; $6bc0: $57
    ld b, e                                       ; $6bc1: $43
    db $ec                                        ; $6bc2: $ec
    ld a, [$efbb]                                 ; $6bc3: $fa $bb $ef
    rla                                           ; $6bc6: $17
    add a                                         ; $6bc7: $87
    sbc d                                         ; $6bc8: $9a
    ld [hl], e                                    ; $6bc9: $73
    ld c, $cd                                     ; $6bca: $0e $cd
    sub e                                         ; $6bcc: $93

jr_061_6bcd:
    and b                                         ; $6bcd: $a0
    or h                                          ; $6bce: $b4
    rst $28                                       ; $6bcf: $ef
    call nz, $d613                                ; $6bd0: $c4 $13 $d6
    ld a, [bc]                                    ; $6bd3: $0a
    jr nz, jr_061_6b92                            ; $6bd4: $20 $bc

    jr z, jr_061_6c17                             ; $6bd6: $28 $3f

    daa                                           ; $6bd8: $27
    ld b, l                                       ; $6bd9: $45
    add hl, hl                                    ; $6bda: $29
    rst $10                                       ; $6bdb: $d7

Call_061_6bdc:
    ld e, l                                       ; $6bdc: $5d
    sbc h                                         ; $6bdd: $9c
    sbc d                                         ; $6bde: $9a
    jr z, jr_061_6be3                             ; $6bdf: $28 $02

    pop bc                                        ; $6be1: $c1
    sub b                                         ; $6be2: $90

jr_061_6be3:
    rst $30                                       ; $6be3: $f7
    xor [hl]                                      ; $6be4: $ae
    add c                                         ; $6be5: $81
    sbc $f8                                       ; $6be6: $de $f8
    push bc                                       ; $6be8: $c5
    ld h, e                                       ; $6be9: $63
    add sp, -$55                                  ; $6bea: $e8 $ab
    ld hl, $fd76                                  ; $6bec: $21 $76 $fd
    db $dd                                        ; $6bef: $dd
    ld [c], a                                     ; $6bf0: $e2
    ei                                            ; $6bf1: $fb
    dec b                                         ; $6bf2: $05
    db $ed                                        ; $6bf3: $ed
    ccf                                           ; $6bf4: $3f
    add a                                         ; $6bf5: $87
    ld a, [$5d22]                                 ; $6bf6: $fa $22 $5d
    ret nc                                        ; $6bf9: $d0

    inc a                                         ; $6bfa: $3c
    res 3, [hl]                                   ; $6bfb: $cb $9e
    ld h, $7a                                     ; $6bfd: $26 $7a
    sbc a                                         ; $6bff: $9f
    rla                                           ; $6c00: $17
    dec [hl]                                      ; $6c01: $35
    rla                                           ; $6c02: $17
    ld a, l                                       ; $6c03: $7d
    ld e, [hl]                                    ; $6c04: $5e
    xor e                                         ; $6c05: $ab
    cp c                                          ; $6c06: $b9
    ld [hl], $ef                                  ; $6c07: $36 $ef
    ld a, [hl-]                                   ; $6c09: $3a
    xor b                                         ; $6c0a: $a8
    xor [hl]                                      ; $6c0b: $ae
    dec sp                                        ; $6c0c: $3b
    call nz, Call_061_7396                        ; $6c0d: $c4 $96 $73
    ld e, [hl]                                    ; $6c10: $5e
    sub a                                         ; $6c11: $97
    rra                                           ; $6c12: $1f
    daa                                           ; $6c13: $27

jr_061_6c14:
    rst $00                                       ; $6c14: $c7
    adc c                                         ; $6c15: $89
    jp hl                                         ; $6c16: $e9


jr_061_6c17:
    cp e                                          ; $6c17: $bb
    rst $28                                       ; $6c18: $ef
    ld a, e                                       ; $6c19: $7b
    rlca                                          ; $6c1a: $07
    ld e, h                                       ; $6c1b: $5c
    and [hl]                                      ; $6c1c: $a6
    adc [hl]                                      ; $6c1d: $8e
    ld d, e                                       ; $6c1e: $53
    rst $00                                       ; $6c1f: $c7
    xor c                                         ; $6c20: $a9
    cpl                                           ; $6c21: $2f
    inc bc                                        ; $6c22: $03
    and l                                         ; $6c23: $a5
    ld a, h                                       ; $6c24: $7c
    rst $18                                       ; $6c25: $df
    rst $30                                       ; $6c26: $f7
    dec bc                                        ; $6c27: $0b
    add a                                         ; $6c28: $87
    sbc d                                         ; $6c29: $9a
    adc e                                         ; $6c2a: $8b
    ld b, d                                       ; $6c2b: $42
    ld [hl-], a                                   ; $6c2c: $32
    and l                                         ; $6c2d: $a5
    rst $28                                       ; $6c2e: $ef
    add c                                         ; $6c2f: $81
    ld [hl-], a                                   ; $6c30: $32
    jr jr_061_6bcd                                ; $6c31: $18 $9a

    rst $30                                       ; $6c33: $f7
    add b                                         ; $6c34: $80
    ld h, b                                       ; $6c35: $60
    ld h, l                                       ; $6c36: $65
    db $d3                                        ; $6c37: $d3
    ld b, [hl]                                    ; $6c38: $46
    add $21                                       ; $6c39: $c6 $21
    pop af                                        ; $6c3b: $f1
    res 3, [hl]                                   ; $6c3c: $cb $9e
    cpl                                           ; $6c3e: $2f
    ld d, e                                       ; $6c3f: $53
    pop hl                                        ; $6c40: $e1
    ld a, c                                       ; $6c41: $79
    sbc h                                         ; $6c42: $9c
    adc e                                         ; $6c43: $8b
    ld b, d                                       ; $6c44: $42
    ld [hl], $60                                  ; $6c45: $36 $60
    ld [$d5e2], sp                                ; $6c47: $08 $e2 $d5
    and a                                         ; $6c4a: $a7
    cp c                                          ; $6c4b: $b9
    rst $20                                       ; $6c4c: $e7
    rla                                           ; $6c4d: $17
    xor b                                         ; $6c4e: $a8
    jp z, Jump_000_288b                           ; $6c4f: $ca $8b $28

    dec e                                         ; $6c52: $1d
    sbc l                                         ; $6c53: $9d
    rst $30                                       ; $6c54: $f7
    dec bc                                        ; $6c55: $0b
    rlca                                          ; $6c56: $07
    adc a                                         ; $6c57: $8f
    ld a, e                                       ; $6c58: $7b
    adc [hl]                                      ; $6c59: $8e
    ld a, e                                       ; $6c5a: $7b
    inc l                                         ; $6c5b: $2c
    ld b, e                                       ; $6c5c: $43
    di                                            ; $6c5d: $f3
    ld h, d                                       ; $6c5e: $62
    add sp, -$23                                  ; $6c5f: $e8 $dd
    adc e                                         ; $6c61: $8b
    add hl, hl                                    ; $6c62: $29
    jp hl                                         ; $6c63: $e9


    ld b, l                                       ; $6c64: $45
    rst $00                                       ; $6c65: $c7
    ld b, l                                       ; $6c66: $45
    rst $00                                       ; $6c67: $c7
    ld b, l                                       ; $6c68: $45
    ld hl, $8829                                  ; $6c69: $21 $29 $88
    ld c, [hl]                                    ; $6c6c: $4e
    cp b                                          ; $6c6d: $b8
    rst $28                                       ; $6c6e: $ef
    ei                                            ; $6c6f: $fb
    dec b                                         ; $6c70: $05
    sub a                                         ; $6c71: $97
    ld a, l                                       ; $6c72: $7d
    ld e, h                                       ; $6c73: $5c
    xor b                                         ; $6c74: $a8
    db $e3                                        ; $6c75: $e3
    rst $18                                       ; $6c76: $df
    cp l                                          ; $6c77: $bd
    ld a, [$c79f]                                 ; $6c78: $fa $9f $c7
    ld [hl-], a                                   ; $6c7b: $32
    jr z, jr_061_6c14                             ; $6c7c: $28 $96

    ld c, c                                       ; $6c7e: $49
    inc sp                                        ; $6c7f: $33
    add a                                         ; $6c80: $87
    ld a, [$9fc8]                                 ; $6c81: $fa $c8 $9f
    ld l, e                                       ; $6c84: $6b
    cp b                                          ; $6c85: $b8
    or d                                          ; $6c86: $b2
    rra                                           ; $6c87: $1f
    ld e, $42                                     ; $6c88: $1e $42
    ld e, c                                       ; $6c8a: $59
    inc d                                         ; $6c8b: $14
    ld [hl], d                                    ; $6c8c: $72
    ld h, h                                       ; $6c8d: $64
    db $ec                                        ; $6c8e: $ec
    ld h, a                                       ; $6c8f: $67
    xor b                                         ; $6c90: $a8
    cpl                                           ; $6c91: $2f
    add [hl]                                      ; $6c92: $86
    cp [hl]                                       ; $6c93: $be
    sbc b                                         ; $6c94: $98
    sub d                                         ; $6c95: $92
    ld e, [hl]                                    ; $6c96: $5e
    rrca                                          ; $6c97: $0f
    sbc d                                         ; $6c98: $9a
    rst $18                                       ; $6c99: $df
    rla                                           ; $6c9a: $17
    ld h, d                                       ; $6c9b: $62
    ld h, a                                       ; $6c9c: $67
    inc d                                         ; $6c9d: $14
    ld a, [c]                                     ; $6c9e: $f2
    ld a, [hl]                                    ; $6c9f: $7e
    ld bc, $eb17                                  ; $6ca0: $01 $17 $eb
    ld e, b                                       ; $6ca3: $58
    sub l                                         ; $6ca4: $95
    ld a, e                                       ; $6ca5: $7b
    adc b                                         ; $6ca6: $88
    rst $30                                       ; $6ca7: $f7
    ld a, c                                       ; $6ca8: $79
    add sp, -$7f                                  ; $6ca9: $e8 $81
    ld d, d                                       ; $6cab: $52
    ld e, [hl]                                    ; $6cac: $5e
    ld l, l                                       ; $6cad: $6d
    ld l, $d4                                     ; $6cae: $2e $d4
    ei                                            ; $6cb0: $fb
    dec b                                         ; $6cb1: $05
    db $ed                                        ; $6cb2: $ed
    pop af                                        ; $6cb3: $f1
    rst $00                                       ; $6cb4: $c7
    add hl, sp                                    ; $6cb5: $39
    rst $10                                       ; $6cb6: $d7
    and $5d                                       ; $6cb7: $e6 $5d
    rlca                                          ; $6cb9: $07
    push de                                       ; $6cba: $d5
    ld [hl], l                                    ; $6cbb: $75
    add a                                         ; $6cbc: $87
    ret c                                         ; $6cbd: $d8

    ld [hl], d                                    ; $6cbe: $72
    adc $0b                                       ; $6cbf: $ce $0b
    rlca                                          ; $6cc1: $07
    ld e, h                                       ; $6cc2: $5c
    ld d, $1b                                     ; $6cc3: $16 $1b
    add a                                         ; $6cc5: $87
    and $81                                       ; $6cc6: $e6 $81
    ld d, d                                       ; $6cc8: $52
    and [hl]                                      ; $6cc9: $a6
    db $ed                                        ; $6cca: $ed
    or c                                          ; $6ccb: $b1
    db $ec                                        ; $6ccc: $ec
    sub b                                         ; $6ccd: $90
    db $fc                                        ; $6cce: $fc
    sub [hl]                                      ; $6ccf: $96
    rla                                           ; $6cd0: $17
    ld b, e                                       ; $6cd1: $43
    ld e, a                                       ; $6cd2: $5f
    ld [hl], c                                    ; $6cd3: $71
    adc d                                         ; $6cd4: $8a
    ld d, a                                       ; $6cd5: $57
    sbc c                                         ; $6cd6: $99
    ld c, [hl]                                    ; $6cd7: $4e
    jp hl                                         ; $6cd8: $e9


    ld e, $5a                                     ; $6cd9: $1e $5a
    or h                                          ; $6cdb: $b4
    cp a                                          ; $6cdc: $bf
    rla                                           ; $6cdd: $17
    ld b, c                                       ; $6cde: $41
    daa                                           ; $6cdf: $27
    ld c, d                                       ; $6ce0: $4a
    ld l, d                                       ; $6ce1: $6a
    ld e, a                                       ; $6ce2: $5f
    ei                                            ; $6ce3: $fb
    ld a, a                                       ; $6ce4: $7f
    ld b, [hl]                                    ; $6ce5: $46
    cp $18                                        ; $6ce6: $fe $18
    cp l                                          ; $6ce8: $bd
    jr jr_061_6d41                                ; $6ce9: $18 $56

    cp d                                          ; $6ceb: $ba
    rra                                           ; $6cec: $1f
    cp [hl]                                       ; $6ced: $be
    ld e, a                                       ; $6cee: $5f
    db $ed                                        ; $6cef: $ed
    ld a, d                                       ; $6cf0: $7a
    ld [hl-], a                                   ; $6cf1: $32
    inc d                                         ; $6cf2: $14
    sbc $7d                                       ; $6cf3: $de $7d
    rst $18                                       ; $6cf5: $df
    add e                                         ; $6cf6: $83
    ld d, l                                       ; $6cf7: $55
    ld b, l                                       ; $6cf8: $45
    rst $10                                       ; $6cf9: $d7
    ei                                            ; $6cfa: $fb
    db $fd                                        ; $6cfb: $fd
    ld [bc], a                                    ; $6cfc: $02
    db $ed                                        ; $6cfd: $ed
    rst $00                                       ; $6cfe: $c7
    or l                                          ; $6cff: $b5
    rra                                           ; $6d00: $1f
    rst $10                                       ; $6d01: $d7
    cp $33                                        ; $6d02: $fe $33
    dec [hl]                                      ; $6d04: $35
    cp e                                          ; $6d05: $bb
    rst $28                                       ; $6d06: $ef
    ld a, e                                       ; $6d07: $7b
    push af                                       ; $6d08: $f5
    cp b                                          ; $6d09: $b8
    ld a, d                                       ; $6d0a: $7a
    ld e, h                                       ; $6d0b: $5c
    or l                                          ; $6d0c: $b5
    or $17                                        ; $6d0d: $f6 $17
    ld l, l                                       ; $6d0f: $6d
    ld a, [$7a1a]                                 ; $6d10: $fa $1a $7a
    and d                                         ; $6d13: $a2
    rla                                           ; $6d14: $17
    ld b, e                                       ; $6d15: $43
    ld a, [hl+]                                   ; $6d16: $2a
    ld [hl], a                                    ; $6d17: $77
    jr z, jr_061_6d1d                             ; $6d18: $28 $03

    and l                                         ; $6d1a: $a5
    cp h                                          ; $6d1b: $bc
    ld b, d                                       ; $6d1c: $42

jr_061_6d1d:
    ld c, l                                       ; $6d1d: $4d
    xor a                                         ; $6d1e: $af
    inc h                                         ; $6d1f: $24
    ret z                                         ; $6d20: $c8

    ld e, $e3                                     ; $6d21: $1e $e3
    ret z                                         ; $6d23: $c8

    jr c, jr_061_6d4a                             ; $6d24: $38 $24

    ld a, [hl]                                    ; $6d26: $7e
    reti                                          ; $6d27: $d9


    ld d, l                                       ; $6d28: $55
    ld a, [hl-]                                   ; $6d29: $3a
    ld h, h                                       ; $6d2a: $64
    cp d                                          ; $6d2b: $ba
    rst $30                                       ; $6d2c: $f7
    pop af                                        ; $6d2d: $f1
    rst $28                                       ; $6d2e: $ef

Call_061_6d2f:
    adc $fb                                       ; $6d2f: $ce $fb
    dec b                                         ; $6d31: $05
    sub a                                         ; $6d32: $97
    sbc e                                         ; $6d33: $9b
    xor [hl]                                      ; $6d34: $ae
    ld a, l                                       ; $6d35: $7d
    add a                                         ; $6d36: $87
    xor h                                         ; $6d37: $ac
    db $fd                                        ; $6d38: $fd
    dec b                                         ; $6d39: $05

jr_061_6d3a:
    rst $10                                       ; $6d3a: $d7
    and d                                         ; $6d3b: $a2
    or $1d                                        ; $6d3c: $f6 $1d
    ld [hl], b                                    ; $6d3e: $70
    ld e, c                                       ; $6d3f: $59
    inc c                                         ; $6d40: $0c

jr_061_6d41:
    ld a, l                                       ; $6d41: $7d
    and h                                         ; $6d42: $a4
    ld a, e                                       ; $6d43: $7b
    ld [hl], a                                    ; $6d44: $77
    ld a, d                                       ; $6d45: $7a

jr_061_6d46:
    sub l                                         ; $6d46: $95
    sbc e                                         ; $6d47: $9b
    dec bc                                        ; $6d48: $0b
    or c                                          ; $6d49: $b1

jr_061_6d4a:
    inc sp                                        ; $6d4a: $33
    ld a, [bc]                                    ; $6d4b: $0a
    cp c                                          ; $6d4c: $b9
    adc e                                         ; $6d4d: $8b
    and b                                         ; $6d4e: $a0
    inc de                                        ; $6d4f: $13
    dec h                                         ; $6d50: $25
    rla                                           ; $6d51: $17
    and l                                         ; $6d52: $a5
    sbc a                                         ; $6d53: $9f
    jr z, jr_061_6d3a                             ; $6d54: $28 $e4

    ret nc                                        ; $6d56: $d0

    inc a                                         ; $6d57: $3c
    sbc l                                         ; $6d58: $9d
    call nc, $b5a4                                ; $6d59: $d4 $a4 $b5
    cp a                                          ; $6d5c: $bf
    db $ed                                        ; $6d5d: $ed
    ld [hl], c                                    ; $6d5e: $71

Jump_061_6d5f:
    ret z                                         ; $6d5f: $c8

    jr z, jr_061_6d46                             ; $6d60: $28 $e4

    ret z                                         ; $6d62: $c8

    ret nc                                        ; $6d63: $d0

    pop de                                        ; $6d64: $d1
    add hl, sp                                    ; $6d65: $39
    db $f4                                        ; $6d66: $f4
    ret nc                                        ; $6d67: $d0

    cp h                                          ; $6d68: $bc
    daa                                           ; $6d69: $27
    ld c, b                                       ; $6d6a: $48
    ld h, l                                       ; $6d6b: $65
    rst $20                                       ; $6d6c: $e7
    ld b, b                                       ; $6d6d: $40
    ret nc                                        ; $6d6e: $d0

    or l                                          ; $6d6f: $b5
    ld b, l                                       ; $6d70: $45
    ret                                           ; $6d71: $c9


    inc [hl]                                      ; $6d72: $34
    xor a                                         ; $6d73: $af
    push de                                       ; $6d74: $d5
    ld e, h                                       ; $6d75: $5c
    ld d, l                                       ; $6d76: $55
    and c                                         ; $6d77: $a1
    ld e, e                                       ; $6d78: $5b
    adc $79                                       ; $6d79: $ce $79

Call_061_6d7b:
    ld bc, $9a87                                  ; $6d7b: $01 $87 $9a
    cp e                                          ; $6d7e: $bb
    ld h, h                                       ; $6d7f: $64
    and b                                         ; $6d80: $a0
    sub h                                         ; $6d81: $94
    rla                                           ; $6d82: $17

jr_061_6d83:
    db $fd                                        ; $6d83: $fd
    adc [hl]                                      ; $6d84: $8e
    db $dd                                        ; $6d85: $dd
    rst $08                                       ; $6d86: $cf
    ld h, e                                       ; $6d87: $63
    add hl, de                                    ; $6d88: $19
    ld e, d                                       ; $6d89: $5a
    ld d, [hl]                                    ; $6d8a: $56
    add hl, sp                                    ; $6d8b: $39
    ldh [rSCY], a                                 ; $6d8c: $e0 $42
    ld l, h                                       ; $6d8e: $6c
    ld l, c                                       ; $6d8f: $69
    dec [hl]                                      ; $6d90: $35
    rst $28                                       ; $6d91: $ef
    or l                                          ; $6d92: $b5
    ld e, c                                       ; $6d93: $59
    ld d, $87                                     ; $6d94: $16 $87
    jp nz, $99ce                                  ; $6d96: $c2 $ce $99

    rst $20                                       ; $6d99: $e7
    sbc $9d                                       ; $6d9a: $de $9d
    ei                                            ; $6d9c: $fb
    add d                                         ; $6d9d: $82
    and $fb                                       ; $6d9e: $e6 $fb
    dec b                                         ; $6da0: $05
    rlca                                          ; $6da1: $07
    ld e, h                                       ; $6da2: $5c
    add $d4                                       ; $6da3: $c6 $d4
    ld e, h                                       ; $6da5: $5c
    ld c, h                                       ; $6da6: $4c
    ld b, c                                       ; $6da7: $41
    db $f4                                        ; $6da8: $f4
    ld e, d                                       ; $6da9: $5a
    call Call_000_1e7d                            ; $6daa: $cd $7d $1e
    ld e, d                                       ; $6dad: $5a
    sub $70                                       ; $6dae: $d6 $70
    inc e                                         ; $6db0: $1c
    ld a, [bc]                                    ; $6db1: $0a
    dec sp                                        ; $6db2: $3b
    rst $10                                       ; $6db3: $d7
    and $5d                                       ; $6db4: $e6 $5d
    rlca                                          ; $6db6: $07
    push de                                       ; $6db7: $d5
    ld [hl], l                                    ; $6db8: $75
    add a                                         ; $6db9: $87
    ret c                                         ; $6dba: $d8

    and d                                         ; $6dbb: $a2
    db $fd                                        ; $6dbc: $fd
    dec b                                         ; $6dbd: $05
    ld l, l                                       ; $6dbe: $6d
    ld h, [hl]                                    ; $6dbf: $66
    or $9c                                        ; $6dc0: $f6 $9c
    adc e                                         ; $6dc2: $8b
    ld a, [hl]                                    ; $6dc3: $7e
    halt                                          ; $6dc4: $76
    jr z, jr_061_6d83                             ; $6dc5: $28 $bc

    ld d, b                                       ; $6dc7: $50
    add [hl]                                      ; $6dc8: $86
    and $39                                       ; $6dc9: $e6 $39
    rla                                           ; $6dcb: $17
    dec de                                        ; $6dcc: $1b
    rst $30                                       ; $6dcd: $f7
    ld a, c                                       ; $6dce: $79
    adc l                                         ; $6dcf: $8d
    ld c, $b1                                     ; $6dd0: $0e $b1
    ld d, a                                       ; $6dd2: $57
    dec l                                         ; $6dd3: $2d
    ld a, h                                       ; $6dd4: $7c
    rst $28                                       ; $6dd5: $ef
    or d                                          ; $6dd6: $b2
    adc a                                         ; $6dd7: $8f
    dec bc                                        ; $6dd8: $0b
    ld [hl], l                                    ; $6dd9: $75
    and l                                         ; $6dda: $a5
    add hl, sp                                    ; $6ddb: $39
    jp nc, Jump_061_50b2                          ; $6ddc: $d2 $b2 $50

    ld d, [hl]                                    ; $6ddf: $56
    cp l                                          ; $6de0: $bd
    ldh a, [$ac]                                  ; $6de1: $f0 $ac
    call $8bb2                                    ; $6de3: $cd $b2 $8b
    adc h                                         ; $6de6: $8c
    ld e, [hl]                                    ; $6de7: $5e
    db $db                                        ; $6de8: $db
    ld a, a                                       ; $6de9: $7f
    inc a                                         ; $6dea: $3c
    jr jr_061_6e47                                ; $6deb: $18 $5a

    sub $35                                       ; $6ded: $d6 $35
    push de                                       ; $6def: $d5
    ld c, c                                       ; $6df0: $49
    ld b, l                                       ; $6df1: $45
    ld c, a                                       ; $6df2: $4f
    pop de                                        ; $6df3: $d1
    ld b, e                                       ; $6df4: $43
    rst $30                                       ; $6df5: $f7
    sbc h                                         ; $6df6: $9c
    ld d, e                                       ; $6df7: $53
    pop hl                                        ; $6df8: $e1
    ld a, c                                       ; $6df9: $79
    call z, $e863                                 ; $6dfa: $cc $63 $e8
    adc l                                         ; $6dfd: $8d
    ld e, a                                       ; $6dfe: $5f
    ld a, h                                       ; $6dff: $7c
    cp a                                          ; $6e00: $bf
    db $ed                                        ; $6e01: $ed
    ld [hl], c                                    ; $6e02: $71
    ret z                                         ; $6e03: $c8

    pop bc                                        ; $6e04: $c1
    ld a, [hl]                                    ; $6e05: $7e
    adc a                                         ; $6e06: $8f
    sbc l                                         ; $6e07: $9d
    ld l, b                                       ; $6e08: $68
    add hl, de                                    ; $6e09: $19
    ld sp, hl                                     ; $6e0a: $f9
    ld [hl], e                                    ; $6e0b: $73
    sub a                                         ; $6e0c: $97
    inc l                                         ; $6e0d: $2c
    and [hl]                                      ; $6e0e: $a6
    and h                                         ; $6e0f: $a4
    ld sp, hl                                     ; $6e10: $f9
    sbc h                                         ; $6e11: $9c
    rla                                           ; $6e12: $17
    ld l, l                                       ; $6e13: $6d
    and $a9                                       ; $6e14: $e6 $a9
    cpl                                           ; $6e16: $2f
    adc e                                         ; $6e17: $8b
    add hl, hl                                    ; $6e18: $29
    jp hl                                         ; $6e19: $e9


    ld [hl], l                                    ; $6e1a: $75
    jr z, jr_061_6e4b                             ; $6e1b: $28 $2e

    sbc d                                         ; $6e1d: $9a
    adc [hl]                                      ; $6e1e: $8e
    ld d, b                                       ; $6e1f: $50
    ld e, b                                       ; $6e20: $58
    ei                                            ; $6e21: $fb
    ld l, $4e                                     ; $6e22: $2e $4e
    xor b                                         ; $6e24: $a8
    and $d4                                       ; $6e25: $e6 $d4
    adc b                                         ; $6e27: $88

jr_061_6e28:
    or l                                          ; $6e28: $b5
    cp a                                          ; $6e29: $bf
    sub a                                         ; $6e2a: $97
    db $ec                                        ; $6e2b: $ec
    ld l, c                                       ; $6e2c: $69
    adc [hl]                                      ; $6e2d: $8e
    inc c                                         ; $6e2e: $0c
    dec e                                         ; $6e2f: $1d
    cp l                                          ; $6e30: $bd
    ret nc                                        ; $6e31: $d0

    jp c, $dc63                                   ; $6e32: $da $63 $dc

    rst $20                                       ; $6e35: $e7
    pop af                                        ; $6e36: $f1
    cpl                                           ; $6e37: $2f
    ld e, [hl]                                    ; $6e38: $5e
    ld l, l                                       ; $6e39: $6d
    ld [c], a                                     ; $6e3a: $e2
    sub a                                         ; $6e3b: $97
    ld c, c                                       ; $6e3c: $49
    jr z, @-$21                                   ; $6e3d: $28 $dd

    db $e3                                        ; $6e3f: $e3
    ld h, [hl]                                    ; $6e40: $66
    jp $8a1d                                      ; $6e41: $c3 $1d $8a


    ld b, a                                       ; $6e44: $47
    sub h                                         ; $6e45: $94
    db $fc                                        ; $6e46: $fc

jr_061_6e47:
    ld b, d                                       ; $6e47: $42
    call nc, $ef79                                ; $6e48: $d4 $79 $ef

jr_061_6e4b:
    adc d                                         ; $6e4b: $8a
    ld [hl-], a                                   ; $6e4c: $32
    pop de                                        ; $6e4d: $d1
    rla                                           ; $6e4e: $17
    ld b, e                                       ; $6e4f: $43
    rra                                           ; $6e50: $1f
    db $dd                                        ; $6e51: $dd
    ld h, l                                       ; $6e52: $65
    or b                                          ; $6e53: $b0
    ld l, d                                       ; $6e54: $6a
    add hl, hl                                    ; $6e55: $29
    or h                                          ; $6e56: $b4
    sub c                                         ; $6e57: $91
    ld sp, $5dd4                                  ; $6e58: $31 $d4 $5d
    ld [hl-], a                                   ; $6e5b: $32
    ld d, b                                       ; $6e5c: $50
    jp z, Jump_061_7f23                           ; $6e5d: $ca $23 $7f

    ld c, [hl]                                    ; $6e60: $4e
    ld b, d                                       ; $6e61: $42
    ld sp, $9e0f                                  ; $6e62: $31 $0f $9e
    add b                                         ; $6e65: $80
    ld b, e                                       ; $6e66: $43

jr_061_6e67:
    di                                            ; $6e67: $f3
    db $fd                                        ; $6e68: $fd
    ld [bc], a                                    ; $6e69: $02
    ld l, l                                       ; $6e6a: $6d
    and $c5                                       ; $6e6b: $e6 $c5
    ret nc                                        ; $6e6d: $d0

    ld b, a                                       ; $6e6e: $47
    ld [hl], a                                    ; $6e6f: $77
    ld e, c                                       ; $6e70: $59
    jr z, jr_061_6e28                             ; $6e71: $28 $b5

    ld a, c                                       ; $6e73: $79
    rst $28                                       ; $6e74: $ef
    sbc d                                         ; $6e75: $9a
    ld [hl], h                                    ; $6e76: $74
    inc e                                         ; $6e77: $1c
    ld [hl], d                                    ; $6e78: $72
    ld [$40cb], a                                 ; $6e79: $ea $cb $40
    add hl, hl                                    ; $6e7c: $29
    xor a                                         ; $6e7d: $af
    add [hl]                                      ; $6e7e: $86
    ret c                                         ; $6e7f: $d8

    or h                                          ; $6e80: $b4
    sub c                                         ; $6e81: $91
    ld sp, $d1d4                                  ; $6e82: $31 $d4 $d1
    ld e, l                                       ; $6e85: $5d
    ld b, $4a                                     ; $6e86: $06 $4a
    ld a, c                                       ; $6e88: $79
    adc $a1                                       ; $6e89: $ce $a1
    di                                            ; $6e8b: $f3
    ld a, [hl]                                    ; $6e8c: $7e
    ld bc, $c1d7                                  ; $6e8d: $01 $d7 $c1
    ld a, [de]                                    ; $6e90: $1a
    ld a, d                                       ; $6e91: $7a
    and d                                         ; $6e92: $a2
    rla                                           ; $6e93: $17
    add l                                         ; $6e94: $85
    ld h, h                                       ; $6e95: $64
    ld c, d                                       ; $6e96: $4a
    rst $28                                       ; $6e97: $ef
    sbc $41                                       ; $6e98: $de $41
    and d                                         ; $6e9a: $a2
    rla                                           ; $6e9b: $17
    rlca                                          ; $6e9c: $07
    ld sp, hl                                     ; $6e9d: $f9
    push hl                                       ; $6e9e: $e5
    rst $30                                       ; $6e9f: $f7
    cp [hl]                                       ; $6ea0: $be
    ldh a, [$ec]                                  ; $6ea1: $f0 $ec
    sub b                                         ; $6ea3: $90
    db $fc                                        ; $6ea4: $fc
    sub [hl]                                      ; $6ea5: $96
    rst $28                                       ; $6ea6: $ef
    rla                                           ; $6ea7: $17
    db $ed                                        ; $6ea8: $ed
    cp d                                          ; $6ea9: $ba
    inc l                                         ; $6eaa: $2c
    add [hl]                                      ; $6eab: $86
    cp [hl]                                       ; $6eac: $be
    ld a, [bc]                                    ; $6ead: $0a
    ld c, d                                       ; $6eae: $4a
    add hl, sp                                    ; $6eaf: $39
    ld a, c                                       ; $6eb0: $79
    and b                                         ; $6eb1: $a0
    sub h                                         ; $6eb2: $94
    rst $00                                       ; $6eb3: $c7
    add hl, de                                    ; $6eb4: $19
    ld d, $ea                                     ; $6eb5: $16 $ea
    cp l                                          ; $6eb7: $bd
    dec hl                                        ; $6eb8: $2b
    jp z, $18c8                                   ; $6eb9: $ca $c8 $18

    ld [$5d48], a                                 ; $6ebc: $ea $48 $5d
    ld d, [hl]                                    ; $6ebf: $56
    add sp, $21                                   ; $6ec0: $e8 $21
    pop de                                        ; $6ec2: $d1
    xor e                                         ; $6ec3: $ab
    call $d0c5                                    ; $6ec4: $cd $c5 $d0
    cp e                                          ; $6ec7: $bb
    rla                                           ; $6ec8: $17
    jp Jump_000_1fc8                              ; $6ec9: $c3 $c8 $1f


    ld a, e                                       ; $6ecc: $7b
    jr nz, jr_061_6e67                            ; $6ecd: $20 $98

    call nc, $31e7                                ; $6ecf: $d4 $e7 $31
    rst $28                                       ; $6ed2: $ef
    di                                            ; $6ed3: $f3
    ld h, d                                       ; $6ed4: $62
    ld e, b                                       ; $6ed5: $58
    push hl                                       ; $6ed6: $e5
    inc [hl]                                      ; $6ed7: $34
    dec a                                         ; $6ed8: $3d
    ld [hl], d                                    ; $6ed9: $72
    ld l, $75                                     ; $6eda: $2e $75
    ld b, c                                       ; $6edc: $41
    ld e, [hl]                                    ; $6edd: $5e
    xor e                                         ; $6ede: $ab
    cp c                                          ; $6edf: $b9
    ld a, [c]                                     ; $6ee0: $f2
    and l                                         ; $6ee1: $a5
    ld e, b                                       ; $6ee2: $58
    cp h                                          ; $6ee3: $bc
    ldh a, [$4c]                                  ; $6ee4: $f0 $4c
    ld a, $b3                                     ; $6ee6: $3e $b3
    push hl                                       ; $6ee8: $e5
    ld a, [hl]                                    ; $6ee9: $7e
    ld bc, $9b07                                  ; $6eea: $01 $07 $9b
    ld d, l                                       ; $6eed: $55
    ld sp, hl                                     ; $6eee: $f9
    sbc $41                                       ; $6eef: $de $41
    bit 4, d                                      ; $6ef1: $cb $62
    ret c                                         ; $6ef3: $d8

    db $d3                                        ; $6ef4: $d3
    inc e                                         ; $6ef5: $1c
    cp $15                                        ; $6ef6: $fe $15
    ld l, d                                       ; $6ef8: $6a
    ld a, d                                       ; $6ef9: $7a
    ld [de], a                                    ; $6efa: $12
    adc d                                         ; $6efb: $8a
    ld e, c                                       ; $6efc: $59
    ei                                            ; $6efd: $fb
    dec bc                                        ; $6efe: $0b
    rst $10                                       ; $6eff: $d7
    pop bc                                        ; $6f00: $c1
    sbc [hl]                                      ; $6f01: $9e
    and $c8                                       ; $6f02: $e6 $c8
    rra                                           ; $6f04: $1f
    ld a, e                                       ; $6f05: $7b
    ld d, c                                       ; $6f06: $51
    ld [hl], a                                    ; $6f07: $77
    ld a, d                                       ; $6f08: $7a
    dec c                                         ; $6f09: $0d
    rst $00                                       ; $6f0a: $c7
    ld d, b                                       ; $6f0b: $50
    sbc l                                         ; $6f0c: $9d
    or h                                          ; $6f0d: $b4
    sub c                                         ; $6f0e: $91
    ld sp, $c5d4                                  ; $6f0f: $31 $d4 $c5
    or b                                          ; $6f12: $b0
    xor d                                         ; $6f13: $aa
    ld a, [hl]                                    ; $6f14: $7e
    ld e, a                                       ; $6f15: $5f
    adc b                                         ; $6f16: $88
    sbc l                                         ; $6f17: $9d
    dec c                                         ; $6f18: $0d
    rst $00                                       ; $6f19: $c7
    ld d, b                                       ; $6f1a: $50
    cp l                                          ; $6f1b: $bd
    add e                                         ; $6f1c: $83
    ld b, h                                       ; $6f1d: $44
    cpl                                           ; $6f1e: $2f
    ld c, $f2                                     ; $6f1f: $0e $f2
    set 5, a                                      ; $6f21: $cb $ef
    db $fd                                        ; $6f23: $fd
    sbc $75                                       ; $6f24: $de $75
    or b                                          ; $6f26: $b0
    and a                                         ; $6f27: $a7
    cp c                                          ; $6f28: $b9
    ld [$3d04], sp                                ; $6f29: $08 $04 $3d
    dec e                                         ; $6f2c: $1d
    rst $30                                       ; $6f2d: $f7
    and e                                         ; $6f2e: $a3
    sub c                                         ; $6f2f: $91
    pop af                                        ; $6f30: $f1
    rst $00                                       ; $6f31: $c7
    or l                                          ; $6f32: $b5
    ld a, c                                       ; $6f33: $79
    rst $10                                       ; $6f34: $d7
    ld b, c                                       ; $6f35: $41
    ld [hl], l                                    ; $6f36: $75
    db $dd                                        ; $6f37: $dd
    ld hl, $ccb6                                  ; $6f38: $21 $b6 $cc
    cp c                                          ; $6f3b: $b9
    jr z, @-$1a                                   ; $6f3c: $28 $e4

    inc h                                         ; $6f3e: $24
    inc d                                         ; $6f3f: $14
    di                                            ; $6f40: $f3
    db $fd                                        ; $6f41: $fd
    ld [bc], a                                    ; $6f42: $02
    rla                                           ; $6f43: $17
    rlca                                          ; $6f44: $07
    inc e                                         ; $6f45: $1c
    and b                                         ; $6f46: $a0
    rst $28                                       ; $6f47: $ef
    dec e                                         ; $6f48: $1d
    or h                                          ; $6f49: $b4
    xor h                                         ; $6f4a: $ac
    ld a, a                                       ; $6f4b: $7f
    ld e, h                                       ; $6f4c: $5c
    xor b                                         ; $6f4d: $a8
    adc e                                         ; $6f4e: $8b
    dec l                                         ; $6f4f: $2d
    db $ec                                        ; $6f50: $ec
    ld sp, $c1f4                                  ; $6f51: $31 $f4 $c1
    sbc [hl]                                      ; $6f54: $9e
    sub b                                         ; $6f55: $90
    push bc                                       ; $6f56: $c5
    ld [hl], d                                    ; $6f57: $72
    rst $28                                       ; $6f58: $ef
    add b                                         ; $6f59: $80
    set 1, b                                      ; $6f5a: $cb $c8
    sbc a                                         ; $6f5c: $9f
    adc e                                         ; $6f5d: $8b
    sbc d                                         ; $6f5e: $9a
    and $49                                       ; $6f5f: $e6 $49
    ld d, b                                       ; $6f61: $50
    xor e                                         ; $6f62: $ab
    dec l                                         ; $6f63: $2d
    adc d                                         ; $6f64: $8a
    jr nz, jr_061_6faf                            ; $6f65: $20 $48

    add hl, de                                    ; $6f67: $19
    ld c, h                                       ; $6f68: $4c
    ld a, $df                                     ; $6f69: $3e $df
    dec sp                                        ; $6f6b: $3b
    inc d                                         ; $6f6c: $14
    ld [c], a                                     ; $6f6d: $e2
    sub l                                         ; $6f6e: $95
    add b                                         ; $6f6f: $80
    ld c, h                                       ; $6f70: $4c
    ld e, e                                       ; $6f71: $5b
    ei                                            ; $6f72: $fb
    rst $08                                       ; $6f73: $cf
    call nc, Call_000_2fdc                        ; $6f74: $d4 $dc $2f
    add a                                         ; $6f77: $87
    ld b, d                                       ; $6f78: $42
    cp h                                          ; $6f79: $bc
    ld [de], a                                    ; $6f7a: $12
    sub b                                         ; $6f7b: $90
    ld l, c                                       ; $6f7c: $69
    cp e                                          ; $6f7d: $bb

jr_061_6f7e:
    ld a, [hl-]                                   ; $6f7e: $3a
    ret z                                         ; $6f7f: $c8

    db $fd                                        ; $6f80: $fd
    ld [bc], a                                    ; $6f81: $02
    sub a                                         ; $6f82: $97
    add [hl]                                      ; $6f83: $86
    add a                                         ; $6f84: $87
    or [hl]                                       ; $6f85: $b6
    jr jr_061_6f7e                                ; $6f86: $18 $f6

    inc [hl]                                      ; $6f88: $34
    rst $10                                       ; $6f89: $d7
    ld c, d                                       ; $6f8a: $4a
    ld l, d                                       ; $6f8b: $6a
    db $ec                                        ; $6f8c: $ec
    ld a, l                                       ; $6f8d: $7d
    ld e, [hl]                                    ; $6f8e: $5e
    inc b                                         ; $6f8f: $04
    add d                                         ; $6f90: $82
    sbc $c1                                       ; $6f91: $de $c1
    rst $18                                       ; $6f93: $df
    and e                                         ; $6f94: $a3
    and b                                         ; $6f95: $a0
    add hl, de                                    ; $6f96: $19
    db $ec                                        ; $6f97: $ec
    sbc d                                         ; $6f98: $9a
    inc c                                         ; $6f99: $0c
    ld de, $07a5                                  ; $6f9a: $11 $a5 $07
    push af                                       ; $6f9d: $f5
    cp e                                          ; $6f9e: $bb
    ld a, c                                       ; $6f9f: $79
    ld d, b                                       ; $6fa0: $50
    inc l                                         ; $6fa1: $2c
    rst $30                                       ; $6fa2: $f7
    dec bc                                        ; $6fa3: $0b
    rst $10                                       ; $6fa4: $d7
    pop bc                                        ; $6fa5: $c1
    ld a, [de]                                    ; $6fa6: $1a
    ld a, d                                       ; $6fa7: $7a
    and d                                         ; $6fa8: $a2
    rst $10                                       ; $6fa9: $d7
    add sp, $10                                   ; $6faa: $e8 $10
    ld a, e                                       ; $6fac: $7b
    and h                                         ; $6fad: $a4
    inc sp                                        ; $6fae: $33

jr_061_6faf:
    or h                                          ; $6faf: $b4
    ld e, d                                       ; $6fb0: $5a
    and [hl]                                      ; $6fb1: $a6
    xor l                                         ; $6fb2: $ad
    db $fd                                        ; $6fb3: $fd
    ld h, a                                       ; $6fb4: $67
    ld l, d                                       ; $6fb5: $6a
    xor $5d                                       ; $6fb6: $ee $5d
    sub e                                         ; $6fb8: $93
    ld hl, $f4a2                                  ; $6fb9: $21 $a2 $f4
    and b                                         ; $6fbc: $a0
    ld a, [hl]                                    ; $6fbd: $7e
    scf                                           ; $6fbe: $37
    xor a                                         ; $6fbf: $af
    ld b, e                                       ; $6fc0: $43
    add hl, hl                                    ; $6fc1: $29
    adc $b5                                       ; $6fc2: $ce $b5
    sbc d                                         ; $6fc4: $9a
    db $e3                                        ; $6fc5: $e3
    inc [hl]                                      ; $6fc6: $34
    jp nc, $fabd                                  ; $6fc7: $d2 $bd $fa

    ei                                            ; $6fca: $fb
    db $fd                                        ; $6fcb: $fd
    ld [bc], a                                    ; $6fcc: $02
    sub a                                         ; $6fcd: $97
    scf                                           ; $6fce: $37
    ld l, c                                       ; $6fcf: $69
    ld b, e                                       ; $6fd0: $43
    rst $20                                       ; $6fd1: $e7
    sbc h                                         ; $6fd2: $9c
    ld b, e                                       ; $6fd3: $43
    sbc l                                         ; $6fd4: $9d
    or [hl]                                       ; $6fd5: $b6
    or $9f                                        ; $6fd6: $f6 $9f
    xor c                                         ; $6fd8: $a9
    cp c                                          ; $6fd9: $b9
    ld [hl], a                                    ; $6fda: $77
    reti                                          ; $6fdb: $d9


    rst $00                                       ; $6fdc: $c7
    add l                                         ; $6fdd: $85
    cp d                                          ; $6fde: $ba
    jp nc, Jump_061_691c                          ; $6fdf: $d2 $1c $69

    add hl, de                                    ; $6fe2: $19
    ld b, e                                       ; $6fe3: $43
    ld e, a                                       ; $6fe4: $5f
    inc e                                         ; $6fe5: $1c
    jp nc, $8d75                                  ; $6fe6: $d2 $75 $8d

    sub b                                         ; $6fe9: $90
    ld a, b                                       ; $6fea: $78
    cp a                                          ; $6feb: $bf
    rla                                           ; $6fec: $17
    daa                                           ; $6fed: $27
    ld d, h                                       ; $6fee: $54
    ld [hl], e                                    ; $6fef: $73
    ld l, d                                       ; $6ff0: $6a
    call nz, Call_000_0bf7                        ; $6ff1: $c4 $f7 $0b
    rlca                                          ; $6ff4: $07
    ld e, h                                       ; $6ff5: $5c
    or $34                                        ; $6ff6: $f6 $34
    ld b, a                                       ; $6ff8: $47
    cp d                                          ; $6ff9: $ba
    ld [hl], a                                    ; $6ffa: $77
    and a                                         ; $6ffb: $a7
    rst $10                                       ; $6ffc: $d7
    ccf                                           ; $6ffd: $3f
    ld a, d                                       ; $6ffe: $7a
    ld sp, $bd25                                  ; $6fff: $31 $25 $bd
    rst $00                                       ; $7002: $c7
    cp b                                          ; $7003: $b8
    rst $08                                       ; $7004: $cf
    dec hl                                        ; $7005: $2b
    call Call_000_13a1                            ; $7006: $cd $a1 $13
    inc b                                         ; $7009: $04
    rst $28                                       ; $700a: $ef
    or l                                          ; $700b: $b5
    sbc c                                         ; $700c: $99
    rst $20                                       ; $700d: $e7
    ld e, h                                       ; $700e: $5c
    inc d                                         ; $700f: $14
    or d                                          ; $7010: $b2
    and c                                         ; $7011: $a1
    inc hl                                        ; $7012: $23
    rst $18                                       ; $7013: $df
    cpl                                           ; $7014: $2f
    rla                                           ; $7015: $17
    ld [hl], a                                    ; $7016: $77
    ld a, [bc]                                    ; $7017: $0a
    cp d                                          ; $7018: $ba
    ld b, e                                       ; $7019: $43
    add hl, de                                    ; $701a: $19
    ld e, l                                       ; $701b: $5d
    rst $28                                       ; $701c: $ef
    or h                                          ; $701d: $b4
    or l                                          ; $701e: $b5
    rst $38                                       ; $701f: $ff
    ld c, h                                       ; $7020: $4c
    adc l                                         ; $7021: $8d
    or $17                                        ; $7022: $f6 $17
    rla                                           ; $7024: $17
    ld [hl], a                                    ; $7025: $77
    ld a, [bc]                                    ; $7026: $0a
    cp d                                          ; $7027: $ba
    ld b, e                                       ; $7028: $43
    add hl, de                                    ; $7029: $19
    ld e, l                                       ; $702a: $5d
    rst $28                                       ; $702b: $ef
    or h                                          ; $702c: $b4
    ld e, l                                       ; $702d: $5d
    dec e                                         ; $702e: $1d
    ld b, h                                       ; $702f: $44
    ei                                            ; $7030: $fb
    ld c, $79                                     ; $7031: $0e $79
    ld sp, $fc8c                                  ; $7033: $31 $8c $fc
    cp c                                          ; $7036: $b9
    xor b                                         ; $7037: $a8
    ld l, c                                       ; $7038: $69
    ld e, $5d                                     ; $7039: $1e $5d
    rst $28                                       ; $703b: $ef
    ld l, $3f                                     ; $703c: $2e $3f
    halt                                          ; $703e: $76
    sbc $2f                                       ; $703f: $de $2f
    rst $10                                       ; $7041: $d7
    pop bc                                        ; $7042: $c1
    call nc, $d597                                ; $7043: $d4 $97 $d5
    ld e, a                                       ; $7046: $5f
    ret c                                         ; $7047: $d8

    ld d, d                                       ; $7048: $52
    rst $30                                       ; $7049: $f7
    add h                                         ; $704a: $84
    db $f4                                        ; $704b: $f4
    ld b, d                                       ; $704c: $42
    and l                                         ; $704d: $a5
    xor l                                         ; $704e: $ad
    cp d                                          ; $704f: $ba
    rst $00                                       ; $7050: $c7
    pop hl                                        ; $7051: $e1
    add hl, de                                    ; $7052: $19
    ld a, d                                       ; $7053: $7a
    ld d, c                                       ; $7054: $51
    ld [hl], a                                    ; $7055: $77
    ld h, l                                       ; $7056: $65
    rst $28                                       ; $7057: $ef
    dec bc                                        ; $7058: $0b
    and [hl]                                      ; $7059: $a6
    rst $20                                       ; $705a: $e7
    xor $d8                                       ; $705b: $ee $d8
    add hl, sp                                    ; $705d: $39
    rst $20                                       ; $705e: $e7
    jp nc, $caf4                                  ; $705f: $d2 $f4 $ca

    jp c, $175f                                   ; $7062: $da $5f $17

    ld [hl], a                                    ; $7065: $77
    ld a, [bc]                                    ; $7066: $0a
    cp d                                          ; $7067: $ba
    ld b, e                                       ; $7068: $43
    add hl, de                                    ; $7069: $19
    ld c, c                                       ; $706a: $49
    and l                                         ; $706b: $a5
    inc sp                                        ; $706c: $33
    jr nz, jr_061_70dc                            ; $706d: $20 $6d

    rrca                                          ; $706f: $0f
    adc b                                         ; $7070: $88
    ld h, a                                       ; $7071: $67
    xor c                                         ; $7072: $a9
    pop hl                                        ; $7073: $e1
    ld a, c                                       ; $7074: $79
    ld c, h                                       ; $7075: $4c
    ld e, e                                       ; $7076: $5b
    ld a, l                                       ; $7077: $7d
    sbc d                                         ; $7078: $9a
    adc e                                         ; $7079: $8b
    xor b                                         ; $707a: $a8
    ld e, c                                       ; $707b: $59
    reti                                          ; $707c: $d9


    call $eeac                                    ; $707d: $cd $ac $ee
    adc [hl]                                      ; $7080: $8e
    sbc l                                         ; $7081: $9d
    rst $30                                       ; $7082: $f7
    dec bc                                        ; $7083: $0b
    db $ed                                        ; $7084: $ed
    pop af                                        ; $7085: $f1
    rst $00                                       ; $7086: $c7
    push bc                                       ; $7087: $c5
    ret nc                                        ; $7088: $d0

    add a                                         ; $7089: $87
    ld a, [hl-]                                   ; $708a: $3a
    ld l, l                                       ; $708b: $6d
    ld d, a                                       ; $708c: $57
    jp c, $ebb1                                   ; $708d: $da $b1 $eb

    add hl, sp                                    ; $7090: $39
    cpl                                           ; $7091: $2f
    rla                                           ; $7092: $17
    rst $38                                       ; $7093: $ff
    ret c                                         ; $7094: $d8

    ld c, c                                       ; $7095: $49
    ld e, e                                       ; $7096: $5b
    ld sp, hl                                     ; $7097: $f9
    or c                                          ; $7098: $b1
    sub e                                         ; $7099: $93
    or [hl]                                       ; $709a: $b6
    ld a, [c]                                     ; $709b: $f2
    ld h, e                                       ; $709c: $63
    and a                                         ; $709d: $a7
    or $b5                                        ; $709e: $f6 $b5
    ld a, c                                       ; $70a0: $79
    and h                                         ; $70a1: $a4
    ld [hl], e                                    ; $70a2: $73
    push de                                       ; $70a3: $d5
    cp c                                          ; $70a4: $b9
    xor b                                         ; $70a5: $a8
    rlca                                          ; $70a6: $07
    ld h, [hl]                                    ; $70a7: $66
    ld c, a                                       ; $70a8: $4f
    rst $00                                       ; $70a9: $c7
    ei                                            ; $70aa: $fb
    dec b                                         ; $70ab: $05
    sub a                                         ; $70ac: $97
    add [hl]                                      ; $70ad: $86
    ld h, a                                       ; $70ae: $67
    inc c                                         ; $70af: $0c
    cp l                                          ; $70b0: $bd
    pop af                                        ; $70b1: $f1
    adc e                                         ; $70b2: $8b
    rst $30                                       ; $70b3: $f7
    jr @-$77                                      ; $70b4: $18 $87

    ld d, $da                                     ; $70b6: $16 $da
    xor [hl]                                      ; $70b8: $ae
    or h                                          ; $70b9: $b4
    ld h, e                                       ; $70ba: $63
    ld d, a                                       ; $70bb: $57
    db $ed                                        ; $70bc: $ed
    cpl                                           ; $70bd: $2f
    ld l, l                                       ; $70be: $6d
    and $5d                                       ; $70bf: $e6 $5d
    ld a, b                                       ; $70c1: $78
    push af                                       ; $70c2: $f5
    ld a, [hl]                                    ; $70c3: $7e
    rst $20                                       ; $70c4: $e7
    jp c, $c35c                                   ; $70c5: $da $5c $c3

    sbc b                                         ; $70c8: $98
    sbc $e7                                       ; $70c9: $de $e7
    dec d                                         ; $70cb: $15
    adc b                                         ; $70cc: $88
    dec a                                         ; $70cd: $3d
    dec bc                                        ; $70ce: $0b
    xor $f3                                       ; $70cf: $ee $f3
    sbc [hl]                                      ; $70d1: $9e
    add b                                         ; $70d2: $80
    db $fc                                        ; $70d3: $fc
    adc e                                         ; $70d4: $8b
    rst $28                                       ; $70d5: $ef
    dec e                                         ; $70d6: $1d
    or h                                          ; $70d7: $b4
    inc c                                         ; $70d8: $0c
    call $ae73                                    ; $70d9: $cd $73 $ae

jr_061_70dc:
    ld h, c                                       ; $70dc: $61
    xor h                                         ; $70dd: $ac
    cp h                                          ; $70de: $bc
    rst $08                                       ; $70df: $cf
    dec hl                                        ; $70e0: $2b
    ld a, [hl]                                    ; $70e1: $7e
    ld e, $8f                                     ; $70e2: $1e $8f
    ld b, c                                       ; $70e4: $41
    jp z, Jump_061_5942                           ; $70e5: $ca $42 $59

    db $fd                                        ; $70e8: $fd
    push bc                                       ; $70e9: $c5
    xor c                                         ; $70ea: $a9
    ld a, l                                       ; $70eb: $7d
    ld l, l                                       ; $70ec: $6d
    ld a, [$e69e]                                 ; $70ed: $fa $9e $e6
    adc d                                         ; $70f0: $8a
    ld d, e                                       ; $70f1: $53
    cp h                                          ; $70f2: $bc
    xor b                                         ; $70f3: $a8
    add hl, sp                                    ; $70f4: $39
    or h                                          ; $70f5: $b4
    adc h                                         ; $70f6: $8c
    and c                                         ; $70f7: $a1
    scf                                           ; $70f8: $37
    ld a, [hl]                                    ; $70f9: $7e
    pop af                                        ; $70fa: $f1
    xor $fb                                       ; $70fb: $ee $fb
    ld e, $19                                     ; $70fd: $1e $19
    ld b, e                                       ; $70ff: $43
    dec e                                         ; $7100: $1d
    ld [$5f53], a                                 ; $7101: $ea $53 $5f
    ld d, $81                                     ; $7104: $16 $81
    and b                                         ; $7106: $a0
    add a                                         ; $7107: $87
    sub [hl]                                      ; $7108: $96
    ei                                            ; $7109: $fb
    dec b                                         ; $710a: $05
    ld d, a                                       ; $710b: $57
    jp c, $ebb1                                   ; $710c: $da $b1 $eb

    xor d                                         ; $710f: $aa
    ld a, [$a07d]                                 ; $7110: $fa $7d $a0
    sub h                                         ; $7113: $94
    rla                                           ; $7114: $17
    dec [hl]                                      ; $7115: $35
    rst $10                                       ; $7116: $d7
    ld b, e                                       ; $7117: $43
    inc a                                         ; $7118: $3c
    add [hl]                                      ; $7119: $86
    cp [hl]                                       ; $711a: $be
    rst $08                                       ; $711b: $cf
    and e                                         ; $711c: $a3
    and d                                         ; $711d: $a2
    dec sp                                        ; $711e: $3b
    and l                                         ; $711f: $a5
    inc d                                         ; $7120: $14
    adc a                                         ; $7121: $8f
    xor [hl]                                      ; $7122: $ae
    ld [hl], a                                    ; $7123: $77
    res 4, d                                      ; $7124: $cb $a2
    sub b                                         ; $7126: $90
    ld a, e                                       ; $7127: $7b
    and b                                         ; $7128: $a0

jr_061_7129:
    call c, $e03b                                 ; $7129: $dc $3b $e0
    or d                                          ; $712c: $b2
    jr jr_061_7129                                ; $712d: $18 $fa

    ld [hl+], a                                   ; $712f: $22
    db $10                                        ; $7130: $10
    db $f4                                        ; $7131: $f4
    ld e, $90                                     ; $7132: $1e $90
    sub l                                         ; $7134: $95
    rra                                           ; $7135: $1f
    ld e, e                                       ; $7136: $5b
    ei                                            ; $7137: $fb
    dec bc                                        ; $7138: $0b
    ld l, l                                       ; $7139: $6d
    ld a, [$9fc8]                                 ; $713a: $fa $c8 $9f
    or e                                          ; $713d: $b3
    xor h                                         ; $713e: $ac
    ld [hl], d                                    ; $713f: $72
    ld c, b                                       ; $7140: $48
    jp c, Jump_000_3c38                           ; $7141: $da $38 $3c

    xor e                                         ; $7144: $ab
    ld a, [hl+]                                   ; $7145: $2a
    ld [hl], h                                    ; $7146: $74
    rst $28                                       ; $7147: $ef
    di                                            ; $7148: $f3
    inc e                                         ; $7149: $1c
    or c                                          ; $714a: $b1
    or e                                          ; $714b: $b3
    ld d, d                                       ; $714c: $52
    adc e                                         ; $714d: $8b
    add a                                         ; $714e: $87
    sub [hl]                                      ; $714f: $96
    pop bc                                        ; $7150: $c1
    cp l                                          ; $7151: $bd
    inc bc                                        ; $7152: $03
    ld l, $6b                                     ; $7153: $2e $6b
    ld [hl], h                                    ; $7155: $74
    adc b                                         ; $7156: $88
    sbc l                                         ; $7157: $9d
    inc hl                                        ; $7158: $23
    sbc l                                         ; $7159: $9d
    dec bc                                        ; $715a: $0b
    ld h, l                                       ; $715b: $65
    xor l                                         ; $715c: $ad
    ld e, a                                       ; $715d: $5f
    xor e                                         ; $715e: $ab
    ld [hl], e                                    ; $715f: $73
    xor l                                         ; $7160: $ad
    and $3e                                       ; $7161: $e6 $3e
    adc a                                         ; $7163: $8f
    db $fc                                        ; $7164: $fc
    ld [hl-], a                                   ; $7165: $32
    ld d, b                                       ; $7166: $50
    jp z, Jump_061_5fe3                           ; $7167: $ca $e3 $5f

    sbc h                                         ; $716a: $9c
    sub e                                         ; $716b: $93
    ld d, b                                       ; $716c: $50
    call z, $9c7b                                 ; $716d: $cc $7b $9c
    cp [hl]                                       ; $7170: $be
    ld e, a                                       ; $7171: $5f
    db $ed                                        ; $7172: $ed
    rst $08                                       ; $7173: $cf
    ld b, e                                       ; $7174: $43
    dec de                                        ; $7175: $1b
    ld a, [hl-]                                   ; $7176: $3a
    rst $20                                       ; $7177: $e7
    sbc h                                         ; $7178: $9c
    ld h, l                                       ; $7179: $65
    push de                                       ; $717a: $d5
    adc b                                         ; $717b: $88
    xor $23                                       ; $717c: $ee $23
    sbc l                                         ; $717e: $9d
    rst $30                                       ; $717f: $f7
    dec bc                                        ; $7180: $0b
    sub a                                         ; $7181: $97
    ld [$1692], sp                                ; $7182: $08 $92 $16
    ld e, $5a                                     ; $7185: $1e $5a
    ld d, $85                                     ; $7187: $16 $85

Call_061_7189:
    xor h                                         ; $7189: $ac
    call nc, $bd87                                ; $718a: $d4 $87 $bd
    ld c, [hl]                                    ; $718d: $4e
    xor c                                         ; $718e: $a9
    ld [bc], a                                    ; $718f: $02
    ld d, d                                       ; $7190: $52
    ld d, $51                                     ; $7191: $16 $51
    ld [hl], e                                    ; $7193: $73
    sub a                                         ; $7194: $97
    adc h                                         ; $7195: $8c
    ld a, a                                       ; $7196: $7f
    ld [hl], c                                    ; $7197: $71
    xor $47                                       ; $7198: $ee $47
    xor e                                         ; $719a: $ab
    ld l, h                                       ; $719b: $6c
    cp h                                          ; $719c: $bc
    ld e, a                                       ; $719d: $5f
    rla                                           ; $719e: $17
    push af                                       ; $719f: $f5
    ret nz                                        ; $71a0: $c0

    ld l, e                                       ; $71a1: $6b
    add l                                         ; $71a2: $85
    adc $ce                                       ; $71a3: $ce $ce
    ld h, d                                       ; $71a5: $62
    xor b                                         ; $71a6: $a8
    cp h                                          ; $71a7: $bc
    ld a, [bc]                                    ; $71a8: $0a
    push bc                                       ; $71a9: $c5

jr_061_71aa:
    cp c                                          ; $71aa: $b9
    rst $08                                       ; $71ab: $cf
    dec sp                                        ; $71ac: $3b
    ld l, l                                       ; $71ad: $6d
    adc $99                                       ; $71ae: $ce $99
    ld b, a                                       ; $71b0: $47
    cp d                                          ; $71b1: $ba
    inc hl                                        ; $71b2: $23
    inc d                                         ; $71b3: $14
    ld e, $ff                                     ; $71b4: $1e $ff
    ld a, [hl]                                    ; $71b6: $7e
    cp a                                          ; $71b7: $bf
    rla                                           ; $71b8: $17
    rst $20                                       ; $71b9: $e7
    ld h, a                                       ; $71ba: $67
    xor b                                         ; $71bb: $a8
    and e                                         ; $71bc: $a3
    db $eb                                        ; $71bd: $eb
    db $dd                                        ; $71be: $dd
    push hl                                       ; $71bf: $e5
    rst $00                                       ; $71c0: $c7
    adc $7b                                       ; $71c1: $ce $7b
    add a                                         ; $71c3: $87
    ld hl, sp+$23                                 ; $71c4: $f8 $23
    sub h                                         ; $71c6: $94
    pop bc                                        ; $71c7: $c1
    ld b, b                                       ; $71c8: $40
    or b                                          ; $71c9: $b0
    push af                                       ; $71ca: $f5
    sub l                                         ; $71cb: $95
    add b                                         ; $71cc: $80
    sub h                                         ; $71cd: $94
    ld a, e                                       ; $71ce: $7b
    rst $10                                       ; $71cf: $d7
    db $fc                                        ; $71d0: $fc
    cp [hl]                                       ; $71d1: $be
    rst $00                                       ; $71d2: $c7
    cp b                                          ; $71d3: $b8
    dec hl                                        ; $71d4: $2b
    db $ed                                        ; $71d5: $ed
    ret c                                         ; $71d6: $d8

    sub l                                         ; $71d7: $95
    ld [hl], $32                                  ; $71d8: $36 $32
    add [hl]                                      ; $71da: $86
    cp d                                          ; $71db: $ba
    xor b                                         ; $71dc: $a8
    dec sp                                        ; $71dd: $3b
    cp l                                          ; $71de: $bd
    ret nc                                        ; $71df: $d0

    ld [$2a9a], a                                 ; $71e0: $ea $9a $2a
    jr nz, jr_061_71aa                            ; $71e3: $20 $c5

    add hl, sp                                    ; $71e5: $39
    xor d                                         ; $71e6: $aa
    ld d, h                                       ; $71e7: $54
    push hl                                       ; $71e8: $e5
    ld a, d                                       ; $71e9: $7a
    cp a                                          ; $71ea: $bf
    db $ed                                        ; $71eb: $ed
    ccf                                           ; $71ec: $3f
    add a                                         ; $71ed: $87
    ld a, [$79aa]                                 ; $71ee: $fa $aa $79
    ld d, a                                       ; $71f1: $57

jr_061_71f2:
    jp c, $ebb1                                   ; $71f2: $da $b1 $eb

    add hl, sp                                    ; $71f5: $39
    ld l, e                                       ; $71f6: $6b
    rst $38                                       ; $71f7: $ff
    or d                                          ; $71f8: $b2
    jp z, $dff4                                   ; $71f9: $ca $f4 $df

    rst $30                                       ; $71fc: $f7
    add b                                         ; $71fd: $80
    adc h                                         ; $71fe: $8c
    xor [hl]                                      ; $71ff: $ae
    ld [hl], a                                    ; $7200: $77
    sub a                                         ; $7201: $97
    rra                                           ; $7202: $1f
    ei                                            ; $7203: $fb
    ld a, [hl]                                    ; $7204: $7e
    ld bc, $5c07                                  ; $7205: $01 $07 $5c
    ld b, [hl]                                    ; $7208: $46
    cp $1c                                        ; $7209: $fe $1c
    jr z, jr_061_71f2                             ; $720b: $28 $e5

    ld d, l                                       ; $720d: $55
    di                                            ; $720e: $f3
    ret z                                         ; $720f: $c8

    rst $38                                       ; $7210: $ff
    call c, Call_061_683b                         ; $7211: $dc $3b $68
    add hl, de                                    ; $7214: $19
    db $dd                                        ; $7215: $dd
    ld h, l                                       ; $7216: $65
    or c                                          ; $7217: $b1
    ld [hl], c                                    ; $7218: $71
    sbc a                                         ; $7219: $9f
    ld b, a                                       ; $721a: $47
    ld a, [hl]                                    ; $721b: $7e
    ld e, c                                       ; $721c: $59
    add hl, bc                                    ; $721d: $09
    ret z                                         ; $721e: $c8

    ld d, e                                       ; $721f: $53
    ld e, a                                       ; $7220: $5f

jr_061_7221:
    sub $01                                       ; $7221: $d6 $01
    cp l                                          ; $7223: $bd
    rst $08                                       ; $7224: $cf
    dec hl                                        ; $7225: $2b
    ld a, [hl]                                    ; $7226: $7e
    ld e, $8f                                     ; $7227: $1e $8f
    ld b, c                                       ; $7229: $41
    jp z, $bf1a                                   ; $722a: $ca $1a $bf

    xor h                                         ; $722d: $ac
    scf                                           ; $722e: $37
    dec hl                                        ; $722f: $2b
    ld a, e                                       ; $7230: $7b
    ld c, b                                       ; $7231: $48
    ld c, l                                       ; $7232: $4d
    rst $18                                       ; $7233: $df
    cpl                                           ; $7234: $2f
    rlca                                          ; $7235: $07
    ld e, h                                       ; $7236: $5c
    ld b, [hl]                                    ; $7237: $46
    cp $1c                                        ; $7238: $fe $1c
    jr z, jr_061_7221                             ; $723a: $28 $e5

    ld d, l                                       ; $723c: $55
    di                                            ; $723d: $f3
    ret z                                         ; $723e: $c8

    rst $38                                       ; $723f: $ff
    call c, Call_061_572f                         ; $7240: $dc $2f $57
    jp c, $abb1                                   ; $7243: $da $b1 $ab

    or $5d                                        ; $7246: $f6 $5d
    and e                                         ; $7248: $a3
    ld l, c                                       ; $7249: $69
    add hl, sp                                    ; $724a: $39
    ld d, a                                       ; $724b: $57
    jp $f233                                      ; $724c: $c3 $33 $f2


    ccf                                           ; $724f: $3f
    dec hl                                        ; $7250: $2b
    db $10                                        ; $7251: $10
    dec sp                                        ; $7252: $3b
    ld b, a                                       ; $7253: $47
    jp nc, $54fd                                  ; $7254: $d2 $fd $54

    ld l, d                                       ; $7257: $6a
    ld [hl], c                                    ; $7258: $71
    xor a                                         ; $7259: $af
    sbc [hl]                                      ; $725a: $9e
    ld a, c                                       ; $725b: $79
    ret c                                         ; $725c: $d8

Call_061_725d:
    call z, $850e                                 ; $725d: $cc $0e $85
    sub a                                         ; $7260: $97
    sbc d                                         ; $7261: $9a
    ld a, e                                       ; $7262: $7b
    rlca                                          ; $7263: $07
    dec l                                         ; $7264: $2d
    and e                                         ; $7265: $a3
    cp e                                          ; $7266: $bb
    adc h                                         ; $7267: $8c
    db $fc                                        ; $7268: $fc
    add hl, sp                                    ; $7269: $39
    pop de                                        ; $726a: $d1
    rlca                                          ; $726b: $07
    ld c, d                                       ; $726c: $4a
    ld a, c                                       ; $726d: $79
    push de                                       ; $726e: $d5
    inc a                                         ; $726f: $3c
    ld a, [c]                                     ; $7270: $f2
    ccf                                           ; $7271: $3f
    ld l, e                                       ; $7272: $6b
    dec [hl]                                      ; $7273: $35
    add a                                         ; $7274: $87
    and $55                                       ; $7275: $e6 $55
    ret nz                                        ; $7277: $c0

    jp z, Jump_061_5fbe                           ; $7278: $ca $be $5f

    rlca                                          ; $727b: $07
    ld e, h                                       ; $727c: $5c
    ld b, [hl]                                    ; $727d: $46
    cp $1c                                        ; $727e: $fe $1c
    add hl, de                                    ; $7280: $19
    dec sp                                        ; $7281: $3b
    sub l                                         ; $7282: $95
    ld h, l                                       ; $7283: $65
    push de                                       ; $7284: $d5
    inc a                                         ; $7285: $3c
    ld a, [c]                                     ; $7286: $f2
    ccf                                           ; $7287: $3f
    ld [hl], e                                    ; $7288: $73
    rst $28                                       ; $7289: $ef
    adc $21                                       ; $728a: $ce $21
    ret z                                         ; $728c: $c8

    ld e, d                                       ; $728d: $5a
    ld e, a                                       ; $728e: $5f
    add hl, hl                                    ; $728f: $29
    rst $18                                       ; $7290: $df
    dec sp                                        ; $7291: $3b
    ldh [$32], a                                  ; $7292: $e0 $32
    or d                                          ; $7294: $b2
    reti                                          ; $7295: $d9


    ld [hl], b                                    ; $7296: $70
    ld c, $94                                     ; $7297: $0e $94
    ld a, [c]                                     ; $7299: $f2
    ld a, $0f                                     ; $729a: $3e $0f
    sbc l                                         ; $729c: $9d
    adc e                                         ; $729d: $8b
    ld a, a                                       ; $729e: $7f
    ld c, [hl]                                    ; $729f: $4e
    ld b, d                                       ; $72a0: $42
    ld sp, $53af                                  ; $72a1: $31 $af $53
    sub h                                         ; $72a4: $94
    ld [hl], d                                    ; $72a5: $72
    ld a, [c]                                     ; $72a6: $f2
    ld l, d                                       ; $72a7: $6a
    dec bc                                        ; $72a8: $0b
    xor d                                         ; $72a9: $aa
    dec sp                                        ; $72aa: $3b
    inc d                                         ; $72ab: $14
    ld e, $0c                                     ; $72ac: $1e $0c
    db $fd                                        ; $72ae: $fd
    call c, Call_000_072f                         ; $72af: $dc $2f $07
    ld e, h                                       ; $72b2: $5c
    and [hl]                                      ; $72b3: $a6
    dec bc                                        ; $72b4: $0b
    and [hl]                                      ; $72b5: $a6
    pop de                                        ; $72b6: $d1
    ld a, e                                       ; $72b7: $7b
    and b                                         ; $72b8: $a0
    inc l                                         ; $72b9: $2c
    sub h                                         ; $72ba: $94
    jp c, $885c                                   ; $72bb: $da $5c $88

    sbc l                                         ; $72be: $9d
    inc hl                                        ; $72bf: $23
    db $e3                                        ; $72c0: $e3
    adc a                                         ; $72c1: $8f
    ld b, e                                       ; $72c2: $43
    rst $20                                       ; $72c3: $e7
    ld [c], a                                     ; $72c4: $e2
    sbc a                                         ; $72c5: $9f
    add e                                         ; $72c6: $83
    and c                                         ; $72c7: $a1
    ld h, l                                       ; $72c8: $65
    xor l                                         ; $72c9: $ad
    xor a                                         ; $72ca: $af
    sub h                                         ; $72cb: $94
    ld b, a                                       ; $72cc: $47
    ld a, [hl]                                    ; $72cd: $7e
    add hl, de                                    ; $72ce: $19
    ld sp, hl                                     ; $72cf: $f9
    ld h, e                                       ; $72d0: $63

Jump_061_72d1:
    db $f4                                        ; $72d1: $f4
    db $fd                                        ; $72d2: $fd
    ld [bc], a                                    ; $72d3: $02
    rst $10                                       ; $72d4: $d7
    pop bc                                        ; $72d5: $c1
    ld l, d                                       ; $72d6: $6a
    ld [hl], e                                    ; $72d7: $73
    db $e4                                        ; $72d8: $e4
    ld a, a                                       ; $72d9: $7f
    ld d, [hl]                                    ; $72da: $56
    ld h, e                                       ; $72db: $63
    ld c, d                                       ; $72dc: $4a
    db $ec                                        ; $72dd: $ec
    ld b, c                                       ; $72de: $41
    or c                                          ; $72df: $b1
    adc b                                         ; $72e0: $88
    sbc a                                         ; $72e1: $9f
    and c                                         ; $72e2: $a1
    ld h, l                                       ; $72e3: $65
    cp l                                          ; $72e4: $bd
    ld e, c                                       ; $72e5: $59
    reti                                          ; $72e6: $d9


    ld b, e                                       ; $72e7: $43
    ld l, d                                       ; $72e8: $6a
    ld l, $c4                                     ; $72e9: $2e $c4
    adc $28                                       ; $72eb: $ce $28
    db $e4                                        ; $72ed: $e4
    xor [hl]                                      ; $72ee: $ae
    add sp, -$38                                  ; $72ef: $e8 $c8
    add b                                         ; $72f1: $80
    sub [hl]                                      ; $72f2: $96
    cp d                                          ; $72f3: $ba
    xor e                                         ; $72f4: $ab
    ld [hl], l                                    ; $72f5: $75
    ld [hl], c                                    ; $72f6: $71
    ld e, $d7                                     ; $72f7: $1e $d7
    add e                                         ; $72f9: $83
    ld a, [$7cdd]                                 ; $72fa: $fa $dd $7c
    cp a                                          ; $72fd: $bf
    rlca                                          ; $72fe: $07
    ld e, h                                       ; $72ff: $5c
    ld d, [hl]                                    ; $7300: $56

jr_061_7301:
    sbc e                                         ; $7301: $9b
    inc hl                                        ; $7302: $23
    rst $38                                       ; $7303: $ff
    inc sp                                        ; $7304: $33
    dec d                                         ; $7305: $15
    sbc [hl]                                      ; $7306: $9e
    rst $00                                       ; $7307: $c7
    inc de                                        ; $7308: $13
    db $e3                                        ; $7309: $e3
    and d                                         ; $730a: $a2
    db $fc                                        ; $730b: $fc
    xor e                                         ; $730c: $ab
    ld [hl], h                                    ; $730d: $74
    inc sp                                        ; $730e: $33

jr_061_730f:
    ld a, e                                       ; $730f: $7b
    push af                                       ; $7310: $f5
    ld [hl], a                                    ; $7311: $77
    jp c, $cb1e                                   ; $7312: $da $1e $cb

    ret z                                         ; $7315: $c8

    cpl                                           ; $7316: $2f
    ld l, e                                       ; $7317: $6b
    db $fc                                        ; $7318: $fc
    inc e                                         ; $7319: $1c
    jr z, jr_061_7301                             ; $731a: $28 $e5

    or l                                          ; $731c: $b5
    sbc d                                         ; $731d: $9a
    sub e                                         ; $731e: $93
    ld d, b                                       ; $731f: $50
    call z, Call_000_0bf7                         ; $7320: $cc $f7 $0b
    ld l, l                                       ; $7323: $6d
    adc $45                                       ; $7324: $ce $45
    and b                                         ; $7326: $a0
    ld b, [hl]                                    ; $7327: $46
    ld [hl], a                                    ; $7328: $77
    add hl, de                                    ; $7329: $19
    ld b, d                                       ; $732a: $42
    cp c                                          ; $732b: $b9
    rst $10                                       ; $732c: $d7
    and [hl]                                      ; $732d: $a6
    rst $08                                       ; $732e: $cf
    cp c                                          ; $732f: $b9
    jr z, @+$01                                   ; $7330: $28 $ff

    ld l, $4e                                     ; $7332: $2e $4e
    ld c, l                                       ; $7334: $4d
    inc d                                         ; $7335: $14
    add c                                         ; $7336: $81
    ld h, b                                       ; $7337: $60
    ret z                                         ; $7338: $c8

    db $dd                                        ; $7339: $dd
    rst $30                                       ; $733a: $f7
    cp l                                          ; $733b: $bd
    jp c, $e89c                                   ; $733c: $da $9c $e8

    adc e                                         ; $733f: $8b
    ld b, b                                       ; $7340: $40
    ret nc                                        ; $7341: $d0

    cp c                                          ; $7342: $b9
    jr @-$28                                      ; $7343: $18 $d6

    jp z, $b910                                   ; $7345: $ca $10 $b9

    sub $90                                       ; $7348: $d6 $90
    dec sp                                        ; $734a: $3b
    ld c, b                                       ; $734b: $48
    db $f4                                        ; $734c: $f4
    ld [c], a                                     ; $734d: $e2
    jr nz, jr_061_730f                            ; $734e: $20 $bf

    db $fc                                        ; $7350: $fc
    sbc $ef                                       ; $7351: $de $ef
    rla                                           ; $7353: $17
    rst $20                                       ; $7354: $e7
    pop af                                        ; $7355: $f1
    ld a, [de]                                    ; $7356: $1a
    xor c                                         ; $7357: $a9
    ld b, c                                       ; $7358: $41
    rrca                                          ; $7359: $0f
    inc b                                         ; $735a: $04
    rlca                                          ; $735b: $07
    cp e                                          ; $735c: $bb
    ld [$513a], sp                                ; $735d: $08 $3a $51
    or d                                          ; $7360: $b2
    xor [hl]                                      ; $7361: $ae
    rst $38                                       ; $7362: $ff
    ld [c], a                                     ; $7363: $e2
    ld c, h                                       ; $7364: $4c
    db $fd                                        ; $7365: $fd
    sbc c                                         ; $7366: $99
    ld [hl], e                                    ; $7367: $73
    sub [hl]                                      ; $7368: $96
    db $fd                                        ; $7369: $fd

Jump_061_736a:
    ld e, $87                                     ; $736a: $1e $87
    db $ec                                        ; $736c: $ec
    ld d, b                                       ; $736d: $50
    ld d, [hl]                                    ; $736e: $56
    ld a, a                                       ; $736f: $7f
    and c                                         ; $7370: $a1
    xor l                                         ; $7371: $ad
    db $fd                                        ; $7372: $fd
    ld h, a                                       ; $7373: $67
    ld l, d                                       ; $7374: $6a
    xor $17                                       ; $7375: $ee $17
    rlca                                          ; $7377: $07
    dec l                                         ; $7378: $2d
    ld l, e                                       ; $7379: $6b
    ld h, l                                       ; $737a: $65
    adc b                                         ; $737b: $88
    ld e, h                                       ; $737c: $5c
    ld l, e                                       ; $737d: $6b
    ret z                                         ; $737e: $c8

    dec e                                         ; $737f: $1d
    inc h                                         ; $7380: $24
    ld a, d                                       ; $7381: $7a
    ld [hl], c                                    ; $7382: $71
    sub b                                         ; $7383: $90
    ld e, a                                       ; $7384: $5f
    ld a, [hl]                                    ; $7385: $7e
    rst $28                                       ; $7386: $ef
    rst $30                                       ; $7387: $f7
    ld a, l                                       ; $7388: $7d
    cp a                                          ; $7389: $bf
    sub a                                         ; $738a: $97
    ld c, b                                       ; $738b: $48
    or c                                          ; $738c: $b1
    ld c, h                                       ; $738d: $4c
    rla                                           ; $738e: $17
    xor h                                         ; $738f: $ac
    ld c, d                                       ; $7390: $4a
    db $d3                                        ; $7391: $d3
    ld d, c                                       ; $7392: $51
    ld b, b                                       ; $7393: $40
    adc d                                         ; $7394: $8a
    ld d, e                                       ; $7395: $53

Call_061_7396:
    ei                                            ; $7396: $fb
    ld l, $8c                                     ; $7397: $2e $8c
    ret c                                         ; $7399: $d8

    ld e, c                                       ; $739a: $59
    jp Jump_000_3433                              ; $739b: $c3 $33 $34


    rst $08                                       ; $739e: $cf
    add hl, sp                                    ; $739f: $39
    cp d                                          ; $73a0: $ba

Call_061_73a1:
    sbc $17                                       ; $73a1: $de $17
    ld b, e                                       ; $73a3: $43
    rra                                           ; $73a4: $1f
    db $dd                                        ; $73a5: $dd
    ld h, l                                       ; $73a6: $65
    ld c, d                                       ; $73a7: $4a
    sub a                                         ; $73a8: $97
    ld b, l                                       ; $73a9: $45

Jump_061_73aa:
    ld sp, hl                                     ; $73aa: $f9
    add hl, sp                                    ; $73ab: $39
    add hl, hl                                    ; $73ac: $29
    ld c, d                                       ; $73ad: $4a
    ld a, c                                       ; $73ae: $79
    daa                                           ; $73af: $27
    ld c, [hl]                                    ; $73b0: $4e
    add l                                         ; $73b1: $85
    sbc $5d                                       ; $73b2: $de $5d
    ret nz                                        ; $73b4: $c0

    xor l                                         ; $73b5: $ad
    nop                                           ; $73b6: $00
    jp nz, $f28b                                  ; $73b7: $c2 $8b $f2

    rst $28                                       ; $73ba: $ef
    ld [c], a                                     ; $73bb: $e2
    call nc, Call_000_1144                        ; $73bc: $d4 $44 $11
    ld [$bc86], sp                                ; $73bf: $08 $86 $bc
    ld [hl], a                                    ; $73c2: $77
    ret z                                         ; $73c3: $c8

    inc de                                        ; $73c4: $13
    ld a, l                                       ; $73c5: $7d
    sbc a                                         ; $73c6: $9f
    and a                                         ; $73c7: $a7
    jp nz, $78f3                                  ; $73c8: $c2 $f3 $78

    ccf                                           ; $73cb: $3f

Jump_061_73cc:
    ld e, d                                       ; $73cc: $5a
    ld h, l                                       ; $73cd: $65

Call_061_73ce:
    db $e3                                        ; $73ce: $e3
    ld e, $e3                                     ; $73cf: $1e $e3
    db $10                                        ; $73d1: $10
    adc d                                         ; $73d2: $8a
    or $17                                        ; $73d3: $f6 $17
    ld d, a                                       ; $73d5: $57
    sub h                                         ; $73d6: $94
    sub c                                         ; $73d7: $91
    and c                                         ; $73d8: $a1
    db $e3                                        ; $73d9: $e3
    db $10                                        ; $73da: $10
    jp z, $fca2                                   ; $73db: $ca $a2 $fc

    xor e                                         ; $73de: $ab
    ld l, h                                       ; $73df: $6c
    ld [hl], h                                    ; $73e0: $74
    jp nc, $c646                                  ; $73e1: $d2 $46 $c6

    ld hl, $fa87                                  ; $73e4: $21 $87 $fa
    ld b, b                                       ; $73e7: $40
    add hl, hl                                    ; $73e8: $29
    adc a                                         ; $73e9: $8f
    db $fc                                        ; $73ea: $fc
    add hl, sp                                    ; $73eb: $39
    add hl, bc                                    ; $73ec: $09
    push bc                                       ; $73ed: $c5
    cp h                                          ; $73ee: $bc
    rst $08                                       ; $73ef: $cf
    dec hl                                        ; $73f0: $2b
    call nc, $f6b4                                ; $73f1: $d4 $b4 $f6
    rla                                           ; $73f4: $17
    rla                                           ; $73f5: $17
    ld a, l                                       ; $73f6: $7d
    ld b, c                                       ; $73f7: $41
    ld e, $ea                                     ; $73f8: $1e $ea
    ld b, e                                       ; $73fa: $43
    db $10                                        ; $73fb: $10
    xor a                                         ; $73fc: $af
    db $fc                                        ; $73fd: $fc
    ret c                                         ; $73fe: $d8

    ld c, c                                       ; $73ff: $49
    ld e, e                                       ; $7400: $5b
    ei                                            ; $7401: $fb
    rst $08                                       ; $7402: $cf
    call nc, $f39c                                ; $7403: $d4 $9c $f3
    ld [bc], a                                    ; $7406: $02
    sub a                                         ; $7407: $97
    sbc e                                         ; $7408: $9b
    ld a, [hl]                                    ; $7409: $7e
    cp a                                          ; $740a: $bf
    sub a                                         ; $740b: $97
    scf                                           ; $740c: $37
    ld l, c                                       ; $740d: $69
    ld l, e                                       ; $740e: $6b
    dec h                                         ; $740f: $25
    dec [hl]                                      ; $7410: $35
    ld e, $14                                     ; $7411: $1e $14
    res 7, l                                      ; $7413: $cb $bd
    inc bc                                        ; $7415: $03
    ld l, $8b                                     ; $7416: $2e $8b
    and c                                         ; $7418: $a1
    rrca                                          ; $7419: $0f
    sub h                                         ; $741a: $94
    ld a, [c]                                     ; $741b: $f2
    ld e, d                                       ; $741c: $5a
    ld e, a                                       ; $741d: $5f
    add hl, hl                                    ; $741e: $29
    rst $28                                       ; $741f: $ef
    ld bc, $42f1                                  ; $7420: $01 $f1 $42
    ld l, e                                       ; $7423: $6b
    ld de, $8735                                  ; $7424: $11 $35 $87
    ld a, [$a942]                                 ; $7427: $fa $42 $a9
    call $2fa9                                    ; $742a: $cd $a9 $2f
    ld l, e                                       ; $742d: $6b
    ld a, l                                       ; $742e: $7d
    and l                                         ; $742f: $a5
    cp h                                          ; $7430: $bc
    rst $18                                       ; $7431: $df
    cp e                                          ; $7432: $bb
    add a                                         ; $7433: $87
    jr nz, jr_061_7494                            ; $7434: $20 $5e

    ld l, b                                       ; $7436: $68
    db $dd                                        ; $7437: $dd
    cpl                                           ; $7438: $2f

Call_061_7439:
    ld d, a                                       ; $7439: $57
    rlca                                          ; $743a: $07
    pop de                                        ; $743b: $d1
    cp [hl]                                       ; $743c: $be
    inc bc                                        ; $743d: $03
    ld l, $8b                                     ; $743e: $2e $8b
    ld b, b                                       ; $7440: $40
    db $ed                                        ; $7441: $ed
    ld bc, $f959                                  ; $7442: $01 $59 $f9
    or c                                          ; $7445: $b1
    rst $00                                       ; $7446: $c7
    ret nc                                        ; $7447: $d0

    dec de                                        ; $7448: $1b
    cp a                                          ; $7449: $bf
    ld e, b                                       ; $744a: $58
    ei                                            ; $744b: $fb
    dec bc                                        ; $744c: $0b
    rla                                           ; $744d: $17
    rlca                                          ; $744e: $07
    ld h, h                                       ; $744f: $64
    db $ed                                        ; $7450: $ed
    cp e                                          ; $7451: $bb
    db $ec                                        ; $7452: $ec
    db $e3                                        ; $7453: $e3
    ld b, d                                       ; $7454: $42
    ld e, l                                       ; $7455: $5d
    db $eb                                        ; $7456: $eb
    dec hl                                        ; $7457: $2b
    push hl                                       ; $7458: $e5
    and c                                         ; $7459: $a1
    sbc a                                         ; $745a: $9f
    add l                                         ; $745b: $85
    sub $fd                                       ; $745c: $d6 $fd
    ld [bc], a                                    ; $745e: $02
    rst $10                                       ; $745f: $d7
    ld b, b                                       ; $7460: $40
    ld e, a                                       ; $7461: $5f
    ei                                            ; $7462: $fb
    rst $08                                       ; $7463: $cf
    call nc, $16d0                                ; $7464: $d4 $d0 $16
    push hl                                       ; $7467: $e5
    ld e, a                                       ; $7468: $5f
    ei                                            ; $7469: $fb
    cpl                                           ; $746a: $2f
    add hl, bc                                    ; $746b: $09
    ld a, b                                       ; $746c: $78
    cp a                                          ; $746d: $bf
    rla                                           ; $746e: $17
    jp z, $2938                                   ; $746f: $ca $38 $29

    ld d, c                                       ; $7472: $51
    and a                                         ; $7473: $a7
    jp nc, $f7d9                                  ; $7474: $d2 $d9 $f7

    jp c, $abcc                                   ; $7477: $da $cc $ab

    adc $e9                                       ; $747a: $ce $e9
    jr c, @-$78                                   ; $747c: $38 $86

    cp [hl]                                       ; $747e: $be
    rst $08                                       ; $747f: $cf
    inc hl                                        ; $7480: $23
    cp a                                          ; $7481: $bf
    xor h                                         ; $7482: $ac
    cp d                                          ; $7483: $ba
    rst $00                                       ; $7484: $c7
    inc hl                                        ; $7485: $23
    ld a, a                                       ; $7486: $7f
    xor [hl]                                      ; $7487: $ae
    xor d                                         ; $7488: $aa
    ld h, [hl]                                    ; $7489: $66
    sbc d                                         ; $748a: $9a
    add a                                         ; $748b: $87
    sub [hl]                                      ; $748c: $96
    ei                                            ; $748d: $fb
    dec b                                         ; $748e: $05
    ld l, l                                       ; $748f: $6d
    and $75                                       ; $7490: $e6 $75
    dec c                                         ; $7492: $0d
    ld a, [hl-]                                   ; $7493: $3a

jr_061_7494:
    ld h, a                                       ; $7494: $67
    ld e, c                                       ; $7495: $59
    ld a, l                                       ; $7496: $7d
    db $f4                                        ; $7497: $f4
    xor $d5                                       ; $7498: $ee $d5
    ldh a, [$cc]                                  ; $749a: $f0 $cc
    ld [hl-], a                                   ; $749c: $32
    cp l                                          ; $749d: $bd
    ld [hl], h                                    ; $749e: $74
    rst $18                                       ; $749f: $df
    cpl                                           ; $74a0: $2f
    add a                                         ; $74a1: $87
    sub e                                         ; $74a2: $93
    inc de                                        ; $74a3: $13
    db $d3                                        ; $74a4: $d3
    ld l, c                                       ; $74a5: $69
    or e                                          ; $74a6: $b3
    and b                                         ; $74a7: $a0
    add sp, -$4d                                  ; $74a8: $e8 $b3
    inc l                                         ; $74aa: $2c
    xor c                                         ; $74ab: $a9
    ret c                                         ; $74ac: $d8

    ld c, b                                       ; $74ad: $48
    ld e, l                                       ; $74ae: $5d
    ld d, [hl]                                    ; $74af: $56
    adc c                                         ; $74b0: $89
    ld sp, hl                                     ; $74b1: $f9
    or e                                          ; $74b2: $b3
    di                                            ; $74b3: $f3
    sbc $01                                       ; $74b4: $de $01
    sub a                                         ; $74b6: $97
    sub c                                         ; $74b7: $91
    rra                                           ; $74b8: $1f
    sbc l                                         ; $74b9: $9d
    ld c, e                                       ; $74ba: $4b
    ld a, [hl+]                                   ; $74bb: $2a
    ld [hl], $52                                  ; $74bc: $36 $52
    rla                                           ; $74be: $17
    cp [hl]                                       ; $74bf: $be
    ld e, a                                       ; $74c0: $5f
    db $ed                                        ; $74c1: $ed
    adc $39                                       ; $74c2: $ce $39
    ld h, a                                       ; $74c4: $67
    sbc [hl]                                      ; $74c5: $9e
    ld a, [bc]                                    ; $74c6: $0a
    ret                                           ; $74c7: $c9


    rst $30                                       ; $74c8: $f7
    dec bc                                        ; $74c9: $0b
    rla                                           ; $74ca: $17
    push hl                                       ; $74cb: $e5
    ld e, a                                       ; $74cc: $5f
    db $10                                        ; $74cd: $10
    push hl                                       ; $74ce: $e5
    cp [hl]                                       ; $74cf: $be
    db $eb                                        ; $74d0: $eb
    sbc h                                         ; $74d1: $9c
    ld [de], a                                    ; $74d2: $12
    ld h, h                                       ; $74d3: $64
    and c                                         ; $74d4: $a1
    adc h                                         ; $74d5: $8c
    cp a                                          ; $74d6: $bf
    or b                                          ; $74d7: $b0
    ld [hl], a                                    ; $74d8: $77
    and l                                         ; $74d9: $a5
    ld e, c                                       ; $74da: $59
    rla                                           ; $74db: $17
    ld hl, sp-$09                                 ; $74dc: $f8 $f7
    dec bc                                        ; $74de: $0b
    db $ed                                        ; $74df: $ed
    cp a                                          ; $74e0: $bf
    rst $00                                       ; $74e1: $c7
    sbc h                                         ; $74e2: $9c
    add $3a                                       ; $74e3: $c6 $3a
    ld l, d                                       ; $74e5: $6a
    ld a, [$7b5e]                                 ; $74e6: $fa $5e $7b
    inc e                                         ; $74e9: $1c
    ld [hl], d                                    ; $74ea: $72
    push hl                                       ; $74eb: $e5
    rst $00                                       ; $74ec: $c7
    rrca                                          ; $74ed: $0f
    ld [hl], h                                    ; $74ee: $74
    db $e4                                        ; $74ef: $e4
    db $fd                                        ; $74f0: $fd
    ld l, b                                       ; $74f1: $68
    add sp, -$19                                  ; $74f2: $e8 $e7
    ld a, [hl]                                    ; $74f4: $7e
    ld bc, $4c87                                  ; $74f5: $01 $87 $4c
    sbc e                                         ; $74f8: $9b
    ld h, l                                       ; $74f9: $65
    sub l                                         ; $74fa: $95
    ld b, e                                       ; $74fb: $43
    xor [hl]                                      ; $74fc: $ae
    push af                                       ; $74fd: $f5
    sub l                                         ; $74fe: $95
    ld a, [c]                                     ; $74ff: $f2
    ld e, d                                       ; $7500: $5a
    db $fd                                        ; $7501: $fd
    or e                                          ; $7502: $b3
    ld e, [hl]                                    ; $7503: $5e
    cp d                                          ; $7504: $ba
    di                                            ; $7505: $f3
    sbc $95                                       ; $7506: $de $95
    call Call_061_6355                            ; $7508: $cd $55 $63
    or a                                          ; $750b: $b7
    xor h                                         ; $750c: $ac
    ld [hl], d                                    ; $750d: $72
    inc sp                                        ; $750e: $33
    add a                                         ; $750f: $87
    adc $7d                                       ; $7510: $ce $7d

jr_061_7512:
    ld e, $5a                                     ; $7512: $1e $5a
    and $5c                                       ; $7514: $e6 $5c
    sub h                                         ; $7516: $94
    ld a, a                                       ; $7517: $7f
    db $ed                                        ; $7518: $ed
    adc $07                                       ; $7519: $ce $07
    add d                                         ; $751b: $82
    ld hl, sp-$22                                 ; $751c: $f8 $de
    dec d                                         ; $751e: $15
    ld h, l                                       ; $751f: $65
    add sp, -$64                                  ; $7520: $e8 $9c
    ld [hl], e                                    ; $7522: $73
    and $9d                                       ; $7523: $e6 $9d
    rst $28                                       ; $7525: $ef
    and h                                         ; $7526: $a4
    ld a, $ec                                     ; $7527: $3e $ec
    sub c                                         ; $7529: $91
    ld d, [hl]                                    ; $752a: $56
    push de                                       ; $752b: $d5
    dec bc                                        ; $752c: $0b
    ld h, l                                       ; $752d: $65
    sbc h                                         ; $752e: $9c
    and c                                         ; $752f: $a1
    db $e3                                        ; $7530: $e3
    ld b, e                                       ; $7531: $43
    ld de, $4e3c                                  ; $7532: $11 $3c $4e
    add l                                         ; $7535: $85
    db $e4                                        ; $7536: $e4
    db $ed                                        ; $7537: $ed
    ld sp, $4dae                                  ; $7538: $31 $ae $4d
    ld a, a                                       ; $753b: $7f
    ld a, [de]                                    ; $753c: $1a
    db $dd                                        ; $753d: $dd
    jr jr_061_7512                                ; $753e: $18 $d2

    jp c, Jump_061_6d5f                           ; $7540: $da $5f $6d

    and $55                                       ; $7543: $e6 $55
    and l                                         ; $7545: $a5
    rst $30                                       ; $7546: $f7
    xor $c5                                       ; $7547: $ee $c5
    sub h                                         ; $7549: $94
    db $f4                                        ; $754a: $f4
    db $cc, $2b, $01                              ; $754b: $cc $2b $01
    ld a, c                                       ; $754e: $79
    ld a, [hl+]                                   ; $754f: $2a
    inc h                                         ; $7550: $24
    rst $28                                       ; $7551: $ef
    di                                            ; $7552: $f3
    ret z                                         ; $7553: $c8

    rra                                           ; $7554: $1f
    ei                                            ; $7555: $fb
    ld a, [hl]                                    ; $7556: $7e
    ld bc, $0757                                  ; $7557: $01 $57 $07
    and c                                         ; $755a: $a1
    adc l                                         ; $755b: $8d
    and h                                         ; $755c: $a4
    and $48                                       ; $755d: $e6 $48
    rst $20                                       ; $755f: $e7
    ld e, c                                       ; $7560: $59
    dec sp                                        ; $7561: $3b
    ld a, [c]                                     ; $7562: $f2
    ld l, d                                       ; $7563: $6a
    dec hl                                        ; $7564: $2b
    ld c, $b9                                     ; $7565: $0e $b9
    ld d, [hl]                                    ; $7567: $56
    ld [hl], e                                    ; $7568: $73
    db $ed                                        ; $7569: $ed
    and c                                         ; $756a: $a1
    db $10                                        ; $756b: $10
    ei                                            ; $756c: $fb
    ret                                           ; $756d: $c9


    push af                                       ; $756e: $f5
    sbc $75                                       ; $756f: $de $75
    sub [hl]                                      ; $7571: $96
    db $fd                                        ; $7572: $fd
    ld l, b                                       ; $7573: $68
    sub a                                         ; $7574: $97
    inc bc                                        ; $7575: $03
    pop de                                        ; $7576: $d1
    ret nc                                        ; $7577: $d0

    ld a, a                                       ; $7578: $7f
    db $dd                                        ; $7579: $dd
    ld b, l                                       ; $757a: $45
    db $fd                                        ; $757b: $fd
    ccf                                           ; $757c: $3f
    xor $3b                                       ; $757d: $ee $3b
    ld l, [hl]                                    ; $757f: $6e
    ld d, l                                       ; $7580: $55
    db $fd                                        ; $7581: $fd
    add [hl]                                      ; $7582: $86
    db $d3                                        ; $7583: $d3
    or d                                          ; $7584: $b2
    rra                                           ; $7585: $1f
    xor l                                         ; $7586: $ad
    call Call_000_0ebb                            ; $7587: $cd $bb $0e
    xor d                                         ; $758a: $aa
    db $eb                                        ; $758b: $eb
    ld c, $b1                                     ; $758c: $0e $b1
    push hl                                       ; $758e: $e5
    ld a, $72                                     ; $758f: $3e $72
    add a                                         ; $7591: $87
    sbc d                                         ; $7592: $9a
    ld b, e                                       ; $7593: $43
    di                                            ; $7594: $f3
    sbc h                                         ; $7595: $9c
    ei                                            ; $7596: $fb
    sbc l                                         ; $7597: $9d
    ld l, e                                       ; $7598: $6b
    sub e                                         ; $7599: $93
    ld [hl], $32                                  ; $759a: $36 $32
    or $b3                                        ; $759c: $f6 $b3
    res 0, c                                      ; $759e: $cb $81
    ld l, b                                       ; $75a0: $68
    add sp, -$41                                  ; $75a1: $e8 $bf
    xor $a2                                       ; $75a3: $ee $a2
    cp $1f                                        ; $75a5: $fe $1f
    rst $30                                       ; $75a7: $f7
    add hl, sp                                    ; $75a8: $39
    or l                                          ; $75a9: $b5
    cp a                                          ; $75aa: $bf
    ld d, a                                       ; $75ab: $57
    sub h                                         ; $75ac: $94
    or l                                          ; $75ad: $b5
    ld a, c                                       ; $75ae: $79
    rst $10                                       ; $75af: $d7
    ld b, c                                       ; $75b0: $41
    ld [hl], l                                    ; $75b1: $75
    db $dd                                        ; $75b2: $dd
    ld hl, $ecb6                                  ; $75b3: $21 $b6 $ec
    cp [hl]                                       ; $75b6: $be
    rst $28                                       ; $75b7: $ef
    dec a                                         ; $75b8: $3d
    call $3caa                                    ; $75b9: $cd $aa $3c
    rst $20                                       ; $75bc: $e7
    ret nc                                        ; $75bd: $d0

    inc a                                         ; $75be: $3c
    ld sp, $1687                                  ; $75bf: $31 $87 $16
    ld l, l                                       ; $75c2: $6d
    ld h, h                                       ; $75c3: $64
    db $fc                                        ; $75c4: $fc
    ld [hl], c                                    ; $75c5: $71
    and h                                         ; $75c6: $a4
    ld l, $68                                     ; $75c7: $2e $68
    ld e, c                                       ; $75c9: $59
    jp Jump_000_2871                              ; $75ca: $c3 $71 $28


    db $ec                                        ; $75cd: $ec
    cp h                                          ; $75ce: $bc
    ld e, a                                       ; $75cf: $5f
    rst $10                                       ; $75d0: $d7
    pop bc                                        ; $75d1: $c1
    ld a, [de]                                    ; $75d2: $1a
    ld a, d                                       ; $75d3: $7a
    and d                                         ; $75d4: $a2
    rst $10                                       ; $75d5: $d7
    ld c, d                                       ; $75d6: $4a
    ld l, d                                       ; $75d7: $6a
    db $ec                                        ; $75d8: $ec
    ld a, l                                       ; $75d9: $7d
    ld e, [hl]                                    ; $75da: $5e
    inc b                                         ; $75db: $04
    add d                                         ; $75dc: $82
    sbc [hl]                                      ; $75dd: $9e
    adc [hl]                                      ; $75de: $8e
    ei                                            ; $75df: $fb
    pop de                                        ; $75e0: $d1
    ld e, $a7                                     ; $75e1: $1e $a7
    ld [hl], a                                    ; $75e3: $77
    rst $18                                       ; $75e4: $df
    rst $30                                       ; $75e5: $f7
    inc e                                         ; $75e6: $1c

Call_061_75e7:
    or c                                          ; $75e7: $b1
    ld [hl], e                                    ; $75e8: $73
    sbc a                                         ; $75e9: $9f
    rla                                           ; $75ea: $17
    jp $9fc8                                      ; $75eb: $c3 $c8 $9f


    ld l, e                                       ; $75ee: $6b
    ld a, l                                       ; $75ef: $7d
    and l                                         ; $75f0: $a5
    call z, Call_061_438b                         ; $75f1: $cc $8b $43
    cp d                                          ; $75f4: $ba
    xor [hl]                                      ; $75f5: $ae
    db $fc                                        ; $75f6: $fc
    ret c                                         ; $75f7: $d8

    cp c                                          ; $75f8: $b9
    ret nc                                        ; $75f9: $d0

    cp d                                          ; $75fa: $ba
    ld e, a                                       ; $75fb: $5f
    ld d, a                                       ; $75fc: $57
    ld a, [hl]                                    ; $75fd: $7e
    dec [hl]                                      ; $75fe: $35
    pop de                                        ; $75ff: $d1
    add a                                         ; $7600: $87
    sub [hl]                                      ; $7601: $96
    and c                                         ; $7602: $a1
    ld [hl], e                                    ; $7603: $73
    and c                                         ; $7604: $a1
    ld [hl], l                                    ; $7605: $75
    cp a                                          ; $7606: $bf
    db $ed                                        ; $7607: $ed
    ld sp, $a1d4                                  ; $7608: $31 $d4 $a1
    ld a, c                                       ; $760b: $79
    adc $91                                       ; $760c: $ce $91
    pop af                                        ; $760e: $f1
    rst $00                                       ; $760f: $c7
    pop de                                        ; $7610: $d1
    ld e, l                                       ; $7611: $5d
    add $19                                       ; $7612: $c6 $19
    ld [hl], d                                    ; $7614: $72
    ld l, b                                       ; $7615: $68
    sbc [hl]                                      ; $7616: $9e
    sub e                                         ; $7617: $93
    or [hl]                                       ; $7618: $b6
    jp c, $739c                                   ; $7619: $da $9c $73

    ld l, b                                       ; $761c: $68
    ld e, [hl]                                    ; $761d: $5e
    inc c                                         ; $761e: $0c
    xor c                                         ; $761f: $a9
    call c, Call_061_4ca1                         ; $7620: $dc $a1 $4c
    ld b, d                                       ; $7623: $42
    ld sp, $d2af                                  ; $7624: $31 $af $d2
    add hl, hl                                    ; $7627: $29
    dec e                                         ; $7628: $1d
    dec l                                         ; $7629: $2d
    cp h                                          ; $762a: $bc
    ld d, b                                       ; $762b: $50
    ld d, $53                                     ; $762c: $16 $53
    ld [de], a                                    ; $762e: $12
    ld hl, $3bd2                                  ; $762f: $21 $d2 $3b
    ld a, [c]                                     ; $7632: $f2
    db $fd                                        ; $7633: $fd
    ld [bc], a                                    ; $7634: $02
    db $ed                                        ; $7635: $ed
    pop af                                        ; $7636: $f1
    rst $00                                       ; $7637: $c7
    add hl, sp                                    ; $7638: $39
    add a                                         ; $7639: $87
    and $73                                       ; $763a: $e6 $73
    ld e, [hl]                                    ; $763c: $5e
    ld l, l                                       ; $763d: $6d
    and $39                                       ; $763e: $e6 $39
    ld h, a                                       ; $7640: $67
    sbc c                                         ; $7641: $99
    ld e, [hl]                                    ; $7642: $5e
    dec [hl]                                      ; $7643: $35
    jp nc, $90a1                                  ; $7644: $d2 $a1 $90

    add $aa                                       ; $7647: $c6 $aa
    ld a, [hl]                                    ; $7649: $7e
    xor e                                         ; $764a: $ab
    push hl                                       ; $764b: $e5
    ld a, e                                       ; $764c: $7b
    ld l, l                                       ; $764d: $6d
    and $39                                       ; $764e: $e6 $39
    ld b, a                                       ; $7650: $47
    ld [hl], a                                    ; $7651: $77
    ld e, c                                       ; $7652: $59
    dec b                                         ; $7653: $05
    and l                                         ; $7654: $a5
    sbc h                                         ; $7655: $9c
    ld l, e                                       ; $7656: $6b
    dec [hl]                                      ; $7657: $35
    ld [hl], a                                    ; $7658: $77
    call c, Call_061_495a                         ; $7659: $dc $5a $49
    adc l                                         ; $765c: $8d
    rst $30                                       ; $765d: $f7
    ld a, c                                       ; $765e: $79
    db $fc                                        ; $765f: $fc
    adc e                                         ; $7660: $8b
    add a                                         ; $7661: $87
    sub [hl]                                      ; $7662: $96
    or l                                          ; $7663: $b5
    sbc d                                         ; $7664: $9a
    rst $30                                       ; $7665: $f7
    dec bc                                        ; $7666: $0b
    ld l, l                                       ; $7667: $6d
    and $39                                       ; $7668: $e6 $39
    ld h, a                                       ; $766a: $67
    sbc c                                         ; $766b: $99
    ld e, [hl]                                    ; $766c: $5e
    dec [hl]                                      ; $766d: $35
    jp nc, $90a1                                  ; $766e: $d2 $a1 $90

    add $aa                                       ; $7671: $c6 $aa
    ld a, [hl]                                    ; $7673: $7e
    xor e                                         ; $7674: $ab
    ld h, l                                       ; $7675: $65
    db $ed                                        ; $7676: $ed
    dec sp                                        ; $7677: $3b
    db $e4                                        ; $7678: $e4
    adc c                                         ; $7679: $89
    ld [hl], c                                    ; $767a: $71
    rra                                           ; $767b: $1f
    add a                                         ; $767c: $87
    ld d, b                                       ; $767d: $50
    ld d, [hl]                                    ; $767e: $56
    db $dd                                        ; $767f: $dd
    ld h, e                                       ; $7680: $63
    db $ed                                        ; $7681: $ed
    cpl                                           ; $7682: $2f
    rlca                                          ; $7683: $07
    ld e, h                                       ; $7684: $5c
    and $9c                                       ; $7685: $e6 $9c
    ld e, [hl]                                    ; $7687: $5e
    dec [hl]                                      ; $7688: $35
    jp nc, Jump_061_68a1                          ; $7689: $d2 $a1 $68

    rst $18                                       ; $768c: $df
    ld hl, $748f                                  ; $768d: $21 $8f $74
    adc $39                                       ; $7690: $ce $39
    di                                            ; $7692: $f3
    ld d, h                                       ; $7693: $54
    ld c, b                                       ; $7694: $48
    cp [hl]                                       ; $7695: $be
    ld e, a                                       ; $7696: $5f
    ld l, l                                       ; $7697: $6d
    jr nz, @-$73                                  ; $7698: $20 $8b

    ld a, [hl]                                    ; $769a: $7e
    ld l, $c4                                     ; $769b: $2e $c4
    adc $1e                                       ; $769d: $ce $1e
    ld [hl], b                                    ; $769f: $70
    ld l, b                                       ; $76a0: $68
    add hl, de                                    ; $76a1: $19
    db $ec                                        ; $76a2: $ec
    ld bc, $fc59                                  ; $76a3: $01 $59 $fc
    db $d3                                        ; $76a6: $d3
    ld c, h                                       ; $76a7: $4c
    add hl, hl                                    ; $76a8: $29
    cp h                                          ; $76a9: $bc
    adc b                                         ; $76aa: $88
    sbc d                                         ; $76ab: $9a
    inc hl                                        ; $76ac: $23
    cp a                                          ; $76ad: $bf
    inc c                                         ; $76ae: $0c
    xor c                                         ; $76af: $a9
    add sp, $7b                                   ; $76b0: $e8 $7b
    ld l, l                                       ; $76b2: $6d
    and $39                                       ; $76b3: $e6 $39
    rst $10                                       ; $76b5: $d7
    ld l, d                                       ; $76b6: $6a
    adc [hl]                                      ; $76b7: $8e
    ld bc, $cfbd                                  ; $76b8: $01 $bd $cf
    ld b, e                                       ; $76bb: $43
    ld a, l                                       ; $76bc: $7d

Jump_061_76bd:
    ld d, c                                       ; $76bd: $51
    inc sp                                        ; $76be: $33
    add a                                         ; $76bf: $87
    sub [hl]                                      ; $76c0: $96
    ld a, e                                       ; $76c1: $7b
    rla                                           ; $76c2: $17
    ld d, e                                       ; $76c3: $53
    ld [hl], e                                    ; $76c4: $73
    dec h                                         ; $76c5: $25
    ldh [rNR30], a                                ; $76c6: $e0 $1a
    xor c                                         ; $76c8: $a9
    sub a                                         ; $76c9: $97
    db $fd                                        ; $76ca: $fd
    ld l, b                                       ; $76cb: $68
    ld l, b                                       ; $76cc: $68
    cp c                                          ; $76cd: $b9
    ld [hl], a                                    ; $76ce: $77
    dec [hl]                                      ; $76cf: $35
    inc d                                         ; $76d0: $14
    add [hl]                                      ; $76d1: $86
    or d                                          ; $76d2: $b2
    jp nc, $e829                                  ; $76d3: $d2 $29 $e8

    ld c, $65                                     ; $76d6: $0e $65
    ld [hl], h                                    ; $76d8: $74
    cp l                                          ; $76d9: $bd
    adc a                                         ; $76da: $8f
    and c                                         ; $76db: $a1
    rrca                                          ; $76dc: $0f
    and c                                         ; $76dd: $a1
    call c, Call_000_072f                         ; $76de: $dc $2f $07
    ld e, h                                       ; $76e1: $5c
    ld d, $43                                     ; $76e2: $16 $43
    rst $28                                       ; $76e4: $ef
    ld e, [hl]                                    ; $76e5: $5e
    add c                                         ; $76e6: $81
    ret c                                         ; $76e7: $d8

    ei                                            ; $76e8: $fb
    sbc l                                         ; $76e9: $9d
    rla                                           ; $76ea: $17
    add l                                         ; $76eb: $85
    call c, $99e7                                 ; $76ec: $dc $e7 $99
    xor $d5                                       ; $76ef: $ee $d5
    ld h, $7e                                     ; $76f1: $26 $7e
    sbc c                                         ; $76f3: $99
    ld b, l                                       ; $76f4: $45
    ei                                            ; $76f5: $fb
    dec bc                                        ; $76f6: $0b
    rlca                                          ; $76f7: $07
    dec l                                         ; $76f8: $2d
    cp e                                          ; $76f9: $bb
    rst $28                                       ; $76fa: $ef
    ld a, e                                       ; $76fb: $7b
    ld h, h                                       ; $76fc: $64
    db $ec                                        ; $76fd: $ec
    ld h, a                                       ; $76fe: $67
    push hl                                       ; $76ff: $e5
    rst $00                                       ; $7700: $c7
    ld a, e                                       ; $7701: $7b
    and b                                         ; $7702: $a0
    inc c                                         ; $7703: $0c
    dec l                                         ; $7704: $2d
    rst $20                                       ; $7705: $e7
    cp h                                          ; $7706: $bc
    rlca                                          ; $7707: $07
    ld e, h                                       ; $7708: $5c
    add $19                                       ; $7709: $c6 $19
    ld [hl], d                                    ; $770b: $72
    sbc a                                         ; $770c: $9f
    ld b, a                                       ; $770d: $47
    ld [hl], a                                    ; $770e: $77
    ld e, c                                       ; $770f: $59
    inc c                                         ; $7710: $0c
    ld a, l                                       ; $7711: $7d
    xor l                                         ; $7712: $ad
    and h                                         ; $7713: $a4
    add $9e                                       ; $7714: $c6 $9e
    ld a, [$96ad]                                 ; $7716: $fa $ad $96
    ld b, l                                       ; $7719: $45
    ei                                            ; $771a: $fb
    dec bc                                        ; $771b: $0b
    rlca                                          ; $771c: $07
    ld e, h                                       ; $771d: $5c
    and [hl]                                      ; $771e: $a6
    cp [hl]                                       ; $771f: $be
    xor h                                         ; $7720: $ac
    inc [hl]                                      ; $7721: $34
    rlca                                          ; $7722: $07
    add d                                         ; $7723: $82
    add e                                         ; $7724: $83
    and c                                         ; $7725: $a1
    ld h, l                                       ; $7726: $65
    ld d, c                                       ; $7727: $51
    ret z                                         ; $7728: $c8

    add [hl]                                      ; $7729: $86
    adc [hl]                                      ; $772a: $8e
    db $ec                                        ; $772b: $ec
    db $fd                                        ; $772c: $fd
    ld [$41dd], sp                                ; $772d: $08 $dd $41
    jp z, $b474                                   ; $7730: $ca $74 $b4

    db $ec                                        ; $7733: $ec
    di                                            ; $7734: $f3
    ld a, [de]                                    ; $7735: $1a
    dec e                                         ; $7736: $1d
    ld h, d                                       ; $7737: $62
    xor a                                         ; $7738: $af
    sbc d                                         ; $7739: $9a
    or l                                          ; $773a: $b5
    cp a                                          ; $773b: $bf
    db $ed                                        ; $773c: $ed
    or c                                          ; $773d: $b1
    sbc a                                         ; $773e: $9f
    and c                                         ; $773f: $a1
    di                                            ; $7740: $f3
    sbc h                                         ; $7741: $9c
    rla                                           ; $7742: $17
    sub a                                         ; $7743: $97
    db $eb                                        ; $7744: $eb
    inc hl                                        ; $7745: $23
    ld a, a                                       ; $7746: $7f
    adc [hl]                                      ; $7747: $8e
    xor $32                                       ; $7748: $ee $32
    add h                                         ; $774a: $84
    and d                                         ; $774b: $a2
    db $fd                                        ; $774c: $fd
    dec b                                         ; $774d: $05
    db $ed                                        ; $774e: $ed
    ccf                                           ; $774f: $3f
    ld d, e                                       ; $7750: $53
    or e                                          ; $7751: $b3
    dec hl                                        ; $7752: $2b
    inc bc                                        ; $7753: $03
    or e                                          ; $7754: $b3
    ld d, e                                       ; $7755: $53
    ei                                            ; $7756: $fb
    xor [hl]                                      ; $7757: $ae
    ld b, l                                       ; $7758: $45
    cpl                                           ; $7759: $2f
    inc a                                         ; $775a: $3c
    sub e                                         ; $775b: $93
    rst $08                                       ; $775c: $cf
    ld l, h                                       ; $775d: $6c
    reti                                          ; $775e: $d9


    dec d                                         ; $775f: $15
    rla                                           ; $7760: $17
    rrca                                          ; $7761: $0f
    inc b                                         ; $7762: $04
    dec a                                         ; $7763: $3d
    jr jr_061_77c0                                ; $7764: $18 $5a

    ld d, $85                                     ; $7766: $16 $85
    ld l, h                                       ; $7768: $6c
    add sp, -$38                                  ; $7769: $e8 $c8
    sbc $8f                                       ; $776b: $de $8f
    ret nc                                        ; $776d: $d0

    dec e                                         ; $776e: $1d
    and h                                         ; $776f: $a4
    ld l, b                                       ; $7770: $68
    ld e, a                                       ; $7771: $5f
    sbc e                                         ; $7772: $9b
    cp [hl]                                       ; $7773: $be
    xor b                                         ; $7774: $a8
    sbc c                                         ; $7775: $99
    or e                                          ; $7776: $b3
    xor h                                         ; $7777: $ac
    ld b, c                                       ; $7778: $41
    ld b, l                                       ; $7779: $45
    xor a                                         ; $777a: $af
    push de                                       ; $777b: $d5
    call c, Call_000_2789                         ; $777c: $dc $89 $27
    ld c, h                                       ; $777f: $4c
    add l                                         ; $7780: $85
    sbc $5d                                       ; $7781: $de $5d
    ret nz                                        ; $7783: $c0

    xor l                                         ; $7784: $ad
    nop                                           ; $7785: $00
    jp nz, Jump_000_0ef7                          ; $7786: $c2 $f7 $0e

    ld a, c                                       ; $7789: $79
    or l                                          ; $778a: $b5
    cp c                                          ; $778b: $b9
    rst $08                                       ; $778c: $cf
    ld d, e                                       ; $778d: $53
    pop hl                                        ; $778e: $e1
    ld a, c                                       ; $778f: $79
    inc a                                         ; $7790: $3c
    add [hl]                                      ; $7791: $86
    sbc $f8                                       ; $7792: $de $f8
    push bc                                       ; $7794: $c5
    ld h, e                                       ; $7795: $63
    add sp, $43                                   ; $7796: $e8 $43
    sub b                                         ; $7798: $90
    push de                                       ; $7799: $d5
    db $10                                        ; $779a: $10
    cp e                                          ; $779b: $bb
    cp $7e                                        ; $779c: $fe $7e
    cp a                                          ; $779e: $bf
    rlca                                          ; $779f: $07
    ld e, h                                       ; $77a0: $5c
    ld d, $43                                     ; $77a1: $16 $43

Call_061_77a3:
    ld e, a                                       ; $77a3: $5f
    ld c, h                                       ; $77a4: $4c
    ld c, c                                       ; $77a5: $49
    rst $28                                       ; $77a6: $ef
    ld [hl], c                                    ; $77a7: $71
    ld a, d                                       ; $77a8: $7a
    ld d, c                                       ; $77a9: $51
    ret z                                         ; $77aa: $c8

    ld a, [bc]                                    ; $77ab: $0a
    add l                                         ; $77ac: $85
    and c                                         ; $77ad: $a1
    inc c                                         ; $77ae: $0c
    dec l                                         ; $77af: $2d
    ld [c], a                                     ; $77b0: $e2
    sub l                                         ; $77b1: $95
    cpl                                           ; $77b2: $2f
    push hl                                       ; $77b3: $e5
    ld a, [hl]                                    ; $77b4: $7e
    ld bc, $f1ed                                  ; $77b5: $01 $ed $f1
    rst $00                                       ; $77b8: $c7
    ld b, l                                       ; $77b9: $45
    ld hl, $9a5d                                  ; $77ba: $21 $5d $9a
    add hl, sp                                    ; $77bd: $39
    ld [hl], h                                    ; $77be: $74
    sbc [hl]                                      ; $77bf: $9e

jr_061_77c0:
    di                                            ; $77c0: $f3
    ld [bc], a                                    ; $77c1: $02
    ld l, l                                       ; $77c2: $6d
    adc $45                                       ; $77c3: $ce $45
    and b                                         ; $77c5: $a0
    ld b, [hl]                                    ; $77c6: $46
    ld [hl], a                                    ; $77c7: $77
    add hl, de                                    ; $77c8: $19
    ld b, d                                       ; $77c9: $42
    pop de                                        ; $77ca: $d1
    cp $02                                        ; $77cb: $fe $02
    add a                                         ; $77cd: $87
    sbc h                                         ; $77ce: $9c
    ld a, e                                       ; $77cf: $7b
    cp [hl]                                       ; $77d0: $be
    inc c                                         ; $77d1: $0c
    call $b5b4                                    ; $77d2: $cd $b4 $b5
    rst $38                                       ; $77d5: $ff
    ld c, h                                       ; $77d6: $4c
    call Call_000_0cae                            ; $77d7: $cd $ae $0c
    call z, $ed4e                                 ; $77da: $cc $4e $ed
    dec sp                                        ; $77dd: $3b
    ldh [$32], a                                  ; $77de: $e0 $32
    ld a, [c]                                     ; $77e0: $f2
    rst $20                                       ; $77e1: $e7
    ret z                                         ; $77e2: $c8

    rst $38                                       ; $77e3: $ff
    ret nc                                        ; $77e4: $d0

    or $7c                                        ; $77e5: $f6 $7c
    db $fc                                        ; $77e7: $fc
    rst $08                                       ; $77e8: $cf
    xor [hl]                                      ; $77e9: $ae
    inc b                                         ; $77ea: $04
    ld hl, $fbea                                  ; $77eb: $21 $ea $fb
    dec b                                         ; $77ee: $05
    rst $10                                       ; $77ef: $d7
    and d                                         ; $77f0: $a2
    rst $10                                       ; $77f1: $d7
    ld l, d                                       ; $77f2: $6a
    ld c, [hl]                                    ; $77f3: $4e
    ld a, $b3                                     ; $77f4: $3e $b3
    db $e3                                        ; $77f6: $e3
    cpl                                           ; $77f7: $2f

jr_061_77f8:
    sbc b                                         ; $77f8: $98
    jr nz, jr_061_7860                            ; $77f9: $20 $65

    ld d, a                                       ; $77fb: $57
    ld e, h                                       ; $77fc: $5c
    inc a                                         ; $77fd: $3c
    db $10                                        ; $77fe: $10
    db $f4                                        ; $77ff: $f4
    ld h, b                                       ; $7800: $60
    ld l, b                                       ; $7801: $68
    ld e, c                                       ; $7802: $59
    inc d                                         ; $7803: $14
    or d                                          ; $7804: $b2
    and c                                         ; $7805: $a1
    inc hl                                        ; $7806: $23
    ld a, e                                       ; $7807: $7b
    ccf                                           ; $7808: $3f
    ld b, d                                       ; $7809: $42
    ld [hl], a                                    ; $780a: $77
    sub b                                         ; $780b: $90
    ld b, d                                       ; $780c: $42
    dec de                                        ; $780d: $1b
    add hl, de                                    ; $780e: $19
    ld b, e                                       ; $780f: $43

jr_061_7810:
    dec e                                         ; $7810: $1d
    jr z, jr_061_77f8                             ; $7811: $28 $e5

    pop de                                        ; $7813: $d1
    ld e, l                                       ; $7814: $5d
    add $bf                                       ; $7815: $c6 $bf
    jr c, jr_061_7810                             ; $7817: $38 $f7

    cp b                                          ; $7819: $b8
    sbc b                                         ; $781a: $98
    rla                                           ; $781b: $17
    sbc c                                         ; $781c: $99
    sbc $ef                                       ; $781d: $de $ef
    ld e, l                                       ; $781f: $5d
    jr z, jr_061_788d                             ; $7820: $28 $6b

    ld d, b                                       ; $7822: $50
    pop de                                        ; $7823: $d1
    ld l, e                                       ; $7824: $6b
    dec [hl]                                      ; $7825: $35
    ld [hl], a                                    ; $7826: $77
    ld [c], a                                     ; $7827: $e2
    add hl, bc                                    ; $7828: $09
    ld d, e                                       ; $7829: $53
    and c                                         ; $782a: $a1
    ld [hl], a                                    ; $782b: $77
    rla                                           ; $782c: $17
    ld [hl], b                                    ; $782d: $70
    dec hl                                        ; $782e: $2b
    add b                                         ; $782f: $80
    ldh a, [$bd]                                  ; $7830: $f0 $bd
    ld b, e                                       ; $7832: $43
    sbc $e7                                       ; $7833: $de $e7
    xor c                                         ; $7835: $a9
    ldh a, [$3c]                                  ; $7836: $f0 $3c
    ld e, $43                                     ; $7838: $1e $43
    ld l, a                                       ; $783a: $6f
    db $fc                                        ; $783b: $fc
    ld [c], a                                     ; $783c: $e2
    ld sp, $d5f4                                  ; $783d: $31 $f4 $d5
    db $10                                        ; $7840: $10
    cp e                                          ; $7841: $bb
    cp $6e                                        ; $7842: $fe $6e
    cp c                                          ; $7844: $b9
    ld e, a                                       ; $7845: $5f
    rlca                                          ; $7846: $07
    ld e, h                                       ; $7847: $5c
    ld d, $1b                                     ; $7848: $16 $1b
    rst $30                                       ; $784a: $f7
    ld a, c                                       ; $784b: $79
    add sp, -$64                                  ; $784c: $e8 $9c
    ld [hl], e                                    ; $784e: $73
    ld [de], a                                    ; $784f: $12
    adc d                                         ; $7850: $8a
    ld h, l                                       ; $7851: $65
    and h                                         ; $7852: $a4
    ld [hl], e                                    ; $7853: $73
    rst $30                                       ; $7854: $f7
    ld a, l                                       ; $7855: $7d
    adc a                                         ; $7856: $8f
    xor $32                                       ; $7857: $ee $32
    push af                                       ; $7859: $f5
    ld h, l                                       ; $785a: $65
    inc h                                         ; $785b: $24
    dec [hl]                                      ; $785c: $35
    dec a                                         ; $785d: $3d
    db $f4                                        ; $785e: $f4
    ld [hl], e                                    ; $785f: $73

jr_061_7860:
    cp a                                          ; $7860: $bf
    sub a                                         ; $7861: $97
    add [hl]                                      ; $7862: $86
    ld h, a                                       ; $7863: $67
    ld a, [hl-]                                   ; $7864: $3a
    jp nc, $c2a6                                  ; $7865: $d2 $a6 $c2

    inc sp                                        ; $7868: $33
    dec e                                         ; $7869: $1d

Jump_061_786a:
    ld b, a                                       ; $786a: $47
    add $21                                       ; $786b: $c6 $21
    add a                                         ; $786d: $87
    ld a, [$b82c]                                 ; $786e: $fa $2c $b8
    ld [c], a                                     ; $7871: $e2
    rst $20                                       ; $7872: $e7
    ld [hl], c                                    ; $7873: $71
    ld c, $a1                                     ; $7874: $0e $a1
    call c, $972f                                 ; $7876: $dc $2f $97
    scf                                           ; $7879: $37
    ld l, c                                       ; $787a: $69
    ld b, e                                       ; $787b: $43
    rst $20                                       ; $787c: $e7
    sbc h                                         ; $787d: $9c
    ld b, e                                       ; $787e: $43
    ld e, l                                       ; $787f: $5d
    ei                                            ; $7880: $fb
    dec bc                                        ; $7881: $0b
    rst $10                                       ; $7882: $d7
    and d                                         ; $7883: $a2
    rst $10                                       ; $7884: $d7
    ld l, d                                       ; $7885: $6a
    adc $b2                                       ; $7886: $ce $b2
    jp c, $58fa                                   ; $7888: $da $fa $58

    sbc l                                         ; $788b: $9d
    ld h, [hl]                                    ; $788c: $66

jr_061_788d:
    dec a                                         ; $788d: $3d
    ld l, c                                       ; $788e: $69
    inc hl                                        ; $788f: $23
    db $e3                                        ; $7890: $e3
    ld a, a                                       ; $7891: $7f
    db $e4                                        ; $7892: $e4
    xor [hl]                                      ; $7893: $ae
    inc c                                         ; $7894: $0c
    call z, Call_061_73ce                         ; $7895: $cc $ce $73
    sub $66                                       ; $7898: $d6 $66
    sbc [hl]                                      ; $789a: $9e
    ld a, [bc]                                    ; $789b: $0a
    rst $08                                       ; $789c: $cf
    db $e3                                        ; $789d: $e3
    inc e                                         ; $789e: $1c
    ld b, e                                       ; $789f: $43
    rst $18                                       ; $78a0: $df
    rst $20                                       ; $78a1: $e7
    xor c                                         ; $78a2: $a9
    ld d, b                                       ; $78a3: $50
    reti                                          ; $78a4: $d9


    ld b, e                                       ; $78a5: $43
    jr z, jr_061_78e3                             ; $78a6: $28 $3b

    ld [hl], l                                    ; $78a8: $75
    ld a, [hl+]                                   ; $78a9: $2a
    db $f4                                        ; $78aa: $f4
    xor $02                                       ; $78ab: $ee $02
    ld l, [hl]                                    ; $78ad: $6e
    dec b                                         ; $78ae: $05
    db $10                                        ; $78af: $10
    cp [hl]                                       ; $78b0: $be
    ld [hl], a                                    ; $78b1: $77
    ld l, c                                       ; $78b2: $69
    ld a, b                                       ; $78b3: $78
    ld d, [hl]                                    ; $78b4: $56
    sbc e                                         ; $78b5: $9b
    ld h, e                                       ; $78b6: $63
    add sp, -$73                                  ; $78b7: $e8 $8d
    ld e, a                                       ; $78b9: $5f
    inc a                                         ; $78ba: $3c
    ld e, b                                       ; $78bb: $58
    or l                                          ; $78bc: $b5
    inc d                                         ; $78bd: $14
    db $ed                                        ; $78be: $ed
    cpl                                           ; $78bf: $2f
    rla                                           ; $78c0: $17
    and $d0                                       ; $78c1: $e6 $d0
    xor e                                         ; $78c3: $ab
    db $fc                                        ; $78c4: $fc
    ld de, $5aca                                  ; $78c5: $11 $ca $5a
    call $45a1                                    ; $78c8: $cd $a1 $45
    inc a                                         ; $78cb: $3c
    di                                            ; $78cc: $f3
    cpl                                           ; $78cd: $2f
    ld a, $67                                     ; $78ce: $3e $67
    rlca                                          ; $78d0: $07
    ld e, h                                       ; $78d1: $5c
    and [hl]                                      ; $78d2: $a6
    cp [hl]                                       ; $78d3: $be
    inc c                                         ; $78d4: $0c
    sub h                                         ; $78d5: $94
    ld a, [c]                                     ; $78d6: $f2
    xor d                                         ; $78d7: $aa
    add a                                         ; $78d8: $87
    ld a, [hl]                                    ; $78d9: $7e
    xor $17                                       ; $78da: $ee $17
    ld l, l                                       ; $78dc: $6d
    ld a, [$97d4]                                 ; $78dd: $fa $d4 $97
    add c                                         ; $78e0: $81
    ld d, d                                       ; $78e1: $52
    ld e, [hl]                                    ; $78e2: $5e

jr_061_78e3:
    and e                                         ; $78e3: $a3
    ld b, e                                       ; $78e4: $43
    db $ec                                        ; $78e5: $ec
    push bc                                       ; $78e6: $c5
    add $3d                                       ; $78e7: $c6 $3d
    add $7d                                       ; $78e9: $c6 $7d
    sbc [hl]                                      ; $78eb: $9e
    ld l, $58                                     ; $78ec: $2e $58
    sbc d                                         ; $78ee: $9a
    ld a, e                                       ; $78ef: $7b
    and b                                         ; $78f0: $a0

jr_061_78f1:
    call c, Call_000_072f                         ; $78f1: $dc $2f $07
    ld e, h                                       ; $78f4: $5c
    ld d, [hl]                                    ; $78f5: $56
    push de                                       ; $78f6: $d5
    rst $28                                       ; $78f7: $ef
    sub e                                         ; $78f8: $93
    and b                                         ; $78f9: $a0
    ld d, $81                                     ; $78fa: $16 $81
    and b                                         ; $78fc: $a0
    add a                                         ; $78fd: $87
    ld d, b                                       ; $78fe: $50
    or h                                          ; $78ff: $b4
    cp a                                          ; $7900: $bf
    ld l, l                                       ; $7901: $6d
    ld a, [$350a]                                 ; $7902: $fa $0a $35
    add a                                         ; $7905: $87
    and $75                                       ; $7906: $e6 $75
    inc sp                                        ; $7908: $33
    dec sp                                        ; $7909: $3b
    cp l                                          ; $790a: $bd
    jr z, jr_061_78f1                             ; $790b: $28 $e4

    db $10                                        ; $790d: $10
    jp z, Jump_061_7baa                           ; $790e: $ca $aa $7b

    ld c, h                                       ; $7911: $4c
    dec de                                        ; $7912: $1b
    add hl, de                                    ; $7913: $19
    ld b, e                                       ; $7914: $43
    dec e                                         ; $7915: $1d
    ld [$102b], a                                 ; $7916: $ea $2b $10
    dec sp                                        ; $7919: $3b
    rla                                           ; $791a: $17
    ld e, d                                       ; $791b: $5a
    or h                                          ; $791c: $b4
    sub c                                         ; $791d: $91
    or c                                          ; $791e: $b1
    sbc a                                         ; $791f: $9f
    and c                                         ; $7920: $a1
    ld a, $0b                                     ; $7921: $3e $0b
    adc $79                                       ; $7923: $ce $79
    cp a                                          ; $7925: $bf
    rlca                                          ; $7926: $07
    ld e, h                                       ; $7927: $5c
    ld d, [hl]                                    ; $7928: $56
    sbc e                                         ; $7929: $9b
    inc bc                                        ; $792a: $03
    and l                                         ; $792b: $a5
    inc a                                         ; $792c: $3c
    add hl, bc                                    ; $792d: $09
    push bc                                       ; $792e: $c5
    ld b, d                                       ; $792f: $42
    ld e, e                                       ; $7930: $5b
    dec hl                                        ; $7931: $2b
    ld b, e                                       ; $7932: $43
    db $e4                                        ; $7933: $e4
    ld e, d                                       ; $7934: $5a
    ld b, e                                       ; $7935: $43
    sbc $2f                                       ; $7936: $de $2f
    ld l, l                                       ; $7938: $6d
    and $15                                       ; $7939: $e6 $15
    ld a, d                                       ; $793b: $7a
    ld c, b                                       ; $793c: $48
    db $f4                                        ; $793d: $f4
    add sp, $2e                                   ; $793e: $e8 $2e
    inc hl                                        ; $7940: $23
    db $dd                                        ; $7941: $dd
    cp e                                          ; $7942: $bb
    ld [hl], e                                    ; $7943: $73
    and b                                         ; $7944: $a0
    sub h                                         ; $7945: $94
    rst $28                                       ; $7946: $ef
    dec e                                         ; $7947: $1d
    or h                                          ; $7948: $b4
    call z, $f732                                 ; $7949: $cc $32 $f7
    xor $dc                                       ; $794c: $ee $dc
    rla                                           ; $794e: $17
    or h                                          ; $794f: $b4
    xor h                                         ; $7950: $ac
    db $eb                                        ; $7951: $eb
    ld d, l                                       ; $7952: $55
    add hl, sp                                    ; $7953: $39
    rla                                           ; $7954: $17
    ld e, $95                                     ; $7955: $1e $95
    jr nz, jr_061_79be                            ; $7957: $20 $65

jr_061_7959:
    and c                                         ; $7959: $a1
    adc h                                         ; $795a: $8c
    xor $b2                                       ; $795b: $ee $b2
    jr jr_061_7959                                ; $795d: $18 $fa

    ld h, d                                       ; $795f: $62
    ld b, b                                       ; $7960: $40
    adc a                                         ; $7961: $8f
    adc h                                         ; $7962: $8c
    db $fd                                        ; $7963: $fd
    inc c                                         ; $7964: $0c
    call $de73                                    ; $7965: $cd $73 $de
    cpl                                           ; $7968: $2f
    ld l, l                                       ; $7969: $6d
    ld e, $f9                                     ; $796a: $1e $f9
    ld [hl], e                                    ; $796c: $73
    adc l                                         ; $796d: $8d
    ld e, $94                                     ; $796e: $1e $94
    db $d3                                        ; $7970: $d3
    inc a                                         ; $7971: $3c
    or h                                          ; $7972: $b4
    adc b                                         ; $7973: $88
    and a                                         ; $7974: $a7
    ld b, d                                       ; $7975: $42
    ld h, $60                                     ; $7976: $26 $60
    ret z                                         ; $7978: $c8

    db $dd                                        ; $7979: $dd
    rst $30                                       ; $797a: $f7
    dec a                                         ; $797b: $3d
    cp d                                          ; $797c: $ba
    srl b                                         ; $797d: $cb $38
    ld b, e                                       ; $797f: $43
    ld c, $94                                     ; $7980: $0e $94

jr_061_7982:
    ld a, [c]                                     ; $7982: $f2
    ld a, $8f                                     ; $7983: $3e $8f
    xor $32                                       ; $7985: $ee $32
    push af                                       ; $7987: $f5
    ld h, l                                       ; $7988: $65
    ld a, [hl+]                                   ; $7989: $2a
    inc a                                         ; $798a: $3c
    adc a                                         ; $798b: $8f
    rla                                           ; $798c: $17
    add l                                         ; $798d: $85
    ld l, h                                       ; $798e: $6c
    ret nz                                        ; $798f: $c0

    ret nc                                        ; $7990: $d0

    rst $08                                       ; $7991: $cf
    db $fd                                        ; $7992: $fd
    ld [bc], a                                    ; $7993: $02
    db $ed                                        ; $7994: $ed
    pop af                                        ; $7995: $f1
    ccf                                           ; $7996: $3f
    ld a, [c]                                     ; $7997: $f2
    sbc h                                         ; $7998: $9c
    ld e, l                                       ; $7999: $5d
    ret z                                         ; $799a: $c8

    ld [hl], e                                    ; $799b: $73
    rst $28                                       ; $799c: $ef
    adc $7d                                       ; $799d: $ce $7d
    ld b, c                                       ; $799f: $41
    di                                            ; $79a0: $f3
    ld a, [hl+]                                   ; $79a1: $2a
    ld d, e                                       ; $79a2: $53
    sub c                                         ; $79a3: $91
    dec a                                         ; $79a4: $3d
    db $10                                        ; $79a5: $10
    inc e                                         ; $79a6: $1c
    db $ec                                        ; $79a7: $ec
    add c                                         ; $79a8: $81
    ld [hl], d                                    ; $79a9: $72
    cp a                                          ; $79aa: $bf
    rst $20                                       ; $79ab: $e7
    sub c                                         ; $79ac: $91
    sbc a                                         ; $79ad: $9f
    or [hl]                                       ; $79ae: $b6
    or $9f                                        ; $79af: $f6 $9f
    xor c                                         ; $79b1: $a9
    reti                                          ; $79b2: $d9


    sub l                                         ; $79b3: $95
    add c                                         ; $79b4: $81
    reti                                          ; $79b5: $d9


    ld a, c                                       ; $79b6: $79
    xor a                                         ; $79b7: $af
    ld c, l                                       ; $79b8: $4d
    rra                                           ; $79b9: $1f
    ld sp, hl                                     ; $79ba: $f9
    ld [hl], e                                    ; $79bb: $73
    ld d, c                                       ; $79bc: $51
    db $d3                                        ; $79bd: $d3

jr_061_79be:
    inc a                                         ; $79be: $3c
    inc b                                         ; $79bf: $04
    ld e, c                                       ; $79c0: $59
    db $f4                                        ; $79c1: $f4
    or e                                          ; $79c2: $b3
    ld c, [hl]                                    ; $79c3: $4e
    db $fd                                        ; $79c4: $fd
    ld d, [hl]                                    ; $79c5: $56
    rrc e                                         ; $79c6: $cb $0b
    ld h, l                                       ; $79c8: $65
    xor b                                         ; $79c9: $a8
    xor a                                         ; $79ca: $af
    ld h, c                                       ; $79cb: $61
    pop de                                        ; $79cc: $d1
    jr nc, jr_061_7a0a                            ; $79cd: $30 $3b

    add a                                         ; $79cf: $87
    sub [hl]                                      ; $79d0: $96
    ld [hl], l                                    ; $79d1: $75
    jr z, jr_061_7982                             ; $79d2: $28 $ae

    pop hl                                        ; $79d4: $e1
    add hl, de                                    ; $79d5: $19
    ld sp, hl                                     ; $79d6: $f9
    ld h, l                                       ; $79d7: $65
    add l                                         ; $79d8: $85
    ld e, $12                                     ; $79d9: $1e $12
    ld a, l                                       ; $79db: $7d
    rst $28                                       ; $79dc: $ef
    ld b, d                                       ; $79dd: $42
    ld e, c                                       ; $79de: $59
    add e                                         ; $79df: $83
    adc d                                         ; $79e0: $8a
    ld e, [hl]                                    ; $79e1: $5e
    xor e                                         ; $79e2: $ab
    cp c                                          ; $79e3: $b9
    ld d, e                                       ; $79e4: $53
    and a                                         ; $79e5: $a7
    ld b, d                                       ; $79e6: $42
    rst $28                                       ; $79e7: $ef
    ld l, $e0                                     ; $79e8: $2e $e0
    ld d, [hl]                                    ; $79ea: $56
    nop                                           ; $79eb: $00
    pop hl                                        ; $79ec: $e1
    ld b, l                                       ; $79ed: $45
    ld hl, $79f7                                  ; $79ee: $21 $f7 $79
    ld sp, $3d25                                  ; $79f1: $31 $25 $3d
    dec e                                         ; $79f4: $1d
    cp l                                          ; $79f5: $bd
    ldh a, [$4c]                                  ; $79f6: $f0 $4c
    ld a, $b3                                     ; $79f8: $3e $b3
    push hl                                       ; $79fa: $e5
    ld a, [hl]                                    ; $79fb: $7e
    ld bc, $f217                                  ; $79fc: $01 $17 $f2
    jp z, Jump_000_1e7f                           ; $79ff: $ca $7f $1e

    ld [hl], a                                    ; $7a02: $77
    ld e, [hl]                                    ; $7a03: $5e
    ld l, l                                       ; $7a04: $6d
    sbc c                                         ; $7a05: $99
    sbc $ef                                       ; $7a06: $de $ef

Jump_061_7a08:
    or l                                          ; $7a08: $b5
    rst $00                                       ; $7a09: $c7

jr_061_7a0a:
    ld hl, $90a3                                  ; $7a0a: $21 $a3 $90
    inc hl                                        ; $7a0d: $23
    add hl, hl                                    ; $7a0e: $29
    ld d, d                                       ; $7a0f: $52
    sbc h                                         ; $7a10: $9c
    ld b, e                                       ; $7a11: $43
    di                                            ; $7a12: $f3
    ld h, b                                       ; $7a13: $60
    and $71                                       ; $7a14: $e6 $71
    ld a, b                                       ; $7a16: $78
    ld a, b                                       ; $7a17: $78
    xor d                                         ; $7a18: $aa
    rst $38                                       ; $7a19: $ff
    ld e, d                                       ; $7a1a: $5a
    db $dd                                        ; $7a1b: $dd
    add e                                         ; $7a1c: $83
    ld a, [$e7dd]                                 ; $7a1d: $fa $dd $e7
    cp h                                          ; $7a20: $bc
    db $ed                                        ; $7a21: $ed
    ld d, $74                                     ; $7a22: $16 $74
    dec e                                         ; $7a24: $1d
    sub l                                         ; $7a25: $95
    ld l, $9e                                     ; $7a26: $2e $9e
    ld [hl], e                                    ; $7a28: $73
    dec [hl]                                      ; $7a29: $35
    inc a                                         ; $7a2a: $3c
    ld a, e                                       ; $7a2b: $7b
    ld b, b                                       ; $7a2c: $40
    cp h                                          ; $7a2d: $bc
    ei                                            ; $7a2e: $fb
    cp [hl]                                       ; $7a2f: $be
    rla                                           ; $7a30: $17
    jp z, Jump_000_2fc8                           ; $7a31: $ca $c8 $2f

    inc hl                                        ; $7a34: $23
    ld a, a                                       ; $7a35: $7f
    xor $01                                       ; $7a36: $ee $01
    ld e, $d9                                     ; $7a38: $1e $d9
    call z, Call_000_077b                         ; $7a3a: $cc $7b $07
    ld b, e                                       ; $7a3d: $43
    sbc [hl]                                      ; $7a3e: $9e
    or e                                          ; $7a3f: $b3
    adc e                                         ; $7a40: $8b
    ld a, [hl]                                    ; $7a41: $7e
    sbc [hl]                                      ; $7a42: $9e
    di                                            ; $7a43: $f3
    ld [bc], a                                    ; $7a44: $02
    rlca                                          ; $7a45: $07
    ld e, h                                       ; $7a46: $5c
    ld d, [hl]                                    ; $7a47: $56
    sbc l                                         ; $7a48: $9d
    ei                                            ; $7a49: $fb
    inc a                                         ; $7a4a: $3c
    call nc, $fe47                                ; $7a4b: $d4 $47 $fe
    ld e, h                                       ; $7a4e: $5c
    ld l, b                                       ; $7a4f: $68
    pop hl                                        ; $7a50: $e1
    cpl                                           ; $7a51: $2f
    and $b5                                       ; $7a52: $e6 $b5
    dec h                                         ; $7a54: $25
    push af                                       ; $7a55: $f5
    ld a, c                                       ; $7a56: $79
    ld e, h                                       ; $7a57: $5c
    ld e, e                                       ; $7a58: $5b
    and [hl]                                      ; $7a59: $a6
    ld [hl], a                                    ; $7a5a: $77
    di                                            ; $7a5b: $f3
    db $fd                                        ; $7a5c: $fd
    ld [bc], a                                    ; $7a5d: $02
    ld d, a                                       ; $7a5e: $57
    ld h, [hl]                                    ; $7a5f: $66
    adc b                                         ; $7a60: $88
    ld e, h                                       ; $7a61: $5c
    ld l, e                                       ; $7a62: $6b
    ret z                                         ; $7a63: $c8

    or l                                          ; $7a64: $b5
    jp hl                                         ; $7a65: $e9


    ld c, a                                       ; $7a66: $4f
    and e                                         ; $7a67: $a3
    dec de                                        ; $7a68: $1b
    ld b, e                                       ; $7a69: $43
    ld e, d                                       ; $7a6a: $5a
    ei                                            ; $7a6b: $fb
    jp c, $90e3                                   ; $7a6c: $da $e3 $90

    ld d, e                                       ; $7a6f: $53
    pop hl                                        ; $7a70: $e1
    add hl, de                                    ; $7a71: $19
    ld [$f28b], a                                 ; $7a72: $ea $8b $f2
    sbc a                                         ; $7a75: $9f
    di                                            ; $7a76: $f3
    ld [bc], a                                    ; $7a77: $02
    rlca                                          ; $7a78: $07
    ld e, h                                       ; $7a79: $5c
    sub $30                                       ; $7a7a: $d6 $30
    ld c, c                                       ; $7a7c: $49
    adc l                                         ; $7a7d: $8d
    sbc l                                         ; $7a7e: $9d
    inc bc                                        ; $7a7f: $03
    and l                                         ; $7a80: $a5
    inc a                                         ; $7a81: $3c
    set 2, h                                      ; $7a82: $cb $d4
    ld l, a                                       ; $7a84: $6f
    or l                                          ; $7a85: $b5
    cp h                                          ; $7a86: $bc
    jr z, @-$1a                                   ; $7a87: $28 $e4

    ld a, $af                                     ; $7a89: $3e $af
    ld d, b                                       ; $7a8b: $50
    db $d3                                        ; $7a8c: $d3
    ld a, e                                       ; $7a8d: $7b
    and b                                         ; $7a8e: $a0
    ld c, h                                       ; $7a8f: $4c
    xor a                                         ; $7a90: $af
    ld a, [de]                                    ; $7a91: $1a
    jp hl                                         ; $7a92: $e9


    ld d, b                                       ; $7a93: $50
    xor $5d                                       ; $7a94: $ee $5d
    inc d                                         ; $7a96: $14
    or d                                          ; $7a97: $b2
    ld [hl], d                                    ; $7a98: $72
    inc sp                                        ; $7a99: $33
    add a                                         ; $7a9a: $87
    ld a, [$f8c8]                                 ; $7a9b: $fa $c8 $f8
    db $e3                                        ; $7a9e: $e3
    jp c, $fa92                                   ; $7a9f: $da $92 $fa

    inc a                                         ; $7aa2: $3c
    xor [hl]                                      ; $7aa3: $ae
    dec l                                         ; $7aa4: $2d
    db $d3                                        ; $7aa5: $d3
    cp e                                          ; $7aa6: $bb
    ld a, c                                       ; $7aa7: $79
    ld sp, $f654                                  ; $7aa8: $31 $54 $f6
    db $10                                        ; $7aab: $10
    jp z, $2f39                                   ; $7aac: $ca $39 $2f

    rlca                                          ; $7aaf: $07
    ld b, c                                       ; $7ab0: $41
    cp h                                          ; $7ab1: $bc
    jr z, jr_061_7ad8                             ; $7ab2: $28 $24

    and l                                         ; $7ab4: $a5
    ld h, e                                       ; $7ab5: $63
    ld a, [$179c]                                 ; $7ab6: $fa $9c $17
    ld l, l                                       ; $7ab9: $6d
    and $c5                                       ; $7aba: $e6 $c5
    ld d, b                                       ; $7abc: $50
    sbc l                                         ; $7abd: $9d
    ld b, e                                       ; $7abe: $43
    jr z, jr_061_7b04                             ; $7abf: $28 $43

    ldh [$91], a                                  ; $7ac1: $e0 $91
    ld [hl], h                                    ; $7ac3: $74
    daa                                           ; $7ac4: $27
    cp e                                          ; $7ac5: $bb
    ld c, $35                                     ; $7ac6: $0e $35
    dec c                                         ; $7ac8: $0d
    ld d, a                                       ; $7ac9: $57
    or $a8                                        ; $7aca: $f6 $a8
    ld d, d                                       ; $7acc: $52
    sub l                                         ; $7acd: $95
    ld [hl], e                                    ; $7ace: $73
    adc a                                         ; $7acf: $8f
    ld h, l                                       ; $7ad0: $65
    and b                                         ; $7ad1: $a0
    sub h                                         ; $7ad2: $94
    ld d, a                                       ; $7ad3: $57
    cp a                                          ; $7ad4: $bf
    jr nz, jr_061_7b40                            ; $7ad5: $20 $69

    or h                                          ; $7ad7: $b4

jr_061_7ad8:
    call c, Call_061_64bb                         ; $7ad8: $dc $bb $64
    ld c, a                                       ; $7adb: $4f
    ret z                                         ; $7adc: $c8

    ld h, d                                       ; $7add: $62
    ld e, c                                       ; $7ade: $59
    and e                                         ; $7adf: $a3
    ld b, e                                       ; $7ae0: $43
    db $ec                                        ; $7ae1: $ec
    inc e                                         ; $7ae2: $1c
    sbc d                                         ; $7ae3: $9a
    rla                                           ; $7ae4: $17
    ld [hl], l                                    ; $7ae5: $75
    dec c                                         ; $7ae6: $0d
    or e                                          ; $7ae7: $b3
    sbc c                                         ; $7ae8: $99
    or [hl]                                       ; $7ae9: $b6
    rra                                           ; $7aea: $1f
    xor l                                         ; $7aeb: $ad
    sbc c                                         ; $7aec: $99
    push af                                       ; $7aed: $f5
    rla                                           ; $7aee: $17
    rst $20                                       ; $7aef: $e7
    add sp, $2e                                   ; $7af0: $e8 $2e
    inc bc                                        ; $7af2: $03
    and l                                         ; $7af3: $a5
    inc a                                         ; $7af4: $3c
    push af                                       ; $7af5: $f5
    ld h, l                                       ; $7af6: $65
    ld c, c                                       ; $7af7: $49
    ld l, l                                       ; $7af8: $6d
    ld a, b                                       ; $7af9: $78
    ld d, c                                       ; $7afa: $51
    ret z                                         ; $7afb: $c8

    ld hl, $7b94                                  ; $7afc: $21 $94 $7b
    sub a                                         ; $7aff: $97
    ld b, c                                       ; $7b00: $41
    pop af                                        ; $7b01: $f1
    ld b, h                                       ; $7b02: $44
    ld e, a                                       ; $7b03: $5f

jr_061_7b04:
    ld b, e                                       ; $7b04: $43
    ld c, a                                       ; $7b05: $4f
    db $f4                                        ; $7b06: $f4
    ld d, b                                       ; $7b07: $50
    ld e, a                                       ; $7b08: $5f
    ld l, c                                       ; $7b09: $69
    adc [hl]                                      ; $7b0a: $8e
    and c                                         ; $7b0b: $a1
    scf                                           ; $7b0c: $37
    ld a, [hl]                                    ; $7b0d: $7e
    pop af                                        ; $7b0e: $f1
    ld h, b                                       ; $7b0f: $60
    push de                                       ; $7b10: $d5
    ld d, d                                       ; $7b11: $52
    xor $5d                                       ; $7b12: $ee $5d
    ld d, c                                       ; $7b14: $51
    sub $48                                       ; $7b15: $d6 $48
    cp l                                          ; $7b17: $bd
    ld c, h                                       ; $7b18: $4c
    db $fd                                        ; $7b19: $fd
    ld d, [hl]                                    ; $7b1a: $56
    bit 6, d                                      ; $7b1b: $cb $72
    xor a                                         ; $7b1d: $af
    ld c, l                                       ; $7b1e: $4d
    sbc a                                         ; $7b1f: $9f
    ld a, [$a8b2]                                 ; $7b20: $fa $b2 $a8
    cp c                                          ; $7b23: $b9
    add $ef                                       ; $7b24: $c6 $ef
    db $fd                                        ; $7b26: $fd
    and e                                         ; $7b27: $a3
    rla                                           ; $7b28: $17
    add l                                         ; $7b29: $85
    call c, $c5e7                                 ; $7b2a: $dc $e7 $c5
    sub h                                         ; $7b2d: $94
    db $f4                                        ; $7b2e: $f4
    ld [hl], h                                    ; $7b2f: $74
    db $f4                                        ; $7b30: $f4
    jp nz, $f933                                  ; $7b31: $c2 $33 $f9

    call z, $fb96                                 ; $7b34: $cc $96 $fb
    dec b                                         ; $7b37: $05
    rlca                                          ; $7b38: $07
    dec l                                         ; $7b39: $2d
    dec sp                                        ; $7b3a: $3b
    inc h                                         ; $7b3b: $24
    cp a                                          ; $7b3c: $bf
    push hl                                       ; $7b3d: $e5
    ei                                            ; $7b3e: $fb
    cp [hl]                                       ; $7b3f: $be

jr_061_7b40:
    ld e, a                                       ; $7b40: $5f
    db $ed                                        ; $7b41: $ed
    rst $38                                       ; $7b42: $ff
    add hl, de                                    ; $7b43: $19
    ld sp, hl                                     ; $7b44: $f9
    ld [hl], e                                    ; $7b45: $73
    ld [hl], h                                    ; $7b46: $74
    sub a                                         ; $7b47: $97
    add l                                         ; $7b48: $85
    ld d, d                                       ; $7b49: $52
    sbc e                                         ; $7b4a: $9b
    xor e                                         ; $7b4b: $ab
    ld d, $e4                                     ; $7b4c: $16 $e4
    ld sp, $c6f4                                  ; $7b4e: $31 $f4 $c6
    cpl                                           ; $7b51: $2f
    ld e, $ac                                     ; $7b52: $1e $ac
    ld e, d                                       ; $7b54: $5a
    jp z, Jump_000_02fd                           ; $7b55: $ca $fd $02

    rla                                           ; $7b58: $17
    ld a, a                                       ; $7b59: $7f
    ld e, h                                       ; $7b5a: $5c
    inc c                                         ; $7b5b: $0c
    add sp, -$6f                                  ; $7b5c: $e8 $91
    pop af                                        ; $7b5e: $f1
    rst $00                                       ; $7b5f: $c7
    and c                                         ; $7b60: $a1
    ld b, l                                       ; $7b61: $45
    cp h                                          ; $7b62: $bc
    ld b, [hl]                                    ; $7b63: $46
    jr z, jr_061_7b89                             ; $7b64: $28 $23

    cp a                                          ; $7b66: $bf
    ld h, b                                       ; $7b67: $60
    ld [hl], a                                    ; $7b68: $77
    ld l, $3c                                     ; $7b69: $2e $3c
    rst $30                                       ; $7b6b: $f7
    dec bc                                        ; $7b6c: $0b
    rla                                           ; $7b6d: $17
    rlca                                          ; $7b6e: $07
    db $e4                                        ; $7b6f: $e4
    ld d, l                                       ; $7b70: $55
    sub $28                                       ; $7b71: $d6 $28
    push hl                                       ; $7b73: $e5
    db $fd                                        ; $7b74: $fd
    ld l, h                                       ; $7b75: $6c
    sbc b                                         ; $7b76: $98
    adc [hl]                                      ; $7b77: $8e
    and [hl]                                      ; $7b78: $a6
    db $ed                                        ; $7b79: $ed
    ld sp, hl                                     ; $7b7a: $f9
    ld hl, sp-$61                                 ; $7b7b: $f8 $9f
    ld e, l                                       ; $7b7d: $5d
    ld e, $32                                     ; $7b7e: $1e $32
    and c                                         ; $7b80: $a1
    sbc $2f                                       ; $7b81: $de $2f
    ld d, a                                       ; $7b83: $57
    ld [hl], $ab                                  ; $7b84: $36 $ab
    ld [hl], d                                    ; $7b86: $72
    db $e4                                        ; $7b87: $e4
    inc b                                         ; $7b88: $04

jr_061_7b89:
    res 3, h                                      ; $7b89: $cb $9c
    inc bc                                        ; $7b8b: $03
    and l                                         ; $7b8c: $a5
    cp h                                          ; $7b8d: $bc
    jp c, $a55c                                   ; $7b8e: $da $5c $a5

    add a                                         ; $7b91: $87
    ld a, b                                       ; $7b92: $78
    dec [hl]                                      ; $7b93: $35
    inc a                                         ; $7b94: $3c
    and e                                         ; $7b95: $a3
    db $eb                                        ; $7b96: $eb
    db $dd                                        ; $7b97: $dd
    sub c                                         ; $7b98: $91
    inc de                                        ; $7b99: $13
    inc l                                         ; $7b9a: $2c
    rst $30                                       ; $7b9b: $f7
    jp c, $b3cc                                   ; $7b9c: $da $cc $b3

    cp b                                          ; $7b9f: $b8
    or d                                          ; $7ba0: $b2
    rla                                           ; $7ba1: $17
    jp $350a                                      ; $7ba2: $c3 $0a $35


    rst $20                                       ; $7ba5: $e7
    call c, Call_061_75e7                         ; $7ba6: $dc $e7 $75
    ld c, d                                       ; $7ba9: $4a

Jump_061_7baa:
    or l                                          ; $7baa: $b5
    or $17                                        ; $7bab: $f6 $17
    rla                                           ; $7bad: $17
    xor d                                         ; $7bae: $aa
    ld a, [$cb1f]                                 ; $7baf: $fa $1f $cb
    add h                                         ; $7bb2: $84
    sub d                                         ; $7bb3: $92
    adc a                                         ; $7bb4: $8f
    ld [hl], e                                    ; $7bb5: $73
    dec d                                         ; $7bb6: $15
    jp z, Jump_061_736a                           ; $7bb7: $ca $6a $73

    ld sp, $fc8c                                  ; $7bba: $31 $8c $fc
    cp c                                          ; $7bbd: $b9
    ld b, [hl]                                    ; $7bbe: $46
    ld [$5165], a                                 ; $7bbf: $ea $65 $51
    ret z                                         ; $7bc2: $c8

    ld a, l                                       ; $7bc3: $7d
    ld e, [hl]                                    ; $7bc4: $5e
    and a                                         ; $7bc5: $a7
    ld d, h                                       ; $7bc6: $54
    ld l, e                                       ; $7bc7: $6b
    rst $18                                       ; $7bc8: $df
    ld [hl], l                                    ; $7bc9: $75
    or b                                          ; $7bca: $b0
    ld b, e                                       ; $7bcb: $43
    sub a                                         ; $7bcc: $97
    sbc [hl]                                      ; $7bcd: $9e
    ld [hl], a                                    ; $7bce: $77
    reti                                          ; $7bcf: $d9


    add sp, $61                                   ; $7bd0: $e8 $61
    dec c                                         ; $7bd2: $0d
    ld d, a                                       ; $7bd3: $57
    ld l, [hl]                                    ; $7bd4: $6e
    ld l, $0a                                     ; $7bd5: $2e $0a
    cp c                                          ; $7bd7: $b9
    rst $08                                       ; $7bd8: $cf
    dec hl                                        ; $7bd9: $2b
    call $80c5                                    ; $7bda: $cd $c5 $80
    ld c, [hl]                                    ; $7bdd: $4e
    xor a                                         ; $7bde: $af
    push de                                       ; $7bdf: $d5
    call c, $3417                                 ; $7be0: $dc $17 $34
    xor a                                         ; $7be3: $af
    xor d                                         ; $7be4: $aa
    ret nc                                        ; $7be5: $d0

    db $dd                                        ; $7be6: $dd
    call z, Call_000_05fb                         ; $7be7: $cc $fb $05
    db $ed                                        ; $7bea: $ed
    cp a                                          ; $7beb: $bf
    inc h                                         ; $7bec: $24
    and b                                         ; $7bed: $a0
    or $b5                                        ; $7bee: $f6 $b5
    rst $00                                       ; $7bf0: $c7
    rra                                           ; $7bf1: $1f
    ld d, a                                       ; $7bf2: $57
    xor b                                         ; $7bf3: $a8
    add hl, sp                                    ; $7bf4: $39
    call nc, $3a47                                ; $7bf5: $d4 $47 $3a
    rst $08                                       ; $7bf8: $cf
    ld a, c                                       ; $7bf9: $79
    ld bc, $c984                                  ; $7bfa: $01 $84 $c9
    db $dd                                        ; $7bfd: $dd
    rst $30                                       ; $7bfe: $f7
    cp l                                          ; $7bff: $bd
    add a                                         ; $7c00: $87
    ld c, d                                       ; $7c01: $4a
    xor $be                                       ; $7c02: $ee $be
    rst $28                                       ; $7c04: $ef
    ld d, l                                       ; $7c05: $55
    rst $20                                       ; $7c06: $e7
    ld e, $28                                     ; $7c07: $1e $28
    ld l, e                                       ; $7c09: $6b
    db $fc                                        ; $7c0a: $fc
    db $f4                                        ; $7c0b: $f4
    ld a, [hl-]                                   ; $7c0c: $3a
    jr nz, jr_061_7c3e                            ; $7c0d: $20 $2f

    inc a                                         ; $7c0f: $3c
    ld a, [hl+]                                   ; $7c10: $2a
    ld b, c                                       ; $7c11: $41
    jp z, $4bbd                                   ; $7c12: $ca $bd $4b

    sub $29                                       ; $7c15: $d6 $29
    push de                                       ; $7c17: $d5
    add hl, sp                                    ; $7c18: $39
    db $fc                                        ; $7c19: $fc
    inc bc                                        ; $7c1a: $03
    ld [hl], l                                    ; $7c1b: $75
    db $e4                                        ; $7c1c: $e4
    ld a, [hl+]                                   ; $7c1d: $2a
    ld a, a                                       ; $7c1e: $7f
    add h                                         ; $7c1f: $84
    or d                                          ; $7c20: $b2
    ldh a, [$ec]                                  ; $7c21: $f0 $ec
    ld [hl], d                                    ; $7c23: $72
    jr nz, jr_061_7c40                            ; $7c24: $20 $1a

    ld a, [$bbaf]                                 ; $7c26: $fa $af $bb
    xor b                                         ; $7c29: $a8
    rst $38                                       ; $7c2a: $ff
    rst $00                                       ; $7c2b: $c7
    sbc l                                         ; $7c2c: $9d
    or [hl]                                       ; $7c2d: $b6
    ld b, d                                       ; $7c2e: $42
    call Call_061_725d                            ; $7c2f: $cd $5d $72
    adc $0b                                       ; $7c32: $ce $0b
    rst $10                                       ; $7c34: $d7
    pop bc                                        ; $7c35: $c1
    and d                                         ; $7c36: $a2
    cpl                                           ; $7c37: $2f
    ret z                                         ; $7c38: $c8

    db $d3                                        ; $7c39: $d3
    ld [hl], c                                    ; $7c3a: $71
    ccf                                           ; $7c3b: $3f
    and d                                         ; $7c3c: $a2
    adc l                                         ; $7c3d: $8d

jr_061_7c3e:
    adc h                                         ; $7c3e: $8c
    db $fd                                        ; $7c3f: $fd

jr_061_7c40:
    adc h                                         ; $7c40: $8c
    db $fc                                        ; $7c41: $fc
    ld [hl-], a                                   ; $7c42: $32
    rst $20                                       ; $7c43: $e7
    ld b, d                                       ; $7c44: $42
    ld e, c                                       ; $7c45: $59
    inc c                                         ; $7c46: $0c
    adc e                                         ; $7c47: $8b
    adc l                                         ; $7c48: $8d
    ei                                            ; $7c49: $fb
    cp h                                          ; $7c4a: $bc
    adc e                                         ; $7c4b: $8b
    cp d                                          ; $7c4c: $ba
    ld e, $45                                     ; $7c4d: $1e $45
    sbc d                                         ; $7c4f: $9a
    dec [hl]                                      ; $7c50: $35
    inc e                                         ; $7c51: $1c
    add a                                         ; $7c52: $87
    jp nz, $b5ce                                  ; $7c53: $c2 $ce $b5

    ld a, c                                       ; $7c56: $79
    rst $10                                       ; $7c57: $d7
    ld b, c                                       ; $7c58: $41
    ld [hl], l                                    ; $7c59: $75
    db $dd                                        ; $7c5a: $dd
    ld hl, $efbe                                  ; $7c5b: $21 $be $ef
    ei                                            ; $7c5e: $fb
    dec b                                         ; $7c5f: $05
    add a                                         ; $7c60: $87
    ld c, b                                       ; $7c61: $48
    sub d                                         ; $7c62: $92
    or [hl]                                       ; $7c63: $b6
    cp $71                                        ; $7c64: $fe $71
    ld sp, $bd25                                  ; $7c66: $31 $25 $bd
    rst $00                                       ; $7c69: $c7
    cp b                                          ; $7c6a: $b8
    rst $08                                       ; $7c6b: $cf
    xor e                                         ; $7c6c: $ab
    ld d, b                                       ; $7c6d: $50
    inc a                                         ; $7c6e: $3c
    inc [hl]                                      ; $7c6f: $34
    adc a                                         ; $7c70: $8f
    and h                                         ; $7c71: $a4
    jp nc, $fb59                                  ; $7c72: $d2 $59 $fb

    dec bc                                        ; $7c75: $0b
    db $ed                                        ; $7c76: $ed
    or c                                          ; $7c77: $b1
    sbc a                                         ; $7c78: $9f

jr_061_7c79:
    ld a, l                                       ; $7c79: $7d
    pop bc                                        ; $7c7a: $c1
    db $f4                                        ; $7c7b: $f4
    inc l                                         ; $7c7c: $2c
    cp b                                          ; $7c7d: $b8
    adc e                                         ; $7c7e: $8b
    cp d                                          ; $7c7f: $ba
    ld e, $45                                     ; $7c80: $1e $45
    sbc d                                         ; $7c82: $9a
    dec [hl]                                      ; $7c83: $35
    inc e                                         ; $7c84: $1c
    add a                                         ; $7c85: $87
    jp nz, Jump_000_1dce                          ; $7c86: $c2 $ce $1d

    ld h, d                                       ; $7c89: $62
    adc e                                         ; $7c8a: $8b
    push hl                                       ; $7c8b: $e5
    sbc h                                         ; $7c8c: $9c
    rla                                           ; $7c8d: $17
    add a                                         ; $7c8e: $87
    ld c, b                                       ; $7c8f: $48
    ld d, d                                       ; $7c90: $52
    ei                                            ; $7c91: $fb
    ld c, $7e                                     ; $7c92: $0e $7e
    ld e, c                                       ; $7c94: $59
    ld l, h                                       ; $7c95: $6c
    call c, $98ef                                 ; $7c96: $dc $ef $98
    ld d, b                                       ; $7c99: $50
    ld l, b                                       ; $7c9a: $68
    inc hl                                        ; $7c9b: $23
    ld h, e                                       ; $7c9c: $63
    ccf                                           ; $7c9d: $3f
    ld b, e                                       ; $7c9e: $43
    rst $20                                       ; $7c9f: $e7
    cp d                                          ; $7ca0: $ba
    add [hl]                                      ; $7ca1: $86

jr_061_7ca2:
    reti                                          ; $7ca2: $d9


    cp c                                          ; $7ca3: $b9
    rst $00                                       ; $7ca4: $c7
    jr c, jr_061_7c79                             ; $7ca5: $38 $d2

    ld a, c                                       ; $7ca7: $79
    rst $28                                       ; $7ca8: $ef
    jp nc, Jump_000_2cf0                          ; $7ca9: $d2 $f0 $2c

    sub h                                         ; $7cac: $94
    ld d, l                                       ; $7cad: $55
    ld sp, hl                                     ; $7cae: $f9
    ld l, d                                       ; $7caf: $6a
    adc a                                         ; $7cb0: $8f
    ld [hl], c                                    ; $7cb1: $71
    rrca                                          ; $7cb2: $0f
    sub h                                         ; $7cb3: $94
    ld d, l                                       ; $7cb4: $55
    adc e                                         ; $7cb5: $8b
    db $d3                                        ; $7cb6: $d3
    rst $30                                       ; $7cb7: $f7
    dec bc                                        ; $7cb8: $0b
    db $ed                                        ; $7cb9: $ed
    ld [hl], c                                    ; $7cba: $71
    ret z                                         ; $7cbb: $c8

    jr z, jr_061_7ca2                             ; $7cbc: $28 $e4

    jr c, jr_061_7d03                             ; $7cbe: $38 $43

    ld c, $f5                                     ; $7cc0: $0e $f5
    ld a, l                                       ; $7cc2: $7d
    ld e, [hl]                                    ; $7cc3: $5e
    ei                                            ; $7cc4: $fb
    cpl                                           ; $7cc5: $2f
    add hl, bc                                    ; $7cc6: $09
    cp b                                          ; $7cc7: $b8
    add [hl]                                      ; $7cc8: $86
    and e                                         ; $7cc9: $a3
    cpl                                           ; $7cca: $2f
    ret z                                         ; $7ccb: $c8

    xor e                                         ; $7ccc: $ab
    ld d, b                                       ; $7ccd: $50
    ld d, $e2                                     ; $7cce: $16 $e2
    db $f4                                        ; $7cd0: $f4
    ld h, b                                       ; $7cd1: $60
    dec c                                         ; $7cd2: $0d
    ld l, b                                       ; $7cd3: $68
    ld [hl], h                                    ; $7cd4: $74
    ld [$656c], sp                                ; $7cd5: $08 $6c $65
    xor [hl]                                      ; $7cd8: $ae
    jp $c5fc                                      ; $7cd9: $c3 $fc $c5


    ccf                                           ; $7cdc: $3f
    ld b, d                                       ; $7cdd: $42
    ld [hl], a                                    ; $7cde: $77
    sub b                                         ; $7cdf: $90
    ld [hl], d                                    ; $7ce0: $72
    adc $0b                                       ; $7ce1: $ce $0b
    db $ed                                        ; $7ce3: $ed
    ld e, a                                       ; $7ce4: $5f
    ld d, $85                                     ; $7ce5: $16 $85
    db $e4                                        ; $7ce7: $e4
    rst $18                                       ; $7ce8: $df
    reti                                          ; $7ce9: $d9


    ld a, e                                       ; $7cea: $7b
    and b                                         ; $7ceb: $a0
    adc h                                         ; $7cec: $8c
    ld bc, $143b                                  ; $7ced: $01 $3b $14
    and a                                         ; $7cf0: $a7
    rst $30                                       ; $7cf1: $f7
    ld a, c                                       ; $7cf2: $79
    db $e4                                        ; $7cf3: $e4
    sub a                                         ; $7cf4: $97
    db $fd                                        ; $7cf5: $fd
    adc $80                                       ; $7cf6: $ce $80
    inc hl                                        ; $7cf8: $23
    ld a, a                                       ; $7cf9: $7f
    adc [hl]                                      ; $7cfa: $8e
    ld a, [hl+]                                   ; $7cfb: $2a
    ld d, l                                       ; $7cfc: $55
    sbc c                                         ; $7cfd: $99
    ld d, a                                       ; $7cfe: $57
    and c                                         ; $7cff: $a1
    call z, $cc32                                 ; $7d00: $cc $32 $cc

jr_061_7d03:
    ld e, a                                       ; $7d03: $5f
    ld a, h                                       ; $7d04: $7c
    cp a                                          ; $7d05: $bf
    add a                                         ; $7d06: $87
    ld c, b                                       ; $7d07: $48
    ld d, d                                       ; $7d08: $52
    ei                                            ; $7d09: $fb
    ld c, $fe                                     ; $7d0a: $0e $fe
    ld e, $05                                     ; $7d0c: $1e $05
    call $86ba                                    ; $7d0e: $cd $ba $86
    reti                                          ; $7d11: $d9


    xor c                                         ; $7d12: $a9
    ld a, l                                       ; $7d13: $7d
    sub a                                         ; $7d14: $97
    ld a, l                                       ; $7d15: $7d
    ld e, h                                       ; $7d16: $5c
    xor b                                         ; $7d17: $a8
    dec hl                                        ; $7d18: $2b
    call Call_061_7189                            ; $7d19: $cd $89 $71
    inc c                                         ; $7d1c: $0c
    ld a, l                                       ; $7d1d: $7d
    db $ed                                        ; $7d1e: $ed
    cp a                                          ; $7d1f: $bf
    inc h                                         ; $7d20: $24
    ldh [rLY], a                                  ; $7d21: $e0 $44
    cp a                                          ; $7d23: $bf
    ld e, a                                       ; $7d24: $5f
    db $ed                                        ; $7d25: $ed
    rst $08                                       ; $7d26: $cf
    ld [hl], e                                    ; $7d27: $73
    rst $18                                       ; $7d28: $df
    rst $30                                       ; $7d29: $f7
    dec bc                                        ; $7d2a: $0b
    rla                                           ; $7d2b: $17
    rlca                                          ; $7d2c: $07
    ld h, h                                       ; $7d2d: $64
    jp c, $90a2                                   ; $7d2e: $da $a2 $90

    ei                                            ; $7d31: $fb
    cp h                                          ; $7d32: $bc
    ld a, [de]                                    ; $7d33: $1a
    rst $38                                       ; $7d34: $ff
    db $f4                                        ; $7d35: $f4

jr_061_7d36:
    ld e, d                                       ; $7d36: $5a
    call $9dd1                                    ; $7d37: $cd $d1 $9d
    xor [hl]                                      ; $7d3a: $ae
    xor e                                         ; $7d3b: $ab
    dec l                                         ; $7d3c: $2d
    ld l, d                                       ; $7d3d: $6a
    sub [hl]                                      ; $7d3e: $96
    ld a, [$fb34]                                 ; $7d3f: $fa $34 $fb
    ld l, d                                       ; $7d42: $6a
    ld [hl], e                                    ; $7d43: $73
    db $e4                                        ; $7d44: $e4
    rst $08                                       ; $7d45: $cf
    ld c, c                                       ; $7d46: $49
    jr c, @-$2c                                   ; $7d47: $38 $d2

    or d                                          ; $7d49: $b2
    rra                                           ; $7d4a: $1f
    xor l                                         ; $7d4b: $ad
    ld d, e                                       ; $7d4c: $53
    jp nc, $5e29                                  ; $7d4d: $d2 $29 $5e

    rst $38                                       ; $7d50: $ff
    or c                                          ; $7d51: $b1
    ld a, c                                       ; $7d52: $79
    ld [de], a                                    ; $7d53: $12
    ld c, d                                       ; $7d54: $4a
    rst $30                                       ; $7d55: $f7
    and d                                         ; $7d56: $a2
    sub b                                         ; $7d57: $90
    sbc h                                         ; $7d58: $9c
    sbc d                                         ; $7d59: $9a
    sbc $8d                                       ; $7d5a: $de $8d
    ld e, [hl]                                    ; $7d5c: $5e
    inc d                                         ; $7d5d: $14
    sub d                                         ; $7d5e: $92
    inc b                                         ; $7d5f: $04
    pop bc                                        ; $7d60: $c1
    inc b                                         ; $7d61: $04
    add hl, hl                                    ; $7d62: $29
    adc $45                                       ; $7d63: $ce $45
    ld hl, $79f7                                  ; $7d65: $21 $f7 $79
    dec c                                         ; $7d68: $0d
    rst $00                                       ; $7d69: $c7
    and c                                         ; $7d6a: $a1
    or b                                          ; $7d6b: $b0
    ld d, a                                       ; $7d6c: $57
    reti                                          ; $7d6d: $d9


    ld h, d                                       ; $7d6e: $62
    reti                                          ; $7d6f: $d9


    ld [hl], c                                    ; $7d70: $71
    dec sp                                        ; $7d71: $3b
    ld c, b                                       ; $7d72: $48
    db $f4                                        ; $7d73: $f4
    ld [c], a                                     ; $7d74: $e2
    jr nz, jr_061_7d36                            ; $7d75: $20 $bf

    db $fc                                        ; $7d77: $fc
    sbc $69                                       ; $7d78: $de $69
    cp e                                          ; $7d7a: $bb
    xor b                                         ; $7d7b: $a8
    inc bc                                        ; $7d7c: $03
    inc de                                        ; $7d7d: $13
    inc bc                                        ; $7d7e: $03
    and d                                         ; $7d7f: $a2
    adc d                                         ; $7d80: $8a
    or [hl]                                       ; $7d81: $b6
    ld b, e                                       ; $7d82: $43
    dec l                                         ; $7d83: $2d
    ld c, b                                       ; $7d84: $48
    db $d3                                        ; $7d85: $d3
    halt                                          ; $7d86: $76
    sub l                                         ; $7d87: $95
    ld c, $99                                     ; $7d88: $0e $99
    xor $7d                                       ; $7d8a: $ee $7d
    and c                                         ; $7d8c: $a1
    db $ec                                        ; $7d8d: $ec
    sub b                                         ; $7d8e: $90
    db $fc                                        ; $7d8f: $fc
    sub [hl]                                      ; $7d90: $96
    rst $28                                       ; $7d91: $ef
    rla                                           ; $7d92: $17
    add a                                         ; $7d93: $87
    db $e4                                        ; $7d94: $e4
    or a                                          ; $7d95: $b7
    xor h                                         ; $7d96: $ac
    db $fd                                        ; $7d97: $fd
    dec b                                         ; $7d98: $05
    add a                                         ; $7d99: $87
    db $e4                                        ; $7d9a: $e4
    or a                                          ; $7d9b: $b7
    inc a                                         ; $7d9c: $3c
    sub d                                         ; $7d9d: $92
    cp $7b                                        ; $7d9e: $fe $7b
    ld l, e                                       ; $7da0: $6b
    adc a                                         ; $7da1: $8f
    ld [hl], c                                    ; $7da2: $71
    sbc a                                         ; $7da3: $9f
    rst $10                                       ; $7da4: $d7
    ld [hl], b                                    ; $7da5: $70
    ld d, l                                       ; $7da6: $55
    ld a, [de]                                    ; $7da7: $1a
    ld h, [hl]                                    ; $7da8: $66
    xor a                                         ; $7da9: $af
    or d                                          ; $7daa: $b2
    push bc                                       ; $7dab: $c5
    ld b, d                                       ; $7dac: $42
    ld e, e                                       ; $7dad: $5b
    ld [hl], l                                    ; $7dae: $75
    adc a                                         ; $7daf: $8f
    jp Jump_061_4bb3                              ; $7db0: $c3 $b3 $4b


    add $19                                       ; $7db3: $c6 $19
    ld [hl], d                                    ; $7db5: $72
    sbc a                                         ; $7db6: $9f
    ld b, a                                       ; $7db7: $47
    ld a, [hl]                                    ; $7db8: $7e
    sbc c                                         ; $7db9: $99
    ld [hl], e                                    ; $7dba: $73
    ld a, [hl-]                                   ; $7dbb: $3a
    ld a, d                                       ; $7dbc: $7a
    xor l                                         ; $7dbd: $ad
    and $3e                                       ; $7dbe: $e6 $3e
    adc a                                         ; $7dc0: $8f
    call nc, $f14b                                ; $7dc1: $d4 $4b $f1
    ret nc                                        ; $7dc4: $d0

    ld [hl], d                                    ; $7dc5: $72

Jump_061_7dc6:
    cp a                                          ; $7dc6: $bf

jr_061_7dc7:
    add a                                         ; $7dc7: $87
    db $e4                                        ; $7dc8: $e4
    or a                                          ; $7dc9: $b7
    cp h                                          ; $7dca: $bc
    jr jr_061_7dc7                                ; $7dcb: $18 $fa

    ld b, b                                       ; $7dcd: $40
    add hl, hl                                    ; $7dce: $29
    cpl                                           ; $7dcf: $2f
    ld a, [bc]                                    ; $7dd0: $0a
    ld e, c                                       ; $7dd1: $59
    xor c                                         ; $7dd2: $a9
    push bc                                       ; $7dd3: $c5
    xor e                                         ; $7dd4: $ab
    ld d, b                                       ; $7dd5: $50
    ld d, $51                                     ; $7dd6: $16 $51
    ld [hl], e                                    ; $7dd8: $73
    db $e4                                        ; $7dd9: $e4
    sub a                                         ; $7dda: $97
    ld [hl], l                                    ; $7ddb: $75
    ld c, d                                       ; $7ddc: $4a
    ld a, [hl-]                                   ; $7ddd: $3a

jr_061_7dde:
    ld l, c                                       ; $7dde: $69
    inc hl                                        ; $7ddf: $23
    db $e3                                        ; $7de0: $e3
    sub b                                         ; $7de1: $90
    ld hl, sp+$65                                 ; $7de2: $f8 $65
    rst $08                                       ; $7de4: $cf
    sub a                                         ; $7de5: $97
    xor c                                         ; $7de6: $a9
    ldh a, [$3c]                                  ; $7de7: $f0 $3c
    adc $45                                       ; $7de9: $ce $45
    ld hl, $b01b                                  ; $7deb: $21 $1b $b0
    adc e                                         ; $7dee: $8b
    cp d                                          ; $7def: $ba
    ld e, $45                                     ; $7df0: $1e $45
    sbc d                                         ; $7df2: $9a
    ei                                            ; $7df3: $fb
    dec b                                         ; $7df4: $05
    db $ed                                        ; $7df5: $ed
    ld [hl], c                                    ; $7df6: $71
    ret z                                         ; $7df7: $c8

    jr z, jr_061_7dde                             ; $7df8: $28 $e4

    sbc h                                         ; $7dfa: $9c
    ld b, e                                       ; $7dfb: $43
    rst $20                                       ; $7dfc: $e7
    ld l, d                                       ; $7dfd: $6a
    ld [hl], e                                    ; $7dfe: $73
    pop af                                        ; $7dff: $f1
    rst $08                                       ; $7e00: $cf
    add a                                         ; $7e01: $87
    ld b, a                                       ; $7e02: $47
    ld a, [hl-]                                   ; $7e03: $3a
    ld b, c                                       ; $7e04: $41
    ret nc                                        ; $7e05: $d0

    rst $20                                       ; $7e06: $e7
    cp h                                          ; $7e07: $bc
    db $ed                                        ; $7e08: $ed
    cp a                                          ; $7e09: $bf
    inc h                                         ; $7e0a: $24
    ldh [$ee], a                                  ; $7e0b: $e0 $ee
    ei                                            ; $7e0d: $fb
    ld e, $19                                     ; $7e0e: $1e $19
    ld a, a                                       ; $7e10: $7f
    sbc h                                         ; $7e11: $9c
    ld [hl], e                                    ; $7e12: $73
    ld l, b                                       ; $7e13: $68
    ld a, $e7                                     ; $7e14: $3e $e7
    dec b                                         ; $7e16: $05
    ld l, l                                       ; $7e17: $6d
    and $73                                       ; $7e18: $e6 $73
    ld b, [hl]                                    ; $7e1a: $46
    sbc b                                         ; $7e1b: $98
    and h                                         ; $7e1c: $a4
    db $ed                                        ; $7e1d: $ed
    and c                                         ; $7e1e: $a1
    sub d                                         ; $7e1f: $92
    rst $30                                       ; $7e20: $f7
    ld a, l                                       ; $7e21: $7d
    cp a                                          ; $7e22: $bf
    ld l, l                                       ; $7e23: $6d
    and $39                                       ; $7e24: $e6 $39
    ld h, a                                       ; $7e26: $67
    ld e, $e6                                     ; $7e27: $1e $e6
    cpl                                           ; $7e29: $2f
    and [hl]                                      ; $7e2a: $a6
    inc d                                         ; $7e2b: $14
    db $ed                                        ; $7e2c: $ed
    ld l, e                                       ; $7e2d: $6b
    adc a                                         ; $7e2e: $8f
    ld b, e                                       ; $7e2f: $43
    adc [hl]                                      ; $7e30: $8e
    db $fc                                        ; $7e31: $fc
    add hl, sp                                    ; $7e32: $39
    call nc, $e687                                ; $7e33: $d4 $87 $e6
    ld b, l                                       ; $7e36: $45
    ld sp, hl                                     ; $7e37: $f9
    rst $08                                       ; $7e38: $cf

jr_061_7e39:
    ld a, c                                       ; $7e39: $79
    ld bc, $5c07                                  ; $7e3a: $01 $07 $5c
    ld d, $7f                                     ; $7e3d: $16 $7f
    ld b, c                                       ; $7e3f: $41
    ld e, $9a                                     ; $7e40: $1e $9a
    rla                                           ; $7e42: $17
    push hl                                       ; $7e43: $e5
    sbc a                                         ; $7e44: $9f
    ld h, l                                       ; $7e45: $65
    ld d, c                                       ; $7e46: $51
    ld a, [$8c79]                                 ; $7e47: $fa $79 $8c
    ld b, e                                       ; $7e4a: $43
    rst $20                                       ; $7e4b: $e7
    ld h, d                                       ; $7e4c: $62
    ld c, b                                       ; $7e4d: $48
    ld h, l                                       ; $7e4e: $65
    db $f4                                        ; $7e4f: $f4
    ld c, d                                       ; $7e50: $4a
    rst $38                                       ; $7e51: $ff
    cp b                                          ; $7e52: $b8
    jr z, jr_061_7e39                             ; $7e53: $28 $e4

    ld a, $af                                     ; $7e55: $3e $af
    halt                                          ; $7e57: $76
    ld l, b                                       ; $7e58: $68
    or l                                          ; $7e59: $b5
    cp h                                          ; $7e5a: $bc
    rra                                           ; $7e5b: $1f
    db $ed                                        ; $7e5c: $ed
    ld sp, $cd0e                                  ; $7e5d: $31 $0e $cd
    rst $30                                       ; $7e60: $f7
    ld c, $b8                                     ; $7e61: $0e $b8
    adc h                                         ; $7e63: $8c
    db $fc                                        ; $7e64: $fc
    cp c                                          ; $7e65: $b9
    ld c, [hl]                                    ; $7e66: $4e
    xor c                                         ; $7e67: $a9
    cp h                                          ; $7e68: $bc
    ldh a, [$d0]                                  ; $7e69: $f0 $d0
    ld b, [hl]                                    ; $7e6b: $46
    add $21                                       ; $7e6c: $c6 $21
    pop af                                        ; $7e6e: $f1
    res 3, [hl]                                   ; $7e6f: $cb $9e
    cpl                                           ; $7e71: $2f
    ld l, e                                       ; $7e72: $6b
    db $fd                                        ; $7e73: $fd
    ld e, d                                       ; $7e74: $5a
    sbc l                                         ; $7e75: $9d
    ld l, e                                       ; $7e76: $6b
    dec [hl]                                      ; $7e77: $35
    add a                                         ; $7e78: $87
    and $7b                                       ; $7e79: $e6 $7b
    sub a                                         ; $7e7b: $97
    add a                                         ; $7e7c: $87
    xor h                                         ; $7e7d: $ac
    ld l, d                                       ; $7e7e: $6a
    rst $10                                       ; $7e7f: $d7
    ld a, h                                       ; $7e80: $7c
    ld b, l                                       ; $7e81: $45
    cp $6e                                        ; $7e82: $fe $6e
    jp c, Jump_000_171e                           ; $7e84: $da $1e $17

    di                                            ; $7e87: $f3
    ld a, [hl+]                                   ; $7e88: $2a
    sbc l                                         ; $7e89: $9d
    jp nc, Jump_061_72d1                          ; $7e8a: $d2 $d1 $72

    cp a                                          ; $7e8d: $bf

jr_061_7e8e:
    rst $00                                       ; $7e8e: $c7
    sub h                                         ; $7e8f: $94
    ld h, d                                       ; $7e90: $62
    sbc [hl]                                      ; $7e91: $9e
    ld [hl], e                                    ; $7e92: $73
    or c                                          ; $7e93: $b1
    ld [hl], c                                    ; $7e94: $71
    sbc a                                         ; $7e95: $9f
    and a                                         ; $7e96: $a7
    ld a, [hl-]                                   ; $7e97: $3a
    ld b, l                                       ; $7e98: $45
    add hl, hl                                    ; $7e99: $29
    ld d, a                                       ; $7e9a: $57
    db $ed                                        ; $7e9b: $ed
    cpl                                           ; $7e9c: $2f
    rlca                                          ; $7e9d: $07
    ld e, h                                       ; $7e9e: $5c
    add $19                                       ; $7e9f: $c6 $19
    ld [hl], d                                    ; $7ea1: $72
    sbc a                                         ; $7ea2: $9f
    ld b, a                                       ; $7ea3: $47
    ld [hl], a                                    ; $7ea4: $77
    ld e, c                                       ; $7ea5: $59
    inc c                                         ; $7ea6: $0c
    ld a, l                                       ; $7ea7: $7d
    ld [$f477], a                                 ; $7ea8: $ea $77 $f4
    ret z                                         ; $7eab: $c8

    rst $38                                       ; $7eac: $ff
    db $ec                                        ; $7ead: $ec
    ld a, [c]                                     ; $7eae: $f2
    sub b                                         ; $7eaf: $90
    dec c                                         ; $7eb0: $0d
    daa                                           ; $7eb1: $27

jr_061_7eb2:
    rst $18                                       ; $7eb2: $df
    cpl                                           ; $7eb3: $2f
    sub a                                         ; $7eb4: $97
    add a                                         ; $7eb5: $87
    ld l, h                                       ; $7eb6: $6c
    jr c, jr_061_7eb2                             ; $7eb7: $38 $f9

    sbc h                                         ; $7eb9: $9c
    rla                                           ; $7eba: $17
    rst $10                                       ; $7ebb: $d7
    pop bc                                        ; $7ebc: $c1
    sbc [hl]                                      ; $7ebd: $9e
    and $62                                       ; $7ebe: $e6 $62
    ld c, d                                       ; $7ec0: $4a
    ld a, d                                       ; $7ec1: $7a
    ld d, c                                       ; $7ec2: $51
    ret z                                         ; $7ec3: $c8

    ld a, [bc]                                    ; $7ec4: $0a
    add l                                         ; $7ec5: $85
    and c                                         ; $7ec6: $a1
    sbc b                                         ; $7ec7: $98
    or [hl]                                       ; $7ec8: $b6
    or $5f                                        ; $7ec9: $f6 $5f
    ld [de], a                                    ; $7ecb: $12
    ldh a, [$de]                                  ; $7ecc: $f0 $de
    ld bc, $9197                                  ; $7ece: $01 $97 $91
    ccf                                           ; $7ed1: $3f
    rst $10                                       ; $7ed2: $d7
    ld l, d                                       ; $7ed3: $6a
    ld l, $0a                                     ; $7ed4: $2e $0a
    add hl, hl                                    ; $7ed6: $29
    ld a, [hl]                                    ; $7ed7: $7e
    ld e, $f7                                     ; $7ed8: $1e $f7
    ld l, d                                       ; $7eda: $6a
    reti                                          ; $7edb: $d9


    rst $20                                       ; $7edc: $e7
    dec e                                         ; $7edd: $1d
    db $fc                                        ; $7ede: $fc
    dec a                                         ; $7edf: $3d
    ld a, [bc]                                    ; $7ee0: $0a
    sbc d                                         ; $7ee1: $9a
    push bc                                       ; $7ee2: $c5
    add $91                                       ; $7ee3: $c6 $91
    pop af                                        ; $7ee5: $f1
    rst $00                                       ; $7ee6: $c7
    and c                                         ; $7ee7: $a1
    ld a, $f2                                     ; $7ee8: $3e $f2
    rst $20                                       ; $7eea: $e7
    jp z, $3297                                   ; $7eeb: $ca $97 $32

    cp b                                          ; $7eee: $b8
    ld e, a                                       ; $7eef: $5f
    ld l, l                                       ; $7ef0: $6d
    adc $35                                       ; $7ef1: $ce $35
    adc h                                         ; $7ef3: $8c
    inc hl                                        ; $7ef4: $23
    cp a                                          ; $7ef5: $bf
    ld c, h                                       ; $7ef6: $4c
    jr z, jr_061_7e8e                             ; $7ef7: $28 $95

    dec l                                         ; $7ef9: $2d
    dec hl                                        ; $7efa: $2b
    ld d, $f1                                     ; $7efb: $16 $f1
    or e                                          ; $7efd: $b3
    rlca                                          ; $7efe: $07
    call nz, Call_061_4cab                        ; $7eff: $c4 $ab $4c
    adc l                                         ; $7f02: $8d
    cp e                                          ; $7f03: $bb
    rst $28                                       ; $7f04: $ef
    or l                                          ; $7f05: $b5
    ld e, c                                       ; $7f06: $59
    ld d, [hl]                                    ; $7f07: $56
    ld sp, hl                                     ; $7f08: $f9
    dec hl                                        ; $7f09: $2b
    push hl                                       ; $7f0a: $e5
    ld e, [hl]                                    ; $7f0b: $5e
    ld l, c                                       ; $7f0c: $69
    db $eb                                        ; $7f0d: $eb
    ret nc                                        ; $7f0e: $d0

    cp e                                          ; $7f0f: $bb
    rla                                           ; $7f10: $17
    ld l, c                                       ; $7f11: $69
    ld [hl], d                                    ; $7f12: $72
    ld c, a                                       ; $7f13: $4f
    ld [hl], e                                    ; $7f14: $73

jr_061_7f15:
    ld sp, $bd25                                  ; $7f15: $31 $25 $bd
    xor d                                         ; $7f18: $aa
    ld [hl], a                                    ; $7f19: $77
    or [hl]                                       ; $7f1a: $b6
    call c, $ed2f                                 ; $7f1b: $dc $2f $ed
    pop af                                        ; $7f1e: $f1
    rst $00                                       ; $7f1f: $c7
    push de                                       ; $7f20: $d5
    ld d, $54                                     ; $7f21: $16 $54

Jump_061_7f23:
    rst $20                                       ; $7f23: $e7
    ret z                                         ; $7f24: $c8

    cpl                                           ; $7f25: $2f
    rst $20                                       ; $7f26: $e7
    db $ec                                        ; $7f27: $ec
    ld d, b                                       ; $7f28: $50
    rst $10                                       ; $7f29: $d7
    jr nc, jr_061_7f15                            ; $7f2a: $30 $e9

    inc b                                         ; $7f2c: $04
    ld [hl], c                                    ; $7f2d: $71
    ld [hl], a                                    ; $7f2e: $77
    db $ec                                        ; $7f2f: $ec
    and h                                         ; $7f30: $a4
    dec l                                         ; $7f31: $2d
    ld a, [bc]                                    ; $7f32: $0a
    ld c, c                                       ; $7f33: $49
    ld [hl], $1b                                  ; $7f34: $36 $1b
    ld d, $ee                                     ; $7f36: $16 $ee
    ld d, b                                       ; $7f38: $50
    xor $17                                       ; $7f39: $ee $17
    sub a                                         ; $7f3b: $97
    rst $38                                       ; $7f3c: $ff
    sbc a                                         ; $7f3d: $9f
    ld [hl], h                                    ; $7f3e: $74
    jp c, Jump_000_2bd0                           ; $7f3f: $da $d0 $2b

    ld [hl], b                                    ; $7f42: $70
    ld h, h                                       ; $7f43: $64
    adc [hl]                                      ; $7f44: $8e
    db $fc                                        ; $7f45: $fc
    rst $08                                       ; $7f46: $cf
    ld d, h                                       ; $7f47: $54
    db $fc                                        ; $7f48: $fc
    ei                                            ; $7f49: $fb
    db $e3                                        ; $7f4a: $e3
    ld a, e                                       ; $7f4b: $7b
    ld l, l                                       ; $7f4c: $6d
    adc $55                                       ; $7f4d: $ce $55
    ld l, [hl]                                    ; $7f4f: $6e
    and $60                                       ; $7f50: $e6 $60
    dec c                                         ; $7f52: $0d
    ld l, d                                       ; $7f53: $6a
    ld [hl], c                                    ; $7f54: $71
    adc d                                         ; $7f55: $8a
    ld b, a                                       ; $7f56: $47
    ld [hl], a                                    ; $7f57: $77
    ld e, c                                       ; $7f58: $59
    and a                                         ; $7f59: $a7
    ld d, h                                       ; $7f5a: $54
    or $3e                                        ; $7f5b: $f6 $3e
    adc a                                         ; $7f5d: $8f
    db $fc                                        ; $7f5e: $fc
    ld [hl-], a                                   ; $7f5f: $32
    push af                                       ; $7f60: $f5
    adc a                                         ; $7f61: $8f
    ld e, h                                       ; $7f62: $5c
    add a                                         ; $7f63: $87
    inc hl                                        ; $7f64: $23
    ld b, a                                       ; $7f65: $47
    ld d, d                                       ; $7f66: $52
    and l                                         ; $7f67: $a5
    sbc $bb                                       ; $7f68: $de $bb
    ld d, h                                       ; $7f6a: $54
    ccf                                           ; $7f6b: $3f
    ld [hl], d                                    ; $7f6c: $72
    xor b                                         ; $7f6d: $a8
    rrca                                          ; $7f6e: $0f
    sub h                                         ; $7f6f: $94
    ld a, [c]                                     ; $7f70: $f2
    ld c, d                                       ; $7f71: $4a
    ld [hl], e                                    ; $7f72: $73
    ld a, [hl-]                                   ; $7f73: $3a
    ld l, $94                                     ; $7f74: $2e $94
    ld b, l                                       ; $7f76: $45
    ld e, a                                       ; $7f77: $5f
    adc d                                         ; $7f78: $8a
    rst $30                                       ; $7f79: $f7
    ld b, b                                       ; $7f7a: $40
    reti                                          ; $7f7b: $d9


    xor c                                         ; $7f7c: $a9
    ei                                            ; $7f7d: $fb
    pop de                                        ; $7f7e: $d1
    ret nc                                        ; $7f7f: $d0

    rst $08                                       ; $7f80: $cf
    add hl, sp                                    ; $7f81: $39
    ld l, e                                       ; $7f82: $6b
    ld [hl], e                                    ; $7f83: $73
    adc $b9                                       ; $7f84: $ce $b9
    ld a, [de]                                    ; $7f86: $1a
    sbc [hl]                                      ; $7f87: $9e
    rst $00                                       ; $7f88: $c7
    inc c                                         ; $7f89: $0c
    add sp, $5c                                   ; $7f8a: $e8 $5c
    inc c                                         ; $7f8c: $0c
    dec e                                         ; $7f8d: $1d
    dec a                                         ; $7f8e: $3d
    sub d                                         ; $7f8f: $92

jr_061_7f90:
    ld a, [hl+]                                   ; $7f90: $2a
    ld [hl], l                                    ; $7f91: $75
    xor l                                         ; $7f92: $ad
    and $c2                                       ; $7f93: $e6 $c2
    sub e                                         ; $7f95: $93
    ld c, l                                       ; $7f96: $4d
    inc [hl]                                      ; $7f97: $34
    rst $18                                       ; $7f98: $df
    cpl                                           ; $7f99: $2f
    add a                                         ; $7f9a: $87
    call c, $88e3                                 ; $7f9b: $dc $e3 $88
    jp c, Jump_000_3b8b                           ; $7f9e: $da $8b $3b

    sub h                                         ; $7fa1: $94
    ld a, e                                       ; $7fa2: $7b
    db $ed                                        ; $7fa3: $ed
    ld [hl], c                                    ; $7fa4: $71
    ret z                                         ; $7fa5: $c8

    push de                                       ; $7fa6: $d5
    sbc b                                         ; $7fa7: $98
    sub d                                         ; $7fa8: $92
    inc a                                         ; $7fa9: $3c
    push af                                       ; $7faa: $f5
    ld h, l                                       ; $7fab: $65
    ld l, b                                       ; $7fac: $68
    ld e, [hl]                                    ; $7fad: $5e
    ld c, h                                       ; $7fae: $4c
    ld c, c                                       ; $7faf: $49
    rst $28                                       ; $7fb0: $ef
    di                                            ; $7fb1: $f3
    and d                                         ; $7fb2: $a2
    cpl                                           ; $7fb3: $2f
    push bc                                       ; $7fb4: $c5
    inc hl                                        ; $7fb5: $23
    xor c                                         ; $7fb6: $a9
    ld d, d                                       ; $7fb7: $52
    rst $08                                       ; $7fb8: $cf
    ld a, c                                       ; $7fb9: $79
    ld bc, $ceed                                  ; $7fba: $01 $ed $ce
    add hl, sp                                    ; $7fbd: $39
    ld b, a                                       ; $7fbe: $47
    ld d, d                                       ; $7fbf: $52
    and l                                         ; $7fc0: $a5
    ld e, d                                       ; $7fc1: $5a
    ld c, h                                       ; $7fc2: $4c
    ld e, e                                       ; $7fc3: $5b
    ei                                            ; $7fc4: $fb
    cpl                                           ; $7fc5: $2f
    add hl, bc                                    ; $7fc6: $09
    ld a, b                                       ; $7fc7: $78
    cp a                                          ; $7fc8: $bf
    rst $10                                       ; $7fc9: $d7
    ld a, h                                       ; $7fca: $7c
    ld b, l                                       ; $7fcb: $45
    ld e, e                                       ; $7fcc: $5b
    ei                                            ; $7fcd: $fb
    rst $08                                       ; $7fce: $cf
    call nc, $bbdc                                ; $7fcf: $d4 $dc $bb
    inc c                                         ; $7fd2: $0c
    ld a, d                                       ; $7fd3: $7a

Jump_061_7fd4:
    rst $30                                       ; $7fd4: $f7
    ld l, $0f                                     ; $7fd5: $2e $0f
    reti                                          ; $7fd7: $d9


    ld [hl], b                                    ; $7fd8: $70
    ld a, [c]                                     ; $7fd9: $f2

Jump_061_7fda:
    xor d                                         ; $7fda: $aa
    and [hl]                                      ; $7fdb: $a6
    adc b                                         ; $7fdc: $88
    ld [hl], e                                    ; $7fdd: $73
    db $f4                                        ; $7fde: $f4
    jr nc, jr_061_7ff1                            ; $7fdf: $30 $10

    inc e                                         ; $7fe1: $1c
    ld b, e                                       ; $7fe2: $43
    rra                                           ; $7fe3: $1f
    sbc d                                         ; $7fe4: $9a
    sub a                                         ; $7fe5: $97
    ld d, $0f                                     ; $7fe6: $16 $0f
    and h                                         ; $7fe8: $a4
    ld e, b                                       ; $7fe9: $58
    jr jr_061_7f90                                ; $7fea: $18 $a4

    call c, $ff2f                                 ; $7fec: $dc $2f $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff

jr_061_7ff1:
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
