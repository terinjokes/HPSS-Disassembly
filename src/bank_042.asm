; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

    ld b, d                                       ; $4000: $42
    dec l                                         ; $4001: $2d
    ld h, a                                       ; $4002: $67
    db $d3                                        ; $4003: $d3
    set 7, [hl]                                   ; $4004: $cb $fe
    sub b                                         ; $4006: $90
    or b                                          ; $4007: $b0
    rst $08                                       ; $4008: $cf
    ld [hl], d                                    ; $4009: $72
    xor a                                         ; $400a: $af
    ld a, l                                       ; $400b: $7d
    ld d, $58                                     ; $400c: $16 $58
    sbc b                                         ; $400e: $98
    ld [hl-], a                                   ; $400f: $32
    ld e, a                                       ; $4010: $5f
    ld h, h                                       ; $4011: $64
    xor [hl]                                      ; $4012: $ae
    ld c, a                                       ; $4013: $4f
    rst $00                                       ; $4014: $c7
    rla                                           ; $4015: $17
    scf                                           ; $4016: $37
    ld d, d                                       ; $4017: $52
    ld c, [hl]                                    ; $4018: $4e
    db $db                                        ; $4019: $db
    scf                                           ; $401a: $37
    ld d, c                                       ; $401b: $51
    sub a                                         ; $401c: $97
    rla                                           ; $401d: $17
    push af                                       ; $401e: $f5
    add [hl]                                      ; $401f: $86
    xor b                                         ; $4020: $a8
    rst $18                                       ; $4021: $df
    ld e, c                                       ; $4022: $59
    ld l, h                                       ; $4023: $6c
    cp h                                          ; $4024: $bc
    jr z, jr_042_408c                             ; $4025: $28 $65

    inc l                                         ; $4027: $2c
    dec e                                         ; $4028: $1d
    db $fd                                        ; $4029: $fd
    jp nz, $ba63                                  ; $402a: $c2 $63 $ba

    db $fc                                        ; $402d: $fc
    ld c, $c3                                     ; $402e: $0e $c3
    adc b                                         ; $4030: $88
    sub e                                         ; $4031: $93
    push hl                                       ; $4032: $e5
    ld e, [hl]                                    ; $4033: $5e
    and [hl]                                      ; $4034: $a6
    ld c, a                                       ; $4035: $4f
    set 3, c                                      ; $4036: $cb $d9
    db $f4                                        ; $4038: $f4
    or d                                          ; $4039: $b2
    dec a                                         ; $403a: $3d
    ld d, b                                       ; $403b: $50
    ld d, $18                                     ; $403c: $16 $18
    ld c, a                                       ; $403e: $4f
    call nc, $faa5                                ; $403f: $d4 $a5 $fa
    dec c                                         ; $4042: $0d
    ld [hl], l                                    ; $4043: $75
    call nz, $b91b                                ; $4044: $c4 $1b $b9
    ld a, [hl]                                    ; $4047: $7e
    dec b                                         ; $4048: $05
    dec e                                         ; $4049: $1d
    ld e, a                                       ; $404a: $5f
    call c, Call_000_3948                         ; $404b: $dc $48 $39
    ld l, l                                       ; $404e: $6d
    rst $18                                       ; $404f: $df
    ld b, h                                       ; $4050: $44
    ld e, l                                       ; $4051: $5d
    ld e, [hl]                                    ; $4052: $5e
    call nc, $a21b                                ; $4053: $d4 $1b $a2
    ld a, [hl]                                    ; $4056: $7e
    ld h, a                                       ; $4057: $67
    or c                                          ; $4058: $b1
    pop af                                        ; $4059: $f1
    and d                                         ; $405a: $a2
    sub h                                         ; $405b: $94
    or c                                          ; $405c: $b1
    ld [hl], h                                    ; $405d: $74
    db $f4                                        ; $405e: $f4
    dec bc                                        ; $405f: $0b
    adc a                                         ; $4060: $8f
    jp hl                                         ; $4061: $e9


    ld a, [c]                                     ; $4062: $f2
    dec sp                                        ; $4063: $3b
    inc c                                         ; $4064: $0c
    inc hl                                        ; $4065: $23
    ld c, [hl]                                    ; $4066: $4e
    sub [hl]                                      ; $4067: $96
    ld a, e                                       ; $4068: $7b
    sbc c                                         ; $4069: $99
    ld a, $2d                                     ; $406a: $3e $2d
    ld h, a                                       ; $406c: $67
    db $d3                                        ; $406d: $d3
    set 6, [hl]                                   ; $406e: $cb $f6
    ld b, b                                       ; $4070: $40
    ld e, c                                       ; $4071: $59
    ld h, b                                       ; $4072: $60
    inc a                                         ; $4073: $3c
    ld d, c                                       ; $4074: $51
    sub a                                         ; $4075: $97
    ld [$d437], a                                 ; $4076: $ea $37 $d4
    ld de, $e46f                                  ; $4079: $11 $6f $e4
    ld a, [$1d15]                                 ; $407c: $fa $15 $1d
    and e                                         ; $407f: $a3
    ld e, d                                       ; $4080: $5a
    ld h, $de                                     ; $4081: $26 $de
    adc a                                         ; $4083: $8f
    ld a, a                                       ; $4084: $7f
    ld [c], a                                     ; $4085: $e2
    dec [hl]                                      ; $4086: $35
    ld hl, sp+$50                                 ; $4087: $f8 $50
    ld [$4f3f], sp                                ; $4089: $08 $3f $4f

jr_042_408c:
    xor b                                         ; $408c: $a8
    ld a, h                                       ; $408d: $7c
    adc d                                         ; $408e: $8a
    and e                                         ; $408f: $a3
    or e                                          ; $4090: $b3
    ccf                                           ; $4091: $3f
    ld [$b6d2], a                                 ; $4092: $ea $d2 $b6
    cp b                                          ; $4095: $b8
    rla                                           ; $4096: $17
    ld b, [hl]                                    ; $4097: $46
    cp c                                          ; $4098: $b9
    ld [$a974], a                                 ; $4099: $ea $74 $a9
    ld a, $32                                     ; $409c: $3e $32
    ld [de], a                                    ; $409e: $12
    ret c                                         ; $409f: $d8

    rst $20                                       ; $40a0: $e7
    ld c, e                                       ; $40a1: $4b
    sbc c                                         ; $40a2: $99
    ld c, l                                       ; $40a3: $4d
    ld sp, hl                                     ; $40a4: $f9
    dec hl                                        ; $40a5: $2b
    ld [$cb23], sp                                ; $40a6: $08 $23 $cb
    db $db                                        ; $40a9: $db
    ld l, e                                       ; $40aa: $6b
    inc hl                                        ; $40ab: $23
    xor a                                         ; $40ac: $af
    cp a                                          ; $40ad: $bf
    adc l                                         ; $40ae: $8d
    ld a, h                                       ; $40af: $7c
    ld a, h                                       ; $40b0: $7c
    jr z, jr_042_40bd                             ; $40b1: $28 $0a

    ld a, a                                       ; $40b3: $7f
    cp a                                          ; $40b4: $bf
    ld [bc], a                                    ; $40b5: $02
    db $ed                                        ; $40b6: $ed
    ld a, a                                       ; $40b7: $7f
    ld d, l                                       ; $40b8: $55
    ld a, l                                       ; $40b9: $7d
    call nc, $a439                                ; $40ba: $d4 $39 $a4

jr_042_40bd:
    and b                                         ; $40bd: $a0
    ld e, d                                       ; $40be: $5a
    inc c                                         ; $40bf: $0c
    ld [hl], c                                    ; $40c0: $71
    ld a, [hl]                                    ; $40c1: $7e
    and h                                         ; $40c2: $a4
    adc h                                         ; $40c3: $8c
    ld c, h                                       ; $40c4: $4c
    xor b                                         ; $40c5: $a8
    db $e4                                        ; $40c6: $e4
    call nz, $f0bd                                ; $40c7: $c4 $bd $f0
    add sp, $52                                   ; $40ca: $e8 $52
    ld a, l                                       ; $40cc: $7d
    ld h, h                                       ; $40cd: $64
    inc h                                         ; $40ce: $24
    adc $a0                                       ; $40cf: $ce $a0
    ld h, $ce                                     ; $40d1: $26 $ce
    adc a                                         ; $40d3: $8f
    ld hl, sp+$50                                 ; $40d4: $f8 $50
    inc d                                         ; $40d6: $14
    sbc [hl]                                      ; $40d7: $9e
    inc l                                         ; $40d8: $2c
    ld d, e                                       ; $40d9: $53
    jp z, $a507                                   ; $40da: $ca $07 $a5

    ret nz                                        ; $40dd: $c0

    xor d                                         ; $40de: $aa
    adc e                                         ; $40df: $8b
    ld a, [c]                                     ; $40e0: $f2
    ld hl, sp-$5d                                 ; $40e1: $f8 $a3
    inc a                                         ; $40e3: $3c
    add hl, sp                                    ; $40e4: $39
    adc c                                         ; $40e5: $89
    rrca                                          ; $40e6: $0f
    ld b, l                                       ; $40e7: $45
    pop hl                                        ; $40e8: $e1
    adc c                                         ; $40e9: $89
    dec de                                        ; $40ea: $1b
    dec hl                                        ; $40eb: $2b
    db $d3                                        ; $40ec: $d3
    xor a                                         ; $40ed: $af
    sbc l                                         ; $40ee: $9d
    ld b, d                                       ; $40ef: $42
    ld c, l                                       ; $40f0: $4d
    sbc h                                         ; $40f1: $9c
    rra                                           ; $40f2: $1f
    sub c                                         ; $40f3: $91
    sub c                                         ; $40f4: $91
    ld hl, sp-$01                                 ; $40f5: $f8 $ff
    ld b, d                                       ; $40f7: $42
    ld sp, hl                                     ; $40f8: $f9
    or $11                                        ; $40f9: $f6 $11
    adc c                                         ; $40fb: $89
    rst $08                                       ; $40fc: $cf
    sub e                                         ; $40fd: $93
    db $db                                        ; $40fe: $db
    reti                                          ; $40ff: $d9


    and a                                         ; $4100: $a7
    or a                                          ; $4101: $b7
    ret                                           ; $4102: $c9


    ld [bc], a                                    ; $4103: $02
    srl [hl]                                      ; $4104: $cb $3e
    dec a                                         ; $4106: $3d
    db $ec                                        ; $4107: $ec
    adc l                                         ; $4108: $8d
    cpl                                           ; $4109: $2f
    ld [$fef7], a                                 ; $410a: $ea $f7 $fe
    ld d, h                                       ; $410d: $54
    cp a                                          ; $410e: $bf
    and c                                         ; $410f: $a1
    adc [hl]                                      ; $4110: $8e
    ld a, b                                       ; $4111: $78
    inc hl                                        ; $4112: $23
    add sp, $53                                   ; $4113: $e8 $53
    rla                                           ; $4115: $17
    ld d, d                                       ; $4116: $52
    ld h, b                                       ; $4117: $60
    push af                                       ; $4118: $f5
    rst $20                                       ; $4119: $e7
    ld h, $1f                                     ; $411a: $26 $1f
    rst $28                                       ; $411c: $ef
    db $db                                        ; $411d: $db
    cp $94                                        ; $411e: $fe $94
    push hl                                       ; $4120: $e5
    db $ed                                        ; $4121: $ed
    inc c                                         ; $4122: $0c
    db $fd                                        ; $4123: $fd
    ld a, [bc]                                    ; $4124: $0a
    ld [hl], l                                    ; $4125: $75
    and [hl]                                      ; $4126: $a6
    ld c, a                                       ; $4127: $4f
    dec de                                        ; $4128: $1b
    pop hl                                        ; $4129: $e1
    bit 4, d                                      ; $412a: $cb $62
    ret nc                                        ; $412c: $d0

    ld h, $ea                                     ; $412d: $26 $ea
    ld [hl+], a                                   ; $412f: $22
    inc hl                                        ; $4130: $23
    ld [hl], c                                    ; $4131: $71
    inc hl                                        ; $4132: $23
    db $fc                                        ; $4133: $fc
    jp c, Jump_000_21bd                           ; $4134: $da $bd $21

    ld c, h                                       ; $4137: $4c
    sbc c                                         ; $4138: $99
    ccf                                           ; $4139: $3f
    ei                                            ; $413a: $fb
    db $e3                                        ; $413b: $e3
    ld sp, hl                                     ; $413c: $f9
    push hl                                       ; $413d: $e5
    and e                                         ; $413e: $a3
    ld l, $6d                                     ; $413f: $2e $6d
    reti                                          ; $4141: $d9


    ld a, c                                       ; $4142: $79
    ld b, a                                       ; $4143: $47
    call nc, $f4d8                                ; $4144: $d4 $d8 $f4
    dec hl                                        ; $4147: $2b

Jump_042_4148:
    cp [hl]                                       ; $4148: $be
    xor b                                         ; $4149: $a8
    db $f4                                        ; $414a: $f4
    or $a1                                        ; $414b: $f6 $a1
    ld a, [c]                                     ; $414d: $f2
    ld d, c                                       ; $414e: $51
    ld d, e                                       ; $414f: $53
    cp l                                          ; $4150: $bd
    xor b                                         ; $4151: $a8
    rst $08                                       ; $4152: $cf
    ld [hl], d                                    ; $4153: $72
    dec c                                         ; $4154: $0d
    db $e4                                        ; $4155: $e4
    push de                                       ; $4156: $d5
    inc sp                                        ; $4157: $33
    ld a, a                                       ; $4158: $7f
    ld a, $54                                     ; $4159: $3e $54
    ld [hl], d                                    ; $415b: $72
    ld d, d                                       ; $415c: $52
    and b                                         ; $415d: $a0
    ret                                           ; $415e: $c9


    dec bc                                        ; $415f: $0b
    and e                                         ; $4160: $a3
    ld e, a                                       ; $4161: $5f
    ld bc, $83ad                                  ; $4162: $01 $ad $83
    cp h                                          ; $4165: $bc
    and b                                         ; $4166: $a0
    inc l                                         ; $4167: $2c
    ld h, e                                       ; $4168: $63
    ei                                            ; $4169: $fb
    di                                            ; $416a: $f3
    dec sp                                        ; $416b: $3b
    adc $7f                                       ; $416c: $ce $7f
    ld l, a                                       ; $416e: $6f
    inc de                                        ; $416f: $13
    ld [hl], l                                    ; $4170: $75
    reti                                          ; $4171: $d9


    ld d, h                                       ; $4172: $54
    cp [hl]                                       ; $4173: $be
    ld c, a                                       ; $4174: $4f
    sbc l                                         ; $4175: $9d
    pop de                                        ; $4176: $d1
    push hl                                       ; $4177: $e5
    rlc d                                         ; $4178: $cb $02
    and $d7                                       ; $417a: $e6 $d7
    push bc                                       ; $417c: $c5
    add a                                         ; $417d: $87
    and d                                         ; $417e: $a2
    ldh a, [$a4]                                  ; $417f: $f0 $a4
    ld b, [hl]                                    ; $4181: $46
    ld l, [hl]                                    ; $4182: $6e
    and a                                         ; $4183: $a7
    ld [bc], a                                    ; $4184: $02
    adc a                                         ; $4185: $8f
    sbc d                                         ; $4186: $9a
    inc l                                         ; $4187: $2c
    or b                                          ; $4188: $b0
    ret c                                         ; $4189: $d8

    ld d, l                                       ; $418a: $55
    ld [hl], h                                    ; $418b: $74
    ld c, b                                       ; $418c: $48
    jr jr_042_41d1                                ; $418d: $18 $42

    push hl                                       ; $418f: $e5
    ld b, e                                       ; $4190: $43
    jp nz, $ba8c                                  ; $4191: $c2 $8c $ba

    rst $28                                       ; $4194: $ef
    ld d, a                                       ; $4195: $57
    db $ed                                        ; $4196: $ed
    ld e, a                                       ; $4197: $5f
    jp z, $ef72                                   ; $4198: $ca $72 $ef

    ret nc                                        ; $419b: $d0

    and a                                         ; $419c: $a7
    db $d3                                        ; $419d: $d3
    ld sp, $85c3                                  ; $419e: $31 $c3 $85
    ld e, a                                       ; $41a1: $5f
    ld a, b                                       ; $41a2: $78
    or d                                          ; $41a3: $b2
    inc c                                         ; $41a4: $0c
    jp $f2f8                                      ; $41a5: $c3 $f8 $f2


    ld b, a                                       ; $41a8: $47
    ld sp, hl                                     ; $41a9: $f9
    dec c                                         ; $41aa: $0d
    db $fd                                        ; $41ab: $fd
    ld a, [bc]                                    ; $41ac: $0a
    ld [hl], l                                    ; $41ad: $75
    ld b, [hl]                                    ; $41ae: $46
    ld [hl+], a                                   ; $41af: $22
    adc b                                         ; $41b0: $88
    ld a, a                                       ; $41b1: $7f
    ld [hl], d                                    ; $41b2: $72
    ld a, [bc]                                    ; $41b3: $0a
    rst $18                                       ; $41b4: $df
    xor a                                         ; $41b5: $af
    or l                                          ; $41b6: $b5
    rst $38                                       ; $41b7: $ff
    or d                                          ; $41b8: $b2
    ret c                                         ; $41b9: $d8

    sub b                                         ; $41ba: $90
    rst $08                                       ; $41bb: $cf
    inc de                                        ; $41bc: $13
    scf                                           ; $41bd: $37
    sub d                                         ; $41be: $92
    ld [hl], a                                    ; $41bf: $77
    ld a, $f4                                     ; $41c0: $3e $f4
    add e                                         ; $41c2: $83
    sub h                                         ; $41c3: $94
    ld e, a                                       ; $41c4: $5f
    ld b, [hl]                                    ; $41c5: $46
    ld d, b                                       ; $41c6: $50
    ld l, e                                       ; $41c7: $6b
    dec b                                         ; $41c8: $05
    ld [hl], l                                    ; $41c9: $75
    and [hl]                                      ; $41ca: $a6
    ld c, a                                       ; $41cb: $4f
    sbc e                                         ; $41cc: $9b
    ld h, e                                       ; $41cd: $63
    dec b                                         ; $41ce: $05
    ld d, c                                       ; $41cf: $51
    ld b, e                                       ; $41d0: $43

jr_042_41d1:
    ld a, [de]                                    ; $41d1: $1a
    ld a, [bc]                                    ; $41d2: $0a
    ld e, a                                       ; $41d3: $5f
    ld d, $1b                                     ; $41d4: $16 $1b
    ld a, [c]                                     ; $41d6: $f2
    dec c                                         ; $41d7: $0d
    ld sp, hl                                     ; $41d8: $f9
    ld a, b                                       ; $41d9: $78
    rst $18                                       ; $41da: $df
    db $10                                        ; $41db: $10
    ld a, [hl+]                                   ; $41dc: $2a
    rra                                           ; $41dd: $1f
    dec sp                                        ; $41de: $3b
    rlca                                          ; $41df: $07
    ld [hl], e                                    ; $41e0: $73
    rst $18                                       ; $41e1: $df
    xor a                                         ; $41e2: $af
    ld [hl], l                                    ; $41e3: $75
    ld b, [hl]                                    ; $41e4: $46
    ld d, d                                       ; $41e5: $52
    ld h, $82                                     ; $41e6: $26 $82
    rla                                           ; $41e8: $17
    rst $20                                       ; $41e9: $e7
    ld b, a                                       ; $41ea: $47
    call c, $0854                                 ; $41eb: $dc $54 $08
    or $55                                        ; $41ee: $f6 $55
    daa                                           ; $41f0: $27
    ld l, a                                       ; $41f1: $6f
    ld [$4f95], sp                                ; $41f2: $08 $95 $4f
    push af                                       ; $41f5: $f5
    adc $f9                                       ; $41f6: $ce $f9
    rst $28                                       ; $41f8: $ef
    and e                                         ; $41f9: $a3
    ld l, $d5                                     ; $41fa: $2e $d5
    ld e, e                                       ; $41fc: $5b
    add l                                         ; $41fd: $85
    cp l                                          ; $41fe: $bd
    sbc a                                         ; $41ff: $9f
    cp a                                          ; $4200: $bf
    ld e, a                                       ; $4201: $5f
    ld bc, $c369                                  ; $4202: $01 $69 $c3
    ld e, a                                       ; $4205: $5f
    push af                                       ; $4206: $f5
    pop af                                        ; $4207: $f1
    ld b, l                                       ; $4208: $45
    ld a, [bc]                                    ; $4209: $0a
    ld l, $d5                                     ; $420a: $2e $d5
    ld l, a                                       ; $420c: $6f
    jr z, jr_042_423f                             ; $420d: $28 $30

    adc a                                         ; $420f: $8f
    ld l, $85                                     ; $4210: $2e $85
    rst $38                                       ; $4212: $ff
    or d                                          ; $4213: $b2
    ld b, a                                       ; $4214: $47
    ld hl, sp+$65                                 ; $4215: $f8 $65
    and d                                         ; $4217: $a2
    ld a, $15                                     ; $4218: $3e $15
    ld l, d                                       ; $421a: $6a
    xor [hl]                                      ; $421b: $ae
    ld [hl], l                                    ; $421c: $75
    ld l, l                                       ; $421d: $6d
    ret z                                         ; $421e: $c8

    rst $08                                       ; $421f: $cf
    and a                                         ; $4220: $a7
    ld a, b                                       ; $4221: $78
    dec c                                         ; $4222: $0d
    jp c, $e21b                                   ; $4223: $da $1b $e2

    ld b, [hl]                                    ; $4226: $46
    ld [c], a                                     ; $4227: $e2
    dec e                                         ; $4228: $1d
    inc hl                                        ; $4229: $23
    ld a, [hl]                                    ; $422a: $7e
    cp a                                          ; $422b: $bf
    ld [bc], a                                    ; $422c: $02
    ld l, l                                       ; $422d: $6d
    ld c, a                                       ; $422e: $4f
    ld a, [bc]                                    ; $422f: $0a
    ld c, a                                       ; $4230: $4f
    ld a, [hl]                                    ; $4231: $7e
    rst $28                                       ; $4232: $ef
    rst $08                                       ; $4233: $cf
    ld a, [hl]                                    ; $4234: $7e
    db $d3                                        ; $4235: $d3
    ld a, $ea                                     ; $4236: $3e $ea
    rst $30                                       ; $4238: $f7
    ld b, [hl]                                    ; $4239: $46
    xor d                                         ; $423a: $aa
    rst $18                                       ; $423b: $df
    ld d, b                                       ; $423c: $50
    ld b, a                                       ; $423d: $47
    cp h                                          ; $423e: $bc

jr_042_423f:
    sub c                                         ; $423f: $91
    db $eb                                        ; $4240: $eb
    ld d, a                                       ; $4241: $57
    ld [hl], l                                    ; $4242: $75
    ld b, [hl]                                    ; $4243: $46
    sub a                                         ; $4244: $97
    ld [$dc53], a                                 ; $4245: $ea $53 $dc
    ld d, h                                       ; $4248: $54
    dec d                                         ; $4249: $15
    sbc b                                         ; $424a: $98
    daa                                           ; $424b: $27
    adc $8f                                       ; $424c: $ce $8f
    sub h                                         ; $424e: $94
    ld [hl], e                                    ; $424f: $73
    call nc, $82be                                ; $4250: $d4 $be $82
    jr nc, @-$1c                                  ; $4253: $30 $e2

    inc a                                         ; $4255: $3c
    ld l, d                                       ; $4256: $6a
    call nz, $fe87                                ; $4257: $c4 $87 $fe
    halt                                          ; $425a: $76
    ld a, [hl]                                    ; $425b: $7e
    ld h, h                                       ; $425c: $64
    sbc a                                         ; $425d: $9f
    sbc $26                                       ; $425e: $de $26
    daa                                           ; $4260: $27
    ld [hl], c                                    ; $4261: $71
    db $f4                                        ; $4262: $f4
    or d                                          ; $4263: $b2
    inc c                                         ; $4264: $0c
    db $db                                        ; $4265: $db
    ld e, a                                       ; $4266: $5f
    ret c                                         ; $4267: $d8

    add [hl]                                      ; $4268: $86
    ld a, h                                       ; $4269: $7c
    ld b, e                                       ; $426a: $43
    or $a7                                        ; $426b: $f6 $a7
    call z, $c4a6                                 ; $426d: $cc $a6 $c4
    dec de                                        ; $4270: $1b
    ld b, c                                       ; $4271: $41
    cp a                                          ; $4272: $bf
    ld [bc], a                                    ; $4273: $02
    cp [hl]                                       ; $4274: $be
    cp b                                          ; $4275: $b8
    inc d                                         ; $4276: $14
    ld a, [hl]                                    ; $4277: $7e
    sbc [hl]                                      ; $4278: $9e
    cp b                                          ; $4279: $b8
    reti                                          ; $427a: $d9


    set 6, c                                      ; $427b: $cb $f1
    ld b, h                                       ; $427d: $44
    ld a, l                                       ; $427e: $7d
    xor b                                         ; $427f: $a8
    ld a, h                                       ; $4280: $7c
    xor d                                         ; $4281: $aa
    rst $18                                       ; $4282: $df
    ld d, b                                       ; $4283: $50
    ld b, a                                       ; $4284: $47
    cp h                                          ; $4285: $bc
    ld de, $8ad4                                  ; $4286: $11 $d4 $8a
    and a                                         ; $4289: $a7
    rra                                           ; $428a: $1f
    ld b, c                                       ; $428b: $41
    dec [hl]                                      ; $428c: $35
    call nz, $411b                                ; $428d: $c4 $1b $41
    call $3a74                                    ; $4290: $cd $74 $3a
    ld h, [hl]                                    ; $4293: $66
    cp b                                          ; $4294: $b8
    jr c, jr_042_42d6                             ; $4295: $38 $3f

    ld [c], a                                     ; $4297: $e2
    ld a, [hl]                                    ; $4298: $7e
    add hl, sp                                    ; $4299: $39
    cp $52                                        ; $429a: $fe $52
    sub b                                         ; $429c: $90
    rla                                           ; $429d: $17
    rst $20                                       ; $429e: $e7
    ld b, a                                       ; $429f: $47
    ld a, $15                                     ; $42a0: $3e $15
    ld l, d                                       ; $42a2: $6a
    xor [hl]                                      ; $42a3: $ae
    ld [hl], l                                    ; $42a4: $75
    ld b, [hl]                                    ; $42a5: $46
    ld [c], a                                     ; $42a6: $e2
    sbc a                                         ; $42a7: $9f
    cp h                                          ; $42a8: $bc
    cp b                                          ; $42a9: $b8
    or c                                          ; $42aa: $b1
    ld c, a                                       ; $42ab: $4f
    add c                                         ; $42ac: $81
    ld b, [hl]                                    ; $42ad: $46
    adc a                                         ; $42ae: $8f
    daa                                           ; $42af: $27
    ld a, $14                                     ; $42b0: $3e $14
    dec sp                                        ; $42b2: $3b
    ld l, [hl]                                    ; $42b3: $6e
    xor h                                         ; $42b4: $ac
    ld c, h                                       ; $42b5: $4c
    cp a                                          ; $42b6: $bf
    ld [bc], a                                    ; $42b7: $02
    db $ed                                        ; $42b8: $ed
    rst $18                                       ; $42b9: $df
    add h                                         ; $42ba: $84
    ld a, b                                       ; $42bb: $78
    sub e                                         ; $42bc: $93
    adc $4e                                       ; $42bd: $ce $4e
    ld a, [bc]                                    ; $42bf: $0a
    adc a                                         ; $42c0: $8f
    inc b                                         ; $42c1: $04
    or $29                                        ; $42c2: $f6 $29
    db $fc                                        ; $42c4: $fc
    inc a                                         ; $42c5: $3c
    ld [hl], c                                    ; $42c6: $71
    or e                                          ; $42c7: $b3
    sub a                                         ; $42c8: $97
    db $e3                                        ; $42c9: $e3
    adc c                                         ; $42ca: $89
    ld a, [$f950]                                 ; $42cb: $fa $50 $f9
    ld d, h                                       ; $42ce: $54
    cp a                                          ; $42cf: $bf
    and c                                         ; $42d0: $a1
    adc [hl]                                      ; $42d1: $8e
    ld a, b                                       ; $42d2: $78
    inc hl                                        ; $42d3: $23
    add sp, $53                                   ; $42d4: $e8 $53

jr_042_42d6:
    ld h, a                                       ; $42d6: $67
    inc h                                         ; $42d7: $24
    dec [hl]                                      ; $42d8: $35
    ld d, d                                       ; $42d9: $52
    db $fd                                        ; $42da: $fd
    push bc                                       ; $42db: $c5
    adc [hl]                                      ; $42dc: $8e
    ld d, $77                                     ; $42dd: $16 $77
    inc a                                         ; $42df: $3c
    ld sp, hl                                     ; $42e0: $f9
    db $ec                                        ; $42e1: $ec
    db $d3                                        ; $42e2: $d3
    jp Jump_000_0ade                              ; $42e3: $c3 $de $0a


    inc b                                         ; $42e6: $04
    db $fd                                        ; $42e7: $fd
    ld a, [bc]                                    ; $42e8: $0a
    ld [hl], l                                    ; $42e9: $75
    ld b, [hl]                                    ; $42ea: $46
    ld d, d                                       ; $42eb: $52
    ld h, $72                                     ; $42ec: $26 $72
    db $10                                        ; $42ee: $10
    ld b, [hl]                                    ; $42ef: $46
    ld a, [bc]                                    ; $42f0: $0a
    db $dd                                        ; $42f1: $dd
    dec de                                        ; $42f2: $1b
    xor c                                         ; $42f3: $a9
    ld a, [hl]                                    ; $42f4: $7e
    ld b, e                                       ; $42f5: $43
    dec e                                         ; $42f6: $1d
    pop af                                        ; $42f7: $f1
    ld b, [hl]                                    ; $42f8: $46
    xor [hl]                                      ; $42f9: $ae
    ld e, a                                       ; $42fa: $5f
    ld bc, $069e                                  ; $42fb: $01 $9e $06
    dec [hl]                                      ; $42fe: $35
    ld [hl], c                                    ; $42ff: $71
    ld a, [hl]                                    ; $4300: $7e
    db $e4                                        ; $4301: $e4
    halt                                          ; $4302: $76
    ld d, $1b                                     ; $4303: $16 $1b
    cpl                                           ; $4305: $2f
    ld c, d                                       ; $4306: $4a
    add hl, de                                    ; $4307: $19

Call_042_4308:
    ld c, e                                       ; $4308: $4b
    ld b, a                                       ; $4309: $47
    cp a                                          ; $430a: $bf
    ldh a, [$58]                                  ; $430b: $f0 $58
    sub [hl]                                      ; $430d: $96
    ld h, c                                       ; $430e: $61
    add e                                         ; $430f: $83
    ld e, [hl]                                    ; $4310: $5e
    adc a                                         ; $4311: $8f
    db $fc                                        ; $4312: $fc
    ld d, c                                       ; $4313: $51
    ld a, [hl]                                    ; $4314: $7e
    db $e3                                        ; $4315: $e3
    db $eb                                        ; $4316: $eb
    ld d, a                                       ; $4317: $57
    cp [hl]                                       ; $4318: $be
    set 3, e                                      ; $4319: $cb $db
    ld sp, $6174                                  ; $431b: $31 $74 $61
    ld a, [de]                                    ; $431e: $1a
    ld h, h                                       ; $431f: $64
    ld a, a                                       ; $4320: $7f
    sbc b                                         ; $4321: $98
    ld a, [hl]                                    ; $4322: $7e
    xor d                                         ; $4323: $aa
    rst $18                                       ; $4324: $df
    ld d, b                                       ; $4325: $50
    ld b, a                                       ; $4326: $47
    cp h                                          ; $4327: $bc
    ld de, $5cd4                                  ; $4328: $11 $d4 $5c
    ld bc, $4675                                  ; $432b: $01 $75 $46
    ld d, d                                       ; $432e: $52
    ld a, [hl]                                    ; $432f: $7e
    ld sp, $045c                                  ; $4330: $31 $5c $04
    ld d, l                                       ; $4333: $55
    dec b                                         ; $4334: $05
    sbc c                                         ; $4335: $99
    xor b                                         ; $4336: $a8
    adc a                                         ; $4337: $8f
    ld a, [de]                                    ; $4338: $1a
    ld [de], a                                    ; $4339: $12
    ld [hl], c                                    ; $433a: $71
    ld d, e                                       ; $433b: $53
    sbc l                                         ; $433c: $9d
    cp b                                          ; $433d: $b8
    ld a, e                                       ; $433e: $7b
    ld b, e                                       ; $433f: $43
    cp a                                          ; $4340: $bf
    ld [bc], a                                    ; $4341: $02
    ld [hl], l                                    ; $4342: $75
    ld h, c                                       ; $4343: $61
    adc $5f                                       ; $4344: $ce $5f
    xor a                                         ; $4346: $af
    ld l, $35                                     ; $4347: $2e $35
    or d                                          ; $4349: $b2
    ld c, h                                       ; $434a: $4c
    add hl, hl                                    ; $434b: $29
    and a                                         ; $434c: $a7
    cp a                                          ; $434d: $bf
    adc l                                         ; $434e: $8d
    ld h, b                                       ; $434f: $60
    ld e, a                                       ; $4350: $5f
    ld [hl], l                                    ; $4351: $75
    ld a, [c]                                     ; $4352: $f2
    add [hl]                                      ; $4353: $86
    ld d, b                                       ; $4354: $50
    ld sp, hl                                     ; $4355: $f9
    ld d, h                                       ; $4356: $54
    cp a                                          ; $4357: $bf
    and c                                         ; $4358: $a1
    adc [hl]                                      ; $4359: $8e
    ld a, b                                       ; $435a: $78
    inc hl                                        ; $435b: $23
    xor b                                         ; $435c: $a8
    sub l                                         ; $435d: $95
    or [hl]                                       ; $435e: $b6
    add l                                         ; $435f: $85
    ld h, c                                       ; $4360: $61
    jr z, @-$19                                   ; $4361: $28 $e5

    add l                                         ; $4363: $85
    pop de                                        ; $4364: $d1

Call_042_4365:
    rst $30                                       ; $4365: $f7
    db $fd                                        ; $4366: $fd
    ld a, [bc]                                    ; $4367: $0a
    ld l, l                                       ; $4368: $6d
    pop de                                        ; $4369: $d1
    scf                                           ; $436a: $37
    push af                                       ; $436b: $f5
    add hl, sp                                    ; $436c: $39
    adc c                                         ; $436d: $89
    cp $f4                                        ; $436e: $fe $f4
    ei                                            ; $4370: $fb
    add [hl]                                      ; $4371: $86
    pop hl                                        ; $4372: $e1
    cp [hl]                                       ; $4373: $be
    adc a                                         ; $4374: $8f
    rst $20                                       ; $4375: $e7
    and l                                         ; $4376: $a5
    adc h                                         ; $4377: $8c
    ld c, h                                       ; $4378: $4c
    or $e9                                        ; $4379: $f6 $e9
    db $ed                                        ; $437b: $ed
    ld d, d                                       ; $437c: $52
    ld l, b                                       ; $437d: $68
    ld a, h                                       ; $437e: $7c
    add sp, -$11                                  ; $437f: $e8 $ef
    ld [hl], d                                    ; $4381: $72
    ld e, a                                       ; $4382: $5f
    ld l, $6f                                     ; $4383: $2e $6f
    jp c, Jump_000_1054                           ; $4385: $da $54 $10

    sbc [hl]                                      ; $4388: $9e
    ld a, [hl]                                    ; $4389: $7e
    dec b                                         ; $438a: $05
    ld [hl], l                                    ; $438b: $75
    add a                                         ; $438c: $87
    dec c                                         ; $438d: $0d
    add l                                         ; $438e: $85
    cpl                                           ; $438f: $2f
    adc e                                         ; $4390: $8b
    dec c                                         ; $4391: $0d
    ld sp, hl                                     ; $4392: $f9
    add [hl]                                      ; $4393: $86
    ld a, h                                       ; $4394: $7c
    or b                                          ; $4395: $b0
    xor a                                         ; $4396: $af
    ld a, [hl-]                                   ; $4397: $3a
    ld a, c                                       ; $4398: $79
    ld b, e                                       ; $4399: $43
    sbc b                                         ; $439a: $98
    ld [hl-], a                                   ; $439b: $32
    ld c, a                                       ; $439c: $4f
    jr jr_042_43c8                                ; $439d: $18 $29

    adc h                                         ; $439f: $8c
    ld d, d                                       ; $43a0: $52
    and [hl]                                      ; $43a1: $a6
    sub $0a                                       ; $43a2: $d6 $0a
    cp [hl]                                       ; $43a4: $be
    ret z                                         ; $43a5: $c8

    cp $9c                                        ; $43a6: $fe $9c
    ld h, $63                                     ; $43a8: $26 $63
    and a                                         ; $43aa: $a7
    bit 4, d                                      ; $43ab: $cb $62
    and e                                         ; $43ad: $a3
    ld a, a                                       ; $43ae: $7f
    db $fd                                        ; $43af: $fd
    db $ed                                        ; $43b0: $ed
    ld a, [bc]                                    ; $43b1: $0a
    jp nz, Jump_042_4148                          ; $43b2: $c2 $48 $41

    inc b                                         ; $43b5: $04
    ld a, c                                       ; $43b6: $79
    ld d, c                                       ; $43b7: $51
    ld d, [hl]                                    ; $43b8: $56
    ld c, a                                       ; $43b9: $4f
    call nc, $cca7                                ; $43ba: $d4 $a7 $cc
    cp $7e                                        ; $43bd: $fe $7e
    dec b                                         ; $43bf: $05
    ld l, l                                       ; $43c0: $6d
    and a                                         ; $43c1: $a7
    ld a, [hl-]                                   ; $43c2: $3a
    ld e, h                                       ; $43c3: $5c
    inc [hl]                                      ; $43c4: $34
    ret z                                         ; $43c5: $c8

    pop af                                        ; $43c6: $f1
    ret c                                         ; $43c7: $d8

jr_042_43c8:
    ld b, l                                       ; $43c8: $45
    ld b, [hl]                                    ; $43c9: $46
    ld d, d                                       ; $43ca: $52
    ld e, l                                       ; $43cb: $5d
    db $fc                                        ; $43cc: $fc
    cpl                                           ; $43cd: $2f
    ld [hl-], a                                   ; $43ce: $32
    xor c                                         ; $43cf: $a9
    cp $b2                                        ; $43d0: $fe $b2
    ret nz                                        ; $43d2: $c0

    ld a, [hl+]                                   ; $43d3: $2a
    sub h                                         ; $43d4: $94
    ld [hl-], a                                   ; $43d5: $32
    ld d, c                                       ; $43d6: $51
    rla                                           ; $43d7: $17
    rst $28                                       ; $43d8: $ef
    ld e, e                                       ; $43d9: $5b
    ld [hl], l                                    ; $43da: $75
    ld [hl], c                                    ; $43db: $71
    or e                                          ; $43dc: $b3
    sub a                                         ; $43dd: $97
    inc sp                                        ; $43de: $33
    ld b, h                                       ; $43df: $44
    ld a, l                                       ; $43e0: $7d
    xor b                                         ; $43e1: $a8
    ld a, h                                       ; $43e2: $7c
    xor d                                         ; $43e3: $aa
    rst $18                                       ; $43e4: $df
    ld d, b                                       ; $43e5: $50
    ld b, a                                       ; $43e6: $47
    cp h                                          ; $43e7: $bc
    ld de, $e2e8                                  ; $43e8: $11 $e8 $e2
    ld b, e                                       ; $43eb: $43
    ld c, a                                       ; $43ec: $4f
    call nc, $4645                                ; $43ed: $d4 $45 $46
    ld d, d                                       ; $43f0: $52
    ld a, [hl]                                    ; $43f1: $7e
    ld sp, $165c                                  ; $43f2: $31 $5c $16
    sbc e                                         ; $43f5: $9b
    push bc                                       ; $43f6: $c5
    ld l, [hl]                                    ; $43f7: $6e
    ld [c], a                                     ; $43f8: $e2
    and [hl]                                      ; $43f9: $a6
    ld b, d                                       ; $43fa: $42
    cp $28                                        ; $43fb: $fe $28
    cp a                                          ; $43fd: $bf
    pop af                                        ; $43fe: $f1
    push af                                       ; $43ff: $f5
    dec hl                                        ; $4400: $2b
    ld [hl], l                                    ; $4401: $75
    ld b, [hl]                                    ; $4402: $46
    rla                                           ; $4403: $17
    ld [hl], d                                    ; $4404: $72
    call z, $e170                                 ; $4405: $cc $70 $e1
    rla                                           ; $4408: $17
    sbc [hl]                                      ; $4409: $9e
    sub h                                         ; $440a: $94
    ld e, a                                       ; $440b: $5f
    ld h, b                                       ; $440c: $60
    adc b                                         ; $440d: $88
    sbc e                                         ; $440e: $9b
    ld a, [bc]                                    ; $440f: $0a
    reti                                          ; $4410: $d9


    cpl                                           ; $4411: $2f
    xor $de                                       ; $4412: $ee $de
    inc b                                         ; $4414: $04
    and c                                         ; $4415: $a1

jr_042_4416:
    ld a, [c]                                     ; $4416: $f2
    ld a, l                                       ; $4417: $7d
    ld a, h                                       ; $4418: $7c
    rst $18                                       ; $4419: $df
    and b                                         ; $441a: $a0
    rst $10                                       ; $441b: $d7
    inc hl                                        ; $441c: $23
    sbc $17                                       ; $441d: $de $17
    cp $c2                                        ; $441f: $fe $c2
    rst $20                                       ; $4421: $e7
    and [hl]                                      ; $4422: $a6
    and $0a                                       ; $4423: $e6 $0a
    sbc [hl]                                      ; $4425: $9e
    cp $83                                        ; $4426: $fe $83
    cp d                                          ; $4428: $ba
    ld a, h                                       ; $4429: $7c
    jp c, $f57f                                   ; $442a: $da $7f $f5

    push de                                       ; $442d: $d5
    and a                                         ; $442e: $a7
    xor $89                                       ; $442f: $ee $89
    add e                                         ; $4431: $83
    ld l, $27                                     ; $4432: $2e $27
    pop de                                        ; $4434: $d1
    sbc a                                         ; $4435: $9f
    ld a, [hl]                                    ; $4436: $7e
    rst $18                                       ; $4437: $df
    jr nc, jr_042_4416                            ; $4438: $30 $dc

    rst $30                                       ; $443a: $f7
    ld l, c                                       ; $443b: $69
    rrca                                          ; $443c: $0f
    rla                                           ; $443d: $17
    cp [hl]                                       ; $443e: $be
    sub h                                         ; $443f: $94
    ld e, a                                       ; $4440: $5f
    xor h                                         ; $4441: $ac
    sbc [hl]                                      ; $4442: $9e
    sbc h                                         ; $4443: $9c
    xor b                                         ; $4444: $a8
    or e                                          ; $4445: $b3
    inc hl                                        ; $4446: $23
    ld [de], a                                    ; $4447: $12
    rst $18                                       ; $4448: $df
    db $10                                        ; $4449: $10
    pop bc                                        ; $444a: $c1
    sbc $1f                                       ; $444b: $de $1f
    db $ed                                        ; $444d: $ed
    ld l, b                                       ; $444e: $68
    pop hl                                        ; $444f: $e1
    adc a                                         ; $4450: $8f
    ld a, [hl-]                                   ; $4451: $3a
    inc bc                                        ; $4452: $03
    pop af                                        ; $4453: $f1
    ld b, [hl]                                    ; $4454: $46
    ret nc                                        ; $4455: $d0

    xor a                                         ; $4456: $af
    ld l, l                                       ; $4457: $6d
    and a                                         ; $4458: $a7
    ld a, [hl-]                                   ; $4459: $3a
    ld e, h                                       ; $445a: $5c
    inc [hl]                                      ; $445b: $34
    ret z                                         ; $445c: $c8

    pop af                                        ; $445d: $f1
    ret c                                         ; $445e: $d8

    ld b, l                                       ; $445f: $45
    sbc l                                         ; $4460: $9d
    inc bc                                        ; $4461: $03
    ld sp, hl                                     ; $4462: $f9
    ld [hl-], a                                   ; $4463: $32
    ld [hl], c                                    ; $4464: $71
    ld a, [hl]                                    ; $4465: $7e
    ld h, h                                       ; $4466: $64
    ld a, a                                       ; $4467: $7f
    or $d8                                        ; $4468: $f6 $d8
    and h                                         ; $446a: $a4
    ld a, [$750d]                                 ; $446b: $fa $0d $75
    call nz, $411b                                ; $446e: $c4 $1b $41
    ld h, b                                       ; $4471: $60
    sub e                                         ; $4472: $93
    sbc e                                         ; $4473: $9b
    ld a, $ed                                     ; $4474: $3e $ed
    ld e, a                                       ; $4476: $5f
    db $fc                                        ; $4477: $fc
    cpl                                           ; $4478: $2f
    ld [hl-], a                                   ; $4479: $32
    pop bc                                        ; $447a: $c1
    cp [hl]                                       ; $447b: $be
    ld [$79e4], a                                 ; $447c: $ea $e4 $79
    ld d, d                                       ; $447f: $52
    cp l                                          ; $4480: $bd
    xor b                                         ; $4481: $a8
    rla                                           ; $4482: $17
    dec [hl]                                      ; $4483: $35
    push de                                       ; $4484: $d5
    push bc                                       ; $4485: $c5
    add a                                         ; $4486: $87
    ld e, [hl]                                    ; $4487: $5e
    cp a                                          ; $4488: $bf
    ld [bc], a                                    ; $4489: $02
    ld [hl], l                                    ; $448a: $75
    ld b, [hl]                                    ; $448b: $46
    sub a                                         ; $448c: $97
    ld [hl-], a                                   ; $448d: $32
    ld [hl-], a                                   ; $448e: $32
    and c                                         ; $448f: $a1
    ld [hl-], a                                   ; $4490: $32
    add hl, hl                                    ; $4491: $29
    ld c, h                                       ; $4492: $4c
    dec d                                         ; $4493: $15
    add h                                         ; $4494: $84
    ld de, $9d85                                  ; $4495: $11 $85 $9d
    push bc                                       ; $4498: $c5
    xor [hl]                                      ; $4499: $ae
    sbc d                                         ; $449a: $9a
    cp h                                          ; $449b: $bc

jr_042_449c:
    ret z                                         ; $449c: $c8

    call nz, $854d                                ; $449d: $c4 $4d $85
    jr nc, jr_042_449c                            ; $44a0: $30 $fa

    dec d                                         ; $44a2: $15
    ld [hl], l                                    ; $44a3: $75
    ld l, l                                       ; $44a4: $6d
    db $f4                                        ; $44a5: $f4
    xor a                                         ; $44a6: $af
    cp a                                          ; $44a7: $bf
    ld e, l                                       ; $44a8: $5d
    ld b, c                                       ; $44a9: $41
    jr jr_042_44fd                                ; $44aa: $18 $51

    ld b, e                                       ; $44ac: $43
    ld a, [de]                                    ; $44ad: $1a
    ld a, [bc]                                    ; $44ae: $0a
    ld e, a                                       ; $44af: $5f
    ld a, [bc]                                    ; $44b0: $0a
    add hl, sp                                    ; $44b1: $39
    ld e, e                                       ; $44b2: $5b
    add e                                         ; $44b3: $83
    ld hl, $f43e                                  ; $44b4: $21 $3e $f4
    or a                                          ; $44b7: $b7
    di                                            ; $44b8: $f3
    inc hl                                        ; $44b9: $23
    halt                                          ; $44ba: $76
    ld c, $e6                                     ; $44bb: $0e $e6
    ld a, $bf                                     ; $44bd: $3e $bf
    inc l                                         ; $44bf: $2c
    ld [hl], $de                                  ; $44c0: $36 $de
    ld de, $fc75                                  ; $44c2: $11 $75 $fc
    cp d                                          ; $44c5: $ba
    inc l                                         ; $44c6: $2c
    or b                                          ; $44c7: $b0
    ret c                                         ; $44c8: $d8

    pop de                                        ; $44c9: $d1
    ld [c], a                                     ; $44ca: $e2
    adc $90                                       ; $44cb: $ce $90
    sub e                                         ; $44cd: $93
    ldh a, [$6f]                                  ; $44ce: $f0 $6f
    db $e4                                        ; $44d0: $e4
    add h                                         ; $44d1: $84
    ld hl, $fd3c                                  ; $44d2: $21 $3c $fd
    ld a, [bc]                                    ; $44d5: $0a
    db $ed                                        ; $44d6: $ed
    ld e, a                                       ; $44d7: $5f
    jp z, $ef72                                   ; $44d8: $ca $72 $ef

    and b                                         ; $44db: $a0
    ld c, e                                       ; $44dc: $4b
    push af                                       ; $44dd: $f5
    sub c                                         ; $44de: $91
    sub c                                         ; $44df: $91
    sub h                                         ; $44e0: $94
    ei                                            ; $44e1: $fb
    ld l, d                                       ; $44e2: $6a
    ld a, [c]                                     ; $44e3: $f2
    ld [c], a                                     ; $44e4: $e2
    add $3e                                       ; $44e5: $c6 $3e
    ld l, a                                       ; $44e7: $6f
    halt                                          ; $44e8: $76
    db $e4                                        ; $44e9: $e4
    di                                            ; $44ea: $f3
    push hl                                       ; $44eb: $e5
    db $e3                                        ; $44ec: $e3
    ld b, e                                       ; $44ed: $43
    or c                                          ; $44ee: $b1
    db $e3                                        ; $44ef: $e3
    ld a, [hl]                                    ; $44f0: $7e
    add hl, sp                                    ; $44f1: $39
    sbc [hl]                                      ; $44f2: $9e
    dec a                                         ; $44f3: $3d
    db $fd                                        ; $44f4: $fd
    ld a, [bc]                                    ; $44f5: $0a
    sbc [hl]                                      ; $44f6: $9e
    ld d, e                                       ; $44f7: $53
    inc a                                         ; $44f8: $3c
    db $fc                                        ; $44f9: $fc
    ld a, a                                       ; $44fa: $7f
    reti                                          ; $44fb: $d9


    push af                                       ; $44fc: $f5

jr_042_44fd:
    jp hl                                         ; $44fd: $e9


    ld d, d                                       ; $44fe: $52
    rlca                                          ; $44ff: $07
    db $e4                                        ; $4500: $e4
    db $ed                                        ; $4501: $ed
    adc l                                         ; $4502: $8d
    ld e, d                                       ; $4503: $5a
    dec hl                                        ; $4504: $2b
    sbc l                                         ; $4505: $9d
    ret z                                         ; $4506: $c8

    and a                                         ; $4507: $a7
    and e                                         ; $4508: $a3
    ld [hl], e                                    ; $4509: $73
    ld h, e                                       ; $450a: $63
    ld a, [bc]                                    ; $450b: $0a
    ld a, e                                       ; $450c: $7b
    ld a, a                                       ; $450d: $7f
    sbc a                                         ; $450e: $9f
    or $91                                        ; $450f: $f6 $91
    db $ed                                        ; $4511: $ed
    pop hl                                        ; $4512: $e1
    rst $38                                       ; $4513: $ff
    ld d, h                                       ; $4514: $54
    cpl                                           ; $4515: $2f
    ld [$53f9], a                                 ; $4516: $ea $f9 $53
    db $dd                                        ; $4519: $dd
    ld b, a                                       ; $451a: $47
    ld b, [hl]                                    ; $451b: $46
    db $e4                                        ; $451c: $e4
    ld [hl], l                                    ; $451d: $75
    ld e, c                                       ; $451e: $59
    ld h, b                                       ; $451f: $60
    adc $5f                                       ; $4520: $ce $5f
    ld l, a                                       ; $4522: $6f
    jp z, $f9c7                                   ; $4523: $ca $c7 $f9

    ld de, $1575                                  ; $4526: $11 $75 $15
    add h                                         ; $4529: $84
    rst $08                                       ; $452a: $cf
    ld c, l                                       ; $452b: $4d
    ld a, [bc]                                    ; $452c: $0a
    xor d                                         ; $452d: $aa
    push bc                                       ; $452e: $c5
    sub b                                         ; $452f: $90
    adc l                                         ; $4530: $8d
    cp b                                          ; $4531: $b8
    add hl, hl                                    ; $4532: $29
    add sp, $57                                   ; $4533: $e8 $57
    sbc [hl]                                      ; $4535: $9e
    rst $30                                       ; $4536: $f7
    push bc                                       ; $4537: $c5
    ld d, c                                       ; $4538: $51
    sbc c                                         ; $4539: $99
    inc l                                         ; $453a: $2c
    ld b, $51                                     ; $453b: $06 $51
    sbc a                                         ; $453d: $9f
    ld h, l                                       ; $453e: $65
    ld a, [bc]                                    ; $453f: $0a
    ld c, a                                       ; $4540: $4f
    sbc $b9                                       ; $4541: $de $b9
    rla                                           ; $4543: $17
    sbc [hl]                                      ; $4544: $9e
    ld a, h                                       ; $4545: $7c
    xor b                                         ; $4546: $a8
    and h                                         ; $4547: $a4
    ld a, d                                       ; $4548: $7a
    add hl, sp                                    ; $4549: $39
    scf                                           ; $454a: $37
    ld d, c                                       ; $454b: $51
    sub a                                         ; $454c: $97
    ld [c], a                                     ; $454d: $e2
    ld h, [hl]                                    ; $454e: $66
    ld sp, hl                                     ; $454f: $f9
    sbc d                                         ; $4550: $9a
    dec hl                                        ; $4551: $2b
    cp [hl]                                       ; $4552: $be
    inc c                                         ; $4553: $0c
    ld d, c                                       ; $4554: $51
    ld h, b                                       ; $4555: $60
    ld h, h                                       ; $4556: $64
    ld a, a                                       ; $4557: $7f
    xor d                                         ; $4558: $aa
    sub a                                         ; $4559: $97
    adc c                                         ; $455a: $89
    ld b, d                                       ; $455b: $42
    ld h, c                                       ; $455c: $61
    ei                                            ; $455d: $fb
    sub h                                         ; $455e: $94
    ld e, c                                       ; $455f: $59
    db $ec                                        ; $4560: $ec
    or e                                          ; $4561: $b3
    ccf                                           ; $4562: $3f
    db $e4                                        ; $4563: $e4
    inc d                                         ; $4564: $14
    or [hl]                                       ; $4565: $b6
    ld c, a                                       ; $4566: $4f
    ld [hl], c                                    ; $4567: $71
    or e                                          ; $4568: $b3
    ld a, h                                       ; $4569: $7c
    db $10                                        ; $456a: $10
    ld [hl], l                                    ; $456b: $75
    adc h                                         ; $456c: $8c
    ld a, b                                       ; $456d: $78
    ld hl, sp-$2e                                 ; $456e: $f8 $d2
    sbc d                                         ; $4570: $9a
    ld e, $2b                                     ; $4571: $1e $2b
    cp [hl]                                       ; $4573: $be
    or h                                          ; $4574: $b4
    and $0a                                       ; $4575: $e6 $0a
    cp [hl]                                       ; $4577: $be
    or h                                          ; $4578: $b4
    and $0a                                       ; $4579: $e6 $0a
    cp [hl]                                       ; $457b: $be
    or h                                          ; $457c: $b4
    and $0a                                       ; $457d: $e6 $0a
    dec e                                         ; $457f: $1d
    adc a                                         ; $4580: $8f
    ret                                           ; $4581: $c9


    rst $20                                       ; $4582: $e7
    ld b, h                                       ; $4583: $44
    dec e                                         ; $4584: $1d
    ret c                                         ; $4585: $d8

    ld b, [hl]                                    ; $4586: $46
    rla                                           ; $4587: $17
    ld a, e                                       ; $4588: $7b
    db $ed                                        ; $4589: $ed
    adc c                                         ; $458a: $89
    call nz, $b9a9                                ; $458b: $c4 $a9 $b9
    ld [bc], a                                    ; $458e: $02
    ld l, l                                       ; $458f: $6d
    reti                                          ; $4590: $d9


    cp h                                          ; $4591: $bc
    db $f4                                        ; $4592: $f4
    ld a, l                                       ; $4593: $7d
    cp a                                          ; $4594: $bf
    ld [bc], a                                    ; $4595: $02
    ld [hl], l                                    ; $4596: $75
    ld h, a                                       ; $4597: $67
    sub a                                         ; $4598: $97
    adc c                                         ; $4599: $89
    dec c                                         ; $459a: $0d
    di                                            ; $459b: $f3
    db $f4                                        ; $459c: $f4
    xor c                                         ; $459d: $a9
    add e                                         ; $459e: $83
    ld d, d                                       ; $459f: $52
    xor b                                         ; $45a0: $a8
    ld c, h                                       ; $45a1: $4c
    jp z, $a2a5                                   ; $45a2: $ca $a5 $a2

    ld b, e                                       ; $45a5: $43
    ld a, [hl]                                    ; $45a6: $7e
    ld h, $e5                                     ; $45a7: $26 $e5
    ld d, d                                       ; $45a9: $52
    add c                                         ; $45aa: $81
    ld sp, hl                                     ; $45ab: $f9
    di                                            ; $45ac: $f3
    ld hl, $bf67                                  ; $45ad: $21 $67 $bf
    ld hl, $8415                                  ; $45b0: $21 $15 $84
    dec c                                         ; $45b3: $0d
    cp c                                          ; $45b4: $b9
    ret                                           ; $45b5: $c9


    sbc [hl]                                      ; $45b6: $9e
    cp h                                          ; $45b7: $bc
    ld [hl], e                                    ; $45b8: $73
    ld d, e                                       ; $45b9: $53
    dec l                                         ; $45ba: $2d
    xor a                                         ; $45bb: $af
    ret                                           ; $45bc: $c9


    db $e4                                        ; $45bd: $e4
    inc h                                         ; $45be: $24
    daa                                           ; $45bf: $27
    ld e, [hl]                                    ; $45c0: $5e
    ld e, b                                       ; $45c1: $58
    dec b                                         ; $45c2: $05
    cp e                                          ; $45c3: $bb
    rst $28                                       ; $45c4: $ef
    ld d, a                                       ; $45c5: $57
    xor l                                         ; $45c6: $ad
    ld a, [$fef3]                                 ; $45c7: $fa $f3 $fe
    cp h                                          ; $45ca: $bc
    cp a                                          ; $45cb: $bf
    ld h, [hl]                                    ; $45cc: $66
    ld l, d                                       ; $45cd: $6a
    rst $38                                       ; $45ce: $ff
    add l                                         ; $45cf: $85
    cp h                                          ; $45d0: $bc
    jp nz, $e713                                  ; $45d1: $c2 $13 $e7

    ld b, a                                       ; $45d4: $47
    cp h                                          ; $45d5: $bc
    rst $28                                       ; $45d6: $ef
    call c, Call_000_2ebd                         ; $45d7: $dc $bd $2e
    ld a, $14                                     ; $45da: $3e $14
    dec sp                                        ; $45dc: $3b
    sbc d                                         ; $45dd: $9a
    cp l                                          ; $45de: $bd
    and h                                         ; $45df: $a4
    db $fc                                        ; $45e0: $fc
    cp $0a                                        ; $45e1: $fe $0a
    ld [hl], c                                    ; $45e3: $71
    ld a, [hl]                                    ; $45e4: $7e

Call_042_45e5:
    ld b, h                                       ; $45e5: $44
    ld b, [hl]                                    ; $45e6: $46
    ld d, d                                       ; $45e7: $52
    inc hl                                        ; $45e8: $23
    cp a                                          ; $45e9: $bf
    reti                                          ; $45ea: $d9


    and [hl]                                      ; $45eb: $a6
    sub $0a                                       ; $45ec: $d6 $0a
    sbc [hl]                                      ; $45ee: $9e
    cp $a3                                        ; $45ef: $fe $a3
    ld [$3b72], a                                 ; $45f1: $ea $72 $3b
    ld a, d                                       ; $45f4: $7a
    jr c, jr_042_462e                             ; $45f5: $38 $37

    cp d                                          ; $45f7: $ba
    or h                                          ; $45f8: $b4
    rst $38                                       ; $45f9: $ff
    db $db                                        ; $45fa: $db
    dec sp                                        ; $45fb: $3b
    inc b                                         ; $45fc: $04
    ld l, d                                       ; $45fd: $6a
    xor [hl]                                      ; $45fe: $ae
    ld l, l                                       ; $45ff: $6d
    call nz, $a287                                ; $4600: $c4 $87 $a2
    ldh a, [$c7]                                  ; $4603: $f0 $c7
    ld c, l                                       ; $4605: $4d
    pop af                                        ; $4606: $f1
    xor b                                         ; $4607: $a8
    ld d, c                                       ; $4608: $51
    ld l, e                                       ; $4609: $6b
    dec b                                         ; $460a: $05
    dec l                                         ; $460b: $2d
    rst $00                                       ; $460c: $c7
    add a                                         ; $460d: $87
    ld h, d                                       ; $460e: $62
    rst $28                                       ; $460f: $ef
    ld c, c                                       ; $4610: $49
    ld h, c                                       ; $4611: $61
    cp d                                          ; $4612: $ba
    sbc h                                         ; $4613: $9c
    sbc d                                         ; $4614: $9a
    cp h                                          ; $4615: $bc
    and [hl]                                      ; $4616: $a6
    ld b, c                                       ; $4617: $41
    db $d3                                        ; $4618: $d3
    ld l, [hl]                                    ; $4619: $6e
    ld [c], a                                     ; $461a: $e2
    db $fc                                        ; $461b: $fc
    ret z                                         ; $461c: $c8

    cp $c8                                        ; $461d: $fe $c8
    adc b                                         ; $461f: $88
    ld a, h                                       ; $4620: $7c
    db $fc                                        ; $4621: $fc
    sbc a                                         ; $4622: $9f
    ld [$3d45], a                                 ; $4623: $ea $45 $3d
    ld c, a                                       ; $4626: $4f
    ld a, $75                                     ; $4627: $3e $75
    ld b, b                                       ; $4629: $40
    sbc $de                                       ; $462a: $de $de
    add sp, $57                                   ; $462c: $e8 $57

jr_042_462e:
    dec l                                         ; $462e: $2d
    ld h, a                                       ; $462f: $67
    ld a, a                                       ; $4630: $7f
    ld a, [hl-]                                   ; $4631: $3a
    ld a, [hl-]                                   ; $4632: $3a
    scf                                           ; $4633: $37
    and [hl]                                      ; $4634: $a6
    or b                                          ; $4635: $b0
    rst $30                                       ; $4636: $f7
    ld b, a                                       ; $4637: $47
    ld e, l                                       ; $4638: $5d
    ld [$bc80], a                                 ; $4639: $ea $80 $bc
    cp l                                          ; $463c: $bd
    ld d, c                                       ; $463d: $51
    inc sp                                        ; $463e: $33
    xor l                                         ; $463f: $ad
    ld a, a                                       ; $4640: $7f
    ld d, l                                       ; $4641: $55
    ld h, c                                       ; $4642: $61
    ld a, a                                       ; $4643: $7f
    call $9d15                                    ; $4644: $cd $15 $9d
    ld e, $e4                                     ; $4647: $1e $e4
    jr @-$03                                      ; $4649: $18 $fb

    di                                            ; $464b: $f3
    ld e, c                                       ; $464c: $59
    inc c                                         ; $464d: $0c
    and d                                         ; $464e: $a2
    ld h, b                                       ; $464f: $60
    ret nc                                        ; $4650: $d0

    and l                                         ; $4651: $a5
    xor $30                                       ; $4652: $ee $30
    jp $ae6a                                      ; $4654: $c3 $6a $ae


    sbc [hl]                                      ; $4657: $9e
    ld h, e                                       ; $4658: $63
    xor a                                         ; $4659: $af
    ld l, c                                       ; $465a: $69
    scf                                           ; $465b: $37
    cp d                                          ; $465c: $ba
    call nc, $337e                                ; $465d: $d4 $7e $33
    ld [bc], a                                    ; $4660: $02
    dec [hl]                                      ; $4661: $35
    ld d, a                                       ; $4662: $57
    or l                                          ; $4663: $b5
    rst $18                                       ; $4664: $df
    adc h                                         ; $4665: $8c
    add b                                         ; $4666: $80
    ld l, $4f                                     ; $4667: $2e $4f
    ld a, [de]                                    ; $4669: $1a
    ld a, [bc]                                    ; $466a: $0a
    ld e, a                                       ; $466b: $5f
    sub [hl]                                      ; $466c: $96
    ld h, c                                       ; $466d: $61
    jp z, $f713                                   ; $466e: $ca $13 $f7

    adc $dd                                       ; $4671: $ce $dd
    sbc e                                         ; $4673: $9b
    cp e                                          ; $4674: $bb
    jr nc, jr_042_46dc                            ; $4675: $30 $65

    cp [hl]                                       ; $4677: $be
    ld [$1a2e], sp                                ; $4678: $08 $2e $1a
    db $fd                                        ; $467b: $fd
    xor e                                         ; $467c: $ab
    cp c                                          ; $467d: $b9
    ld [bc], a                                    ; $467e: $02
    ld [hl], l                                    ; $467f: $75
    ld b, b                                       ; $4680: $40
    sbc $de                                       ; $4681: $de $de
    xor b                                         ; $4683: $a8
    add hl, de                                    ; $4684: $19
    rst $08                                       ; $4685: $cf
    xor c                                         ; $4686: $a9
    sub b                                         ; $4687: $90
    jp nz, $b57f                                  ; $4688: $c2 $7f $b5

    ld d, [hl]                                    ; $468b: $56
    db $ed                                        ; $468c: $ed
    cp a                                          ; $468d: $bf
    ld a, [$e3ea]                                 ; $468e: $fa $ea $e3
    jp hl                                         ; $4691: $e9


    cp a                                          ; $4692: $bf
    and l                                         ; $4693: $a5
    add sp, $72                                   ; $4694: $e8 $72
    sub d                                         ; $4696: $92
    inc de                                        ; $4697: $13
    cpl                                           ; $4698: $2f
    xor h                                         ; $4699: $ac
    add d                                         ; $469a: $82
    db $dd                                        ; $469b: $dd
    db $eb                                        ; $469c: $eb
    ld d, d                                       ; $469d: $52
    ld e, l                                       ; $469e: $5d
    db $fc                                        ; $469f: $fc
    rra                                           ; $46a0: $1f
    cp e                                          ; $46a1: $bb
    ld a, [bc]                                    ; $46a2: $0a
    and l                                         ; $46a3: $a5
    ld c, h                                       ; $46a4: $4c
    ld c, [hl]                                    ; $46a5: $4e
    ld d, d                                       ; $46a6: $52
    ld d, b                                       ; $46a7: $50
    ld a, b                                       ; $46a8: $78
    ld a, [$b515]                                 ; $46a9: $fa $15 $b5
    daa                                           ; $46ac: $27
    ld d, e                                       ; $46ad: $53
    ld a, [bc]                                    ; $46ae: $0a
    adc h                                         ; $46af: $8c
    ld a, h                                       ; $46b0: $7c
    sbc [hl]                                      ; $46b1: $9e
    db $ec                                        ; $46b2: $ec
    rrca                                          ; $46b3: $0f
    db $d3                                        ; $46b4: $d3
    rst $08                                       ; $46b5: $cf
    ld [hl], d                                    ; $46b6: $72
    adc $cd                                       ; $46b7: $ce $cd
    cp $3c                                        ; $46b9: $fe $3c
    ld c, c                                       ; $46bb: $49
    ld b, d                                       ; $46bc: $42
    sbc b                                         ; $46bd: $98
    jp c, Jump_042_52eb                           ; $46be: $da $eb $52

    ei                                            ; $46c1: $fb
    call $a408                                    ; $46c2: $cd $08 $a4
    xor $30                                       ; $46c5: $ee $30
    jp Jump_000_15fa                              ; $46c7: $c3 $fa $15


    sbc l                                         ; $46ca: $9d
    ld d, h                                       ; $46cb: $54
    ld a, l                                       ; $46cc: $7d
    rst $18                                       ; $46cd: $df
    rlca                                          ; $46ce: $07
    cp $aa                                        ; $46cf: $fe $aa
    rst $28                                       ; $46d1: $ef
    ei                                            ; $46d2: $fb
    call c, $7df4                                 ; $46d3: $dc $f4 $7d
    cp a                                          ; $46d6: $bf
    ld [bc], a                                    ; $46d7: $02
    ld [hl], l                                    ; $46d8: $75
    ld b, [hl]                                    ; $46d9: $46
    ld a, [c]                                     ; $46da: $f2
    ld b, h                                       ; $46db: $44

jr_042_46dc:
    ld [c], a                                     ; $46dc: $e2
    sbc e                                         ; $46dd: $9b
    ld a, d                                       ; $46de: $7a
    cp [hl]                                       ; $46df: $be
    ld d, h                                       ; $46e0: $54
    ld a, a                                       ; $46e1: $7f
    ld e, c                                       ; $46e2: $59
    xor [hl]                                      ; $46e3: $ae
    add c                                         ; $46e4: $81
    ld a, h                                       ; $46e5: $7c
    cp h                                          ; $46e6: $bc
    ld l, a                                       ; $46e7: $6f
    ld [$8f95], sp                                ; $46e8: $08 $95 $8f
    sbc e                                         ; $46eb: $9b
    ld a, [c]                                     ; $46ec: $f2
    ld d, c                                       ; $46ed: $51
    ret c                                         ; $46ee: $d8

    pop de                                        ; $46ef: $d1
    jr nz, jr_042_4722                            ; $46f0: $20 $30

    db $f4                                        ; $46f2: $f4
    xor c                                         ; $46f3: $a9
    add e                                         ; $46f4: $83
    ret c                                         ; $46f5: $d8

    dec l                                         ; $46f6: $2d
    ld l, a                                       ; $46f7: $6f
    dec de                                        ; $46f8: $1b
    add [hl]                                      ; $46f9: $86
    ld l, d                                       ; $46fa: $6a
    or d                                          ; $46fb: $b2
    ld e, h                                       ; $46fc: $5c
    inc bc                                        ; $46fd: $03
    pop hl                                        ; $46fe: $e1
    scf                                           ; $46ff: $37
    ld [hl], l                                    ; $4700: $75
    ld a, l                                       ; $4701: $7d
    jp c, Jump_042_6cfb                           ; $4702: $da $fb $6c

    db $10                                        ; $4705: $10
    ld l, a                                       ; $4706: $6f
    inc b                                         ; $4707: $04
    xor c                                         ; $4708: $a9
    ld de, $5586                                  ; $4709: $11 $86 $55

jr_042_470c:
    daa                                           ; $470c: $27
    rst $08                                       ; $470d: $cf
    rst $18                                       ; $470e: $df
    xor a                                         ; $470f: $af
    sbc [hl]                                      ; $4710: $9e
    rst $30                                       ; $4711: $f7
    and e                                         ; $4712: $a3
    ld c, e                                       ; $4713: $4b
    ld b, a                                       ; $4714: $47
    inc hl                                        ; $4715: $23
    db $fd                                        ; $4716: $fd
    ld a, [bc]                                    ; $4717: $0a
    ld [hl], l                                    ; $4718: $75
    ld c, e                                       ; $4719: $4b
    pop hl                                        ; $471a: $e1
    cp [hl]                                       ; $471b: $be
    rst $28                                       ; $471c: $ef
    ld d, e                                       ; $471d: $53
    ld h, a                                       ; $471e: $67
    inc h                                         ; $471f: $24
    dec b                                         ; $4720: $05
    ld a, [bc]                                    ; $4721: $0a

jr_042_4722:
    add $17                                       ; $4722: $c6 $17
    ld a, [c]                                     ; $4724: $f2
    call c, $e4c9                                 ; $4725: $dc $c9 $e4
    ld d, e                                       ; $4728: $53
    dec de                                        ; $4729: $1b
    ld d, [hl]                                    ; $472a: $56
    db $dd                                        ; $472b: $dd
    ld [$2974], sp                                ; $472c: $08 $74 $29
    db $fc                                        ; $472f: $fc
    ld d, c                                       ; $4730: $51
    rla                                           ; $4731: $17
    and c                                         ; $4732: $a1
    ld b, e                                       ; $4733: $43
    ld c, [hl]                                    ; $4734: $4e
    cp h                                          ; $4735: $bc
    rst $28                                       ; $4736: $ef
    jr nz, jr_042_47a3                            ; $4737: $20 $6a

    or d                                          ; $4739: $b2

jr_042_473a:
    ccf                                           ; $473a: $3f
    push hl                                       ; $473b: $e5
    sbc l                                         ; $473c: $9d
    add e                                         ; $473d: $83
    jr nc, jr_042_473a                            ; $473e: $30 $fa

    dec d                                         ; $4740: $15
    sbc [hl]                                      ; $4741: $9e
    ld d, e                                       ; $4742: $53
    cp [hl]                                       ; $4743: $be
    sub $0a                                       ; $4744: $d6 $0a
    or l                                          ; $4746: $b5
    rst $18                                       ; $4747: $df
    adc h                                         ; $4748: $8c
    add b                                         ; $4749: $80
    ld l, $e5                                     ; $474a: $2e $e5
    and b                                         ; $474c: $a0
    adc [hl]                                      ; $474d: $8e
    cpl                                           ; $474e: $2f
    rst $28                                       ; $474f: $ef
    call c, Call_042_4f0b                         ; $4750: $dc $0b $4f
    ld a, $15                                     ; $4753: $3e $15
    ld a, [$4ef8]                                 ; $4755: $fa $f8 $4e
    sbc b                                         ; $4758: $98
    ld [hl-], a                                   ; $4759: $32
    ld c, a                                       ; $475a: $4f
    ld a, [bc]                                    ; $475b: $0a
    db $dd                                        ; $475c: $dd
    db $db                                        ; $475d: $db
    and e                                         ; $475e: $a3
    dec c                                         ; $475f: $0d
    db $d3                                        ; $4760: $d3
    rst $08                                       ; $4761: $cf
    ld e, $ed                                     ; $4762: $1e $ed
    cp [hl]                                       ; $4764: $be
    ld e, a                                       ; $4765: $5f
    ld bc, $8aad                                  ; $4766: $01 $ad $8a
    ld a, d                                       ; $4769: $7a
    ld b, [hl]                                    ; $476a: $46
    ld a, $05                                     ; $476b: $3e $05
    ld a, [bc]                                    ; $476d: $0a
    ld b, [hl]                                    ; $476e: $46
    sbc [hl]                                      ; $476f: $9e
    ld l, $f6                                     ; $4770: $2e $f6
    jp c, $8913                                   ; $4772: $da $13 $89

    rst $10                                       ; $4775: $d7
    xor a                                         ; $4776: $af
    sbc l                                         ; $4777: $9d
    ld c, l                                       ; $4778: $4d
    ld [hl], a                                    ; $4779: $77
    cp d                                          ; $477a: $ba
    jr c, jr_042_470c                             ; $477b: $38 $8f

    ld a, [de]                                    ; $477d: $1a
    xor c                                         ; $477e: $a9
    ld e, [hl]                                    ; $477f: $5e
    call c, Call_042_64f3                         ; $4780: $dc $f3 $64
    add hl, de                                    ; $4783: $19
    scf                                           ; $4784: $37
    db $fd                                        ; $4785: $fd
    ld a, [bc]                                    ; $4786: $0a
    ld [hl], l                                    ; $4787: $75
    or b                                          ; $4788: $b0
    rst $30                                       ; $4789: $f7
    ld h, a                                       ; $478a: $67
    or c                                          ; $478b: $b1
    xor e                                         ; $478c: $ab
    ld a, $1b                                     ; $478d: $3e $1b
    call nz, $411b                                ; $478f: $c4 $1b $41
    call nc, $0da5                                ; $4792: $d4 $a5 $0d
    db $d3                                        ; $4795: $d3
    rst $08                                       ; $4796: $cf
    ld e, $ed                                     ; $4797: $1e $ed
    ld a, $ee                                     ; $4799: $3e $ee
    ld [hl-], a                                   ; $479b: $32
    adc $d1                                       ; $479c: $ce $d1
    dec b                                         ; $479e: $05
    add [hl]                                      ; $479f: $86
    ld l, d                                       ; $47a0: $6a
    and d                                         ; $47a1: $a2
    or b                                          ; $47a2: $b0

jr_042_47a3:
    or a                                          ; $47a3: $b7
    rst $00                                       ; $47a4: $c7
    add hl, hl                                    ; $47a5: $29
    ld [$f79f], sp                                ; $47a6: $08 $9f $f7
    call c, $6f13                                 ; $47a9: $dc $13 $6f
    inc b                                         ; $47ac: $04
    ld d, c                                       ; $47ad: $51
    ret c                                         ; $47ae: $d8

    dec de                                        ; $47af: $1b
    add c                                         ; $47b0: $81
    jp hl                                         ; $47b1: $e9


    pop de                                        ; $47b2: $d1
    and a                                         ; $47b3: $a7
    ld b, e                                       ; $47b4: $43
    adc d                                         ; $47b5: $8a
    jp nz, Jump_000_1948                          ; $47b6: $c2 $48 $19

    sbc c                                         ; $47b9: $99
    sbc h                                         ; $47ba: $9c
    ld l, b                                       ; $47bb: $68
    ld b, $75                                     ; $47bc: $06 $75
    db $10                                        ; $47be: $10
    cp [hl]                                       ; $47bf: $be
    ld a, b                                       ; $47c0: $78
    ld b, a                                       ; $47c1: $47
    call nc, Call_000_1057                        ; $47c2: $d4 $57 $10
    cp $7d                                        ; $47c5: $fe $7d
    ld de, $8dec                                  ; $47c7: $11 $ec $8d
    ld a, b                                       ; $47ca: $78
    rst $00                                       ; $47cb: $c7
    ld a, [hl+]                                   ; $47cc: $2a
    cp d                                          ; $47cd: $ba
    ld de, $a975                                  ; $47ce: $11 $75 $a9
    ld h, [hl]                                    ; $47d1: $66
    di                                            ; $47d2: $f3
    sub l                                         ; $47d3: $95
    ld [hl], d                                    ; $47d4: $72
    dec d                                         ; $47d5: $15
    or d                                          ; $47d6: $b2
    inc c                                         ; $47d7: $0c
    pop af                                        ; $47d8: $f1
    ld b, [hl]                                    ; $47d9: $46

jr_042_47da:
    ld c, [hl]                                    ; $47da: $4e
    rla                                           ; $47db: $17
    rra                                           ; $47dc: $1f
    ld a, d                                       ; $47dd: $7a
    and d                                         ; $47de: $a2
    ld l, $35                                     ; $47df: $2e $35
    ld [hl], d                                    ; $47e1: $72
    push de                                       ; $47e2: $d5
    ld [hl-], a                                   ; $47e3: $32
    add $2f                                       ; $47e4: $c6 $2f
    adc h                                         ; $47e6: $8c
    sub h                                         ; $47e7: $94
    ld e, a                                       ; $47e8: $5f
    ld h, b                                       ; $47e9: $60
    adc b                                         ; $47ea: $88
    sbc e                                         ; $47eb: $9b
    ld a, [bc]                                    ; $47ec: $0a
    or c                                          ; $47ed: $b1
    ld [hl], e                                    ; $47ee: $73
    inc hl                                        ; $47ef: $23
    ld d, e                                       ; $47f0: $53
    inc e                                         ; $47f1: $1c
    ld l, h                                       ; $47f2: $6c
    and e                                         ; $47f3: $a3
    ld e, a                                       ; $47f4: $5f
    ld bc, $4f6d                                  ; $47f5: $01 $6d $4f
    or $a4                                        ; $47f8: $f6 $a4
    ld c, h                                       ; $47fa: $4c
    or h                                          ; $47fb: $b4
    xor e                                         ; $47fc: $ab
    and a                                         ; $47fd: $a7
    and $0a                                       ; $47fe: $e6 $0a
    ld l, l                                       ; $4800: $6d
    reti                                          ; $4801: $d9


    cp h                                          ; $4802: $bc
    db $f4                                        ; $4803: $f4
    dec hl                                        ; $4804: $2b
    dec l                                         ; $4805: $2d
    and a                                         ; $4806: $a7
    and b                                         ; $4807: $a0
    ld e, d                                       ; $4808: $5a
    inc c                                         ; $4809: $0c
    reti                                          ; $480a: $d9


    sbc a                                         ; $480b: $9f
    jp nz, $e528                                  ; $480c: $c2 $28 $e5

    ei                                            ; $480f: $fb
    dec d                                         ; $4810: $15
    sbc [hl]                                      ; $4811: $9e
    inc hl                                        ; $4812: $23
    dec b                                         ; $4813: $05
    sbc d                                         ; $4814: $9a
    ret nz                                        ; $4815: $c0

    ld [$c7cf], a                                 ; $4816: $ea $cf $c7
    db $dd                                        ; $4819: $dd
    rla                                           ; $481a: $17
    ld b, a                                       ; $481b: $47
    ld h, l                                       ; $481c: $65
    and d                                         ; $481d: $a2
    ld l, $e4                                     ; $481e: $2e $e4
    ld e, h                                       ; $4820: $5c
    xor b                                         ; $4821: $a8
    ld a, b                                       ; $4822: $78
    ld b, b                                       ; $4823: $40
    call c, Call_000_3db9                         ; $4824: $dc $b9 $3d
    dec bc                                        ; $4827: $0b
    call nc, $147d                                ; $4828: $d4 $7d $14
    or h                                          ; $482b: $b4
    ld a, l                                       ; $482c: $7d
    add hl, sp                                    ; $482d: $39
    pop de                                        ; $482e: $d1
    inc c                                         ; $482f: $0c
    ld [$7c20], a                                 ; $4830: $ea $20 $7c
    ld a, l                                       ; $4833: $7d
    ld [$1b0e], a                                 ; $4834: $ea $0e $1b
    jr jr_042_47da                                ; $4837: $18 $a1

    ld a, h                                       ; $4839: $7c
    ei                                            ; $483a: $fb
    adc b                                         ; $483b: $88
    call nz, $6437                                ; $483c: $c4 $37 $64
    inc hl                                        ; $483f: $23
    ld d, a                                       ; $4840: $57
    ld d, l                                       ; $4841: $55
    xor a                                         ; $4842: $af
    sbc l                                         ; $4843: $9d
    ld e, h                                       ; $4844: $5c
    ld d, $58                                     ; $4845: $16 $58
    ld c, [hl]                                    ; $4847: $4e
    ld b, c                                       ; $4848: $41
    ld hl, sp-$44                                 ; $4849: $f8 $bc
    rst $20                                       ; $484b: $e7
    sbc $10                                       ; $484c: $de $10
    rra                                           ; $484e: $1f
    ld a, [$dcbb]                                 ; $484f: $fa $bb $dc
    sub a                                         ; $4852: $97
    dec bc                                        ; $4853: $0b
    ld c, h                                       ; $4854: $4c
    rst $38                                       ; $4855: $ff
    db $fd                                        ; $4856: $fd
    ld a, [bc]                                    ; $4857: $0a
    dec e                                         ; $4858: $1d
    jp nc, Jump_000_3517                          ; $4859: $d2 $17 $35

    ld h, c                                       ; $485c: $61
    dec de                                        ; $485d: $1b
    ld a, [c]                                     ; $485e: $f2
    add hl, de                                    ; $485f: $19
    and c                                         ; $4860: $a1
    ld [c], a                                     ; $4861: $e2
    ld bc, $7fd3                                  ; $4862: $01 $d3 $7f
    sbc h                                         ; $4865: $9c
    rra                                           ; $4866: $1f

Jump_042_4867:
    sub c                                         ; $4867: $91
    sub c                                         ; $4868: $91
    sub h                                         ; $4869: $94
    ld e, a                                       ; $486a: $5f
    ret nz                                        ; $486b: $c0

    adc b                                         ; $486c: $88
    sbc l                                         ; $486d: $9d
    dec de                                        ; $486e: $1b

jr_042_486f:
    sbc c                                         ; $486f: $99
    ld [c], a                                     ; $4870: $e2
    ld h, b                                       ; $4871: $60
    ret nc                                        ; $4872: $d0

    push bc                                       ; $4873: $c5
    ld sp, hl                                     ; $4874: $f9
    adc a                                         ; $4875: $8f
    ld a, [hl+]                                   ; $4876: $2a
    jr nc, jr_042_486f                            ; $4877: $30 $f6

    ld b, a                                       ; $4879: $47
    ld b, c                                       ; $487a: $41
    ret c                                         ; $487b: $d8

    ld h, $db                                     ; $487c: $26 $db
    inc bc                                        ; $487e: $03
    ld [c], a                                     ; $487f: $e2
    adc $ed                                       ; $4880: $ce $ed
    ld e, c                                       ; $4882: $59
    and b                                         ; $4883: $a0
    xor $fb                                       ; $4884: $ee $fb
    ld [hl], h                                    ; $4886: $74
    ld a, [bc]                                    ; $4887: $0a
    or e                                          ; $4888: $b3
    ld a, d                                       ; $4889: $7a
    ld d, d                                       ; $488a: $52
    cp l                                          ; $488b: $bd
    halt                                          ; $488c: $76
    xor $2b                                       ; $488d: $ee $2b
    ld [$a723], sp                                ; $488f: $08 $23 $a7
    jr nz, jr_042_4910                            ; $4892: $20 $7c

    sbc $73                                       ; $4894: $de $73
    rst $08                                       ; $4896: $cf

jr_042_4897:
    rra                                           ; $4897: $1f
    call nz, Call_000_2fed                        ; $4898: $c4 $ed $2f
    push hl                                       ; $489b: $e5
    cp h                                          ; $489c: $bc
    rst $20                                       ; $489d: $e7
    sbc [hl]                                      ; $489e: $9e
    cp a                                          ; $489f: $bf
    ld c, a                                       ; $48a0: $4f
    ld e, l                                       ; $48a1: $5d
    add e                                         ; $48a2: $83
    jr z, @+$32                                   ; $48a3: $28 $30

    or d                                          ; $48a5: $b2
    dec a                                         ; $48a6: $3d
    jr nz, jr_042_4897                            ; $48a7: $20 $ee

    call c, Call_000_059e                         ; $48a9: $dc $9e $05
    ld [$883e], a                                 ; $48ac: $ea $3e $88
    halt                                          ; $48af: $76
    or $8c                                        ; $48b0: $f6 $8c
    inc l                                         ; $48b2: $2c
    or b                                          ; $48b3: $b0
    ld e, h                                       ; $48b4: $5c
    or h                                          ; $48b5: $b4
    ld a, e                                       ; $48b6: $7b
    ld d, e                                       ; $48b7: $53
    daa                                           ; $48b8: $27
    rla                                           ; $48b9: $17
    add l                                         ; $48ba: $85
    cp l                                          ; $48bb: $bd
    ccf                                           ; $48bc: $3f
    push bc                                       ; $48bd: $c5
    pop de                                        ; $48be: $d1
    reti                                          ; $48bf: $d9


    sbc a                                         ; $48c0: $9f
    rst $18                                       ; $48c1: $df
    ei                                            ; $48c2: $fb
    ld h, e                                       ; $48c3: $63
    rst $20                                       ; $48c4: $e7
    ld h, b                                       ; $48c5: $60
    xor $a3                                       ; $48c6: $ee $a3
    or b                                          ; $48c8: $b0
    scf                                           ; $48c9: $37
    ld [bc], a                                    ; $48ca: $02
    db $d3                                        ; $48cb: $d3
    and e                                         ; $48cc: $a3
    ld c, a                                       ; $48cd: $4f
    sbc l                                         ; $48ce: $9d
    sub c                                         ; $48cf: $91
    ld b, b                                       ; $48d0: $40
    ret c                                         ; $48d1: $d8

    sbc [hl]                                      ; $48d2: $9e
    ld de, $dec1                                  ; $48d3: $11 $c1 $de
    rra                                           ; $48d6: $1f
    rst $28                                       ; $48d7: $ef
    jr jr_042_48e4                                ; $48d8: $18 $0a

    ld a, a                                       ; $48da: $7f
    ld d, $9b                                     ; $48db: $16 $9b
    db $d3                                        ; $48dd: $d3

Jump_042_48de:
    rra                                           ; $48de: $1f
    ld a, a                                       ; $48df: $7f
    sbc a                                         ; $48e0: $9f
    ld [hl], $22                                  ; $48e1: $36 $22
    inc hl                                        ; $48e3: $23

jr_042_48e4:
    pop hl                                        ; $48e4: $e1
    ld sp, $4679                                  ; $48e5: $31 $79 $46
    cp h                                          ; $48e8: $bc
    daa                                           ; $48e9: $27
    adc $5f                                       ; $48ea: $ce $5f
    ld l, a                                       ; $48ec: $6f
    ld h, h                                       ; $48ed: $64
    inc h                                         ; $48ee: $24
    ld c, a                                       ; $48ef: $4f
    add d                                         ; $48f0: $82
    ld de, $e77b                                  ; $48f1: $11 $7b $e7
    ld h, [hl]                                    ; $48f4: $66
    di                                            ; $48f5: $f3
    ld h, h                                       ; $48f6: $64
    inc hl                                        ; $48f7: $23
    dec b                                         ; $48f8: $05
    rla                                           ; $48f9: $17
    sbc b                                         ; $48fa: $98
    ld e, $c1                                     ; $48fb: $1e $c1
    add [hl]                                      ; $48fd: $86
    cp b                                          ; $48fe: $b8
    ld h, a                                       ; $48ff: $67
    ld b, h                                       ; $4900: $44
    or b                                          ; $4901: $b0
    rst $30                                       ; $4902: $f7
    ld h, a                                       ; $4903: $67
    ld e, a                                       ; $4904: $5f
    pop hl                                        ; $4905: $e1
    adc a                                         ; $4906: $8f
    di                                            ; $4907: $f3
    inc hl                                        ; $4908: $23
    db $e4                                        ; $4909: $e4
    push bc                                       ; $490a: $c5
    ccf                                           ; $490b: $3f
    ld [hl], c                                    ; $490c: $71
    inc hl                                        ; $490d: $23
    dec b                                         ; $490e: $05
    sbc d                                         ; $490f: $9a

jr_042_4910:
    inc a                                         ; $4910: $3c
    ld c, a                                       ; $4911: $4f
    cp a                                          ; $4912: $bf
    ld [bc], a                                    ; $4913: $02
    cp [hl]                                       ; $4914: $be
    ld [$e749], sp                                ; $4915: $08 $49 $e7
    or d                                          ; $4918: $b2
    ret nc                                        ; $4919: $d0

    cp c                                          ; $491a: $b9
    inc d                                         ; $491b: $14
    ld l, b                                       ; $491c: $68
    db $f4                                        ; $491d: $f4
    xor h                                         ; $491e: $ac
    cp d                                          ; $491f: $ba
    ld a, $be                                     ; $4920: $3e $be
    inc de                                        ; $4922: $13
    db $ed                                        ; $4923: $ed
    ld [$9d89], a                                 ; $4924: $ea $89 $9d
    dec de                                        ; $4927: $1b
    sbc c                                         ; $4928: $99
    ld [c], a                                     ; $4929: $e2
    ld h, b                                       ; $492a: $60
    ret z                                         ; $492b: $c8

    cp $54                                        ; $492c: $fe $54
    xor a                                         ; $492e: $af
    ld l, c                                       ; $492f: $69
    scf                                           ; $4930: $37
    sub [hl]                                      ; $4931: $96
    push hl                                       ; $4932: $e5
    adc l                                         ; $4933: $8d
    ld de, $bd85                                  ; $4934: $11 $85 $bd
    ld de, $1e98                                  ; $4937: $11 $98 $1e
    db $fd                                        ; $493a: $fd
    ld a, [bc]                                    ; $493b: $0a
    ld [hl], l                                    ; $493c: $75
    ld b, [hl]                                    ; $493d: $46
    sub a                                         ; $493e: $97
    ld a, [de]                                    ; $493f: $1a
    xor c                                         ; $4940: $a9
    and b                                         ; $4941: $a0
    db $ed                                        ; $4942: $ed
    sbc e                                         ; $4943: $9b
    inc d                                         ; $4944: $14
    call nz, $dcc1                                ; $4945: $c4 $c1 $dc
    ld b, h                                       ; $4948: $44
    ld e, l                                       ; $4949: $5d
    xor [hl]                                      ; $494a: $ae
    ld e, d                                       ; $494b: $5a
    sbc $de                                       ; $494c: $de $de
    db $10                                        ; $494e: $10
    push af                                       ; $494f: $f5
    add hl, hl                                    ; $4950: $29
    or e                                          ; $4951: $b3
    and a                                         ; $4952: $a7
    ld e, a                                       ; $4953: $5f
    ld bc, $fe6d                                  ; $4954: $01 $6d $fe
    push hl                                       ; $4957: $e5
    sbc c                                         ; $4958: $99
    ld hl, $1bc4                                  ; $4959: $21 $c4 $1b
    ld b, c                                       ; $495c: $41
    ld a, $32                                     ; $495d: $3e $32
    sub d                                         ; $495f: $92
    add l                                         ; $4960: $85
    adc d                                         ; $4961: $8a
    ld b, $e3                                     ; $4962: $06 $e3
    adc e                                         ; $4964: $8b
    dec de                                        ; $4965: $1b
    adc c                                         ; $4966: $89
    rrca                                          ; $4967: $0f
    db $fd                                        ; $4968: $fd
    db $ed                                        ; $4969: $ed
    db $fc                                        ; $496a: $fc
    ld c, b                                       ; $496b: $48
    ld e, c                                       ; $496c: $59
    ld c, [hl]                                    ; $496d: $4e
    cp [hl]                                       ; $496e: $be
    and $0a                                       ; $496f: $e6 $0a
    sbc [hl]                                      ; $4971: $9e
    ld d, e                                       ; $4972: $53
    ld hl, $c18b                                  ; $4973: $21 $8b $c1
    dec bc                                        ; $4976: $0b
    cp e                                          ; $4977: $bb
    ld [c], a                                     ; $4978: $e2
    xor [hl]                                      ; $4979: $ae
    ld e, a                                       ; $497a: $5f
    ld bc, $179e                                  ; $497b: $01 $9e $17
    ld [de], a                                    ; $497e: $12
    ld [$9abe], a                                 ; $497f: $ea $be $9a
    xor b                                         ; $4982: $a8
    ld e, c                                       ; $4983: $59
    ld b, [hl]                                    ; $4984: $46
    sub a                                         ; $4985: $97
    jp c, $466f                                   ; $4986: $da $6f $46

    and b                                         ; $4989: $a0
    ld e, a                                       ; $498a: $5f

jr_042_498b:
    ld bc, $0fad                                  ; $498b: $01 $ad $0f
    ld l, c                                       ; $498e: $69
    jr z, @+$7e                                   ; $498f: $28 $7c

    ld [hl], c                                    ; $4991: $71
    jr nc, jr_042_498b                            ; $4992: $30 $f7

    add [hl]                                      ; $4994: $86
    db $fc                                        ; $4995: $fc
    sbc $1e                                       ; $4996: $de $1e
    jr z, @+$0e                                   ; $4998: $28 $0c

    sub e                                         ; $499a: $93
    pop de                                        ; $499b: $d1
    and l                                         ; $499c: $a5
    or $9b                                        ; $499d: $f6 $9b
    ld de, $57e8                                  ; $499f: $11 $e8 $57
    ld [hl], l                                    ; $49a2: $75
    ld b, [hl]                                    ; $49a3: $46
    ld [c], a                                     ; $49a4: $e2
    ld l, $65                                     ; $49a5: $2e $65
    ld h, h                                       ; $49a7: $64
    ld [bc], a                                    ; $49a8: $02
    db $d3                                        ; $49a9: $d3
    inc hl                                        ; $49aa: $23
    ld a, $f4                                     ; $49ab: $3e $f4
    and d                                         ; $49ad: $a2
    jr nz, jr_042_4a1c                            ; $49ae: $20 $6c

    and e                                         ; $49b0: $a3
    ld c, e                                       ; $49b1: $4b
    db $ed                                        ; $49b2: $ed
    scf                                           ; $49b3: $37
    inc hl                                        ; $49b4: $23
    ret nc                                        ; $49b5: $d0

    xor a                                         ; $49b6: $af
    dec e                                         ; $49b7: $1d
    ld d, d                                       ; $49b8: $52
    inc d                                         ; $49b9: $14
    cp $d4                                        ; $49ba: $fe $d4
    ld [$8f95], sp                                ; $49bc: $08 $95 $8f
    sbc l                                         ; $49bf: $9d
    add e                                         ; $49c0: $83
    cp c                                          ; $49c1: $b9
    adc a                                         ; $49c2: $8f
    ld a, [$7214]                                 ; $49c3: $fa $14 $72
    or [hl]                                       ; $49c6: $b6
    ld b, $43                                     ; $49c7: $06 $43
    ld a, [hl]                                    ; $49c9: $7e
    ld l, a                                       ; $49ca: $6f
    adc a                                         ; $49cb: $8f
    ld e, a                                       ; $49cc: $5f
    ld h, b                                       ; $49cd: $60
    inc a                                         ; $49ce: $3c
    cp d                                          ; $49cf: $ba
    call nc, $337e                                ; $49d0: $d4 $7e $33
    ld [bc], a                                    ; $49d3: $02
    db $fd                                        ; $49d4: $fd
    ld a, [bc]                                    ; $49d5: $0a
    sbc [hl]                                      ; $49d6: $9e
    inc hl                                        ; $49d7: $23
    ld d, e                                       ; $49d8: $53
    call c, $87c5                                 ; $49d9: $dc $c5 $87
    cp $76                                        ; $49dc: $fe $76
    ld a, [hl]                                    ; $49de: $7e
    ld b, h                                       ; $49df: $44
    ld c, a                                       ; $49e0: $4f
    ld b, a                                       ; $49e1: $47
    or d                                          ; $49e2: $b2
    ld c, h                                       ; $49e3: $4c
    pop hl                                        ; $49e4: $e1

Call_042_49e5:
    ret                                           ; $49e5: $c9


    ld [bc], a                                    ; $49e6: $02

Jump_042_49e7:
    dec bc                                        ; $49e7: $0b
    db $db                                        ; $49e8: $db
    sub b                                         ; $49e9: $90
    ld l, a                                       ; $49ea: $6f
    ret z                                         ; $49eb: $c8

Jump_042_49ec:
    ld b, [hl]                                    ; $49ec: $46
    ld h, b                                       ; $49ed: $60
    ld a, d                                       ; $49ee: $7a
    ld b, h                                       ; $49ef: $44
    ld [hl], b                                    ; $49f0: $70
    pop de                                        ; $49f1: $d1
    xor $4d                                       ; $49f2: $ee $4d
    sbc l                                         ; $49f4: $9d
    ld e, h                                       ; $49f5: $5c
    inc d                                         ; $49f6: $14
    or $fe                                        ; $49f7: $f6 $fe

jr_042_49f9:
    inc d                                         ; $49f9: $14
    ld b, a                                       ; $49fa: $47
    ld h, a                                       ; $49fb: $67
    ld a, a                                       ; $49fc: $7f
    xor l                                         ; $49fd: $ad
    dec d                                         ; $49fe: $15
    sbc [hl]                                      ; $49ff: $9e
    jr nc, jr_042_49f9                            ; $4a00: $30 $f7

    ld [hl], c                                    ; $4a02: $71
    inc hl                                        ; $4a03: $23
    ld a, c                                       ; $4a04: $79
    ld h, [hl]                                    ; $4a05: $66
    ld [$46f1], sp                                ; $4a06: $08 $f1 $46
    db $10                                        ; $4a09: $10
    ld [hl], a                                    ; $4a0a: $77
    call nc, $bdeb                                ; $4a0b: $d4 $eb $bd
    xor b                                         ; $4a0e: $a8
    rst $18                                       ; $4a0f: $df
    db $db                                        ; $4a10: $db
    db $e3                                        ; $4a11: $e3
    rlc d                                         ; $4a12: $cb $02
    and $c9                                       ; $4a14: $e6 $c9
    ld c, c                                       ; $4a16: $49
    sbc c                                         ; $4a17: $99

Jump_042_4a18:
    ld a, l                                       ; $4a18: $7d
    inc a                                         ; $4a19: $3c
    ld a, l                                       ; $4a1a: $7d
    ld a, h                                       ; $4a1b: $7c

jr_042_4a1c:
    ld b, a                                       ; $4a1c: $47
    ld h, $6e                                     ; $4a1d: $26 $6e
    ld a, [hl+]                                   ; $4a1f: $2a
    call nz, $fefd                                ; $4a20: $c4 $fd $fe
    ld [$5918], a                                 ; $4a23: $ea $18 $59
    ld h, b                                       ; $4a26: $60
    reti                                          ; $4a27: $d9


    ld [$8f4c], sp                                ; $4a28: $08 $4c $8f
    jr nz, @-$24                                  ; $4a2b: $20 $da

    cp [hl]                                       ; $4a2d: $be
    db $fc                                        ; $4a2e: $fc
    ld h, [hl]                                    ; $4a2f: $66
    cp e                                          ; $4a30: $bb
    sbc h                                         ; $4a31: $9c
    ld l, b                                       ; $4a32: $68
    ld b, $75                                     ; $4a33: $06 $75
    db $10                                        ; $4a35: $10
    cp [hl]                                       ; $4a36: $be
    jr z, @-$12                                   ; $4a37: $28 $ec

    adc l                                         ; $4a39: $8d
    inc l                                         ; $4a3a: $2c
    ld b, e                                       ; $4a3b: $43
    cp h                                          ; $4a3c: $bc
    sub c                                         ; $4a3d: $91
    db $eb                                        ; $4a3e: $eb
    ld d, a                                       ; $4a3f: $57
    dec e                                         ; $4a40: $1d
    jp nc, Jump_000_3517                          ; $4a41: $d2 $17 $35

    reti                                          ; $4a44: $d9


    adc b                                         ; $4a45: $88
    cp l                                          ; $4a46: $bd
    ld [hl], e                                    ; $4a47: $73
    and e                                         ; $4a48: $a3
    db $ed                                        ; $4a49: $ed
    db $d3                                        ; $4a4a: $d3
    push hl                                       ; $4a4b: $e5
    ld c, e                                       ; $4a4c: $4b
    add hl, sp                                    ; $4a4d: $39
    ld b, a                                       ; $4a4e: $47
    db $ed                                        ; $4a4f: $ed
    ld sp, hl                                     ; $4a50: $f9
    and d                                         ; $4a51: $a2
    ld l, $4f                                     ; $4a52: $2e $4f
    jp nz, Jump_042_5790                          ; $4a54: $c2 $90 $57

    ld l, d                                       ; $4a57: $6a
    ld c, d                                       ; $4a58: $4a
    sbc c                                         ; $4a59: $99
    ld e, h                                       ; $4a5a: $5c
    inc [hl]                                      ; $4a5b: $34
    ld a, [$97c2]                                 ; $4a5c: $fa $c2 $97
    sub e                                         ; $4a5f: $93
    inc l                                         ; $4a60: $2c
    ret c                                         ; $4a61: $d8

    dec de                                        ; $4a62: $1b
    ld d, c                                       ; $4a63: $51
    rla                                           ; $4a64: $17
    ld h, l                                       ; $4a65: $65
    xor a                                         ; $4a66: $af
    ld c, l                                       ; $4a67: $4d
    sbc a                                         ; $4a68: $9f
    ld d, [hl]                                    ; $4a69: $56
    or a                                          ; $4a6a: $b7
    and e                                         ; $4a6b: $a3
    add d                                         ; $4a6c: $82
    ret nz                                        ; $4a6d: $c0

    db $f4                                        ; $4a6e: $f4
    ret z                                         ; $4a6f: $c8

    ld [hl-], a                                   ; $4a70: $32
    and l                                         ; $4a71: $a5
    adc h                                         ; $4a72: $8c
    ld c, h                                       ; $4a73: $4c
    ld d, b                                       ; $4a74: $50
    ld a, [bc]                                    ; $4a75: $0a
    inc c                                         ; $4a76: $0c
    ld e, c                                       ; $4a77: $59
    ld h, b                                       ; $4a78: $60
    rst $20                                       ; $4a79: $e7
    ld h, [hl]                                    ; $4a7a: $66
    ld c, a                                       ; $4a7b: $4f
    ld b, c                                       ; $4a7c: $41
    cp a                                          ; $4a7d: $bf
    ld [bc], a                                    ; $4a7e: $02
    or l                                          ; $4a7f: $b5
    ld e, a                                       ; $4a80: $5f
    or e                                          ; $4a81: $b3
    ld d, e                                       ; $4a82: $53
    cp d                                          ; $4a83: $ba
    ld hl, sp-$30                                 ; $4a84: $f8 $d0
    rst $18                                       ; $4a86: $df
    xor c                                         ; $4a87: $a9
    ld de, $d12a                                  ; $4a88: $11 $2a $d1
    db $d3                                        ; $4a8b: $d3
    sub c                                         ; $4a8c: $91
    inc l                                         ; $4a8d: $2c
    ld d, e                                       ; $4a8e: $53
    ld a, b                                       ; $4a8f: $78
    or d                                          ; $4a90: $b2
    ret nz                                        ; $4a91: $c0

    jp nz, $e436                                  ; $4a92: $c2 $36 $e4

    dec de                                        ; $4a95: $1b
    and d                                         ; $4a96: $a2
    or b                                          ; $4a97: $b0
    scf                                           ; $4a98: $37
    ld [bc], a                                    ; $4a99: $02
    db $d3                                        ; $4a9a: $d3
    and e                                         ; $4a9b: $a3
    sub $0a                                       ; $4a9c: $d6 $0a
    xor l                                         ; $4a9e: $ad
    add e                                         ; $4a9f: $83
    cp h                                          ; $4aa0: $bc
    ret c                                         ; $4aa1: $d8

    and c                                         ; $4aa2: $a1
    ld e, d                                       ; $4aa3: $5a
    adc $90                                       ; $4aa4: $ce $90
    db $fd                                        ; $4aa6: $fd
    ld h, c                                       ; $4aa7: $61
    ld a, [$b881]                                 ; $4aa8: $fa $81 $b8
    ld [hl], e                                    ; $4aab: $73
    ld a, e                                       ; $4aac: $7b
    ld d, $a8                                     ; $4aad: $16 $a8
    ld a, e                                       ; $4aaf: $7b
    ld e, l                                       ; $4ab0: $5d
    ldh [$af], a                                  ; $4ab1: $e0 $af
    dec d                                         ; $4ab3: $15
    ld c, a                                       ; $4ab4: $4f
    sbc b                                         ; $4ab5: $98
    ei                                            ; $4ab6: $fb
    ld a, b                                       ; $4ab7: $78
    db $ed                                        ; $4ab8: $ed
    and e                                         ; $4ab9: $a3
    db $ed                                        ; $4aba: $ed
    ld c, e                                       ; $4abb: $4b
    ld h, c                                       ; $4abc: $61
    ld a, e                                       ; $4abd: $7b
    cp c                                          ; $4abe: $b9
    cp b                                          ; $4abf: $b8
    and e                                         ; $4ac0: $a3
    ld e, [hl]                                    ; $4ac1: $5e
    rst $28                                       ; $4ac2: $ef
    ld b, l                                       ; $4ac3: $45
    ld a, c                                       ; $4ac4: $79
    ret nz                                        ; $4ac5: $c0

    db $f4                                        ; $4ac6: $f4
    rra                                           ; $4ac7: $1f
    rst $20                                       ; $4ac8: $e7
    ld b, a                                       ; $4ac9: $47
    ret c                                         ; $4aca: $d8

    add [hl]                                      ; $4acb: $86
    cp h                                          ; $4acc: $bc
    sub h                                         ; $4acd: $94
    push hl                                       ; $4ace: $e5
    xor l                                         ; $4acf: $ad
    ld e, h                                       ; $4ad0: $5c
    ld a, h                                       ; $4ad1: $7c
    add sp, $07                                   ; $4ad2: $e8 $07
    reti                                          ; $4ad4: $d9


    push af                                       ; $4ad5: $f5
    db $f4                                        ; $4ad6: $f4
    xor c                                         ; $4ad7: $a9
    dec a                                         ; $4ad8: $3d
    ld hl, $f0af                                  ; $4ad9: $21 $af $f0
    ld b, h                                       ; $4adc: $44
    ld h, c                                       ; $4add: $61
    ld b, a                                       ; $4ade: $47
    dec e                                         ; $4adf: $1d
    di                                            ; $4ae0: $f3
    ld d, a                                       ; $4ae1: $57
    inc de                                        ; $4ae2: $13
    rra                                           ; $4ae3: $1f
    ld a, d                                       ; $4ae4: $7a
    add hl, sp                                    ; $4ae5: $39
    pop hl                                        ; $4ae6: $e1
    ld sp, $5d19                                  ; $4ae7: $31 $19 $5d
    xor d                                         ; $4aea: $aa
    adc a                                         ; $4aeb: $8f
    rst $30                                       ; $4aec: $f7
    dec e                                         ; $4aed: $1d
    ret z                                         ; $4aee: $c8

    ld c, a                                       ; $4aef: $4f
    pop hl                                        ; $4af0: $e1
    scf                                           ; $4af1: $37
    and c                                         ; $4af2: $a1
    ld a, h                                       ; $4af3: $7c
    add [hl]                                      ; $4af4: $86
    ld e, h                                       ; $4af5: $5c
    sub h                                         ; $4af6: $94
    cp l                                          ; $4af7: $bd
    and $bf                                       ; $4af8: $e6 $bf
    jr nz, @+$67                                  ; $4afa: $20 $65

    ld h, h                                       ; $4afc: $64
    ld d, d                                       ; $4afd: $52
    ld hl, sp+$79                                 ; $4afe: $f8 $79
    ld [c], a                                     ; $4b00: $e2
    and [hl]                                      ; $4b01: $a6
    or b                                          ; $4b02: $b0
    add c                                         ; $4b03: $81
    ld a, c                                       ; $4b04: $79
    ld a, [c]                                     ; $4b05: $f2
    add hl, hl                                    ; $4b06: $29
    ld l, h                                       ; $4b07: $6c
    cp a                                          ; $4b08: $bf
    inc l                                         ; $4b09: $2c
    ld l, a                                       ; $4b0a: $6f
    ld a, e                                       ; $4b0b: $7b
    ld a, [$ad15]                                 ; $4b0c: $fa $15 $ad
    db $db                                        ; $4b0f: $db
    ld l, e                                       ; $4b10: $6b
    cp $ab                                        ; $4b11: $fe $ab
    or l                                          ; $4b13: $b5
    ld [bc], a                                    ; $4b14: $02
    sbc l                                         ; $4b15: $9d
    ld hl, sp-$05                                 ; $4b16: $f8 $fb
    cp [hl]                                       ; $4b18: $be
    ld c, a                                       ; $4b19: $4f
    db $ed                                        ; $4b1a: $ed
    adc c                                         ; $4b1b: $89
    ld [bc], a                                    ; $4b1c: $02
    di                                            ; $4b1d: $f3
    ld b, h                                       ; $4b1e: $44
    reti                                          ; $4b1f: $d9


    ld l, e                                       ; $4b20: $6b
    cp $ab                                        ; $4b21: $fe $ab
    sub l                                         ; $4b23: $95
    ld c, [hl]                                    ; $4b24: $4e
    ld h, a                                       ; $4b25: $67
    add e                                         ; $4b26: $83
    sbc h                                         ; $4b27: $9c
    xor b                                         ; $4b28: $a8
    inc sp                                        ; $4b29: $33
    and h                                         ; $4b2a: $a4
    ld h, e                                       ; $4b2b: $63
    rst $38                                       ; $4b2c: $ff
    sbc b                                         ; $4b2d: $98
    ld l, $b7                                     ; $4b2e: $2e $b7
    ld d, e                                       ; $4b30: $53
    db $dd                                        ; $4b31: $dd
    call nz, $a0bd                                ; $4b32: $c4 $bd $a0
    rst $28                                       ; $4b35: $ef
    ei                                            ; $4b36: $fb
    ld a, b                                       ; $4b37: $78
    rst $18                                       ; $4b38: $df
    add c                                         ; $4b39: $81
    db $fc                                        ; $4b3a: $fc
    inc d                                         ; $4b3b: $14
    ld a, [hl]                                    ; $4b3c: $7e
    inc de                                        ; $4b3d: $13
    jp z, Jump_042_4867                           ; $4b3e: $ca $67 $48

    rst $00                                       ; $4b41: $c7
    cp $b1                                        ; $4b42: $fe $b1
    ld a, $ad                                     ; $4b44: $3e $ad
    ld h, [hl]                                    ; $4b46: $66
    cp c                                          ; $4b47: $b9
    ld b, $c2                                     ; $4b48: $06 $c2
    ld l, a                                       ; $4b4a: $6f
    ld [$a974], a                                 ; $4b4b: $ea $74 $a9
    db $fd                                        ; $4b4e: $fd
    ld h, [hl]                                    ; $4b4f: $66
    inc b                                         ; $4b50: $04
    ld a, [$9e15]                                 ; $4b51: $fa $15 $9e
    rst $30                                       ; $4b54: $f7
    and e                                         ; $4b55: $a3
    ld c, e                                       ; $4b56: $4b
    db $ed                                        ; $4b57: $ed
    scf                                           ; $4b58: $37
    inc hl                                        ; $4b59: $23
    and b                                         ; $4b5a: $a0
    adc e                                         ; $4b5b: $8b
    sbc e                                         ; $4b5c: $9b
    ld [c], a                                     ; $4b5d: $e2
    ld d, c                                       ; $4b5e: $51
    inc hl                                        ; $4b5f: $23
    ld a, $14                                     ; $4b60: $3e $14
    ld a, e                                       ; $4b62: $7b
    ld a, a                                       ; $4b63: $7f
    xor l                                         ; $4b64: $ad
    dec d                                         ; $4b65: $15
    db $ed                                        ; $4b66: $ed
    ld a, l                                       ; $4b67: $7d
    xor d                                         ; $4b68: $aa
    ei                                            ; $4b69: $fb
    ld b, b                                       ; $4b6a: $40
    call c, Call_000_3db9                         ; $4b6b: $dc $b9 $3d
    dec bc                                        ; $4b6e: $0b
    call nc, $147d                                ; $4b6f: $d4 $7d $14
    or h                                          ; $4b72: $b4
    ld a, l                                       ; $4b73: $7d
    add hl, sp                                    ; $4b74: $39
    pop de                                        ; $4b75: $d1
    inc c                                         ; $4b76: $0c
    ld [$7c20], a                                 ; $4b77: $ea $20 $7c
    cp d                                          ; $4b7a: $ba
    inc l                                         ; $4b7b: $2c
    or b                                          ; $4b7c: $b0
    db $ec                                        ; $4b7d: $ec
    rst $08                                       ; $4b7e: $cf
    ld b, $f1                                     ; $4b7f: $06 $f1
    ld b, [hl]                                    ; $4b81: $46
    db $10                                        ; $4b82: $10
    ld [hl], l                                    ; $4b83: $75
    ld l, c                                       ; $4b84: $69
    jp $b3f4                                      ; $4b85: $c3 $f4 $b3


    ld b, a                                       ; $4b88: $47
    cp e                                          ; $4b89: $bb
    rst $28                                       ; $4b8a: $ef
    ld d, a                                       ; $4b8b: $57
    xor l                                         ; $4b8c: $ad
    ld a, [$2975]                                 ; $4b8d: $fa $75 $29
    db $fc                                        ; $4b90: $fc
    rla                                           ; $4b91: $17
    rlca                                          ; $4b92: $07
    ld [hl], e                                    ; $4b93: $73
    cpl                                           ; $4b94: $2f
    ld l, d                                       ; $4b95: $6a
    or d                                          ; $4b96: $b2
    ld de, $1e98                                  ; $4b97: $11 $98 $1e
    ld a, l                                       ; $4b9a: $7d
    ld a, [hl-]                                   ; $4b9b: $3a
    cp [hl]                                       ; $4b9c: $be
    cp b                                          ; $4b9d: $b8
    ld de, $20f2                                  ; $4b9e: $11 $f2 $20
    ld c, b                                       ; $4ba1: $48
    pop hl                                        ; $4ba2: $e1
    scf                                           ; $4ba3: $37
    db $e4                                        ; $4ba4: $e4
    rst $30                                       ; $4ba5: $f7
    or $f8                                        ; $4ba6: $f6 $f8
    dec b                                         ; $4ba8: $05
    add $a3                                       ; $4ba9: $c6 $a3
    ld c, e                                       ; $4bab: $4b
    ld b, c                                       ; $4bac: $41
    ld c, b                                       ; $4bad: $48
    ld a, [hl-]                                   ; $4bae: $3a

Call_042_4baf:
    rla                                           ; $4baf: $17
    dec sp                                        ; $4bb0: $3b
    ld e, d                                       ; $4bb1: $5a
    call c, Call_000_2219                         ; $4bb2: $dc $19 $22
    ret c                                         ; $4bb5: $d8

    ld h, c                                       ; $4bb6: $61
    ld a, [hl-]                                   ; $4bb7: $3a
    add hl, sp                                    ; $4bb8: $39
    ld h, c                                       ; $4bb9: $61
    ld [$bf4f], sp                                ; $4bba: $08 $4f $bf
    ld [bc], a                                    ; $4bbd: $02
    cp [hl]                                       ; $4bbe: $be
    ld l, [hl]                                    ; $4bbf: $6e
    xor d                                         ; $4bc0: $aa
    ld a, [bc]                                    ; $4bc1: $0a
    call z, $e713                                 ; $4bc2: $cc $13 $e7
    ld b, a                                       ; $4bc5: $47
    ld a, h                                       ; $4bc6: $7c
    jr z, jr_042_4bd3                             ; $4bc7: $28 $0a

    ld a, a                                       ; $4bc9: $7f
    ld l, d                                       ; $4bca: $6a
    add h                                         ; $4bcb: $84
    jp z, Jump_042_6147                           ; $4bcc: $ca $47 $61

    ld l, a                                       ; $4bcf: $6f
    inc b                                         ; $4bd0: $04
    and [hl]                                      ; $4bd1: $a6
    ld b, a                                       ; $4bd2: $47

jr_042_4bd3:
    cp a                                          ; $4bd3: $bf
    ld [bc], a                                    ; $4bd4: $02
    xor l                                         ; $4bd5: $ad
    sub d                                         ; $4bd6: $92
    jr nz, jr_042_4c00                            ; $4bd7: $20 $27

    or $da                                        ; $4bd9: $f6 $da
    adc l                                         ; $4bdb: $8d
    and b                                         ; $4bdc: $a0
    rst $28                                       ; $4bdd: $ef
    ei                                            ; $4bde: $fb
    call nc, $bbc8                                ; $4bdf: $d4 $c8 $bb
    sub c                                         ; $4be2: $91
    db $e3                                        ; $4be3: $e3
    jp hl                                         ; $4be4: $e9


    ld d, a                                       ; $4be5: $57
    db $ed                                        ; $4be6: $ed
    ld e, a                                       ; $4be7: $5f
    sbc h                                         ; $4be8: $9c
    rst $38                                       ; $4be9: $ff
    and b                                         ; $4bea: $a0
    ld h, $6e                                     ; $4beb: $26 $6e
    jp z, $9d47                                   ; $4bed: $ca $47 $9d

    push de                                       ; $4bf0: $d5
    sub e                                         ; $4bf1: $93
    db $ed                                        ; $4bf2: $ed
    ld bc, $e771                                  ; $4bf3: $01 $71 $e7
    or $2c                                        ; $4bf6: $f6 $2c
    ld d, b                                       ; $4bf8: $50
    rst $30                                       ; $4bf9: $f7
    add hl, sp                                    ; $4bfa: $39
    ret                                           ; $4bfb: $c9


    ld h, d                                       ; $4bfc: $62
    or e                                          ; $4bfd: $b3
    ld c, h                                       ; $4bfe: $4c
    add hl, sp                                    ; $4bff: $39

jr_042_4c00:
    sbc [hl]                                      ; $4c00: $9e
    ld a, [hl]                                    ; $4c01: $7e
    dec b                                         ; $4c02: $05
    dec e                                         ; $4c03: $1d
    ld [hl], h                                    ; $4c04: $74
    ld d, a                                       ; $4c05: $57
    inc sp                                        ; $4c06: $33
    db $ed                                        ; $4c07: $ed
    ld e, a                                       ; $4c08: $5f
    db $fc                                        ; $4c09: $fc
    rra                                           ; $4c0a: $1f
    cp l                                          ; $4c0b: $bd
    ld d, c                                       ; $4c0c: $51
    ld [hl], a                                    ; $4c0d: $77
    rst $08                                       ; $4c0e: $cf
    ld d, e                                       ; $4c0f: $53
    ld [hl], e                                    ; $4c10: $73
    dec b                                         ; $4c11: $05
    ld l, l                                       ; $4c12: $6d
    call nz, $a94d                                ; $4c13: $c4 $4d $a9
    cpl                                           ; $4c16: $2f
    ld a, $14                                     ; $4c17: $3e $14
    add l                                         ; $4c19: $85
    daa                                           ; $4c1a: $27
    dec [hl]                                      ; $4c1b: $35
    ld [hl], d                                    ; $4c1c: $72
    dec sp                                        ; $4c1d: $3b
    ld [$bf98], a                                 ; $4c1e: $ea $98 $bf
    sbc d                                         ; $4c21: $9a
    ld a, [hl]                                    ; $4c22: $7e
    dec b                                         ; $4c23: $05
    sbc [hl]                                      ; $4c24: $9e
    ld b, $35                                     ; $4c25: $06 $35
    ld d, c                                       ; $4c27: $51
    rla                                           ; $4c28: $17
    sub h                                         ; $4c29: $94
    ld [bc], a                                    ; $4c2a: $02
    ld b, e                                       ; $4c2b: $43
    ld c, [hl]                                    ; $4c2c: $4e
    and d                                         ; $4c2d: $a2
    reti                                          ; $4c2e: $d9


    xor e                                         ; $4c2f: $ab
    adc c                                         ; $4c30: $89
    cp d                                          ; $4c31: $ba
    ret c                                         ; $4c32: $d8

jr_042_4c33:
    cp c                                          ; $4c33: $b9
    sub c                                         ; $4c34: $91
    add hl, hl                                    ; $4c35: $29
    ld c, $b6                                     ; $4c36: $0e $b6
    cp a                                          ; $4c38: $bf
    ld e, a                                       ; $4c39: $5f
    ld bc, $faad                                  ; $4c3a: $01 $ad $fa
    ld c, a                                       ; $4c3d: $4f
    sub a                                         ; $4c3e: $97
    add l                                         ; $4c3f: $85
    adc d                                         ; $4c40: $8a
    add [hl]                                      ; $4c41: $86
    ld a, [hl]                                    ; $4c42: $7e
    dec b                                         ; $4c43: $05
    ld [hl], l                                    ; $4c44: $75
    ld l, l                                       ; $4c45: $6d
    ld d, $bb                                     ; $4c46: $16 $bb
    adc c                                         ; $4c48: $89
    sbc e                                         ; $4c49: $9b
    ld a, [bc]                                    ; $4c4a: $0a
    ld e, c                                       ; $4c4b: $59
    jr nz, jr_042_4c33                            ; $4c4c: $20 $e5

    ret                                           ; $4c4e: $c9


    jp hl                                         ; $4c4f: $e9


    ei                                            ; $4c50: $fb
    ld a, $63                                     ; $4c51: $3e $63
    ld a, h                                       ; $4c53: $7c
    adc $8f                                       ; $4c54: $ce $8f
    ld a, $6d                                     ; $4c56: $3e $6d
    rst $28                                       ; $4c58: $ef
    ld l, b                                       ; $4c59: $68
    rst $30                                       ; $4c5a: $f7
    and [hl]                                      ; $4c5b: $a6
    ld c, [hl]                                    ; $4c5c: $4e
    ld h, $0a                                     ; $4c5d: $26 $0a
    sub a                                         ; $4c5f: $97
    sub $a9                                       ; $4c60: $d6 $a9
    sub l                                         ; $4c62: $95
    dec c                                         ; $4c63: $0d
    ld [bc], a                                    ; $4c64: $02
    add c                                         ; $4c65: $81
    ld a, l                                       ; $4c66: $7d
    sub [hl]                                      ; $4c67: $96
    add e                                         ; $4c68: $83
    ld c, h                                       ; $4c69: $4c
    cp a                                          ; $4c6a: $bf
    ld [bc], a                                    ; $4c6b: $02
    dec e                                         ; $4c6c: $1d
    ld d, d                                       ; $4c6d: $52
    inc d                                         ; $4c6e: $14
    cp $d4                                        ; $4c6f: $fe $d4
    ret z                                         ; $4c71: $c8

    ld h, d                                       ; $4c72: $62
    or e                                          ; $4c73: $b3
    ret c                                         ; $4c74: $d8

    ld c, l                                       ; $4c75: $4d
    ld a, [bc]                                    ; $4c76: $0a
    db $db                                        ; $4c77: $db
    set 6, a                                      ; $4c78: $cb $f7
    pop af                                        ; $4c7a: $f1
    db $f4                                        ; $4c7b: $f4
    ld e, a                                       ; $4c7c: $5f
    add hl, hl                                    ; $4c7d: $29
    push af                                       ; $4c7e: $f5
    call nz, $f14d                                ; $4c7f: $c4 $4d $f1
    xor b                                         ; $4c82: $a8
    ld d, c                                       ; $4c83: $51
    ld l, e                                       ; $4c84: $6b
    dec b                                         ; $4c85: $05
    cp [hl]                                       ; $4c86: $be
    ld [hl], b                                    ; $4c87: $70
    inc hl                                        ; $4c88: $23
    ld l, d                                       ; $4c89: $6a
    ld [hl], d                                    ; $4c8a: $72
    dec sp                                        ; $4c8b: $3b
    ei                                            ; $4c8c: $fb
    db $f4                                        ; $4c8d: $f4
    ld [hl], $29                                  ; $4c8e: $36 $29
    rla                                           ; $4c90: $17
    or [hl]                                       ; $4c91: $b6
    ld h, a                                       ; $4c92: $67
    cp $a8                                        ; $4c93: $fe $a8
    dec bc                                        ; $4c95: $0b
    sub l                                         ; $4c96: $95
    adc a                                         ; $4c97: $8f
    cp l                                          ; $4c98: $bd
    ld a, [hl-]                                   ; $4c99: $3a
    add a                                         ; $4c9a: $87
    xor b                                         ; $4c9b: $a8
    ld c, e                                       ; $4c9c: $4b
    push af                                       ; $4c9d: $f5
    and d                                         ; $4c9e: $a2
    db $ec                                        ; $4c9f: $ec
    or l                                          ; $4ca0: $b5
    reti                                          ; $4ca1: $d9


    rst $18                                       ; $4ca2: $df
    xor a                                         ; $4ca3: $af
    ld [hl], l                                    ; $4ca4: $75
    ld a, [hl]                                    ; $4ca5: $7e
    pop bc                                        ; $4ca6: $c1
    sbc $b4                                       ; $4ca7: $de $b4
    db $f4                                        ; $4ca9: $f4
    ld l, c                                       ; $4caa: $69
    inc hl                                        ; $4cab: $23
    cpl                                           ; $4cac: $2f
    adc $8f                                       ; $4cad: $ce $8f
    ld hl, sp+$50                                 ; $4caf: $f8 $50
    inc d                                         ; $4cb1: $14
    cp $d4                                        ; $4cb2: $fe $d4
    ret z                                         ; $4cb4: $c8

    adc e                                         ; $4cb5: $8b
    ld a, d                                       ; $4cb6: $7a
    cp $9a                                        ; $4cb7: $fe $9a
    dec hl                                        ; $4cb9: $2b
    xor l                                         ; $4cba: $ad
    ld a, [de]                                    ; $4cbb: $1a
    and e                                         ; $4cbc: $a3
    cp d                                          ; $4cbd: $ba
    ld [hl], d                                    ; $4cbe: $72
    rst $18                                       ; $4cbf: $df
    rst $00                                       ; $4cc0: $c7
    db $d3                                        ; $4cc1: $d3
    adc a                                         ; $4cc2: $8f
    ret z                                         ; $4cc3: $c8

    ld d, h                                       ; $4cc4: $54

jr_042_4cc5:
    adc b                                         ; $4cc5: $88
    sbc [hl]                                      ; $4cc6: $9e
    ld a, d                                       ; $4cc7: $7a
    cp l                                          ; $4cc8: $bd
    db $d3                                        ; $4cc9: $d3
    xor a                                         ; $4cca: $af
    dec e                                         ; $4ccb: $1d
    ld d, d                                       ; $4ccc: $52
    inc d                                         ; $4ccd: $14
    cp $28                                        ; $4cce: $fe $28
    sub b                                         ; $4cd0: $90
    ld e, $28                                     ; $4cd1: $1e $28
    dec b                                         ; $4cd3: $05
    add [hl]                                      ; $4cd4: $86
    ld d, b                                       ; $4cd5: $50
    ld sp, hl                                     ; $4cd6: $f9
    jr z, jr_042_4cc5                             ; $4cd7: $28 $ec

    adc l                                         ; $4cd9: $8d
    ret nz                                        ; $4cda: $c0

    db $f4                                        ; $4cdb: $f4
    add sp, $57                                   ; $4cdc: $e8 $57
    ld l, l                                       ; $4cde: $6d
    call nz, $a94d                                ; $4cdf: $c4 $4d $a9
    cpl                                           ; $4ce2: $2f
    xor a                                         ; $4ce3: $af
    ld d, b                                       ; $4ce4: $50
    jp z, Jump_000_3fc4                           ; $4ce5: $ca $c4 $3f

    and c                                         ; $4ce8: $a1
    ld a, [c]                                     ; $4ce9: $f2
    or c                                          ; $4cea: $b1
    ld d, a                                       ; $4ceb: $57
    rst $20                                       ; $4cec: $e7
    db $10                                        ; $4ced: $10
    ld [hl], l                                    ; $4cee: $75
    ld sp, hl                                     ; $4cef: $f9
    ld [c], a                                     ; $4cf0: $e2
    dec e                                         ; $4cf1: $1d
    add l                                         ; $4cf2: $85
    dec a                                         ; $4cf3: $3d
    db $fd                                        ; $4cf4: $fd
    ld a, [bc]                                    ; $4cf5: $0a
    ld [hl], l                                    ; $4cf6: $75
    ld b, [hl]                                    ; $4cf7: $46
    ld [c], a                                     ; $4cf8: $e2
    rst $38                                       ; $4cf9: $ff
    res 1, e                                      ; $4cfa: $cb $8b
    dec de                                        ; $4cfc: $1b
    ei                                            ; $4cfd: $fb
    ld a, b                                       ; $4cfe: $78
    ld c, a                                       ; $4cff: $4f
    adc [hl]                                      ; $4d00: $8e
    ld b, a                                       ; $4d01: $47
    sub a                                         ; $4d02: $97
    jp c, $466f                                   ; $4d03: $da $6f $46

    and b                                         ; $4d06: $a0
    ld c, a                                       ; $4d07: $4f
    ld b, a                                       ; $4d08: $47
    ld d, a                                       ; $4d09: $57
    add c                                         ; $4d0a: $81
    ld sp, hl                                     ; $4d0b: $f9
    ld hl, sp-$0e                                 ; $4d0c: $f8 $f2
    dec sp                                        ; $4d0e: $3b
    ei                                            ; $4d0f: $fb
    ret                                           ; $4d10: $c9


    or c                                          ; $4d11: $b1
    jp hl                                         ; $4d12: $e9


    ld d, a                                       ; $4d13: $57
    ld [hl], l                                    ; $4d14: $75
    ld b, [hl]                                    ; $4d15: $46
    ld [c], a                                     ; $4d16: $e2
    ld l, $e5                                     ; $4d17: $2e $e5
    cp [hl]                                       ; $4d19: $be
    ld a, [de]                                    ; $4d1a: $1a
    ld e, l                                       ; $4d1b: $5d
    ld [$330e], a                                 ; $4d1c: $ea $0e $33
    xor h                                         ; $4d1f: $ac
    ld c, a                                       ; $4d20: $4f
    ld b, a                                       ; $4d21: $47
    or a                                          ; $4d22: $b7
    ret c                                         ; $4d23: $d8

    sub b                                         ; $4d24: $90
    rst $18                                       ; $4d25: $df
    xor a                                         ; $4d26: $af
    dec e                                         ; $4d27: $1d
    ld d, d                                       ; $4d28: $52
    inc d                                         ; $4d29: $14
    cp $d4                                        ; $4d2a: $fe $d4
    ret z                                         ; $4d2c: $c8

    cp $30                                        ; $4d2d: $fe $30
    adc h                                         ; $4d2f: $8c
    ld hl, sp+$21                                 ; $4d30: $f8 $21
    ld h, a                                       ; $4d32: $67
    di                                            ; $4d33: $f3
    rst $00                                       ; $4d34: $c7
    ld sp, hl                                     ; $4d35: $f9
    sub c                                         ; $4d36: $91
    ld [$18b2], a                                 ; $4d37: $ea $b2 $18
    ld a, [bc]                                    ; $4d3a: $0a
    add h                                         ; $4d3b: $84
    cpl                                           ; $4d3c: $2f
    ld d, h                                       ; $4d3d: $54
    or d                                          ; $4d3e: $b2
    sbc a                                         ; $4d3f: $9f
    inc e                                         ; $4d40: $1c
    sbc e                                         ; $4d41: $9b
    sbc h                                         ; $4d42: $9c
    cp b                                          ; $4d43: $b8
    xor c                                         ; $4d44: $a9
    sub [hl]                                      ; $4d45: $96
    dec c                                         ; $4d46: $0d
    sbc [hl]                                      ; $4d47: $9e
    ld a, $9e                                     ; $4d48: $3e $9e
    inc hl                                        ; $4d4a: $23
    ld a, h                                       ; $4d4b: $7c
    ld b, d                                       ; $4d4c: $42
    ld h, c                                       ; $4d4d: $61
    push af                                       ; $4d4e: $f5
    rst $20                                       ; $4d4f: $e7
    ld d, e                                       ; $4d50: $53
    add [hl]                                      ; $4d51: $86
    reti                                          ; $4d52: $d9


    sbc $0c                                       ; $4d53: $de $0c
    ld l, c                                       ; $4d55: $69
    ld [hl+], a                                   ; $4d56: $22
    dec bc                                        ; $4d57: $0b
    dec d                                         ; $4d58: $15
    sbc [hl]                                      ; $4d59: $9e
    db $fc                                        ; $4d5a: $fc
    sbc $1f                                       ; $4d5b: $de $1f
    and [hl]                                      ; $4d5d: $a6
    rra                                           ; $4d5e: $1f
    rst $08                                       ; $4d5f: $cf
    cpl                                           ; $4d60: $2f
    sbc a                                         ; $4d61: $9f
    pop de                                        ; $4d62: $d1
    db $e4                                        ; $4d63: $e4
    ld b, d                                       ; $4d64: $42
    adc $e6                                       ; $4d65: $ce $e6
    adc a                                         ; $4d67: $8f
    di                                            ; $4d68: $f3
    inc hl                                        ; $4d69: $23
    inc a                                         ; $4d6a: $3c
    ld h, $b0                                     ; $4d6b: $26 $b0
    cp a                                          ; $4d6d: $bf
    inc d                                         ; $4d6e: $14
    ld [$f3f1], sp                                ; $4d6f: $08 $f1 $f3
    inc h                                         ; $4d72: $24
    inc l                                         ; $4d73: $2c
    rr b                                          ; $4d74: $cb $18
    ccf                                           ; $4d76: $3f
    ld c, a                                       ; $4d77: $4f
    ld a, $0c                                     ; $4d78: $3e $0c
    xor e                                         ; $4d7a: $ab
    ld c, [hl]                                    ; $4d7b: $4e
    sub b                                         ; $4d7c: $90
    db $db                                        ; $4d7d: $db
    ld h, c                                       ; $4d7e: $61
    ld a, [hl-]                                   ; $4d7f: $3a

jr_042_4d80:
    add hl, sp                                    ; $4d80: $39
    ld [hl], c                                    ; $4d81: $71
    ld l, a                                       ; $4d82: $6f
    rst $20                                       ; $4d83: $e7
    and [hl]                                      ; $4d84: $a6
    ld e, a                                       ; $4d85: $5f
    ld bc, $301d                                  ; $4d86: $01 $1d $30
    ld e, a                                       ; $4d89: $5f
    dec [hl]                                      ; $4d8a: $35
    reti                                          ; $4d8b: $d9


    ld c, a                                       ; $4d8c: $4f
    adc [hl]                                      ; $4d8d: $8e
    adc l                                         ; $4d8e: $8d
    ld l, $b5                                     ; $4d8f: $2e $b5
    rst $18                                       ; $4d91: $df
    adc h                                         ; $4d92: $8c
    ld b, b                                       ; $4d93: $40
    rra                                           ; $4d94: $1f
    ld e, a                                       ; $4d95: $5f
    ld e, h                                       ; $4d96: $5c
    ld a, [bc]                                    ; $4d97: $0a
    ccf                                           ; $4d98: $3f
    ld c, a                                       ; $4d99: $4f
    ld l, [hl]                                    ; $4d9a: $6e
    ld h, a                                       ; $4d9b: $67
    or c                                          ; $4d9c: $b1
    xor e                                         ; $4d9d: $ab
    ld h, $9f                                     ; $4d9e: $26 $9f
    ld h, l                                       ; $4da0: $65
    adc h                                         ; $4da1: $8c
    rst $18                                       ; $4da2: $df
    sub b                                         ; $4da3: $90
    rrca                                          ; $4da4: $0f
    jp Jump_000_13aa                              ; $4da5: $c3 $aa $13


    db $e4                                        ; $4da8: $e4
    halt                                          ; $4da9: $76
    call c, $cb54                                 ; $4daa: $dc $54 $cb
    pop af                                        ; $4dad: $f1
    db $e4                                        ; $4dae: $e4
    ld c, e                                       ; $4daf: $4b
    add c                                         ; $4db0: $81
    ld h, $cf                                     ; $4db1: $26 $cf
    db $d3                                        ; $4db3: $d3
    rst $00                                       ; $4db4: $c7
    ld [hl], e                                    ; $4db5: $73
    ld a, [hl+]                                   ; $4db6: $2a
    call nz, Call_042_4dce                        ; $4db7: $c4 $ce $4d
    or l                                          ; $4dba: $b5
    ld b, b                                       ; $4dbb: $40
    jp z, Jump_042_62eb                           ; $4dbc: $ca $eb $62

    rst $20                                       ; $4dbf: $e7
    ld b, b                                       ; $4dc0: $40
    jp nz, $b2fe                                  ; $4dc1: $c2 $fe $b2

    ld de, $58ef                                  ; $4dc4: $11 $ef $58
    ld b, l                                       ; $4dc7: $45
    scf                                           ; $4dc8: $37
    or d                                          ; $4dc9: $b2
    ret nz                                        ; $4dca: $c0

    and d                                         ; $4dcb: $a2
    jr z, jr_042_4d80                             ; $4dcc: $28 $b2

Call_042_4dce:
    inc c                                         ; $4dce: $0c
    pop af                                        ; $4dcf: $f1
    ld b, [hl]                                    ; $4dd0: $46
    xor [hl]                                      ; $4dd1: $ae
    ld c, a                                       ; $4dd2: $4f
    and a                                         ; $4dd3: $a7
    ld a, a                                       ; $4dd4: $7f
    ld d, c                                       ; $4dd5: $51
    cp a                                          ; $4dd6: $bf
    or e                                          ; $4dd7: $b3
    ret c                                         ; $4dd8: $d8

    ld a, b                                       ; $4dd9: $78
    ld d, c                                       ; $4dda: $51
    jp z, $ea58                                   ; $4ddb: $ca $58 $ea

    ld e, $8f                                     ; $4dde: $1e $8f
    inc b                                         ; $4de0: $04
    ld d, c                                       ; $4de1: $51
    and a                                         ; $4de2: $a7
    db $ed                                        ; $4de3: $ed
    adc e                                         ; $4de4: $8b
    di                                            ; $4de5: $f3
    inc hl                                        ; $4de6: $23
    ld h, l                                       ; $4de7: $65
    ld h, h                                       ; $4de8: $64
    ld d, d                                       ; $4de9: $52
    ld hl, sp-$07                                 ; $4dea: $f8 $f9
    ld [hl], e                                    ; $4dec: $73
    sub e                                         ; $4ded: $93
    ld c, a                                       ; $4dee: $4f
    push af                                       ; $4def: $f5
    and d                                         ; $4df0: $a2
    sbc $f8                                       ; $4df1: $de $f8
    ld a, [$ad15]                                 ; $4df3: $fa $15 $ad
    rst $38                                       ; $4df6: $ff
    adc $62                                       ; $4df7: $ce $62
    db $e3                                        ; $4df9: $e3
    ld b, l                                       ; $4dfa: $45
    add hl, hl                                    ; $4dfb: $29
    ld h, e                                       ; $4dfc: $63
    xor c                                         ; $4dfd: $a9
    ld a, e                                       ; $4dfe: $7b
    inc a                                         ; $4dff: $3c
    ld d, d                                       ; $4e00: $52
    xor e                                         ; $4e01: $ab
    and $0a                                       ; $4e02: $e6 $0a
    ld l, l                                       ; $4e04: $6d
    ld b, h                                       ; $4e05: $44
    ld a, l                                       ; $4e06: $7d
    sbc h                                         ; $4e07: $9c
    rst $38                                       ; $4e08: $ff
    ld a, [c]                                     ; $4e09: $f2
    sbc e                                         ; $4e0a: $9b
    db $ed                                        ; $4e0b: $ed
    ld b, d                                       ; $4e0c: $42
    adc [hl]                                      ; $4e0d: $8e
    add hl, de                                    ; $4e0e: $19
    ld a, [bc]                                    ; $4e0f: $0a
    ld e, a                                       ; $4e10: $5f
    xor [hl]                                      ; $4e11: $ae
    ld e, d                                       ; $4e12: $5a
    sbc $de                                       ; $4e13: $de $de
    sub b                                         ; $4e15: $90
    adc l                                         ; $4e16: $8d
    ret c                                         ; $4e17: $d8

    add hl, sp                                    ; $4e18: $39
    jr nc, jr_042_4e3e                            ; $4e19: $30 $23

    dec bc                                        ; $4e1b: $0b
    inc l                                         ; $4e1c: $2c
    dec de                                        ; $4e1d: $1b
    ld e, c                                       ; $4e1e: $59
    add [hl]                                      ; $4e1f: $86
    ld a, b                                       ; $4e20: $78
    inc hl                                        ; $4e21: $23
    ld d, a                                       ; $4e22: $57
    dec hl                                        ; $4e23: $2b
    xor l                                         ; $4e24: $ad
    add $87                                       ; $4e25: $c6 $87
    and d                                         ; $4e27: $a2
    or b                                          ; $4e28: $b0
    rst $00                                       ; $4e29: $c7
    ret c                                         ; $4e2a: $d8

    ld b, a                                       ; $4e2b: $47
    dec c                                         ; $4e2c: $0d
    ld l, c                                       ; $4e2d: $69
    jr z, jr_042_4eac                             ; $4e2e: $28 $7c

    ld h, c                                       ; $4e30: $61
    dec de                                        ; $4e31: $1b
    ld a, [c]                                     ; $4e32: $f2
    ld l, l                                       ; $4e33: $6d
    ld c, a                                       ; $4e34: $4f
    inc b                                         ; $4e35: $04
    dec sp                                        ; $4e36: $3b
    add l                                         ; $4e37: $85
    ld c, [hl]                                    ; $4e38: $4e
    xor b                                         ; $4e39: $a8
    rst $10                                       ; $4e3a: $d7
    ld a, e                                       ; $4e3b: $7b
    xor $a6                                       ; $4e3c: $ee $a6

jr_042_4e3e:
    ld c, a                                       ; $4e3e: $4f
    xor e                                         ; $4e3f: $ab
    ld a, [bc]                                    ; $4e40: $0a
    and l                                         ; $4e41: $a5
    ld c, h                                       ; $4e42: $4c
    ret z                                         ; $4e43: $c8

    cp a                                          ; $4e44: $bf
    ld a, [hl]                                    ; $4e45: $7e
    dec b                                         ; $4e46: $05
    sbc [hl]                                      ; $4e47: $9e
    ld d, e                                       ; $4e48: $53
    ld a, $24                                     ; $4e49: $3e $24
    sbc l                                         ; $4e4b: $9d
    db $d3                                        ; $4e4c: $d3
    and l                                         ; $4e4d: $a5
    xor $30                                       ; $4e4e: $ee $30
    jp $ad6a                                      ; $4e50: $c3 $6a $ad


    or l                                          ; $4e53: $b5
    daa                                           ; $4e54: $27
    rr b                                          ; $4e55: $cb $18
    ccf                                           ; $4e57: $3f
    ld c, a                                       ; $4e58: $4f
    ld a, $0c                                     ; $4e59: $3e $0c
    xor e                                         ; $4e5b: $ab
    ld c, [hl]                                    ; $4e5c: $4e
    sub b                                         ; $4e5d: $90
    dec b                                         ; $4e5e: $05
    sub [hl]                                      ; $4e5f: $96
    push bc                                       ; $4e60: $c5
    xor [hl]                                      ; $4e61: $ae
    sbc d                                         ; $4e62: $9a
    call c, $9b8e                                 ; $4e63: $dc $8e $9b
    ld l, d                                       ; $4e66: $6a
    add hl, sp                                    ; $4e67: $39
    sbc [hl]                                      ; $4e68: $9e
    ld a, h                                       ; $4e69: $7c
    add hl, hl                                    ; $4e6a: $29
    ret nc                                        ; $4e6b: $d0

jr_042_4e6c:
    db $e4                                        ; $4e6c: $e4
    ld a, c                                       ; $4e6d: $79
    ld [hl+], a                                   ; $4e6e: $22
    ret c                                         ; $4e6f: $d8

    ei                                            ; $4e70: $fb
    or e                                          ; $4e71: $b3
    ld b, c                                       ; $4e72: $41
    cp h                                          ; $4e73: $bc
    ld de, $5d44                                  ; $4e74: $11 $44 $5d
    jp c, $fd30                                   ; $4e77: $da $30 $fd

    db $ec                                        ; $4e7a: $ec
    pop de                                        ; $4e7b: $d1
    xor $83                                       ; $4e7c: $ee $83
    db $ec                                        ; $4e7e: $ec
    rst $08                                       ; $4e7f: $cf
    ld h, d                                       ; $4e80: $62
    db $e3                                        ; $4e81: $e3
    ld b, l                                       ; $4e82: $45
    add hl, hl                                    ; $4e83: $29
    ld h, e                                       ; $4e84: $63
    jr z, jr_042_4e6c                             ; $4e85: $28 $e5

    db $e3                                        ; $4e87: $e3
    cp e                                          ; $4e88: $bb
    ret c                                         ; $4e89: $d8

    ld sp, $5d52                                  ; $4e8a: $31 $52 $5d
    db $fc                                        ; $4e8d: $fc
    sbc a                                         ; $4e8e: $9f
    ld [$3d45], a                                 ; $4e8f: $ea $45 $3d
    ld c, a                                       ; $4e92: $4f
    ld a, h                                       ; $4e93: $7c
    add sp, $65                                   ; $4e94: $e8 $65
    add c                                         ; $4e96: $81
    push bc                                       ; $4e97: $c5
    adc $81                                       ; $4e98: $ce $81
    add h                                         ; $4e9a: $84
    ld hl, $b11b                                  ; $4e9b: $21 $1b $b1
    ld [hl], e                                    ; $4e9e: $73
    ld h, b                                       ; $4e9f: $60
    ld b, [hl]                                    ; $4ea0: $46
    call nc, Call_042_5145                        ; $4ea1: $d4 $45 $51
    ld h, h                                       ; $4ea4: $64
    add hl, de                                    ; $4ea5: $19
    ld [c], a                                     ; $4ea6: $e2
    adc l                                         ; $4ea7: $8d
    ld e, h                                       ; $4ea8: $5c
    call c, $8854                                 ; $4ea9: $dc $54 $88

jr_042_4eac:
    sbc l                                         ; $4eac: $9d
    sbc e                                         ; $4ead: $9b
    ld l, d                                       ; $4eae: $6a
    add c                                         ; $4eaf: $81
    sub h                                         ; $4eb0: $94
    rst $28                                       ; $4eb1: $ef
    ld d, a                                       ; $4eb2: $57
    dec l                                         ; $4eb3: $2d
    and a                                         ; $4eb4: $a7
    and b                                         ; $4eb5: $a0
    ld e, d                                       ; $4eb6: $5a
    inc c                                         ; $4eb7: $0c
    add hl, hl                                    ; $4eb8: $29
    db $fc                                        ; $4eb9: $fc
    db $fc                                        ; $4eba: $fc
    ld h, c                                       ; $4ebb: $61
    sbc e                                         ; $4ebc: $9b
    ld h, l                                       ; $4ebd: $65
    sbc c                                         ; $4ebe: $99
    ld l, b                                       ; $4ebf: $68
    db $10                                        ; $4ec0: $10
    ret c                                         ; $4ec1: $d8

    sub h                                         ; $4ec2: $94
    rst $28                                       ; $4ec3: $ef
    ld d, e                                       ; $4ec4: $53
    rst $30                                       ; $4ec5: $f7
    ld c, e                                       ; $4ec6: $4b
    ld sp, hl                                     ; $4ec7: $f9
    ld [$3fb2], a                                 ; $4ec8: $ea $b2 $3f
    ld c, h                                       ; $4ecb: $4c
    ccf                                           ; $4ecc: $3f
    db $10                                        ; $4ecd: $10
    ld [hl], a                                    ; $4ece: $77
    ld l, [hl]                                    ; $4ecf: $6e
    rst $08                                       ; $4ed0: $cf
    ld [bc], a                                    ; $4ed1: $02
    ld [hl], l                                    ; $4ed2: $75
    xor a                                         ; $4ed3: $af
    ld c, e                                       ; $4ed4: $4b
    db $dd                                        ; $4ed5: $dd
    ld h, c                                       ; $4ed6: $61
    add [hl]                                      ; $4ed7: $86
    push af                                       ; $4ed8: $f5
    dec hl                                        ; $4ed9: $2b
    ld l, l                                       ; $4eda: $6d
    jr c, jr_042_4f14                             ; $4edb: $38 $37

    ld a, h                                       ; $4edd: $7c
    reti                                          ; $4ede: $d9


    adc b                                         ; $4edf: $88
    ld [hl], a                                    ; $4ee0: $77
    xor h                                         ; $4ee1: $ac
    and d                                         ; $4ee2: $a2
    dec de                                        ; $4ee3: $1b
    cp d                                          ; $4ee4: $ba
    call nc, Call_042_661d                        ; $4ee5: $d4 $1d $66
    ld e, b                                       ; $4ee8: $58
    sbc a                                         ; $4ee9: $9f
    ld d, [hl]                                    ; $4eea: $56
    dec d                                         ; $4eeb: $15
    ld c, d                                       ; $4eec: $4a
    sbc c                                         ; $4eed: $99
    and b                                         ; $4eee: $a0
    cp b                                          ; $4eef: $b8
    adc e                                         ; $4ef0: $8b
    ld a, [$ea9d]                                 ; $4ef1: $fa $9d $ea
    ld h, $d4                                     ; $4ef4: $26 $d4
    db $eb                                        ; $4ef6: $eb
    dec a                                         ; $4ef7: $3d
    ld [hl], a                                    ; $4ef8: $77
    db $d3                                        ; $4ef9: $d3
    xor a                                         ; $4efa: $af
    db $ed                                        ; $4efb: $ed
    ld hl, $09fe                                  ; $4efc: $21 $fe $09
    db $db                                        ; $4eff: $db
    sub b                                         ; $4f00: $90
    rst $08                                       ; $4f01: $cf
    ld [$6653], sp                                ; $4f02: $08 $53 $66
    call nc, $ef8c                                ; $4f05: $d4 $8c $ef
    ret z                                         ; $4f08: $c8

    db $f4                                        ; $4f09: $f4
    ld a, l                                       ; $4f0a: $7d

Call_042_4f0b:
    sbc a                                         ; $4f0b: $9f
    pop af                                        ; $4f0c: $f1
    db $eb                                        ; $4f0d: $eb
    ld d, d                                       ; $4f0e: $52
    ei                                            ; $4f0f: $fb
    call $f408                                    ; $4f10: $cd $08 $f4
    ld l, c                                       ; $4f13: $69

jr_042_4f14:
    jp Jump_042_6e26                              ; $4f14: $c3 $26 $6e


    add h                                         ; $4f17: $84
    inc a                                         ; $4f18: $3c

jr_042_4f19:
    pop hl                                        ; $4f19: $e1
    adc a                                         ; $4f1a: $8f
    cp d                                          ; $4f1b: $ba
    inc a                                         ; $4f1c: $3c
    add hl, bc                                    ; $4f1d: $09
    adc e                                         ; $4f1e: $8b
    rst $30                                       ; $4f1f: $f7
    db $e4                                        ; $4f20: $e4
    ld a, b                                       ; $4f21: $78
    or d                                          ; $4f22: $b2
    ret nz                                        ; $4f23: $c0

    or d                                          ; $4f24: $b2
    ret c                                         ; $4f25: $d8

    ld d, l                                       ; $4f26: $55
    rst $18                                       ; $4f27: $df
    xor a                                         ; $4f28: $af
    ld [hl], l                                    ; $4f29: $75
    ld b, [hl]                                    ; $4f2a: $46
    sub a                                         ; $4f2b: $97
    jp c, $466f                                   ; $4f2c: $da $6f $46

    jr nz, jr_042_4f66                            ; $4f2f: $20 $35

    ld d, d                                       ; $4f31: $52
    ld hl, sp+$79                                 ; $4f32: $f8 $79
    ld [hl], d                                    ; $4f34: $72
    dec sp                                        ; $4f35: $3b
    adc e                                         ; $4f36: $8b
    ld e, l                                       ; $4f37: $5d
    dec [hl]                                      ; $4f38: $35
    ld sp, hl                                     ; $4f39: $f9
    ld a, b                                       ; $4f3a: $78
    ld c, a                                       ; $4f3b: $4f
    adc $10                                       ; $4f3c: $ce $10
    call nz, $b1ff                                ; $4f3e: $c4 $ff $b1
    ld [hl], e                                    ; $4f41: $73
    jr nz, @+$2b                                  ; $4f42: $20 $29

    ld c, a                                       ; $4f44: $4f
    xor b                                         ; $4f45: $a8
    ld a, h                                       ; $4f46: $7c
    db $ec                                        ; $4f47: $ec
    call c, $0b54                                 ; $4f48: $dc $54 $0b
    and h                                         ; $4f4b: $a4
    ld a, h                                       ; $4f4c: $7c
    cp a                                          ; $4f4d: $bf
    ld [bc], a                                    ; $4f4e: $02
    xor l                                         ; $4f4f: $ad
    pop bc                                        ; $4f50: $c1
    xor a                                         ; $4f51: $af
    adc e                                         ; $4f52: $8b
    ld a, a                                       ; $4f53: $7f
    and d                                         ; $4f54: $a2
    adc $8e                                       ; $4f55: $ce $8e
    ld a, c                                       ; $4f57: $79
    ld a, [c]                                     ; $4f58: $f2
    pop af                                        ; $4f59: $f1
    and c                                         ; $4f5a: $a1
    cp a                                          ; $4f5b: $bf
    db $dd                                        ; $4f5c: $dd
    sub h                                         ; $4f5d: $94
    rst $10                                       ; $4f5e: $d7
    ld h, l                                       ; $4f5f: $65
    add c                                         ; $4f60: $81
    dec b                                         ; $4f61: $05
    and l                                         ; $4f62: $a5
    ret nz                                        ; $4f63: $c0

    sub b                                         ; $4f64: $90
    scf                                           ; $4f65: $37

jr_042_4f66:
    dec sp                                        ; $4f66: $3b
    ld a, [c]                                     ; $4f67: $f2
    ld sp, hl                                     ; $4f68: $f9
    ld d, e                                       ; $4f69: $53
    ldh [rDMA], a                                 ; $4f6a: $e0 $46
    call nc, Call_042_5ad7                        ; $4f6c: $d4 $d7 $5a
    ld bc, $c1ad                                  ; $4f6f: $01 $ad $c1
    xor a                                         ; $4f72: $af
    adc e                                         ; $4f73: $8b
    dec de                                        ; $4f74: $1b
    add hl, hl                                    ; $4f75: $29
    and a                                         ; $4f76: $a7
    ld h, b                                       ; $4f77: $60
    rst $08                                       ; $4f78: $cf
    ret z                                         ; $4f79: $c8

    ld b, [hl]                                    ; $4f7a: $46
    sbc b                                         ; $4f7b: $98
    ld [hl+], a                                   ; $4f7c: $22
    ld e, a                                       ; $4f7d: $5f
    dec l                                         ; $4f7e: $2d
    add a                                         ; $4f7f: $87
    cp b                                          ; $4f80: $b8
    sub c                                         ; $4f81: $91
    add hl, hl                                    ; $4f82: $29
    ld c, $42                                     ; $4f83: $0e $42
    ld b, h                                       ; $4f85: $44
    ld c, [hl]                                    ; $4f86: $4e
    ld d, d                                       ; $4f87: $52
    dec a                                         ; $4f88: $3d
    jp $a3ee                                      ; $4f89: $c3 $ee $a3


    ld l, $6d                                     ; $4f8c: $2e $6d
    sbc b                                         ; $4f8e: $98
    ld a, [hl]                                    ; $4f8f: $7e
    or $68                                        ; $4f90: $f6 $68
    rst $30                                       ; $4f92: $f7
    cp d                                          ; $4f93: $ba
    jr c, jr_042_4f19                             ; $4f94: $38 $83

    sbc d                                         ; $4f96: $9a
    jr c, @+$41                                   ; $4f97: $38 $3f

    ld d, d                                       ; $4f99: $52
    sbc $fe                                       ; $4f9a: $de $fe
    and d                                         ; $4f9c: $a2
    or a                                          ; $4f9d: $b7
    daa                                           ; $4f9e: $27
    xor a                                         ; $4f9f: $af
    sub h                                         ; $4fa0: $94
    xor e                                         ; $4fa1: $ab
    ld a, $82                                     ; $4fa2: $3e $82
    dec e                                         ; $4fa4: $1d
    cp e                                          ; $4fa5: $bb
    add l                                         ; $4fa6: $85
    xor $33                                       ; $4fa7: $ee $33
    db $e4                                        ; $4fa9: $e4
    halt                                          ; $4faa: $76
    or h                                          ; $4fab: $b4
    ld a, e                                       ; $4fac: $7b
    ld d, e                                       ; $4fad: $53
    daa                                           ; $4fae: $27
    inc de                                        ; $4faf: $13
    push af                                       ; $4fb0: $f5
    ld a, e                                       ; $4fb1: $7b

jr_042_4fb2:
    inc hl                                        ; $4fb2: $23
    jr nc, jr_042_4fb2                            ; $4fb3: $30 $fd

    dec sp                                        ; $4fb5: $3b
    add a                                         ; $4fb6: $87
    ld a, $be                                     ; $4fb7: $3e $be
    ld l, a                                       ; $4fb9: $6f
    push af                                       ; $4fba: $f5
    ld b, h                                       ; $4fbb: $44
    dec e                                         ; $4fbc: $1d
    add hl, bc                                    ; $4fbd: $09

Call_042_4fbe:
    ld h, e                                       ; $4fbe: $63
    ld [$1743], sp                                ; $4fbf: $08 $43 $17
    ld [de], a                                    ; $4fc2: $12
    jp z, $fafe                                   ; $4fc3: $ca $fe $fa

    dec d                                         ; $4fc6: $15
    db $ed                                        ; $4fc7: $ed
    ld a, a                                       ; $4fc8: $7f
    rst $18                                       ; $4fc9: $df
    rst $30                                       ; $4fca: $f7
    dec hl                                        ; $4fcb: $2b
    sbc [hl]                                      ; $4fcc: $9e
    inc hl                                        ; $4fcd: $23
    sbc d                                         ; $4fce: $9a
    dec a                                         ; $4fcf: $3d
    db $d3                                        ; $4fd0: $d3
    db $fd                                        ; $4fd1: $fd
    call nz, Call_000_391b                        ; $4fd2: $c4 $1b $39
    ld e, l                                       ; $4fd5: $5d
    ld l, d                                       ; $4fd6: $6a
    jp $1baa                                      ; $4fd7: $c3 $aa $1b


    ld b, c                                       ; $4fda: $41
    cp a                                          ; $4fdb: $bf
    ld [bc], a                                    ; $4fdc: $02
    cp [hl]                                       ; $4fdd: $be
    dec bc                                        ; $4fde: $0b
    ld l, h                                       ; $4fdf: $6c
    and d                                         ; $4fe0: $a2
    ld l, $32                                     ; $4fe1: $2e $32
    ld [de], a                                    ; $4fe3: $12
    sub h                                         ; $4fe4: $94
    ld [bc], a                                    ; $4fe5: $02
    ld b, e                                       ; $4fe6: $43
    ld a, [hl]                                    ; $4fe7: $7e
    ld l, a                                       ; $4fe8: $6f
    sbc b                                         ; $4fe9: $98
    halt                                          ; $4fea: $76
    xor $f3                                       ; $4feb: $ee $f3
    ld de, $4294                                  ; $4fed: $11 $94 $42
    push hl                                       ; $4ff0: $e5
    and e                                         ; $4ff1: $a3
    ld l, $3e                                     ; $4ff2: $2e $3e
    inc d                                         ; $4ff4: $14
    add l                                         ; $4ff5: $85
    ld de, $1e98                                  ; $4ff6: $11 $98 $1e
    db $fd                                        ; $4ff9: $fd

jr_042_4ffa:
    ld a, [bc]                                    ; $4ffa: $0a
    dec e                                         ; $4ffb: $1d
    jp nc, $97df                                  ; $4ffc: $d2 $df $97

    ld [hl-], a                                   ; $4fff: $32
    ld [hl-], a                                   ; $5000: $32
    cp c                                          ; $5001: $b9
    cp b                                          ; $5002: $b8
    and e                                         ; $5003: $a3
    ld e, [hl]                                    ; $5004: $5e
    rst $28                                       ; $5005: $ef
    ld b, l                                       ; $5006: $45
    ld a, c                                       ; $5007: $79
    ret nz                                        ; $5008: $c0

    db $f4                                        ; $5009: $f4
    rra                                           ; $500a: $1f
    push af                                       ; $500b: $f5
    ld a, e                                       ; $500c: $7b
    ld a, e                                       ; $500d: $7b
    ld a, h                                       ; $500e: $7c
    ld e, c                                       ; $500f: $59
    ret nz                                        ; $5010: $c0

    inc a                                         ; $5011: $3c
    add hl, sp                                    ; $5012: $39
    add hl, hl                                    ; $5013: $29
    or e                                          ; $5014: $b3
    adc a                                         ; $5015: $8f
    and a                                         ; $5016: $a7
    sub $0a                                       ; $5017: $d6 $0a
    db $ed                                        ; $5019: $ed
    rst $18                                       ; $501a: $df
    ld b, a                                       ; $501b: $47
    ld b, [hl]                                    ; $501c: $46
    db $e4                                        ; $501d: $e4
    ld b, e                                       ; $501e: $43
    res 2, e                                      ; $501f: $cb $93
    sbc a                                         ; $5021: $9f
    rst $18                                       ; $5022: $df
    adc [hl]                                      ; $5023: $8e
    ld a, [bc]                                    ; $5024: $0a
    and d                                         ; $5025: $a2
    ld l, $3e                                     ; $5026: $2e $3e
    inc d                                         ; $5028: $14
    add l                                         ; $5029: $85
    ld de, $1e98                                  ; $502a: $11 $98 $1e
    ld e, c                                       ; $502d: $59
    ld h, b                                       ; $502e: $60
    ld [hl], c                                    ; $502f: $71
    call nc, $bc9d                                ; $5030: $d4 $9d $bc
    ld hl, $43fb                                  ; $5033: $21 $fb $43
    and h                                         ; $5036: $a4
    set 6, d                                      ; $5037: $cb $f2
    db $fd                                        ; $5039: $fd
    ld a, [bc]                                    ; $503a: $0a
    sbc [hl]                                      ; $503b: $9e
    ld b, $35                                     ; $503c: $06 $35
    ld [hl], c                                    ; $503e: $71
    ld a, [hl]                                    ; $503f: $7e
    inc b                                         ; $5040: $04
    push hl                                       ; $5041: $e5
    ld a, [bc]                                    ; $5042: $0a
    cp a                                          ; $5043: $bf
    ld c, h                                       ; $5044: $4c
    ld a, h                                       ; $5045: $7c
    add sp, $33                                   ; $5046: $e8 $33
    db $db                                        ; $5048: $db
    call nz, $f51d                                ; $5049: $c4 $1d $f5
    ld a, d                                       ; $504c: $7a
    cpl                                           ; $504d: $2f
    jp z, $a603                                   ; $504e: $ca $03 $a6

    rst $38                                       ; $5051: $ff
    jr c, jr_042_5093                             ; $5052: $38 $3f

    ld [c], a                                     ; $5054: $e2
    ld b, [hl]                                    ; $5055: $46
    jr jr_042_4ffa                                ; $5056: $18 $a2

    adc l                                         ; $5058: $8d
    ld c, h                                       ; $5059: $4c
    ld c, [hl]                                    ; $505a: $4e
    inc [hl]                                      ; $505b: $34
    add e                                         ; $505c: $83
    ld a, [hl-]                                   ; $505d: $3a
    ld [$2e9f], sp                                ; $505e: $08 $9f $2e
    push de                                       ; $5061: $d5
    ld b, a                                       ; $5062: $47
    ld b, [hl]                                    ; $5063: $46
    ld [hl+], a                                   ; $5064: $22
    adc b                                         ; $5065: $88
    ld a, a                                       ; $5066: $7f
    or d                                          ; $5067: $b2
    ccf                                           ; $5068: $3f
    ld c, $c6                                     ; $5069: $0e $c6
    jr nz, jr_042_507f                            ; $506b: $20 $12

    cp a                                          ; $506d: $bf
    ld e, a                                       ; $506e: $5f
    ld bc, $6ebe                                  ; $506f: $01 $be $6e
    xor d                                         ; $5072: $aa
    ld a, [bc]                                    ; $5073: $0a
    call z, $e713                                 ; $5074: $cc $13 $e7
    ld b, a                                       ; $5077: $47
    ld l, [hl]                                    ; $5078: $6e
    ld b, a                                       ; $5079: $47
    cp e                                          ; $507a: $bb
    scf                                           ; $507b: $37
    ld [hl], l                                    ; $507c: $75
    ld [hl-], a                                   ; $507d: $32
    xor c                                         ; $507e: $a9

jr_042_507f:
    sub c                                         ; $507f: $91
    push hl                                       ; $5080: $e5
    jr nz, @+$15                                  ; $5081: $20 $13

    ld [hl], l                                    ; $5083: $75
    add c                                         ; $5084: $81
    jp hl                                         ; $5085: $e9


    pop de                                        ; $5086: $d1
    xor a                                         ; $5087: $af
    sbc [hl]                                      ; $5088: $9e
    rst $30                                       ; $5089: $f7
    and e                                         ; $508a: $a3
    ld c, e                                       ; $508b: $4b
    dec e                                         ; $508c: $1d
    sub b                                         ; $508d: $90
    or a                                          ; $508e: $b7
    scf                                           ; $508f: $37
    ld a, [$be15]                                 ; $5090: $fa $15 $be

jr_042_5093:
    ld a, [hl]                                    ; $5093: $7e
    ld a, a                                       ; $5094: $7f
    call $f2f8                                    ; $5095: $cd $f8 $f2
    ld b, a                                       ; $5098: $47
    adc l                                         ; $5099: $8d
    ld d, l                                       ; $509a: $55
    db $10                                        ; $509b: $10
    dec [hl]                                      ; $509c: $35
    db $fd                                        ; $509d: $fd
    ld a, [bc]                                    ; $509e: $0a
    ld [hl], l                                    ; $509f: $75
    ld b, [hl]                                    ; $50a0: $46
    ld d, d                                       ; $50a1: $52
    ld hl, sp-$5d                                 ; $50a2: $f8 $a3
    add $2a                                       ; $50a4: $c6 $2a
    adc b                                         ; $50a6: $88
    ld a, [de]                                    ; $50a7: $1a
    ld e, l                                       ; $50a8: $5d
    ld l, d                                       ; $50a9: $6a
    ld h, h                                       ; $50aa: $64
    rst $10                                       ; $50ab: $d7
    sub a                                         ; $50ac: $97
    sub e                                         ; $50ad: $93
    inc l                                         ; $50ae: $2c
    rlca                                          ; $50af: $07
    ld [hl], l                                    ; $50b0: $75
    ld b, c                                       ; $50b1: $41
    xor d                                         ; $50b2: $aa
    ld c, e                                       ; $50b3: $4b
    pop hl                                        ; $50b4: $e1
    adc a                                         ; $50b5: $8f
    ld b, [hl]                                    ; $50b6: $46
    rst $18                                       ; $50b7: $df
    call nc, $9a8b                                ; $50b8: $d4 $8b $9a
    ld a, [hl]                                    ; $50bb: $7e
    dec b                                         ; $50bc: $05
    ld [hl], l                                    ; $50bd: $75

Jump_042_50be:
    ld b, [hl]                                    ; $50be: $46
    or d                                          ; $50bf: $b2
    cp h                                          ; $50c0: $bc
    db $ed                                        ; $50c1: $ed
    adc c                                         ; $50c2: $89
    cp d                                          ; $50c3: $ba
    call nc, Call_042_7901                        ; $50c4: $d4 $01 $79
    ld a, e                                       ; $50c7: $7b
    ld b, e                                       ; $50c8: $43
    sub a                                         ; $50c9: $97
    ld [$b0a3], a                                 ; $50ca: $ea $a3 $b0
    or e                                          ; $50cd: $b3
    ret c                                         ; $50ce: $d8

    ld a, b                                       ; $50cf: $78
    ld d, c                                       ; $50d0: $51
    jp z, $3a58                                   ; $50d1: $ca $58 $3a

    ld l, d                                       ; $50d4: $6a
    ret nc                                        ; $50d5: $d0

    ld e, e                                       ; $50d6: $5b
    ld [hl], e                                    ; $50d7: $73
    dec b                                         ; $50d8: $05
    ld e, l                                       ; $50d9: $5d
    ld [de], a                                    ; $50da: $12
    adc c                                         ; $50db: $89
    ld b, h                                       ; $50dc: $44
    ld [hl+], a                                   ; $50dd: $22
    sub c                                         ; $50de: $91
    ld c, b                                       ; $50df: $48
    db $ec                                        ; $50e0: $ec
    ei                                            ; $50e1: $fb
    ld a, [hl]                                    ; $50e2: $7e
    dec b                                         ; $50e3: $05
    ld [hl], l                                    ; $50e4: $75
    ld b, [hl]                                    ; $50e5: $46
    and d                                         ; $50e6: $a2
    add [hl]                                      ; $50e7: $86
    inc [hl]                                      ; $50e8: $34
    ld d, h                                       ; $50e9: $54
    push de                                       ; $50ea: $d5
    and h                                         ; $50eb: $a4
    sub b                                         ; $50ec: $90
    ret nc                                        ; $50ed: $d0

    or $bd                                        ; $50ee: $f6 $bd
    db $ed                                        ; $50f0: $ed
    xor c                                         ; $50f1: $a9
    or l                                          ; $50f2: $b5
    ld [bc], a                                    ; $50f3: $02
    ld [hl], l                                    ; $50f4: $75
    ld b, [hl]                                    ; $50f5: $46
    ld d, d                                       ; $50f6: $52
    ld h, $05                                     ; $50f7: $26 $05
    add hl, hl                                    ; $50f9: $29
    sub a                                         ; $50fa: $97
    add l                                         ; $50fb: $85
    sub $9f                                       ; $50fc: $d6 $9f
    ld b, d                                       ; $50fe: $42
    ld b, d                                       ; $50ff: $42
    db $db                                        ; $5100: $db
    rst $30                                       ; $5101: $f7
    add [hl]                                      ; $5102: $86
    ld d, b                                       ; $5103: $50
    adc c                                         ; $5104: $89
    rst $30                                       ; $5105: $f7
    add l                                         ; $5106: $85
    cp a                                          ; $5107: $bf
    ld d, h                                       ; $5108: $54
    rst $18                                       ; $5109: $df
    rst $00                                       ; $510a: $c7
    rla                                           ; $510b: $17
    ld e, c                                       ; $510c: $59
    ld l, h                                       ; $510d: $6c
    ret z                                         ; $510e: $c8

    cpl                                           ; $510f: $2f
    push hl                                       ; $5110: $e5
    ld a, [c]                                     ; $5111: $f2
    ld d, c                                       ; $5112: $51
    ld l, a                                       ; $5113: $6f
    jp c, Jump_042_50be                           ; $5114: $da $be $50

    adc c                                         ; $5117: $89
    sbc e                                         ; $5118: $9b
    cp l                                          ; $5119: $bd
    add b                                         ; $511a: $80
    ld a, c                                       ; $511b: $79
    ld [hl], h                                    ; $511c: $74
    xor c                                         ; $511d: $a9
    sub c                                         ; $511e: $91
    push bc                                       ; $511f: $c5
    ld b, [hl]                                    ; $5120: $46
    rst $38                                       ; $5121: $ff
    ld a, [$88db]                                 ; $5122: $fa $db $88
    di                                            ; $5125: $f3
    inc hl                                        ; $5126: $23
    ei                                            ; $5127: $fb
    jp Jump_042_53f4                              ; $5128: $c3 $f4 $53


    cp l                                          ; $512b: $bd
    ld c, h                                       ; $512c: $4c
    or h                                          ; $512d: $b4
    ld a, l                                       ; $512e: $7d
    ld e, c                                       ; $512f: $59
    cp [hl]                                       ; $5130: $be
    sub h                                         ; $5131: $94
    swap e                                        ; $5132: $cb $33
    db $db                                        ; $5134: $db
    sub e                                         ; $5135: $93
    or b                                          ; $5136: $b0
    ld [hl-], a                                   ; $5137: $32
    db $fd                                        ; $5138: $fd
    ld a, [bc]                                    ; $5139: $0a
    ld e, l                                       ; $513a: $5d
    ld [de], a                                    ; $513b: $12
    adc c                                         ; $513c: $89
    ld b, h                                       ; $513d: $44
    ld [hl+], a                                   ; $513e: $22
    or c                                          ; $513f: $b1
    rst $28                                       ; $5140: $ef
    ei                                            ; $5141: $fb
    jr nz, jr_042_5159                            ; $5142: $20 $15

    add h                                         ; $5144: $84

Call_042_5145:
    dec c                                         ; $5145: $0d
    cp c                                          ; $5146: $b9
    sbc l                                         ; $5147: $9d
    adc $3b                                       ; $5148: $ce $3b
    ld l, l                                       ; $514a: $6d
    cp e                                          ; $514b: $bb
    db $ed                                        ; $514c: $ed
    inc d                                         ; $514d: $14
    cp b                                          ; $514e: $b8
    reti                                          ; $514f: $d9


    sub e                                         ; $5150: $93
    jp nz, Jump_042_7e4f                          ; $5151: $c2 $4f $7e

    ld d, $58                                     ; $5154: $16 $58
    ret z                                         ; $5156: $c8

    reti                                          ; $5157: $d9


    ld a, [de]                                    ; $5158: $1a

jr_042_5159:
    inc c                                         ; $5159: $0c
    ld sp, hl                                     ; $515a: $f9
    dec e                                         ; $515b: $1d
    add [hl]                                      ; $515c: $86
    ld d, l                                       ; $515d: $55
    daa                                           ; $515e: $27
    ret nc                                        ; $515f: $d0

    ld b, l                                       ; $5160: $45
    and $f2                                       ; $5161: $e6 $f2
    inc h                                         ; $5163: $24
    ret z                                         ; $5164: $c8

    xor a                                         ; $5165: $af
    ld h, $fb                                     ; $5166: $26 $fb
    jp $fc28                                      ; $5168: $c3 $28 $fc


    or c                                          ; $516b: $b1
    inc hl                                        ; $516c: $23
    ld h, a                                       ; $516d: $67
    di                                            ; $516e: $f3
    rst $20                                       ; $516f: $e7
    ld d, l                                       ; $5170: $55
    ld a, [hl]                                    ; $5171: $7e
    or e                                          ; $5172: $b3
    ld e, l                                       ; $5173: $5d
    ld d, $48                                     ; $5174: $16 $48

Jump_042_5176:
    add hl, sp                                    ; $5176: $39
    ret c                                         ; $5177: $d8

    push af                                       ; $5178: $f5
    ld a, l                                       ; $5179: $7d
    sbc a                                         ; $517a: $9f
    jp c, $466f                                   ; $517b: $da $6f $46

    jr nz, jr_042_51f5                            ; $517e: $20 $75

    add a                                         ; $5180: $87
    add hl, de                                    ; $5181: $19
    ld d, [hl]                                    ; $5182: $56
    inc sp                                        ; $5183: $33
    dec l                                         ; $5184: $2d

Call_042_5185:
    add a                                         ; $5185: $87
    ld c, d                                       ; $5186: $4a
    sub [hl]                                      ; $5187: $96
    ld a, e                                       ; $5188: $7b
    rlca                                          ; $5189: $07
    ld b, e                                       ; $518a: $43
    sbc [hl]                                      ; $518b: $9e
    add h                                         ; $518c: $84
    pop af                                        ; $518d: $f1
    push bc                                       ; $518e: $c5
    ld a, e                                       ; $518f: $7b
    ld a, [c]                                     ; $5190: $f2
    cp e                                          ; $5191: $bb
    add d                                         ; $5192: $82
    jr nc, jr_042_5207                            ; $5193: $30 $72

    ld [de], a                                    ; $5195: $12
    or a                                          ; $5196: $b7
    cp a                                          ; $5197: $bf
    inc d                                         ; $5198: $14
    db $f4                                        ; $5199: $f4
    ld l, c                                       ; $519a: $69
    rst $38                                       ; $519b: $ff
    ld h, d                                       ; $519c: $62
    rst $20                                       ; $519d: $e7
    add $d4                                       ; $519e: $c6 $d4
    and h                                         ; $51a0: $a4
    sbc d                                         ; $51a1: $9a
    call Call_000_3d13                            ; $51a2: $cd $13 $3d
    inc b                                         ; $51a5: $04
    ld d, c                                       ; $51a6: $51
    rla                                           ; $51a7: $17
    and [hl]                                      ; $51a8: $a6
    sub e                                         ; $51a9: $93
    push hl                                       ; $51aa: $e5
    sub l                                         ; $51ab: $95
    and c                                         ; $51ac: $a1
    ld e, a                                       ; $51ad: $5f
    ld bc, $d96d                                  ; $51ae: $01 $6d $d9
    inc de                                        ; $51b1: $13
    rrca                                          ; $51b2: $0f
    cp d                                          ; $51b3: $ba
    inc l                                         ; $51b4: $2c
    ld [hl], $5e                                  ; $51b5: $36 $5e
    sub h                                         ; $51b7: $94
    ld [hl-], a                                   ; $51b8: $32
    sub [hl]                                      ; $51b9: $96
    adc [hl]                                      ; $51ba: $8e
    ld a, [de]                                    ; $51bb: $1a
    db $f4                                        ; $51bc: $f4
    or $2b                                        ; $51bd: $f6 $2b
    ld l, l                                       ; $51bf: $6d
    cp $c5                                        ; $51c0: $fe $c5
    call Call_000_20de                            ; $51c2: $cd $de $20
    sbc $08                                       ; $51c5: $de $08
    and d                                         ; $51c7: $a2
    ld l, $be                                     ; $51c8: $2e $be
    ld l, h                                       ; $51ca: $6c
    ret nc                                        ; $51cb: $d0

    db $fc                                        ; $51cc: $fc
    ld [$bd52], sp                                ; $51cd: $08 $52 $bd
    and $bf                                       ; $51d0: $e6 $bf
    ld a, b                                       ; $51d2: $78
    cp a                                          ; $51d3: $bf
    sbc d                                         ; $51d4: $9a
    ld [hl], d                                    ; $51d5: $72
    cp d                                          ; $51d6: $ba
    call nc, $337e                                ; $51d7: $d4 $7e $33
    ld [bc], a                                    ; $51da: $02
    or l                                          ; $51db: $b5
    jp nc, $9d31                                  ; $51dc: $d2 $31 $9d

    inc l                                         ; $51df: $2c
    xor a                                         ; $51e0: $af
    inc c                                         ; $51e1: $0c
    add hl, hl                                    ; $51e2: $29
    push af                                       ; $51e3: $f5
    push af                                       ; $51e4: $f5
    jp hl                                         ; $51e5: $e9


    ld b, h                                       ; $51e6: $44
    ld a, $e4                                     ; $51e7: $3e $e4
    ld l, h                                       ; $51e9: $6c
    cp $68                                        ; $51ea: $fe $68
    ei                                            ; $51ec: $fb
    and d                                         ; $51ed: $a2
    ld c, $ea                                     ; $51ee: $0e $ea
    ld b, d                                       ; $51f0: $42
    push hl                                       ; $51f1: $e5
    db $e3                                        ; $51f2: $e3
    dec a                                         ; $51f3: $3d
    adc l                                         ; $51f4: $8d

jr_042_51f5:
    jp c, $47c9                                   ; $51f5: $da $c9 $47

    ld e, l                                       ; $51f8: $5d
    inc a                                         ; $51f9: $3c
    rst $08                                       ; $51fa: $cf
    inc e                                         ; $51fb: $1c
    ld a, [$5e78]                                 ; $51fc: $fa $78 $5e
    jr jr_042_5203                                ; $51ff: $18 $02

    ld a, [c]                                     ; $5201: $f2
    ld d, e                                       ; $5202: $53

jr_042_5203:
    call Call_000_2be6                            ; $5203: $cd $e6 $2b
    push hl                                       ; $5206: $e5

jr_042_5207:
    xor d                                         ; $5207: $aa
    jp hl                                         ; $5208: $e9


    db $d3                                        ; $5209: $d3
    cp $c5                                        ; $520a: $fe $c5
    ld sp, hl                                     ; $520c: $f9
    rrca                                          ; $520d: $0f
    ld l, d                                       ; $520e: $6a
    ld [c], a                                     ; $520f: $e2
    db $fc                                        ; $5210: $fc
    adc b                                         ; $5211: $88
    rst $30                                       ; $5212: $f7
    inc b                                         ; $5213: $04
    ld a, c                                       ; $5214: $79
    cp l                                          ; $5215: $bd
    cp $3e                                        ; $5216: $fe $3e
    sbc $67                                       ; $5218: $de $67
    sbc [hl]                                      ; $521a: $9e
    cp [hl]                                       ; $521b: $be
    rst $28                                       ; $521c: $ef
    ld d, a                                       ; $521d: $57
    dec e                                         ; $521e: $1d
    sbc l                                         ; $521f: $9d
    dec de                                        ; $5220: $1b
    ld d, e                                       ; $5221: $53
    inc de                                        ; $5222: $13
    ld [hl], l                                    ; $5223: $75
    ld a, c                                       ; $5224: $79
    ld [de], a                                    ; $5225: $12
    sub [hl]                                      ; $5226: $96
    push hl                                       ; $5227: $e5
    ld l, l                                       ; $5228: $6d
    ccf                                           ; $5229: $3f
    ld c, a                                       ; $522a: $4f
    call c, Call_042_7c48                         ; $522b: $dc $48 $7c
    add sp, $6f                                   ; $522e: $e8 $6f
    ld b, a                                       ; $5230: $47
    ld h, l                                       ; $5231: $65
    ld [hl], h                                    ; $5232: $74
    ld sp, hl                                     ; $5233: $f9
    or h                                          ; $5234: $b4
    ld a, [hl]                                    ; $5235: $7e
    xor a                                         ; $5236: $af
    adc l                                         ; $5237: $8d
    and h                                         ; $5238: $a4
    push de                                       ; $5239: $d5
    cp l                                          ; $523a: $bd
    ld b, c                                       ; $523b: $41
    ld b, b                                       ; $523c: $40
    rla                                           ; $523d: $17
    rst $20                                       ; $523e: $e7
    ld b, a                                       ; $523f: $47
    inc e                                         ; $5240: $1c
    call z, $f93d                                 ; $5241: $cc $3d $f9
    ld d, c                                       ; $5244: $51
    rla                                           ; $5245: $17
    ld [de], a                                    ; $5246: $12
    and d                                         ; $5247: $a2
    ld h, b                                       ; $5248: $60
    adc b                                         ; $5249: $88
    rrca                                          ; $524a: $0f
    push bc                                       ; $524b: $c5
    sbc $1f                                       ; $524c: $de $1f
    rst $28                                       ; $524e: $ef
    ld l, c                                       ; $524f: $69
    call nc, $be4e                                ; $5250: $d4 $4e $be
    ld e, a                                       ; $5253: $5f
    ld bc, $4675                                  ; $5254: $01 $75 $46
    ld d, d                                       ; $5257: $52
    ld hl, $a27b                                  ; $5258: $21 $7b $a2
    adc $50                                       ; $525b: $ce $50
    inc sp                                        ; $525d: $33
    db $ed                                        ; $525e: $ed
    cp a                                          ; $525f: $bf
    or $76                                        ; $5260: $f6 $76
    add hl, hl                                    ; $5262: $29
    rla                                           ; $5263: $17
    or [hl]                                       ; $5264: $b6
    ld h, a                                       ; $5265: $67
    ld a, [hl]                                    ; $5266: $7e
    ld a, [c]                                     ; $5267: $f2
    or e                                          ; $5268: $b3
    ret c                                         ; $5269: $d8

    inc l                                         ; $526a: $2c
    halt                                          ; $526b: $76
    inc de                                        ; $526c: $13
    add l                                         ; $526d: $85
    cp l                                          ; $526e: $bd
    ccf                                           ; $526f: $3f
    add l                                         ; $5270: $85
    ld d, c                                       ; $5271: $51
    jp z, $7bc7                                   ; $5272: $ca $c7 $7b

    ld a, [de]                                    ; $5275: $1a
    or l                                          ; $5276: $b5
    sub e                                         ; $5277: $93
    rst $28                                       ; $5278: $ef
    db $e3                                        ; $5279: $e3
    adc e                                         ; $527a: $8b
    ret c                                         ; $527b: $d8

    pop de                                        ; $527c: $d1
    ld [c], a                                     ; $527d: $e2
    xor [hl]                                      ; $527e: $ae
    sub h                                         ; $527f: $94
    res 0, a                                      ; $5280: $cb $87
    add h                                         ; $5282: $84
    add d                                         ; $5283: $82
    db $ed                                        ; $5284: $ed
    rst $10                                       ; $5285: $d7
    ld h, l                                       ; $5286: $65
    add hl, de                                    ; $5287: $19
    ld [hl], $5c                                  ; $5288: $36 $5c
    sbc [hl]                                      ; $528a: $9e
    add h                                         ; $528b: $84
    add hl, bc                                    ; $528c: $09
    or d                                          ; $528d: $b2
    ccf                                           ; $528e: $3f
    ld l, [hl]                                    ; $528f: $6e
    call nz, $ab0b                                ; $5290: $c4 $0b $ab
    cp [hl]                                       ; $5293: $be
    ld e, a                                       ; $5294: $5f
    ld bc, $d29d                                  ; $5295: $01 $9d $d2
    reti                                          ; $5298: $d9


    adc b                                         ; $5299: $88
    di                                            ; $529a: $f3
    inc hl                                        ; $529b: $23
    jp c, $ec3e                                   ; $529c: $da $3e $ec

    adc a                                         ; $529f: $8f
    dec e                                         ; $52a0: $1d
    db $db                                        ; $52a1: $db
    sub b                                         ; $52a2: $90
    ld d, a                                       ; $52a3: $57
    ld l, e                                       ; $52a4: $6b
    dec b                                         ; $52a5: $05
    dec e                                         ; $52a6: $1d
    jr nc, jr_042_5308                            ; $52a7: $30 $5f

    push af                                       ; $52a9: $f5
    add hl, sp                                    ; $52aa: $39
    add l                                         ; $52ab: $85
    rst $28                                       ; $52ac: $ef
    db $d3                                        ; $52ad: $d3
    add c                                         ; $52ae: $81
    and [hl]                                      ; $52af: $a6
    ld e, l                                       ; $52b0: $5d
    ld c, [hl]                                    ; $52b1: $4e
    adc [hl]                                      ; $52b2: $8e
    ld a, b                                       ; $52b3: $78
    cpl                                           ; $52b4: $2f
    sub e                                         ; $52b5: $93
    adc l                                         ; $52b6: $8d
    sub b                                         ; $52b7: $90
    rst $28                                       ; $52b8: $ef
    ld e, [hl]                                    ; $52b9: $5e
    adc b                                         ; $52ba: $88
    adc b                                         ; $52bb: $88
    cp d                                          ; $52bc: $ba
    ld d, h                                       ; $52bd: $54
    ldh [$7a], a                                  ; $52be: $e0 $7a
    jp nz, Jump_000_1576                          ; $52c0: $c2 $76 $15

    ld a, [bc]                                    ; $52c3: $0a
    dec de                                        ; $52c4: $1b
    ld [hl], h                                    ; $52c5: $74
    pop af                                        ; $52c6: $f1
    and c                                         ; $52c7: $a1
    daa                                           ; $52c8: $27
    ld [$7052], a                                 ; $52c9: $ea $52 $70
    reti                                          ; $52cc: $d9


    and a                                         ; $52cd: $a7
    add a                                         ; $52ce: $87
    ld c, l                                       ; $52cf: $4d
    call nc, Call_042_45e5                        ; $52d0: $d4 $e5 $45
    cp l                                          ; $52d3: $bd
    ld hl, $d69f                                  ; $52d4: $21 $9f $d6
    rst $28                                       ; $52d7: $ef
    or l                                          ; $52d8: $b5
    sub c                                         ; $52d9: $91
    or h                                          ; $52da: $b4
    cp d                                          ; $52db: $ba
    scf                                           ; $52dc: $37
    ld [$a9f4], sp                                ; $52dd: $08 $f4 $a9
    dec sp                                        ; $52e0: $3b
    add $1f                                       ; $52e1: $c6 $1f
    rra                                           ; $52e3: $1f
    adc d                                         ; $52e4: $8a
    jp nz, $fd93                                  ; $52e5: $c2 $93 $fd

    push bc                                       ; $52e8: $c5
    db $dd                                        ; $52e9: $dd
    cpl                                           ; $52ea: $2f

Jump_042_52eb:
    ld e, a                                       ; $52eb: $5f
    jp z, $f21b                                   ; $52ec: $ca $1b $f2

    xor c                                         ; $52ef: $a9
    db $fd                                        ; $52f0: $fd
    sbc d                                         ; $52f1: $9a
    sbc l                                         ; $52f2: $9d
    ld l, d                                       ; $52f3: $6a
    ld sp, $a40b                                  ; $52f4: $31 $0b $a4
    ret nz                                        ; $52f7: $c0

    ld [$a6c9], a                                 ; $52f8: $ea $c9 $a6
    sub a                                         ; $52fb: $97
    ld d, a                                       ; $52fc: $57
    ld a, c                                       ; $52fd: $79
    rst $20                                       ; $52fe: $e7
    and [hl]                                      ; $52ff: $a6
    ld e, d                                       ; $5300: $5a
    ld e, [hl]                                    ; $5301: $5e
    sub e                                         ; $5302: $93
    scf                                           ; $5303: $37
    cp [hl]                                       ; $5304: $be
    ld a, $75                                     ; $5305: $3e $75
    add a                                         ; $5307: $87

jr_042_5308:
    dec c                                         ; $5308: $0d
    add l                                         ; $5309: $85
    cpl                                           ; $530a: $2f
    halt                                          ; $530b: $76
    dec bc                                        ; $530c: $0b
    jr jr_042_5365                                ; $530d: $18 $56

    ld e, l                                       ; $530f: $5d
    ld l, [hl]                                    ; $5310: $6e
    add a                                         ; $5311: $87
    jp hl                                         ; $5312: $e9


    ld b, h                                       ; $5313: $44
    and [hl]                                      ; $5314: $a6
    ld b, d                                       ; $5315: $42
    xor l                                         ; $5316: $ad
    dec d                                         ; $5317: $15
    or l                                          ; $5318: $b5
    rst $18                                       ; $5319: $df
    adc h                                         ; $531a: $8c
    ld b, b                                       ; $531b: $40
    ld [$330e], a                                 ; $531c: $ea $0e $33
    xor h                                         ; $531f: $ac
    ld e, a                                       ; $5320: $5f
    ld bc, $5d6d                                  ; $5321: $01 $6d $5d
    dec a                                         ; $5324: $3d
    cp d                                          ; $5325: $ba
    call nc, $337e                                ; $5326: $d4 $7e $33
    ld [bc], a                                    ; $5329: $02
    xor c                                         ; $532a: $a9
    dec sp                                        ; $532b: $3b
    call z, Call_000_3eb0                         ; $532c: $cc $b0 $3e
    sbc l                                         ; $532f: $9d
    ld c, b                                       ; $5330: $48
    db $ec                                        ; $5331: $ec
    or l                                          ; $5332: $b5
    daa                                           ; $5333: $27
    ld [de], a                                    ; $5334: $12
    daa                                           ; $5335: $27
    ld a, [bc]                                    ; $5336: $0a
    ei                                            ; $5337: $fb
    adc b                                         ; $5338: $88
    scf                                           ; $5339: $37
    ld h, l                                       ; $533a: $65
    ld [hl], h                                    ; $533b: $74
    add hl, hl                                    ; $533c: $29
    db $fc                                        ; $533d: $fc
    db $e4                                        ; $533e: $e4
    ld h, h                                       ; $533f: $64
    ld a, c                                       ; $5340: $79
    db $db                                        ; $5341: $db
    cpl                                           ; $5342: $2f
    ld l, d                                       ; $5343: $6a
    ld [c], a                                     ; $5344: $e2
    ld b, [hl]                                    ; $5345: $46
    or d                                          ; $5346: $b2
    jp hl                                         ; $5347: $e9


    ld h, l                                       ; $5348: $65
    or c                                          ; $5349: $b1
    ld e, c                                       ; $534a: $59
    db $ec                                        ; $534b: $ec
    ld h, $af                                     ; $534c: $26 $af
    ld d, b                                       ; $534e: $50
    jp z, $7df4                                   ; $534f: $ca $f4 $7d

    cp a                                          ; $5352: $bf
    ld [bc], a                                    ; $5353: $02
    or l                                          ; $5354: $b5
    ld e, a                                       ; $5355: $5f
    or e                                          ; $5356: $b3
    ld d, e                                       ; $5357: $53
    dec [hl]                                      ; $5358: $35
    db $e3                                        ; $5359: $e3
    bit 1, a                                      ; $535a: $cb $4f
    ld c, [hl]                                    ; $535c: $4e
    ld c, b                                       ; $535d: $48
    ld [$4d44], sp                                ; $535e: $08 $44 $4d
    ld a, $0e                                     ; $5361: $3e $0e
    and $de                                       ; $5363: $e6 $de

jr_042_5365:
    sub b                                         ; $5365: $90

jr_042_5366:
    push bc                                       ; $5366: $c5
    ld h, [hl]                                    ; $5367: $66
    or c                                          ; $5368: $b1
    sbc e                                         ; $5369: $9b
    jr nc, jr_042_5366                            ; $536a: $30 $fa

    dec d                                         ; $536c: $15
    sbc [hl]                                      ; $536d: $9e
    rst $30                                       ; $536e: $f7
    and e                                         ; $536f: $a3
    ld c, e                                       ; $5370: $4b
    db $ed                                        ; $5371: $ed
    scf                                           ; $5372: $37
    inc hl                                        ; $5373: $23
    ret nc                                        ; $5374: $d0

    rst $00                                       ; $5375: $c7
    sub a                                         ; $5376: $97
    daa                                           ; $5377: $27
    ld c, $e6                                     ; $5378: $0e $e6
    ld e, [hl]                                    ; $537a: $5e
    call nc, $db44                                ; $537b: $d4 $44 $db
    sub a                                         ; $537e: $97
    ld c, $cc                                     ; $537f: $0e $cc
    ld l, l                                       ; $5381: $6d
    ld e, d                                       ; $5382: $5a
    dec l                                         ; $5383: $2d
    rst $10                                       ; $5384: $d7
    and a                                         ; $5385: $a7
    or $a4                                        ; $5386: $f6 $a4
    ld b, b                                       ; $5388: $40
    ld hl, sp+$78                                 ; $5389: $f8 $78
    and d                                         ; $538b: $a2
    adc $10                                       ; $538c: $ce $10
    rst $20                                       ; $538e: $e7
    ld b, a                                       ; $538f: $47
    db $fc                                        ; $5390: $fc
    cpl                                           ; $5391: $2f
    ld [hl-], a                                   ; $5392: $32
    ld [hl], c                                    ; $5393: $71
    ld d, e                                       ; $5394: $53
    ret c                                         ; $5395: $d8

    add sp, -$0f                                  ; $5396: $e8 $f1
    add h                                         ; $5398: $84
    ld c, d                                       ; $5399: $4a
    db $e4                                        ; $539a: $e4
    call nc, $f7e4                                ; $539b: $d4 $e4 $f7
    or $38                                        ; $539e: $f6 $38
    ld h, c                                       ; $53a0: $61
    sbc b                                         ; $53a1: $98
    ld c, h                                       ; $53a2: $4c
    inc d                                         ; $53a3: $14
    or $f6                                        ; $53a4: $f6 $f6
    add b                                         ; $53a6: $80
    ld a, [hl-]                                   ; $53a7: $3a
    rst $28                                       ; $53a8: $ef
    cp c                                          ; $53a9: $b9
    sbc e                                         ; $53aa: $9b
    ld a, [hl]                                    ; $53ab: $7e
    dec b                                         ; $53ac: $05
    ld l, l                                       ; $53ad: $6d
    rst $28                                       ; $53ae: $ef
    inc l                                         ; $53af: $2c
    ld [hl], $5e                                  ; $53b0: $36 $5e
    sub h                                         ; $53b2: $94
    ld [hl-], a                                   ; $53b3: $32
    sub [hl]                                      ; $53b4: $96
    adc [hl]                                      ; $53b5: $8e
    ld a, [de]                                    ; $53b6: $1a
    db $f4                                        ; $53b7: $f4
    and [hl]                                      ; $53b8: $a6
    cp d                                          ; $53b9: $ba
    ld hl, sp+$3f                                 ; $53ba: $f8 $3f
    ld [$e279], a                                 ; $53bc: $ea $79 $e2
    ld b, e                                       ; $53bf: $43
    ld d, c                                       ; $53c0: $51
    ld a, b                                       ; $53c1: $78
    or d                                          ; $53c2: $b2
    cp a                                          ; $53c3: $bf
    cp b                                          ; $53c4: $b8
    ei                                            ; $53c5: $fb
    push hl                                       ; $53c6: $e5
    ld c, e                                       ; $53c7: $4b
    ld a, c                                       ; $53c8: $79
    ld b, e                                       ; $53c9: $43
    ld d, $58                                     ; $53ca: $16 $58
    ld a, b                                       ; $53cc: $78
    ld c, h                                       ; $53cd: $4c
    sbc $90                                       ; $53ce: $de $90
    ld c, a                                       ; $53d0: $4f
    db $eb                                        ; $53d1: $eb
    rst $30                                       ; $53d2: $f7
    jp c, Jump_042_5a48                           ; $53d3: $da $48 $5a

    db $dd                                        ; $53d6: $dd
    dec de                                        ; $53d7: $1b
    inc b                                         ; $53d8: $04
    add d                                         ; $53d9: $82
    ld d, h                                       ; $53da: $54
    rla                                           ; $53db: $17
    rst $38                                       ; $53dc: $ff
    rst $00                                       ; $53dd: $c7
    ld sp, hl                                     ; $53de: $f9
    rrca                                          ; $53df: $0f
    add l                                         ; $53e0: $85
    daa                                           ; $53e1: $27
    ld [$46e2], a                                 ; $53e2: $ea $e2 $46
    ld a, [bc]                                    ; $53e5: $0a
    inc [hl]                                      ; $53e6: $34
    ld a, c                                       ; $53e7: $79
    ld h, e                                       ; $53e8: $63
    db $ec                                        ; $53e9: $ec
    jp hl                                         ; $53ea: $e9


    db $d3                                        ; $53eb: $d3
    ld a, [hl-]                                   ; $53ec: $3a
    ret z                                         ; $53ed: $c8

    adc c                                         ; $53ee: $89
    pop bc                                        ; $53ef: $c1
    pop de                                        ; $53f0: $d1
    dec b                                         ; $53f1: $05
    or $86                                        ; $53f2: $f6 $86

Jump_042_53f4:
    ld d, b                                       ; $53f4: $50
    ld sp, hl                                     ; $53f5: $f9
    ld a, b                                       ; $53f6: $78
    ld c, a                                       ; $53f7: $4f
    and e                                         ; $53f8: $a3
    halt                                          ; $53f9: $76
    ld a, [c]                                     ; $53fa: $f2
    ld d, c                                       ; $53fb: $51
    rla                                           ; $53fc: $17
    ld e, a                                       ; $53fd: $5f
    ld [hl], $68                                  ; $53fe: $36 $68
    ld a, [hl]                                    ; $5400: $7e
    inc b                                         ; $5401: $04
    xor c                                         ; $5402: $a9
    ld e, [hl]                                    ; $5403: $5e
    di                                            ; $5404: $f3
    ld e, a                                       ; $5405: $5f
    cp h                                          ; $5406: $bc
    ld e, a                                       ; $5407: $5f
    ld c, l                                       ; $5408: $4d
    cp c                                          ; $5409: $b9
    jr c, @+$41                                   ; $540a: $38 $3f

    ld [hl], d                                    ; $540c: $72
    dec sp                                        ; $540d: $3b
    adc e                                         ; $540e: $8b
    adc l                                         ; $540f: $8d
    rla                                           ; $5410: $17
    and l                                         ; $5411: $a5
    adc h                                         ; $5412: $8c
    ld hl, $b0cb                                  ; $5413: $21 $cb $b0
    ld b, c                                       ; $5416: $41
    xor a                                         ; $5417: $af
    ld b, a                                       ; $5418: $47
    sbc [hl]                                      ; $5419: $9e
    add h                                         ; $541a: $84
    ld b, l                                       ; $541b: $45
    dec a                                         ; $541c: $3d
    ld c, a                                       ; $541d: $4f
    ld a, $d5                                     ; $541e: $3e $d5
    ld c, l                                       ; $5420: $4d
    sub [hl]                                      ; $5421: $96
    ld d, a                                       ; $5422: $57
    add [hl]                                      ; $5423: $86
    ld a, [hl]                                    ; $5424: $7e
    dec b                                         ; $5425: $05
    ld [hl], l                                    ; $5426: $75
    ld hl, $5605                                  ; $5427: $21 $05 $56
    ld a, a                                       ; $542a: $7f
    ld e, [hl]                                    ; $542b: $5e
    db $db                                        ; $542c: $db
    sub a                                         ; $542d: $97
    ld c, $cc                                     ; $542e: $0e $cc
    ld l, l                                       ; $5430: $6d
    ld e, d                                       ; $5431: $5a
    dec l                                         ; $5432: $2d
    sub a                                         ; $5433: $97
    push hl                                       ; $5434: $e5
    ld a, [de]                                    ; $5435: $1a
    ld [$a9bf], sp                                ; $5436: $08 $bf $a9
    db $eb                                        ; $5439: $eb
    db $d3                                        ; $543a: $d3
    xor d                                         ; $543b: $aa
    xor b                                         ; $543c: $a8
    ei                                            ; $543d: $fb
    ld l, d                                       ; $543e: $6a
    ld [hl], h                                    ; $543f: $74
    xor c                                         ; $5440: $a9
    db $fd                                        ; $5441: $fd
    ld h, [hl]                                    ; $5442: $66
    inc b                                         ; $5443: $04
    ld l, d                                       ; $5444: $6a
    xor [hl]                                      ; $5445: $ae
    xor l                                         ; $5446: $ad
    sub [hl]                                      ; $5447: $96
    dec b                                         ; $5448: $05
    call z, $fab0                                 ; $5449: $cc $b0 $fa
    db $e3                                        ; $544c: $e3
    ld b, e                                       ; $544d: $43
    ld c, a                                       ; $544e: $4f
    sub a                                         ; $544f: $97
    jp c, $466f                                   ; $5450: $da $6f $46

    and b                                         ; $5453: $a0
    ld c, a                                       ; $5454: $4f
    sbc l                                         ; $5455: $9d
    sub c                                         ; $5456: $91
    inc a                                         ; $5457: $3c
    ld l, c                                       ; $5458: $69
    ld a, a                                       ; $5459: $7f
    pop de                                        ; $545a: $d1
    ld e, a                                       ; $545b: $5f
    add hl, de                                    ; $545c: $19
    ld c, l                                       ; $545d: $4d
    ld h, $0a                                     ; $545e: $26 $0a
    dec sp                                        ; $5460: $3b
    push de                                       ; $5461: $d5
    ld c, l                                       ; $5462: $4d
    cp $28                                        ; $5463: $fe $28
    ld c, a                                       ; $5465: $4f
    ld d, $58                                     ; $5466: $16 $58
    call c, $db88                                 ; $5468: $dc $88 $db
    ld d, h                                       ; $546b: $54
    pop bc                                        ; $546c: $c1
    db $10                                        ; $546d: $10
    ld a, [hl+]                                   ; $546e: $2a
    sub e                                         ; $546f: $93
    ld [c], a                                     ; $5470: $e2
    cp [hl]                                       ; $5471: $be
    jp nc, $c4df                                  ; $5472: $d2 $df $c4

    ld c, l                                       ; $5475: $4d
    xor c                                         ; $5476: $a9
    cpl                                           ; $5477: $2f
    dec b                                         ; $5478: $05
    push de                                       ; $5479: $d5
    or d                                          ; $547a: $b2
    rst $08                                       ; $547b: $cf
    and c                                         ; $547c: $a1
    ld e, a                                       ; $547d: $5f
    ld bc, $3fb5                                  ; $547e: $01 $b5 $3f

jr_042_5481:
    dec bc                                        ; $5481: $0b
    inc l                                         ; $5482: $2c
    xor $cb                                       ; $5483: $ee $cb
    add h                                         ; $5485: $84
    cp h                                          ; $5486: $bc
    jp nz, $c113                                  ; $5487: $c2 $13 $c1

    ld h, l                                       ; $548a: $65
    ld a, c                                       ; $548b: $79
    ld a, e                                       ; $548c: $7b
    ld c, l                                       ; $548d: $4d
    cp e                                          ; $548e: $bb
    ld d, b                                       ; $548f: $50
    add hl, bc                                    ; $5490: $09
    sbc l                                         ; $5491: $9d
    ld l, d                                       ; $5492: $6a
    ld [c], a                                     ; $5493: $e2
    db $fc                                        ; $5494: $fc
    adc b                                         ; $5495: $88
    add e                                         ; $5496: $83
    cp c                                          ; $5497: $b9
    daa                                           ; $5498: $27
    ccf                                           ; $5499: $3f
    ld [$4242], a                                 ; $549a: $ea $42 $42
    inc d                                         ; $549d: $14
    inc c                                         ; $549e: $0c
    and c                                         ; $549f: $a1
    ld a, [c]                                     ; $54a0: $f2
    pop af                                        ; $54a1: $f1
    sbc [hl]                                      ; $54a2: $9e
    ld b, [hl]                                    ; $54a3: $46
    db $ed                                        ; $54a4: $ed
    db $e4                                        ; $54a5: $e4
    and e                                         ; $54a6: $a3
    ld l, $be                                     ; $54a7: $2e $be
    ld l, h                                       ; $54a9: $6c
    ret nc                                        ; $54aa: $d0

    db $fc                                        ; $54ab: $fc
    ld [$bd52], sp                                ; $54ac: $08 $52 $bd
    and $bf                                       ; $54af: $e6 $bf
    ld a, b                                       ; $54b1: $78
    cp a                                          ; $54b2: $bf
    sbc d                                         ; $54b3: $9a
    ld [hl], d                                    ; $54b4: $72
    or l                                          ; $54b5: $b5
    ld d, [hl]                                    ; $54b6: $56
    sbc [hl]                                      ; $54b7: $9e
    ld b, $35                                     ; $54b8: $06 $35
    ld [hl], c                                    ; $54ba: $71
    ld a, [hl]                                    ; $54bb: $7e
    ld h, h                                       ; $54bc: $64
    ld sp, hl                                     ; $54bd: $f9
    ld d, d                                       ; $54be: $52
    ld l, $1b                                     ; $54bf: $2e $1b
    add hl, hl                                    ; $54c1: $29
    inc d                                         ; $54c2: $14
    pop de                                        ; $54c3: $d1
    ld l, [hl]                                    ; $54c4: $6e
    ld c, h                                       ; $54c5: $4c
    sbc [hl]                                      ; $54c6: $9e
    ld de, $65c1                                  ; $54c7: $11 $c1 $65
    ld sp, $7294                                  ; $54ca: $31 $94 $72
    ld d, c                                       ; $54cd: $51
    ret c                                         ; $54ce: $d8

    ei                                            ; $54cf: $fb
    db $d3                                        ; $54d0: $d3
    sub [hl]                                      ; $54d1: $96
    sbc l                                         ; $54d2: $9d
    ld l, b                                       ; $54d3: $68
    jp $afdc                                      ; $54d4: $c3 $dc $af


    ld [hl], l                                    ; $54d7: $75
    and [hl]                                      ; $54d8: $a6
    ld e, a                                       ; $54d9: $5f
    ld bc, $4675                                  ; $54da: $01 $75 $46
    ld d, d                                       ; $54dd: $52
    ld h, $8b                                     ; $54de: $26 $8b
    call Call_000_3762                            ; $54e0: $cd $62 $37
    ld d, c                                       ; $54e3: $51
    rla                                           ; $54e4: $17
    scf                                           ; $54e5: $37
    push hl                                       ; $54e6: $e5
    or e                                          ; $54e7: $b3
    cp h                                          ; $54e8: $bc
    db $ed                                        ; $54e9: $ed
    db $eb                                        ; $54ea: $eb
    ld d, a                                       ; $54eb: $57
    sbc l                                         ; $54ec: $9d
    ld b, d                                       ; $54ed: $42
    ld c, l                                       ; $54ee: $4d
    xor d                                         ; $54ef: $aa
    reti                                          ; $54f0: $d9


    db $fc                                        ; $54f1: $fc
    pop de                                        ; $54f2: $d1
    jr nz, jr_042_5481                            ; $54f3: $20 $8c

    jr c, jr_042_5536                             ; $54f5: $38 $3f

    ld [c], a                                     ; $54f7: $e2
    ld h, b                                       ; $54f8: $60
    xor $a3                                       ; $54f9: $ee $a3
    ld l, $24                                     ; $54fb: $2e $24
    ld b, h                                       ; $54fd: $44
    pop bc                                        ; $54fe: $c1
    db $10                                        ; $54ff: $10
    rst $28                                       ; $5500: $ef
    ld l, c                                       ; $5501: $69
    call nc, Call_000_104e                        ; $5502: $d4 $4e $10
    ld [hl], l                                    ; $5505: $75
    pop af                                        ; $5506: $f1
    ld h, l                                       ; $5507: $65
    add e                                         ; $5508: $83
    and $47                                       ; $5509: $e6 $47
    sub b                                         ; $550b: $90
    or $5f                                        ; $550c: $f6 $5f
    di                                            ; $550e: $f3
    ld e, a                                       ; $550f: $5f
    cp h                                          ; $5510: $bc
    ld e, a                                       ; $5511: $5f
    ld c, l                                       ; $5512: $4d
    cp c                                          ; $5513: $b9
    ld a, [hl]                                    ; $5514: $7e
    dec b                                         ; $5515: $05
    cp [hl]                                       ; $5516: $be
    daa                                           ; $5517: $27
    ld c, $f6                                     ; $5518: $0e $f6
    dec d                                         ; $551a: $15
    add h                                         ; $551b: $84
    and c                                         ; $551c: $a1
    adc e                                         ; $551d: $8b
    adc h                                         ; $551e: $8c
    and h                                         ; $551f: $a4
    ld b, [hl]                                    ; $5520: $46
    ld l, [hl]                                    ; $5521: $6e
    ld b, a                                       ; $5522: $47
    add e                                         ; $5523: $83
    ret nz                                        ; $5524: $c0

    db $10                                        ; $5525: $10
    ld [hl], l                                    ; $5526: $75
    ld [hl], c                                    ; $5527: $71
    ld d, e                                       ; $5528: $53
    sub b                                         ; $5529: $90
    adc a                                         ; $552a: $8f
    and e                                         ; $552b: $a3
    sub a                                         ; $552c: $97
    push bc                                       ; $552d: $c5
    ld d, b                                       ; $552e: $50
    ld a, b                                       ; $552f: $78
    ld a, [c]                                     ; $5530: $f2
    call z, $e210                                 ; $5531: $cc $10 $e2
    adc l                                         ; $5534: $8d
    and b                                         ; $5535: $a0

jr_042_5536:
    ld e, a                                       ; $5536: $5f
    ld bc, $4675                                  ; $5537: $01 $75 $46
    sub a                                         ; $553a: $97
    ld [$1653], a                                 ; $553b: $ea $53 $16
    sub h                                         ; $553e: $94
    ld [hl-], a                                   ; $553f: $32
    xor c                                         ; $5540: $a9
    ld l, $ea                                     ; $5541: $2e $ea
    ld a, [bc]                                    ; $5543: $0a
    db $db                                        ; $5544: $db
    ld l, e                                       ; $5545: $6b
    jp c, $2bf4                                   ; $5546: $da $f4 $2b

    db $ed                                        ; $5549: $ed
    ld e, a                                       ; $554a: $5f

jr_042_554b:
    ld a, [bc]                                    ; $554b: $0a
    ld a, [hl+]                                   ; $554c: $2a
    cp l                                          ; $554d: $bd
    ld a, l                                       ; $554e: $7d
    call nc, Call_042_49e5                        ; $554f: $d4 $e5 $49
    ld e, b                                       ; $5552: $58
    ret z                                         ; $5553: $c8

    dec hl                                        ; $5554: $2b
    inc a                                         ; $5555: $3c
    pop af                                        ; $5556: $f1
    and c                                         ; $5557: $a1
    cp a                                          ; $5558: $bf
    dec e                                         ; $5559: $1d
    sub l                                         ; $555a: $95
    adc c                                         ; $555b: $89
    jp nz, Jump_000_068e                          ; $555c: $c2 $8e $06

    add c                                         ; $555f: $81
    ld hl, $cb82                                  ; $5560: $21 $82 $cb
    ld h, d                                       ; $5563: $62
    jr z, jr_042_554b                             ; $5564: $28 $e5

    and d                                         ; $5566: $a2
    or b                                          ; $5567: $b0
    rst $30                                       ; $5568: $f7
    ld b, a                                       ; $5569: $47
    rst $38                                       ; $556a: $ff
    ld [c], a                                     ; $556b: $e2
    cp [hl]                                       ; $556c: $be
    ld e, a                                       ; $556d: $5f
    ld bc, $4f6d                                  ; $556e: $01 $6d $4f
    ld a, h                                       ; $5571: $7c
    dec sp                                        ; $5572: $3b
    xor b                                         ; $5573: $a8
    db $d3                                        ; $5574: $d3
    ld b, c                                       ; $5575: $41
    xor b                                         ; $5576: $a8
    add h                                         ; $5577: $84
    ld c, [hl]                                    ; $5578: $4e
    dec [hl]                                      ; $5579: $35
    ld [hl], c                                    ; $557a: $71
    ld a, [hl]                                    ; $557b: $7e
    call nz, $dcc1                                ; $557c: $c4 $c1 $dc
    ld b, a                                       ; $557f: $47
    ld e, l                                       ; $5580: $5d
    ld c, b                                       ; $5581: $48

jr_042_5582:
    adc b                                         ; $5582: $88
    add d                                         ; $5583: $82
    ld hl, $3e54                                  ; $5584: $21 $54 $3e
    sbc $d3                                       ; $5587: $de $d3
    xor b                                         ; $5589: $a8
    sbc l                                         ; $558a: $9d
    ld a, h                                       ; $558b: $7c
    call nc, $97c5                                ; $558c: $d4 $c5 $97
    dec c                                         ; $558f: $0d
    sbc d                                         ; $5590: $9a
    rra                                           ; $5591: $1f
    ld b, c                                       ; $5592: $41
    xor d                                         ; $5593: $aa
    rst $10                                       ; $5594: $d7
    db $fc                                        ; $5595: $fc
    rla                                           ; $5596: $17
    rst $28                                       ; $5597: $ef
    ld d, a                                       ; $5598: $57
    ld d, e                                       ; $5599: $53
    xor [hl]                                      ; $559a: $ae
    ld c, a                                       ; $559b: $4f
    ei                                            ; $559c: $fb
    sbc a                                         ; $559d: $9f
    ld [hl], d                                    ; $559e: $72
    ld h, c                                       ; $559f: $61
    dec de                                        ; $55a0: $1b
    ld a, [c]                                     ; $55a1: $f2
    inc hl                                        ; $55a2: $23

jr_042_55a3:
    ret c                                         ; $55a3: $d8

    ei                                            ; $55a4: $fb
    ld d, e                                       ; $55a5: $53
    db $dd                                        ; $55a6: $dd
    rst $00                                       ; $55a7: $c7
    ld a, l                                       ; $55a8: $7d
    dec b                                         ; $55a9: $05
    ei                                            ; $55aa: $fb
    xor b                                         ; $55ab: $a8
    ld c, e                                       ; $55ac: $4b
    add hl, sp                                    ; $55ad: $39
    ld b, a                                       ; $55ae: $47
    dec c                                         ; $55af: $0d
    ld b, h                                       ; $55b0: $44
    ld [c], a                                     ; $55b1: $e2
    rst $20                                       ; $55b2: $e7
    rst $30                                       ; $55b3: $f7
    or $38                                        ; $55b4: $f6 $38
    ld h, c                                       ; $55b6: $61
    sbc b                                         ; $55b7: $98
    ld c, h                                       ; $55b8: $4c
    inc d                                         ; $55b9: $14
    or $fe                                        ; $55ba: $f6 $fe
    or h                                          ; $55bc: $b4
    ld h, l                                       ; $55bd: $65
    daa                                           ; $55be: $27
    jp c, $f730                                   ; $55bf: $da $30 $f7

    pop af                                        ; $55c2: $f1
    ld b, l                                       ; $55c3: $45
    ret z                                         ; $55c4: $c8

    cp a                                          ; $55c5: $bf
    ld a, h                                       ; $55c6: $7c
    ld d, $83                                     ; $55c7: $16 $83
    jr z, jr_042_55a3                             ; $55c9: $28 $d8

    cp $a8                                        ; $55cb: $fe $a8
    ld c, a                                       ; $55cd: $4f
    sbc c                                         ; $55ce: $99
    dec a                                         ; $55cf: $3d
    cp d                                          ; $55d0: $ba
    ret c                                         ; $55d1: $d8

    add hl, hl                                    ; $55d2: $29
    ld l, d                                       ; $55d3: $6a
    ld d, [hl]                                    ; $55d4: $56
    ld a, a                                       ; $55d5: $7f
    ld l, [hl]                                    ; $55d6: $6e
    ld h, a                                       ; $55d7: $67
    ld sp, $8910                                  ; $55d8: $31 $10 $89
    inc de                                        ; $55db: $13
    push af                                       ; $55dc: $f5
    and c                                         ; $55dd: $a1
    ld a, [c]                                     ; $55de: $f2
    ld e, c                                       ; $55df: $59
    ld c, $6c                                     ; $55e0: $0e $6c
    rra                                           ; $55e2: $1f
    dec a                                         ; $55e3: $3d
    adc b                                         ; $55e4: $88
    di                                            ; $55e5: $f3
    sub [hl]                                      ; $55e6: $96
    ld c, a                                       ; $55e7: $4f
    inc de                                        ; $55e8: $13
    adc l                                         ; $55e9: $8d
    rst $00                                       ; $55ea: $c7
    ei                                            ; $55eb: $fb
    db $db                                        ; $55ec: $db
    ld e, l                                       ; $55ed: $5d
    cp a                                          ; $55ee: $bf
    ld [bc], a                                    ; $55ef: $02
    xor l                                         ; $55f0: $ad
    ld a, e                                       ; $55f1: $7b
    cp h                                          ; $55f2: $bc
    ld [hl], e                                    ; $55f3: $73
    ld h, e                                       ; $55f4: $63
    ld l, d                                       ; $55f5: $6a
    ld a, [$6d15]                                 ; $55f6: $fa $15 $6d
    jr c, jr_042_5582                             ; $55f9: $38 $87

    cp l                                          ; $55fb: $bd
    ld hl, $3e8c                                  ; $55fc: $21 $8c $3e
    ld l, l                                       ; $55ff: $6d
    ld [$7ddb], sp                                ; $5600: $08 $db $7d
    dec [hl]                                      ; $5603: $35
    ld sp, hl                                     ; $5604: $f9
    cp l                                          ; $5605: $bd
    ccf                                           ; $5606: $3f
    ld l, l                                       ; $5607: $6d
    reti                                          ; $5608: $d9


    adc c                                         ; $5609: $89
    ld [hl], $cc                                  ; $560a: $36 $cc
    ld b, c                                       ; $560c: $41
    ld hl, sp-$0e                                 ; $560d: $f8 $f2
    sub h                                         ; $560f: $94
    rst $00                                       ; $5610: $c7
    adc [hl]                                      ; $5611: $8e
    ld c, b                                       ; $5612: $48
    add h                                         ; $5613: $84
    push de                                       ; $5614: $d5
    sbc a                                         ; $5615: $9f
    rrca                                          ; $5616: $0f
    add h                                         ; $5617: $84
    db $ed                                        ; $5618: $ed
    dec c                                         ; $5619: $0d
    ld de, $fdec                                  ; $561a: $11 $ec $fd
    xor c                                         ; $561d: $a9
    xor $e3                                       ; $561e: $ee $e3
    cp [hl]                                       ; $5620: $be
    add d                                         ; $5621: $82
    ld a, l                                       ; $5622: $7d
    call nc, $9ca5                                ; $5623: $d4 $a5 $9c
    and e                                         ; $5626: $a3
    ld b, $22                                     ; $5627: $06 $22
    pop af                                        ; $5629: $f1
    ei                                            ; $562a: $fb
    dec d                                         ; $562b: $15
    dec e                                         ; $562c: $1d
    and e                                         ; $562d: $a3
    sbc d                                         ; $562e: $9a
    xor b                                         ; $562f: $a8
    adc e                                         ; $5630: $8b
    adc h                                         ; $5631: $8c
    ld h, h                                       ; $5632: $64
    sbc c                                         ; $5633: $99
    ld d, d                                       ; $5634: $52
    and b                                         ; $5635: $a0
    ld h, b                                       ; $5636: $60
    ld [$8f95], sp                                ; $5637: $08 $95 $8f
    dec sp                                        ; $563a: $3b
    xor a                                         ; $563b: $af
    ld a, l                                       ; $563c: $7d
    inc d                                         ; $563d: $14
    halt                                          ; $563e: $76
    inc [hl]                                      ; $563f: $34
    ld [$fd0c], sp                                ; $5640: $08 $0c $fd
    ld a, [bc]                                    ; $5643: $0a
    dec l                                         ; $5644: $2d
    add a                                         ; $5645: $87
    ld c, d                                       ; $5646: $4a
    ld c, b                                       ; $5647: $48
    ret c                                         ; $5648: $d8

    ld h, h                                       ; $5649: $64
    add c                                         ; $564a: $81
    ld [hl], e                                    ; $564b: $73
    rst $08                                       ; $564c: $cf
    db $d3                                        ; $564d: $d3
    and a                                         ; $564e: $a7
    db $e3                                        ; $564f: $e3
    ld sp, $f8f9                                  ; $5650: $31 $f9 $f8
    ret nc                                        ; $5653: $d0

    rla                                           ; $5654: $17
    dec [hl]                                      ; $5655: $35
    ld [hl], c                                    ; $5656: $71
    ret z                                         ; $5657: $c8

    or $78                                        ; $5658: $f6 $78
    jp nc, $fafe                                  ; $565a: $d2 $fe $fa

    or h                                          ; $565d: $b4
    ld a, a                                       ; $565e: $7f
    ld h, c                                       ; $565f: $61
    dec de                                        ; $5660: $1b
    ld [de], a                                    ; $5661: $12
    or $17                                        ; $5662: $f6 $17
    rra                                           ; $5664: $1f
    ld a, d                                       ; $5665: $7a
    db $fd                                        ; $5666: $fd
    ld a, [bc]                                    ; $5667: $0a
    db $ed                                        ; $5668: $ed
    ld a, l                                       ; $5669: $7d
    cp h                                          ; $566a: $bc
    and a                                         ; $566b: $a7
    ld d, c                                       ; $566c: $51
    dec sp                                        ; $566d: $3b
    ld sp, hl                                     ; $566e: $f9
    cp b                                          ; $566f: $b8
    add hl, hl                                    ; $5670: $29
    db $fc                                        ; $5671: $fc
    ld l, c                                       ; $5672: $69
    and d                                         ; $5673: $a2
    pop af                                        ; $5674: $f1
    ld a, b                                       ; $5675: $78
    ld a, a                                       ; $5676: $7f
    cp e                                          ; $5677: $bb
    db $d3                                        ; $5678: $d3
    and l                                         ; $5679: $a5
    ld a, [$48c8]                                 ; $567a: $fa $c8 $48
    sub [hl]                                      ; $567d: $96
    add hl, hl                                    ; $567e: $29
    push hl                                       ; $567f: $e5
    and b                                         ; $5680: $a0
    ld h, $3e                                     ; $5681: $26 $3e
    inc d                                         ; $5683: $14
    sub a                                         ; $5684: $97
    ld [hl-], a                                   ; $5685: $32
    ld e, e                                       ; $5686: $5b
    ld e, l                                       ; $5687: $5d
    sbc a                                         ; $5688: $9f
    cp d                                          ; $5689: $ba
    jp $c286                                      ; $568a: $c3 $86 $c2


    sub a                                         ; $568d: $97
    push bc                                       ; $568e: $c5
    ld d, b                                       ; $568f: $50
    ld hl, sp-$53                                 ; $5690: $f8 $ad
    jp nz, Jump_042_5abe                          ; $5692: $c2 $be $5a

    dec hl                                        ; $5695: $2b
    cp [hl]                                       ; $5696: $be
    push af                                       ; $5697: $f5
    push af                                       ; $5698: $f5
    dec hl                                        ; $5699: $2b
    sbc [hl]                                      ; $569a: $9e
    ld d, e                                       ; $569b: $53
    ld a, $cb                                     ; $569c: $3e $cb
    sub h                                         ; $569e: $94
    ld [hl-], a                                   ; $569f: $32
    pop af                                        ; $56a0: $f1
    cp [hl]                                       ; $56a1: $be
    ld hl, $2c0b                                  ; $56a2: $21 $0b $2c
    dec de                                        ; $56a5: $1b
    ld d, a                                       ; $56a6: $57
    ld l, e                                       ; $56a7: $6b
    dec b                                         ; $56a8: $05
    ld l, l                                       ; $56a9: $6d
    rst $28                                       ; $56aa: $ef
    sub h                                         ; $56ab: $94
    db $d3                                        ; $56ac: $d3
    ld h, h                                       ; $56ad: $64
    inc l                                         ; $56ae: $2c
    ld [hl], l                                    ; $56af: $75
    add a                                         ; $56b0: $87
    add hl, de                                    ; $56b1: $19
    sub [hl]                                      ; $56b2: $96
    ld a, [de]                                    ; $56b3: $1a
    ld a, c                                       ; $56b4: $79
    jp z, $4763                                   ; $56b5: $ca $63 $47

    inc h                                         ; $56b8: $24
    ld a, $4f                                     ; $56b9: $3e $4f
    ld e, [hl]                                    ; $56bb: $5e
    push hl                                       ; $56bc: $e5
    sbc l                                         ; $56bd: $9d
    add e                                         ; $56be: $83
    add d                                         ; $56bf: $82
    ld hl, $f7bf                                  ; $56c0: $21 $bf $f7
    and a                                         ; $56c3: $a7
    cp d                                          ; $56c4: $ba
    adc a                                         ; $56c5: $8f
    ei                                            ; $56c6: $fb
    ld a, [bc]                                    ; $56c7: $0a
    or $51                                        ; $56c8: $f6 $51
    sub a                                         ; $56ca: $97
    ld [hl], d                                    ; $56cb: $72
    adc [hl]                                      ; $56cc: $8e
    ld a, [de]                                    ; $56cd: $1a
    adc b                                         ; $56ce: $88
    call nz, $65d7                                ; $56cf: $c4 $d7 $65
    ld a, a                                       ; $56d2: $7f
    add h                                         ; $56d3: $84
    ld d, [hl]                                    ; $56d4: $56
    or b                                          ; $56d5: $b0
    ld c, c                                       ; $56d6: $49
    dec bc                                        ; $56d7: $0b
    dec l                                         ; $56d8: $2d
    inc [hl]                                      ; $56d9: $34
    xor a                                         ; $56da: $af
    dec bc                                        ; $56db: $0b
    ld a, [c]                                     ; $56dc: $f2
    or c                                          ; $56dd: $b1
    db $e3                                        ; $56de: $e3
    or e                                          ; $56df: $b3
    scf                                           ; $56e0: $37
    ld h, h                                       ; $56e1: $64
    ld a, a                                       ; $56e2: $7f
    cp h                                          ; $56e3: $bc
    and a                                         ; $56e4: $a7
    ld d, c                                       ; $56e5: $51
    dec sp                                        ; $56e6: $3b
    ld sp, hl                                     ; $56e7: $f9
    xor b                                         ; $56e8: $a8
    adc e                                         ; $56e9: $8b
    cpl                                           ; $56ea: $2f
    dec de                                        ; $56eb: $1b
    inc [hl]                                      ; $56ec: $34
    ccf                                           ; $56ed: $3f
    add d                                         ; $56ee: $82
    ld d, h                                       ; $56ef: $54
    xor a                                         ; $56f0: $af
    ld sp, hl                                     ; $56f1: $f9
    cpl                                           ; $56f2: $2f
    sbc $af                                       ; $56f3: $de $af
    and [hl]                                      ; $56f5: $a6
    ld e, h                                       ; $56f6: $5c
    cp a                                          ; $56f7: $bf
    ld [bc], a                                    ; $56f8: $02
    ld [hl], l                                    ; $56f9: $75
    and a                                         ; $56fa: $a7
    sub h                                         ; $56fb: $94
    add hl, bc                                    ; $56fc: $09
    add hl, bc                                    ; $56fd: $09
    dec b                                         ; $56fe: $05
    ld b, e                                       ; $56ff: $43
    or $a7                                        ; $5700: $f6 $a7
    ret nc                                        ; $5702: $d0

    adc a                                         ; $5703: $8f
    di                                            ; $5704: $f3
    rst $18                                       ; $5705: $df
    sub e                                         ; $5706: $93
    ret nc                                        ; $5707: $d0

    and l                                         ; $5708: $a5
    sbc h                                         ; $5709: $9c
    ld h, $63                                     ; $570a: $26 $63
    xor b                                         ; $570c: $a8
    or l                                          ; $570d: $b5
    ld [bc], a                                    ; $570e: $02
    ld l, l                                       ; $570f: $6d
    jr c, jr_042_5749                             ; $5710: $38 $37

    ei                                            ; $5712: $fb
    ei                                            ; $5713: $fb
    or h                                          ; $5714: $b4
    cp l                                          ; $5715: $bd
    ld d, e                                       ; $5716: $53
    ld c, [hl]                                    ; $5717: $4e
    sub e                                         ; $5718: $93
    or c                                          ; $5719: $b1
    call nc, Call_042_661d                        ; $571a: $d4 $1d $66
    ld e, b                                       ; $571d: $58
    ld e, [hl]                                    ; $571e: $5e
    sub h                                         ; $571f: $94
    push de                                       ; $5720: $d5
    inc de                                        ; $5721: $13
    push af                                       ; $5722: $f5
    add hl, hl                                    ; $5723: $29
    or e                                          ; $5724: $b3
    and a                                         ; $5725: $a7
    ld c, a                                       ; $5726: $4f
    xor e                                         ; $5727: $ab

Jump_042_5728:
    ld e, c                                       ; $5728: $59
    xor [hl]                                      ; $5729: $ae
    add c                                         ; $572a: $81
    ldh a, [$9b]                                  ; $572b: $f0 $9b
    ld a, [hl-]                                   ; $572d: $3a
    ld e, l                                       ; $572e: $5d
    ld l, d                                       ; $572f: $6a
    cp a                                          ; $5730: $bf
    add hl, de                                    ; $5731: $19
    add c                                         ; $5732: $81
    ld a, [hl]                                    ; $5733: $7e
    dec b                                         ; $5734: $05
    db $ed                                        ; $5735: $ed
    rst $08                                       ; $5736: $cf
    and $89                                       ; $5737: $e6 $89
    ld e, $82                                     ; $5739: $1e $82
    ld a, $ad                                     ; $573b: $3e $ad
    adc d                                         ; $573d: $8a
    ld [hl-], a                                   ; $573e: $32
    ld d, h                                       ; $573f: $54
    inc de                                        ; $5740: $13
    pop bc                                        ; $5741: $c1
    sbc $1f                                       ; $5742: $de $1f
    and c                                         ; $5744: $a1
    ld b, e                                       ; $5745: $43
    ld a, [hl]                                    ; $5746: $7e
    sbc $f0                                       ; $5747: $de $f0

jr_042_5749:
    ld d, c                                       ; $5749: $51
    sub a                                         ; $574a: $97
    ld [hl], d                                    ; $574b: $72
    adc [hl]                                      ; $574c: $8e
    ld a, [de]                                    ; $574d: $1a
    adc b                                         ; $574e: $88
    call nz, $d3ef                                ; $574f: $c4 $ef $d3
    cp $a5                                        ; $5752: $fe $a5
    ld b, b                                       ; $5754: $40
    and e                                         ; $5755: $a3
    rst $18                                       ; $5756: $df
    xor a                                         ; $5757: $af
    db $ed                                        ; $5758: $ed
    ld a, l                                       ; $5759: $7d
    call c, $b057                                 ; $575a: $dc $57 $b0
    adc a                                         ; $575d: $8f
    ld a, [hl]                                    ; $575e: $7e
    sbc a                                         ; $575f: $9f
    xor b                                         ; $5760: $a8
    rst $20                                       ; $5761: $e7
    ld c, a                                       ; $5762: $4f
    dec bc                                        ; $5763: $0b
    dec l                                         ; $5764: $2d
    inc [hl]                                      ; $5765: $34
    sbc a                                         ; $5766: $9f
    ld a, [de]                                    ; $5767: $1a
    ld d, c                                       ; $5768: $51
    rra                                           ; $5769: $1f
    rra                                           ; $576a: $1f
    adc d                                         ; $576b: $8a
    jp nz, $e59f                                  ; $576c: $c2 $9f $e5

    adc l                                         ; $576f: $8d
    pop de                                        ; $5770: $d1
    and a                                         ; $5771: $a7
    dec c                                         ; $5772: $0d
    ld h, c                                       ; $5773: $61
    cp e                                          ; $5774: $bb
    sub h                                         ; $5775: $94
    reti                                          ; $5776: $d9


    inc de                                        ; $5777: $13
    pop bc                                        ; $5778: $c1
    sbc $1f                                       ; $5779: $de $1f
    rst $30                                       ; $577b: $f7
    dec d                                         ; $577c: $15
    db $ec                                        ; $577d: $ec
    or e                                          ; $577e: $b3
    ret nz                                        ; $577f: $c0

    ld [c], a                                     ; $5780: $e2
    add sp, -$3b                                  ; $5781: $e8 $c5
    rst $38                                       ; $5783: $ff
    reti                                          ; $5784: $d9


    ld e, $4f                                     ; $5785: $1e $4f
    ld a, c                                       ; $5787: $79
    db $ec                                        ; $5788: $ec
    adc b                                         ; $5789: $88
    call nz, $de27                                ; $578a: $c4 $27 $de
    ld [$b4fa], sp                                ; $578d: $08 $fa $b4

Jump_042_5790:
    rst $30                                       ; $5790: $f7
    ld l, c                                       ; $5791: $69
    bit 1, [hl]                                   ; $5792: $cb $4e
    or h                                          ; $5794: $b4
    ld h, c                                       ; $5795: $61
    adc [hl]                                      ; $5796: $8e
    adc h                                         ; $5797: $8c
    and h                                         ; $5798: $a4
    ld b, [hl]                                    ; $5799: $46
    inc c                                         ; $579a: $0c
    ld h, l                                       ; $579b: $65
    add hl, de                                    ; $579c: $19
    add hl, hl                                    ; $579d: $29
    xor a                                         ; $579e: $af
    cp a                                          ; $579f: $bf
    adc l                                         ; $57a0: $8d
    inc l                                         ; $57a1: $2c
    or b                                          ; $57a2: $b0
    db $ec                                        ; $57a3: $ec
    rst $08                                       ; $57a4: $cf
    ld [bc], a                                    ; $57a5: $02
    ld d, e                                       ; $57a6: $53
    rst $00                                       ; $57a7: $c7
    rra                                           ; $57a8: $1f
    ld [hl], l                                    ; $57a9: $75
    add hl, de                                    ; $57aa: $19
    ld c, l                                       ; $57ab: $4d
    inc bc                                        ; $57ac: $03
    di                                            ; $57ad: $f3
    ld h, l                                       ; $57ae: $65
    and d                                         ; $57af: $a2
    ld l, $6f                                     ; $57b0: $2e $6f
    ld a, h                                       ; $57b2: $7c
    db $fd                                        ; $57b3: $fd
    ld a, [bc]                                    ; $57b4: $0a
    cp [hl]                                       ; $57b5: $be
    inc hl                                        ; $57b6: $23
    inc de                                        ; $57b7: $13
    add [hl]                                      ; $57b8: $86
    reti                                          ; $57b9: $d9


    jp hl                                         ; $57ba: $e9


    ld l, a                                       ; $57bb: $6f
    ld d, a                                       ; $57bc: $57
    db $10                                        ; $57bd: $10
    ld b, [hl]                                    ; $57be: $46
    inc d                                         ; $57bf: $14
    jp z, $e7ec                                   ; $57c0: $ca $ec $e7

    pop de                                        ; $57c3: $d1
    and l                                         ; $57c4: $a5
    sbc h                                         ; $57c5: $9c
    ld h, $63                                     ; $57c6: $26 $63
    ret nc                                        ; $57c8: $d0

    and l                                         ; $57c9: $a5
    ld a, [$9028]                                 ; $57ca: $fa $28 $90
    inc de                                        ; $57cd: $13
    ld e, $93                                     ; $57ce: $1e $93
    scf                                           ; $57d0: $37
    ld b, h                                       ; $57d1: $44
    or b                                          ; $57d2: $b0
    or a                                          ; $57d3: $b7
    rst $00                                       ; $57d4: $c7
    or e                                          ; $57d5: $b3
    db $dd                                        ; $57d6: $dd
    db $f4                                        ; $57d7: $f4
    dec hl                                        ; $57d8: $2b
    db $ed                                        ; $57d9: $ed
    ld e, a                                       ; $57da: $5f
    jp z, $ef72                                   ; $57db: $ca $72 $ef

    and b                                         ; $57de: $a0
    adc e                                         ; $57df: $8b
    rrca                                          ; $57e0: $0f
    ld b, l                                       ; $57e1: $45
    pop hl                                        ; $57e2: $e1
    ld c, c                                       ; $57e3: $49
    ld e, c                                       ; $57e4: $59
    add $18                                       ; $57e5: $c6 $18
    ld a, e                                       ; $57e7: $7b

Call_042_57e8:
    ld c, a                                       ; $57e8: $4f
    ld l, d                                       ; $57e9: $6a
    call nz, $8ff9                                ; $57ea: $c4 $f9 $8f
    sub [hl]                                      ; $57ed: $96
    jp hl                                         ; $57ee: $e9


    ld d, a                                       ; $57ef: $57
    sbc l                                         ; $57f0: $9d
    cp [hl]                                       ; $57f1: $be
    ld a, [$defc]                                 ; $57f2: $fa $fc $de
    sub e                                         ; $57f5: $93
    or d                                          ; $57f6: $b2
    adc h                                         ; $57f7: $8c
    ld sp, $9ef6                                  ; $57f8: $31 $f6 $9e
    inc d                                         ; $57fb: $14
    ld [$4a1c], a                                 ; $57fc: $ea $1c $4a
    add hl, sp                                    ; $57ff: $39
    ld [hl], d                                    ; $5800: $72
    ld [hl], h                                    ; $5801: $74
    ld e, c                                       ; $5802: $59
    ld h, b                                       ; $5803: $60
    pop af                                        ; $5804: $f1
    ld a, $39                                     ; $5805: $3e $39
    add [hl]                                      ; $5807: $86
    ld a, [hl]                                    ; $5808: $7e
    dec b                                         ; $5809: $05
    sbc l                                         ; $580a: $9d
    cp [hl]                                       ; $580b: $be
    ld a, [$defc]                                 ; $580c: $fa $fc $de
    sub e                                         ; $580f: $93
    or d                                          ; $5810: $b2
    adc h                                         ; $5811: $8c
    ld sp, $9ef6                                  ; $5812: $31 $f6 $9e
    inc l                                         ; $5815: $2c
    ld b, $07                                     ; $5816: $06 $07
    dec b                                         ; $5818: $05
    ld h, c                                       ; $5819: $61
    add sp, -$4e                                  ; $581a: $e8 $b2
    ret nz                                        ; $581c: $c0

    ld [c], a                                     ; $581d: $e2
    ld a, l                                       ; $581e: $7d
    ld [hl], d                                    ; $581f: $72
    inc c                                         ; $5820: $0c
    db $fd                                        ; $5821: $fd
    ld a, [bc]                                    ; $5822: $0a
    db $ed                                        ; $5823: $ed
    ld e, a                                       ; $5824: $5f
    jp z, $ef72                                   ; $5825: $ca $72 $ef

    and b                                         ; $5828: $a0
    ld c, e                                       ; $5829: $4b
    add hl, sp                                    ; $582a: $39
    ld c, l                                       ; $582b: $4d
    add $d0                                       ; $582c: $c6 $d0
    and a                                         ; $582e: $a7
    db $ed                                        ; $582f: $ed
    sbc l                                         ; $5830: $9d
    ld [$0626], a                                 ; $5831: $ea $26 $06
    db $ed                                        ; $5834: $ed
    ld a, [bc]                                    ; $5835: $0a
    db $db                                        ; $5836: $db
    di                                            ; $5837: $f3
    jr @-$5c                                      ; $5838: $18 $a2

    ld l, $ee                                     ; $583a: $2e $ee
    ld c, e                                       ; $583c: $4b

jr_042_583d:
    ld sp, hl                                     ; $583d: $f9
    call nc, Call_000_0d88                        ; $583e: $d4 $88 $0d
    di                                            ; $5841: $f3
    db $f4                                        ; $5842: $f4
    dec hl                                        ; $5843: $2b
    cp [hl]                                       ; $5844: $be
    ld a, h                                       ; $5845: $7c
    sbc a                                         ; $5846: $9f
    ld h, a                                       ; $5847: $67
    add [hl]                                      ; $5848: $86
    ldh a, [$e8]                                  ; $5849: $f0 $e8
    ld d, d                                       ; $584b: $52
    ld c, [hl]                                    ; $584c: $4e
    sub e                                         ; $584d: $93
    ld sp, $69f4                                  ; $584e: $31 $f4 $69
    ld a, e                                       ; $5851: $7b
    ld b, a                                       ; $5852: $47
    and [hl]                                      ; $5853: $a6
    or b                                          ; $5854: $b0
    ld c, l                                       ; $5855: $4d
    add h                                         ; $5856: $84
    ld c, $39                                     ; $5857: $0e $39
    ld e, c                                       ; $5859: $59
    sbc [hl]                                      ; $585a: $9e
    cp h                                          ; $585b: $bc
    ld a, [bc]                                    ; $585c: $0a
    jp nz, Jump_000_1a93                          ; $585d: $c2 $93 $1a

    ld a, c                                       ; $5860: $79
    ld [hl], c                                    ; $5861: $71
    ld h, e                                       ; $5862: $63
    sbc a                                         ; $5863: $9f
    ld l, d                                       ; $5864: $6a
    ld [hl], $4f                                  ; $5865: $36 $4f
    adc d                                         ; $5867: $8a
    dec sp                                        ; $5868: $3b
    ld [hl], d                                    ; $5869: $72
    or $94                                        ; $586a: $f6 $94
    jp hl                                         ; $586c: $e9


    ld d, a                                       ; $586d: $57
    or l                                          ; $586e: $b5
    rst $38                                       ; $586f: $ff
    or d                                          ; $5870: $b2
    jr jr_042_583d                                ; $5871: $18 $ca

    ld h, h                                       ; $5873: $64
    ld a, a                                       ; $5874: $7f
    cp h                                          ; $5875: $bc
    and a                                         ; $5876: $a7
    ld d, c                                       ; $5877: $51
    dec sp                                        ; $5878: $3b
    ld sp, hl                                     ; $5879: $f9
    ld e, d                                       ; $587a: $5a
    dec hl                                        ; $587b: $2b
    ld [hl], l                                    ; $587c: $75
    and [hl]                                      ; $587d: $a6
    ld e, a                                       ; $587e: $5f
    ld bc, $c1ad                                  ; $587f: $01 $ad $c1
    xor a                                         ; $5882: $af
    adc e                                         ; $5883: $8b
    add e                                         ; $5884: $83
    cp c                                          ; $5885: $b9
    adc a                                         ; $5886: $8f
    cp d                                          ; $5887: $ba
    ld a, b                                       ; $5888: $78
    rst $18                                       ; $5889: $df
    sub b                                         ; $588a: $90
    sub e                                         ; $588b: $93
    ld a, b                                       ; $588c: $78
    dec c                                         ; $588d: $0d
    call z, $a7df                                 ; $588e: $cc $df $a7
    adc $48                                       ; $5891: $ce $48
    sub [hl]                                      ; $5893: $96
    add hl, hl                                    ; $5894: $29
    ld h, l                                       ; $5895: $65
    ld d, d                                       ; $5896: $52
    ld hl, sp+$0d                                 ; $5897: $f8 $0d
    pop af                                        ; $5899: $f1
    and c                                         ; $589a: $a1
    rla                                           ; $589b: $17
    and [hl]                                      ; $589c: $a6
    call z, $db93                                 ; $589d: $cc $93 $db
    pop de                                        ; $58a0: $d1
    ld l, [hl]                                    ; $58a1: $6e
    ld c, h                                       ; $58a2: $4c
    and [hl]                                      ; $58a3: $a6
    ld e, a                                       ; $58a4: $5f
    ld bc, $d21d                                  ; $58a5: $01 $1d $d2
    rla                                           ; $58a8: $17
    dec [hl]                                      ; $58a9: $35
    ld a, c                                       ; $58aa: $79
    jp nc, $e2fe                                  ; $58ab: $d2 $fe $e2

    dec a                                         ; $58ae: $3d
    add hl, sp                                    ; $58af: $39
    ld e, $5d                                     ; $58b0: $1e $5d
    ld l, d                                       ; $58b2: $6a
    cp a                                          ; $58b3: $bf
    add hl, de                                    ; $58b4: $19
    ld bc, $965d                                  ; $58b5: $01 $5d $96
    ld h, c                                       ; $58b8: $61
    ld b, e                                       ; $58b9: $43
    dec [hl]                                      ; $58ba: $35
    pop hl                                        ; $58bb: $e1
    ld sp, $4379                                  ; $58bc: $31 $79 $43
    ld a, $b5                                     ; $58bf: $3e $b5
    ld b, a                                       ; $58c1: $47
    db $eb                                        ; $58c2: $eb
    xor $8d                                       ; $58c3: $ee $8d
    ld c, e                                       ; $58c5: $4b
    cp a                                          ; $58c6: $bf
    ld [bc], a                                    ; $58c7: $02
    ld l, l                                       ; $58c8: $6d
    ret c                                         ; $58c9: $d8

    push bc                                       ; $58ca: $c5
    adc l                                         ; $58cb: $8d
    cp b                                          ; $58cc: $b8
    ld a, e                                       ; $58cd: $7b
    sbc [hl]                                      ; $58ce: $9e
    ld d, h                                       ; $58cf: $54
    or e                                          ; $58d0: $b3
    ld a, c                                       ; $58d1: $79
    ld d, d                                       ; $58d2: $52
    db $fd                                        ; $58d3: $fd
    add [hl]                                      ; $58d4: $86
    ld l, $d5                                     ; $58d5: $2e $d5
    rst $20                                       ; $58d7: $e7
    dec d                                         ; $58d8: $15
    ld c, d                                       ; $58d9: $4a
    sbc c                                         ; $58da: $99
    ld l, h                                       ; $58db: $6c
    add h                                         ; $58dc: $84
    add hl, hl                                    ; $58dd: $29
    ld [c], a                                     ; $58de: $e2
    add l                                         ; $58df: $85
    dec e                                         ; $58e0: $1d
    inc hl                                        ; $58e1: $23
    ld h, l                                       ; $58e2: $65
    ld h, h                                       ; $58e3: $64
    ld d, d                                       ; $58e4: $52
    ld hl, sp+$19                                 ; $58e5: $f8 $19
    pop de                                        ; $58e7: $d1
    add sp, -$25                                  ; $58e8: $e8 $db
    ld sp, $15fa                                  ; $58ea: $31 $fa $15
    dec l                                         ; $58ed: $2d
    ld h, a                                       ; $58ee: $67
    ld sp, hl                                     ; $58ef: $f9
    ld d, d                                       ; $58f0: $52
    sbc [hl]                                      ; $58f1: $9e
    daa                                           ; $58f2: $27
    ld [$fef7], a                                 ; $58f3: $ea $f7 $fe
    ld l, b                                       ; $58f6: $68
    db $f4                                        ; $58f7: $f4
    db $ed                                        ; $58f8: $ed
    ret c                                         ; $58f9: $d8

    adc $41                                       ; $58fa: $ce $41
    rla                                           ; $58fc: $17
    ld [de], a                                    ; $58fd: $12
    ld l, d                                       ; $58fe: $6a
    ld a, [$b515]                                 ; $58ff: $fa $15 $b5
    ccf                                           ; $5902: $3f
    ld d, h                                       ; $5903: $54
    ld a, [c]                                     ; $5904: $f2
    ld h, l                                       ; $5905: $65
    ld bc, $44f3                                  ; $5906: $01 $f3 $44
    pop bc                                        ; $5909: $c1
    ld e, l                                       ; $590a: $5d
    ld sp, hl                                     ; $590b: $f9
    ld a, [bc]                                    ; $590c: $0a
    jp nz, Jump_042_7548                          ; $590d: $c2 $48 $75

    jp c, Jump_000_31be                           ; $5910: $da $be $31

    call nz, Call_000_2cae                        ; $5913: $c4 $ae $2c
    ld h, b                                       ; $5916: $60
    sbc [hl]                                      ; $5917: $9e
    db $fc                                        ; $5918: $fc
    sbc $1e                                       ; $5919: $de $1e
    ld [hl], h                                    ; $591b: $74
    di                                            ; $591c: $f3
    ld d, l                                       ; $591d: $55
    rra                                           ; $591e: $1f
    ld [hl], d                                    ; $591f: $72
    ld [hl], $7f                                  ; $5920: $36 $7f
    sbc h                                         ; $5922: $9c
    rra                                           ; $5923: $1f
    ld [hl], c                                    ; $5924: $71
    sub a                                         ; $5925: $97
    ld [hl], d                                    ; $5926: $72
    ld e, a                                       ; $5927: $5f
    ld c, l                                       ; $5928: $4d
    ret z                                         ; $5929: $c8

    dec hl                                        ; $592a: $2b
    ld a, h                                       ; $592b: $7c
    cp d                                          ; $592c: $ba
    sub h                                         ; $592d: $94
    db $d3                                        ; $592e: $d3
    ld h, h                                       ; $592f: $64
    inc c                                         ; $5930: $0c
    db $fd                                        ; $5931: $fd
    ld a, [bc]                                    ; $5932: $0a
    db $ed                                        ; $5933: $ed
    ld e, a                                       ; $5934: $5f
    sbc [hl]                                      ; $5935: $9e
    ld l, d                                       ; $5936: $6a
    call nc, $ce26                                ; $5937: $d4 $26 $ce
    adc a                                         ; $593a: $8f
    inc l                                         ; $593b: $2c
    ld d, e                                       ; $593c: $53
    jp z, Jump_042_49e7                           ; $593d: $ca $e7 $49

    jr @-$4c                                      ; $5940: $18 $b2

    ld e, h                                       ; $5942: $5c
    inc bc                                        ; $5943: $03
    pop af                                        ; $5944: $f1
    adc [hl]                                      ; $5945: $8e
    ld sp, $8f95                                  ; $5946: $31 $95 $8f
    ld h, b                                       ; $5949: $60
    rst $28                                       ; $594a: $ef
    rst $08                                       ; $594b: $cf
    ld h, d                                       ; $594c: $62
    ld d, e                                       ; $594d: $53
    jp z, Jump_000_1f55                           ; $594e: $ca $55 $1f

    db $fd                                        ; $5951: $fd
    inc sp                                        ; $5952: $33
    cp a                                          ; $5953: $bf
    or [hl]                                       ; $5954: $b6
    rst $28                                       ; $5955: $ef

jr_042_5956:
    ld [hl], l                                    ; $5956: $75
    add hl, hl                                    ; $5957: $29
    and a                                         ; $5958: $a7
    ret                                           ; $5959: $c9


    jr jr_042_5956                                ; $595a: $18 $fa

    dec d                                         ; $595c: $15
    sbc [hl]                                      ; $595d: $9e
    inc hl                                        ; $595e: $23
    rlca                                          ; $595f: $07
    ld b, e                                       ; $5960: $43
    dec [hl]                                      ; $5961: $35
    and c                                         ; $5962: $a1
    ld a, [c]                                     ; $5963: $f2
    xor c                                         ; $5964: $a9
    ld b, [hl]                                    ; $5965: $46
    ret nz                                        ; $5966: $c0

    rra                                           ; $5967: $1f
    scf                                           ; $5968: $37
    ld d, l                                       ; $5969: $55
    add l                                         ; $596a: $85
    ld l, d                                       ; $596b: $6a
    db $ec                                        ; $596c: $ec
    ld sp, hl                                     ; $596d: $f9
    ret z                                         ; $596e: $c8

    rst $08                                       ; $596f: $cf
    ld c, c                                       ; $5970: $49
    ld a, [bc]                                    ; $5971: $0a
    sbc l                                         ; $5972: $9d
    adc h                                         ; $5973: $8c
    adc h                                         ; $5974: $8c
    ld b, c                                       ; $5975: $41

jr_042_5976:
    sub a                                         ; $5976: $97
    add d                                         ; $5977: $82
    cp b                                          ; $5978: $b8
    ld de, $a13e                                  ; $5979: $11 $3e $a1
    sbc a                                         ; $597c: $9f
    rst $08                                       ; $597d: $cf
    ld [bc], a                                    ; $597e: $02
    ld d, e                                       ; $597f: $53
    jr nc, jr_042_5976                            ; $5980: $30 $f4

    dec hl                                        ; $5982: $2b
    cp [hl]                                       ; $5983: $be
    dec bc                                        ; $5984: $0b
    ld l, h                                       ; $5985: $6c
    ld [c], a                                     ; $5986: $e2
    db $fc                                        ; $5987: $fc
    adc b                                         ; $5988: $88
    rrca                                          ; $5989: $0f
    ld b, l                                       ; $598a: $45
    pop hl                                        ; $598b: $e1
    rrca                                          ; $598c: $0f
    add hl, sp                                    ; $598d: $39
    sbc e                                         ; $598e: $9b
    ccf                                           ; $598f: $3f
    ei                                            ; $5990: $fb
    ld d, e                                       ; $5991: $53
    add $18                                       ; $5992: $c6 $18
    reti                                          ; $5994: $d9


    ld c, b                                       ; $5995: $48
    add hl, de                                    ; $5996: $19
    or e                                          ; $5997: $b3
    ld d, e                                       ; $5998: $53
    xor a                                         ; $5999: $af
    ld c, e                                       ; $599a: $4b
    add hl, sp                                    ; $599b: $39
    ld c, l                                       ; $599c: $4d
    add $d0                                       ; $599d: $c6 $d0
    xor a                                         ; $599f: $af
    cp [hl]                                       ; $59a0: $be
    dec bc                                        ; $59a1: $0b
    ld l, h                                       ; $59a2: $6c
    ld [c], a                                     ; $59a3: $e2
    db $fc                                        ; $59a4: $fc
    adc b                                         ; $59a5: $88
    rrca                                          ; $59a6: $0f
    ld b, l                                       ; $59a7: $45
    pop hl                                        ; $59a8: $e1
    adc a                                         ; $59a9: $8f
    cp $99                                        ; $59aa: $fe $99
    ld e, a                                       ; $59ac: $5f
    db $db                                        ; $59ad: $db
    rst $30                                       ; $59ae: $f7
    sub c                                         ; $59af: $91
    sub c                                         ; $59b0: $91
    sub b                                         ; $59b1: $90
    xor a                                         ; $59b2: $af
    ld a, $1f                                     ; $59b3: $3e $1f
    rst $28                                       ; $59b5: $ef
    ret                                           ; $59b6: $c9


    add hl, de                                    ; $59b7: $19
    ld [c], a                                     ; $59b8: $e2
    and [hl]                                      ; $59b9: $a6
    ld b, d                                       ; $59ba: $42
    or [hl]                                       ; $59bb: $b6
    rlca                                          ; $59bc: $07
    db $dd                                        ; $59bd: $dd
    ld a, h                                       ; $59be: $7c
    push de                                       ; $59bf: $d5
    add a                                         ; $59c0: $87
    sbc h                                         ; $59c1: $9c
    call Call_042_4baf                            ; $59c2: $cd $af $4b
    add hl, sp                                    ; $59c5: $39
    ld c, l                                       ; $59c6: $4d
    add $d0                                       ; $59c7: $c6 $d0
    xor a                                         ; $59c9: $af
    xor l                                         ; $59ca: $ad
    ld d, [hl]                                    ; $59cb: $56
    push de                                       ; $59cc: $d5
    reti                                          ; $59cd: $d9


    db $e4                                        ; $59ce: $e4
    halt                                          ; $59cf: $76
    ld a, [bc]                                    ; $59d0: $0a
    sbc l                                         ; $59d1: $9d
    cp b                                          ; $59d2: $b8
    or c                                          ; $59d3: $b1
    rst $10                                       ; $59d4: $d7
    or h                                          ; $59d5: $b4
    dec de                                        ; $59d6: $1b
    ld e, l                                       ; $59d7: $5d
    jp z, Jump_000_3269                           ; $59d8: $ca $69 $32

    add [hl]                                      ; $59db: $86
    ld a, [hl]                                    ; $59dc: $7e
    dec b                                         ; $59dd: $05
    sbc l                                         ; $59de: $9d
    ld b, d                                       ; $59df: $42
    ld c, l                                       ; $59e0: $4d
    sbc h                                         ; $59e1: $9c
    rra                                           ; $59e2: $1f
    add hl, hl                                    ; $59e3: $29
    sub a                                         ; $59e4: $97
    push bc                                       ; $59e5: $c5
    or b                                          ; $59e6: $b0
    cp h                                          ; $59e7: $bc
    ld a, l                                       ; $59e8: $7d
    ld d, $58                                     ; $59e9: $16 $58
    xor b                                         ; $59eb: $a8
    ld a, h                                       ; $59ec: $7c
    add h                                         ; $59ed: $84
    ld c, $f9                                     ; $59ee: $0e $f9
    pop de                                        ; $59f0: $d1
    ccf                                           ; $59f1: $3f
    di                                            ; $59f2: $f3
    ld l, e                                       ; $59f3: $6b
    ei                                            ; $59f4: $fb
    ld e, [hl]                                    ; $59f5: $5e
    sub a                                         ; $59f6: $97
    ld [hl], d                                    ; $59f7: $72
    sbc d                                         ; $59f8: $9a
    adc h                                         ; $59f9: $8c
    and c                                         ; $59fa: $a1
    ld e, a                                       ; $59fb: $5f
    ld bc, $e1ed                                  ; $59fc: $01 $ed $e1
    ld [hl+], a                                   ; $59ff: $22
    inc hl                                        ; $5a00: $23
    xor c                                         ; $5a01: $a9
    ld de, $e307                                  ; $5a02: $11 $07 $e3
    add hl, bc                                    ; $5a05: $09
    sub l                                         ; $5a06: $95
    adc c                                         ; $5a07: $89
    di                                            ; $5a08: $f3
    inc hl                                        ; $5a09: $23
    push hl                                       ; $5a0a: $e5
    and d                                         ; $5a0b: $a2
    ld [$02c9], a                                 ; $5a0c: $ea $c9 $02
    dec bc                                        ; $5a0f: $0b
    ld a, c                                       ; $5a10: $79
    jp nz, $ef13                                  ; $5a11: $c2 $13 $ef

    cp e                                          ; $5a14: $bb
    db $db                                        ; $5a15: $db
    dec d                                         ; $5a16: $15
    add h                                         ; $5a17: $84
    and c                                         ; $5a18: $a1
    ld c, e                                       ; $5a19: $4b
    add hl, sp                                    ; $5a1a: $39
    ld c, l                                       ; $5a1b: $4d
    add $d0                                       ; $5a1c: $c6 $d0
    xor a                                         ; $5a1e: $af
    sbc [hl]                                      ; $5a1f: $9e
    ld b, $35                                     ; $5a20: $06 $35
    ld [hl], c                                    ; $5a22: $71
    ld a, [hl]                                    ; $5a23: $7e
    ld h, h                                       ; $5a24: $64
    xor h                                         ; $5a25: $ac
    ld a, [$fecb]                                 ; $5a26: $fa $cb $fe
    ld l, b                                       ; $5a29: $68
    db $f4                                        ; $5a2a: $f4
    db $ed                                        ; $5a2b: $ed

jr_042_5a2c:
    ret c                                         ; $5a2c: $d8

    adc $21                                       ; $5a2d: $ce $21
    ei                                            ; $5a2f: $fb
    db $e3                                        ; $5a30: $e3
    ld b, [hl]                                    ; $5a31: $46
    and [hl]                                      ; $5a32: $a6
    cp b                                          ; $5a33: $b8
    ld c, a                                       ; $5a34: $4f
    dec [hl]                                      ; $5a35: $35
    sbc e                                         ; $5a36: $9b
    daa                                           ; $5a37: $27
    ld a, d                                       ; $5a38: $7a
    ld [$2974], sp                                ; $5a39: $08 $74 $29
    and a                                         ; $5a3c: $a7
    ret                                           ; $5a3d: $c9


    jr @-$04                                      ; $5a3e: $18 $fa

    dec d                                         ; $5a40: $15
    cp [hl]                                       ; $5a41: $be
    db $fc                                        ; $5a42: $fc
    ld d, c                                       ; $5a43: $51
    ld b, a                                       ; $5a44: $47
    ld b, d                                       ; $5a45: $42
    ld hl, sp+$45                                 ; $5a46: $f8 $45

Jump_042_5a48:
    ld c, l                                       ; $5a48: $4d
    ld l, [hl]                                    ; $5a49: $6e
    ld b, a                                       ; $5a4a: $47
    and [hl]                                      ; $5a4b: $a6
    or b                                          ; $5a4c: $b0
    ld c, l                                       ; $5a4d: $4d
    xor d                                         ; $5a4e: $aa
    db $d3                                        ; $5a4f: $d3
    or $8d                                        ; $5a50: $f6 $8d
    ld hl, $1f6e                                  ; $5a52: $21 $6e $1f
    add h                                         ; $5a55: $84
    and c                                         ; $5a56: $a1
    ld c, e                                       ; $5a57: $4b
    add hl, sp                                    ; $5a58: $39
    ld c, l                                       ; $5a59: $4d
    add $d0                                       ; $5a5a: $c6 $d0
    xor a                                         ; $5a5c: $af
    or l                                          ; $5a5d: $b5
    rst $38                                       ; $5a5e: $ff
    or d                                          ; $5a5f: $b2
    jr jr_042_5a2c                                ; $5a60: $18 $ca

    ld h, h                                       ; $5a62: $64
    ld a, a                                       ; $5a63: $7f
    cp h                                          ; $5a64: $bc
    and a                                         ; $5a65: $a7
    ld d, c                                       ; $5a66: $51
    dec sp                                        ; $5a67: $3b
    ld sp, hl                                     ; $5a68: $f9
    ld e, d                                       ; $5a69: $5a
    dec hl                                        ; $5a6a: $2b
    cp [hl]                                       ; $5a6b: $be
    push af                                       ; $5a6c: $f5
    push af                                       ; $5a6d: $f5
    ld l, c                                       ; $5a6e: $69
    jp $c9b9                                      ; $5a6f: $c3 $b9 $c9


    cp $38                                        ; $5a72: $fe $38
    rst $38                                       ; $5a74: $ff
    dec a                                         ; $5a75: $3d
    adc c                                         ; $5a76: $89
    ld a, $be                                     ; $5a77: $3e $be
    cp a                                          ; $5a79: $bf
    add b                                         ; $5a7a: $80
    db $fc                                        ; $5a7b: $fc
    jr c, jr_042_5abd                             ; $5a7c: $38 $3f

    ld [hl+], a                                   ; $5a7e: $22
    ret c                                         ; $5a7f: $d8

    ei                                            ; $5a80: $fb
    ld d, e                                       ; $5a81: $53
    add sp, -$39                                  ; $5a82: $e8 $c7
    ld a, l                                       ; $5a84: $7d
    dec b                                         ; $5a85: $05
    ei                                            ; $5a86: $fb
    add sp, -$09                                  ; $5a87: $e8 $f7
    adc c                                         ; $5a89: $89
    ld a, d                                       ; $5a8a: $7a
    cp $c0                                        ; $5a8b: $fe $c0
    ld a, $f2                                     ; $5a8d: $3e $f2
    push bc                                       ; $5a8f: $c5
    ld c, l                                       ; $5a90: $4d
    pop hl                                        ; $5a91: $e1
    add hl, bc                                    ; $5a92: $09
    sub l                                         ; $5a93: $95
    ld d, h                                       ; $5a94: $54
    ld d, e                                       ; $5a95: $53
    ret c                                         ; $5a96: $d8

    and [hl]                                      ; $5a97: $a6
    sub $0a                                       ; $5a98: $d6 $0a
    sbc [hl]                                      ; $5a9a: $9e
    jr nc, @-$60                                  ; $5a9b: $30 $9e

    jr c, jr_042_5ade                             ; $5a9d: $38 $3f

    ld [hl+], a                                   ; $5a9f: $22
    db $d3                                        ; $5aa0: $d3
    and a                                         ; $5aa1: $a7
    dec c                                         ; $5aa2: $0d
    sbc e                                         ; $5aa3: $9b
    cp b                                          ; $5aa4: $b8
    ld de, $84f2                                  ; $5aa5: $11 $f2 $84
    daa                                           ; $5aa8: $27
    adc $8f                                       ; $5aa9: $ce $8f
    db $ec                                        ; $5aab: $ec
    ld c, a                                       ; $5aac: $4f
    ld e, e                                       ; $5aad: $5b
    halt                                          ; $5aae: $76
    and d                                         ; $5aaf: $a2
    dec c                                         ; $5ab0: $0d
    ld [hl], e                                    ; $5ab1: $73
    sbc [hl]                                      ; $5ab2: $9e
    ld b, h                                       ; $5ab3: $44

Call_042_5ab4:
    add hl, hl                                    ; $5ab4: $29
    adc b                                         ; $5ab5: $88
    jp nz, Jump_042_5ca5                          ; $5ab6: $c2 $a5 $5c

    ld h, c                                       ; $5ab9: $61
    ld d, h                                       ; $5aba: $54
    rla                                           ; $5abb: $17
    ld [hl], l                                    ; $5abc: $75

jr_042_5abd:
    ld [hl], c                                    ; $5abd: $71

Jump_042_5abe:
    inc hl                                        ; $5abe: $23
    ld l, h                                       ; $5abf: $6c
    or e                                          ; $5ac0: $b3
    rst $30                                       ; $5ac1: $f7
    ld b, h                                       ; $5ac2: $44
    pop bc                                        ; $5ac3: $c1
    ld e, l                                       ; $5ac4: $5d
    ld sp, hl                                     ; $5ac5: $f9
    ld a, [bc]                                    ; $5ac6: $0a
    jp nz, Jump_042_7548                          ; $5ac7: $c2 $48 $75

    jp c, $b1be                                   ; $5aca: $da $be $b1

    db $eb                                        ; $5acd: $eb
    db $d3                                        ; $5ace: $d3
    or $8e                                        ; $5acf: $f6 $8e
    ld c, h                                       ; $5ad1: $4c
    ld h, c                                       ; $5ad2: $61
    sbc e                                         ; $5ad3: $9b
    cp h                                          ; $5ad4: $bc
    rst $10                                       ; $5ad5: $d7
    ei                                            ; $5ad6: $fb

Call_042_5ad7:
    add [hl]                                      ; $5ad7: $86
    call nc, $1b88                                ; $5ad8: $d4 $88 $1b
    ld [hl], c                                    ; $5adb: $71
    sbc e                                         ; $5adc: $9b
    sub [hl]                                      ; $5add: $96

jr_042_5ade:
    jp hl                                         ; $5ade: $e9


    db $d3                                        ; $5adf: $d3
    pop af                                        ; $5ae0: $f1
    push hl                                       ; $5ae1: $e5
    xor c                                         ; $5ae2: $a9
    ld b, [hl]                                    ; $5ae3: $46
    ld l, l                                       ; $5ae4: $6d
    ld b, d                                       ; $5ae5: $42
    dec h                                         ; $5ae6: $25
    ld a, d                                       ; $5ae7: $7a
    ld a, [hl-]                                   ; $5ae8: $3a
    ld [de], a                                    ; $5ae9: $12
    ld a, [c]                                     ; $5aea: $f2
    ld e, [hl]                                    ; $5aeb: $5e
    db $d3                                        ; $5aec: $d3
    ld l, [hl]                                    ; $5aed: $6e
    and d                                         ; $5aee: $a2
    ld l, $76                                     ; $5aef: $2e $76
    inc a                                         ; $5af1: $3c
    ld h, $93                                     ; $5af2: $26 $93
    ld c, a                                       ; $5af4: $4f
    db $ed                                        ; $5af5: $ed
    pop de                                        ; $5af6: $d1
    cp d                                          ; $5af7: $ba
    ld a, e                                       ; $5af8: $7b
    db $e3                                        ; $5af9: $e3
    jp nc, $adaf                                  ; $5afa: $d2 $af $ad

    ld [$f7f5], a                                 ; $5afd: $ea $f5 $f7
    push de                                       ; $5b00: $d5
    call nz, Call_042_727b                        ; $5b01: $c4 $7b $72
    inc a                                         ; $5b04: $3c
    cp d                                          ; $5b05: $ba
    call nc, $337e                                ; $5b06: $d4 $7e $33
    ld [bc], a                                    ; $5b09: $02
    or l                                          ; $5b0a: $b5
    ld d, [hl]                                    ; $5b0b: $56
    sbc [hl]                                      ; $5b0c: $9e
    ld b, $35                                     ; $5b0d: $06 $35
    ld d, c                                       ; $5b0f: $51
    sub a                                         ; $5b10: $97
    ld d, d                                       ; $5b11: $52
    ld e, a                                       ; $5b12: $5f
    sbc a                                         ; $5b13: $9f
    ld d, [hl]                                    ; $5b14: $56
    push bc                                       ; $5b15: $c5
    ld sp, hl                                     ; $5b16: $f9
    sub c                                         ; $5b17: $91
    add d                                         ; $5b18: $82
    jr nc, jr_042_5b80                            ; $5b19: $30 $65

    sbc [hl]                                      ; $5b1b: $9e
    ld d, h                                       ; $5b1c: $54
    sub a                                         ; $5b1d: $97
    add d                                         ; $5b1e: $82
    ld c, d                                       ; $5b1f: $4a
    ld l, a                                       ; $5b20: $6f

jr_042_5b21:
    rra                                           ; $5b21: $1f
    scf                                           ; $5b22: $37
    and l                                         ; $5b23: $a5
    cp [hl]                                       ; $5b24: $be
    inc d                                         ; $5b25: $14
    or [hl]                                       ; $5b26: $b6
    sub a                                         ; $5b27: $97
    jp hl                                         ; $5b28: $e9


    ei                                            ; $5b29: $fb
    ld a, [hl]                                    ; $5b2a: $7e
    dec b                                         ; $5b2b: $05
    db $ed                                        ; $5b2c: $ed
    ld a, l                                       ; $5b2d: $7d
    xor d                                         ; $5b2e: $aa
    ei                                            ; $5b2f: $fb
    or b                                          ; $5b30: $b0
    db $fd                                        ; $5b31: $fd
    or d                                          ; $5b32: $b2
    call z, $d4fe                                 ; $5b33: $cc $fe $d4
    ld c, b                                       ; $5b36: $48
    ld [hl], l                                    ; $5b37: $75
    dec b                                         ; $5b38: $05
    or $15                                        ; $5b39: $f6 $15
    add h                                         ; $5b3b: $84
    ld de, $efef                                  ; $5b3c: $11 $ef $ef
    ld a, l                                       ; $5b3f: $7d
    db $fc                                        ; $5b40: $fc
    ld a, l                                       ; $5b41: $7d
    ld a, h                                       ; $5b42: $7c
    ld [hl], c                                    ; $5b43: $71
    ld e, c                                       ; $5b44: $59
    xor [hl]                                      ; $5b45: $ae
    add c                                         ; $5b46: $81
    ld a, b                                       ; $5b47: $78
    rst $00                                       ; $5b48: $c7
    jr jr_042_5b9c                                ; $5b49: $18 $51

    rla                                           ; $5b4b: $17
    rra                                           ; $5b4c: $1f
    ld a, [$93c2]                                 ; $5b4d: $fa $c2 $93
    dec b                                         ; $5b50: $05
    ld d, d                                       ; $5b51: $52
    cp [hl]                                       ; $5b52: $be
    sub h                                         ; $5b53: $94
    db $d3                                        ; $5b54: $d3
    and l                                         ; $5b55: $a5
    or $9b                                        ; $5b56: $f6 $9b
    ld de, $dd48                                  ; $5b58: $11 $48 $dd
    ld h, c                                       ; $5b5b: $61
    add [hl]                                      ; $5b5c: $86
    push af                                       ; $5b5d: $f5
    dec hl                                        ; $5b5e: $2b
    cp [hl]                                       ; $5b5f: $be
    res 0, [hl]                                   ; $5b60: $cb $86
    xor b                                         ; $5b62: $a8
    ld d, e                                       ; $5b63: $53
    rra                                           ; $5b64: $1f
    db $ed                                        ; $5b65: $ed
    add $e4                                       ; $5b66: $c6 $e4
    ld sp, hl                                     ; $5b68: $f9
    ld [hl], l                                    ; $5b69: $75
    sub c                                         ; $5b6a: $91
    sub c                                         ; $5b6b: $91
    or b                                          ; $5b6c: $b0
    dec c                                         ; $5b6d: $0d
    ld a, c                                       ; $5b6e: $79
    or l                                          ; $5b6f: $b5
    ld d, [hl]                                    ; $5b70: $56
    db $ed                                        ; $5b71: $ed
    ld e, a                                       ; $5b72: $5f
    db $ec                                        ; $5b73: $ec
    call c, $9a98                                 ; $5b74: $dc $98 $9a
    ld e, h                                       ; $5b77: $5c
    jr @-$29                                      ; $5b78: $18 $d5

    ld [hl], d                                    ; $5b7a: $72
    add hl, sp                                    ; $5b7b: $39
    adc c                                         ; $5b7c: $89
    and e                                         ; $5b7d: $a3
    rla                                           ; $5b7e: $17
    ret c                                         ; $5b7f: $d8

jr_042_5b80:
    and h                                         ; $5b80: $a4
    jr nc, jr_042_5bd8                            ; $5b81: $30 $55

    db $10                                        ; $5b83: $10
    ld b, [hl]                                    ; $5b84: $46
    ld a, $b5                                     ; $5b85: $3e $b5
    ld b, a                                       ; $5b87: $47
    db $eb                                        ; $5b88: $eb
    xor $8d                                       ; $5b89: $ee $8d
    ld c, e                                       ; $5b8b: $4b
    sbc a                                         ; $5b8c: $9f
    or [hl]                                       ; $5b8d: $b6
    or e                                          ; $5b8e: $b3
    ld a, h                                       ; $5b8f: $7c
    add hl, hl                                    ; $5b90: $29
    xor a                                         ; $5b91: $af
    ld l, c                                       ; $5b92: $69
    sub a                                         ; $5b93: $97
    ld [bc], a                                    ; $5b94: $02
    call $97c0                                    ; $5b95: $cd $c0 $97
    ld [$c0b2], a                                 ; $5b98: $ea $b2 $c0

jr_042_5b9b:
    ld a, [hl+]                                   ; $5b9b: $2a

jr_042_5b9c:
    jr nc, jr_042_5b21                            ; $5b9c: $30 $83

    ld a, h                                       ; $5b9e: $7c
    sbc c                                         ; $5b9f: $99
    xor b                                         ; $5ba0: $a8
    res 3, e                                      ; $5ba1: $cb $9b
    dec e                                         ; $5ba3: $1d
    ld sp, hl                                     ; $5ba4: $f9
    add [hl]                                      ; $5ba5: $86
    sbc h                                         ; $5ba6: $9c
    call nz, Call_000_2fed                        ; $5ba7: $c4 $ed $2f
    dec b                                         ; $5baa: $05
    ld e, c                                       ; $5bab: $59
    xor [hl]                                      ; $5bac: $ae
    add c                                         ; $5bad: $81
    ret c                                         ; $5bae: $d8

jr_042_5baf:
    cpl                                           ; $5baf: $2f
    and a                                         ; $5bb0: $a7
    cp [hl]                                       ; $5bb1: $be
    add d                                         ; $5bb2: $82
    jr nc, jr_042_5baf                            ; $5bb3: $30 $fa

    dec d                                         ; $5bb5: $15
    dec e                                         ; $5bb6: $1d
    db $fd                                        ; $5bb7: $fd
    jp nz, $a963                                  ; $5bb8: $c2 $63 $a9

    ld de, $132a                                  ; $5bbb: $11 $2a $13
    add l                                         ; $5bbe: $85
    dec bc                                        ; $5bbf: $0b
    db $d3                                        ; $5bc0: $d3
    cp c                                          ; $5bc1: $b9
    inc l                                         ; $5bc2: $2c
    ld [hl], $5e                                  ; $5bc3: $36 $5e
    sub h                                         ; $5bc5: $94
    ld [hl-], a                                   ; $5bc6: $32
    halt                                          ; $5bc7: $76
    or l                                          ; $5bc8: $b5
    jp nc, Jump_000_079e                          ; $5bc9: $d2 $9e $07

    db $dd                                        ; $5bcc: $dd
    ld a, h                                       ; $5bcd: $7c
    push de                                       ; $5bce: $d5
    add a                                         ; $5bcf: $87
    sbc h                                         ; $5bd0: $9c
    call $e71f                                    ; $5bd1: $cd $1f $e7
    ld b, a                                       ; $5bd4: $47
    or [hl]                                       ; $5bd5: $b6
    add a                                         ; $5bd6: $87
    ld a, a                                       ; $5bd7: $7f

jr_042_5bd8:
    ld b, d                                       ; $5bd8: $42
    ld e, [hl]                                    ; $5bd9: $5e

jr_042_5bda:
    pop hl                                        ; $5bda: $e1
    ld c, c                                       ; $5bdb: $49
    ld [hl], l                                    ; $5bdc: $75
    xor c                                         ; $5bdd: $a9
    sub c                                         ; $5bde: $91
    add d                                         ; $5bdf: $82
    ld c, d                                       ; $5be0: $4a
    ld l, a                                       ; $5be1: $6f
    rst $08                                       ; $5be2: $cf
    sub e                                         ; $5be3: $93
    push hl                                       ; $5be4: $e5
    jr z, jr_042_5bda                             ; $5be5: $28 $f3

    inc d                                         ; $5be7: $14
    sbc [hl]                                      ; $5be8: $9e
    inc d                                         ; $5be9: $14
    or [hl]                                       ; $5bea: $b6
    sub a                                         ; $5beb: $97
    jp hl                                         ; $5bec: $e9


    ld d, a                                       ; $5bed: $57
    db $ed                                        ; $5bee: $ed
    ld a, c                                       ; $5bef: $79
    db $fc                                        ; $5bf0: $fc
    ld h, [hl]                                    ; $5bf1: $66
    ei                                            ; $5bf2: $fb
    ret z                                         ; $5bf3: $c8

    jr nc, jr_042_5c19                            ; $5bf4: $30 $23

    cp $09                                        ; $5bf6: $fe $09
    ld a, c                                       ; $5bf8: $79
    add l                                         ; $5bf9: $85
    daa                                           ; $5bfa: $27
    ld d, h                                       ; $5bfb: $54
    ld a, $7b                                     ; $5bfc: $3e $7b
    adc d                                         ; $5bfe: $8a
    ei                                            ; $5bff: $fb
    ld a, b                                       ; $5c00: $78
    ld c, a                                       ; $5c01: $4f
    and e                                         ; $5c02: $a3
    or $b1                                        ; $5c03: $f6 $b1
    inc de                                        ; $5c05: $13
    ld a, [hl]                                    ; $5c06: $7e
    ld a, c                                       ; $5c07: $79
    dec hl                                        ; $5c08: $2b
    rla                                           ; $5c09: $17
    push af                                       ; $5c0a: $f5
    pop af                                        ; $5c0b: $f1
    and c                                         ; $5c0c: $a1
    jr z, jr_042_5b9b                             ; $5c0d: $28 $8c

    inc l                                         ; $5c0f: $2c
    ld l, a                                       ; $5c10: $6f
    ld a, h                                       ; $5c11: $7c
    ld a, l                                       ; $5c12: $7d
    jp c, Jump_042_78ff                           ; $5c13: $da $ff $78

    rst $00                                       ; $5c16: $c7
    ld a, [bc]                                    ; $5c17: $0a
    ld d, d                                       ; $5c18: $52

jr_042_5c19:
    inc hl                                        ; $5c19: $23
    add l                                         ; $5c1a: $85
    sbc a                                         ; $5c1b: $9f
    ccf                                           ; $5c1c: $3f
    ld h, l                                       ; $5c1d: $65
    or $84                                        ; $5c1e: $f6 $84
    jp z, $bc87                                   ; $5c20: $ca $87 $bc

    ld [hl], d                                    ; $5c23: $72
    inc hl                                        ; $5c24: $23
    add sp, $57                                   ; $5c25: $e8 $57
    db $ed                                        ; $5c27: $ed
    ld a, c                                       ; $5c28: $79
    db $fc                                        ; $5c29: $fc
    ld h, [hl]                                    ; $5c2a: $66
    ei                                            ; $5c2b: $fb
    ret z                                         ; $5c2c: $c8

    jr nc, jr_042_5c52                            ; $5c2d: $30 $23

    add l                                         ; $5c2f: $85
    sbc a                                         ; $5c30: $9f
    sbc h                                         ; $5c31: $9c
    inc d                                         ; $5c32: $14
    rst $28                                       ; $5c33: $ef
    ld l, b                                       ; $5c34: $68
    ei                                            ; $5c35: $fb
    ld e, [hl]                                    ; $5c36: $5e
    call nc, Call_042_76e4                        ; $5c37: $d4 $e4 $76
    xor d                                         ; $5c3a: $aa
    sbc e                                         ; $5c3b: $9b
    sub b                                         ; $5c3c: $90
    ld [hl], b                                    ; $5c3d: $70
    adc $7f                                       ; $5c3e: $ce $7f
    sub e                                         ; $5c40: $93
    ld [hl], $67                                  ; $5c41: $36 $67
    rst $18                                       ; $5c43: $df
    and h                                         ; $5c44: $a4
    db $fd                                        ; $5c45: $fd
    rst $10                                       ; $5c46: $d7
    xor [hl]                                      ; $5c47: $ae
    ld c, a                                       ; $5c48: $4f
    ld e, l                                       ; $5c49: $5d
    ld l, d                                       ; $5c4a: $6a
    ld l, h                                       ; $5c4b: $6c
    or e                                          ; $5c4c: $b3
    inc l                                         ; $5c4d: $2c
    and e                                         ; $5c4e: $a3
    rlc d                                         ; $5c4f: $cb $02
    xor e                                         ; $5c51: $ab

jr_042_5c52:
    ld e, a                                       ; $5c52: $5f
    rla                                           ; $5c53: $17
    rst $38                                       ; $5c54: $ff
    ld b, h                                       ; $5c55: $44
    ld e, l                                       ; $5c56: $5d
    dec b                                         ; $5c57: $05
    pop hl                                        ; $5c58: $e1
    ld [hl], e                                    ; $5c59: $73
    rst $08                                       ; $5c5a: $cf
    inc de                                        ; $5c5b: $13
    and [hl]                                      ; $5c5c: $a6
    call z, $46c8                                 ; $5c5d: $cc $c8 $46
    call c, $fa54                                 ; $5c60: $dc $54 $fa
    sub e                                         ; $5c63: $93
    daa                                           ; $5c64: $27
    sbc $c8                                       ; $5c65: $de $c8
    and l                                         ; $5c67: $a5
    ld a, d                                       ; $5c68: $7a
    db $ed                                        ; $5c69: $ed
    sbc h                                         ; $5c6a: $9c
    rra                                           ; $5c6b: $1f
    pop af                                        ; $5c6c: $f1
    jp c, Jump_000_2367                           ; $5c6d: $da $67 $23

    sbc $d3                                       ; $5c70: $de $d3
    xor b                                         ; $5c72: $a8
    sbc l                                         ; $5c73: $9d
    and b                                         ; $5c74: $a0
    ld e, a                                       ; $5c75: $5f
    ld bc, $5fad                                  ; $5c76: $01 $ad $5f
    add h                                         ; $5c79: $84
    ld c, $39                                     ; $5c7a: $0e $39
    pop af                                        ; $5c7c: $f1
    and c                                         ; $5c7d: $a1
    and a                                         ; $5c7e: $a7
    ld c, e                                       ; $5c7f: $4b
    db $ed                                        ; $5c80: $ed
    scf                                           ; $5c81: $37
    inc hl                                        ; $5c82: $23
    ld d, b                                       ; $5c83: $50
    dec hl                                        ; $5c84: $2b
    dec l                                         ; $5c85: $2d
    and a                                         ; $5c86: $a7
    and b                                         ; $5c87: $a0
    ld e, d                                       ; $5c88: $5a
    inc c                                         ; $5c89: $0c
    and c                                         ; $5c8a: $a1
    sub d                                         ; $5c8b: $92
    push hl                                       ; $5c8c: $e5
    sbc $c1                                       ; $5c8d: $de $c1
    db $10                                        ; $5c8f: $10
    ld [de], a                                    ; $5c90: $12
    ld a, [bc]                                    ; $5c91: $0a
    add [hl]                                      ; $5c92: $86
    ld d, b                                       ; $5c93: $50
    ld c, c                                       ; $5c94: $49
    db $dd                                        ; $5c95: $dd
    ld h, c                                       ; $5c96: $61
    add [hl]                                      ; $5c97: $86
    push hl                                       ; $5c98: $e5
    db $d3                                        ; $5c99: $d3
    ld a, [$36bd]                                 ; $5c9a: $fa $bd $36
    sub d                                         ; $5c9d: $92
    ld d, [hl]                                    ; $5c9e: $56
    rst $30                                       ; $5c9f: $f7
    ld b, $81                                     ; $5ca0: $06 $81
    ld a, [hl]                                    ; $5ca2: $7e
    dec b                                         ; $5ca3: $05
    cp [hl]                                       ; $5ca4: $be

Jump_042_5ca5:
    cp a                                          ; $5ca5: $bf
    add hl, hl                                    ; $5ca6: $29
    ld a, a                                       ; $5ca7: $7f
    ld a, h                                       ; $5ca8: $7c
    ld l, a                                       ; $5ca9: $6f
    ld b, e                                       ; $5caa: $43
    jr jr_042_5cfe                                ; $5cab: $18 $51

    sbc a                                         ; $5cad: $9f
    push hl                                       ; $5cae: $e5
    adc l                                         ; $5caf: $8d
    sub c                                         ; $5cb0: $91
    ld [$975e], a                                 ; $5cb1: $ea $5e $97
    jp c, $466f                                   ; $5cb4: $da $6f $46

    and b                                         ; $5cb7: $a0
    ld e, a                                       ; $5cb8: $5f
    ld bc, $4675                                  ; $5cb9: $01 $75 $46
    ld a, [c]                                     ; $5cbc: $f2
    ld [c], a                                     ; $5cbd: $e2
    add $5e                                       ; $5cbe: $c6 $5e
    rla                                           ; $5cc0: $17
    dec b                                         ; $5cc1: $05
    ld [hl], d                                    ; $5cc2: $72
    ld h, d                                       ; $5cc3: $62
    jr z, @+$7e                                   ; $5cc4: $28 $7c

    ld c, h                                       ; $5cc6: $4c
    rst $08                                       ; $5cc7: $cf
    db $10                                        ; $5cc8: $10
    rra                                           ; $5cc9: $1f
    adc d                                         ; $5cca: $8a
    jp nz, $e71f                                  ; $5ccb: $c2 $1f $e7

    cp a                                          ; $5cce: $bf
    daa                                           ; $5ccf: $27
    pop de                                        ; $5cd0: $d1
    xor a                                         ; $5cd1: $af
    ld [hl], l                                    ; $5cd2: $75
    ld l, l                                       ; $5cd3: $6d
    cp h                                          ; $5cd4: $bc
    jr z, @+$67                                   ; $5cd5: $28 $65

    inc l                                         ; $5cd7: $2c
    dec e                                         ; $5cd8: $1d
    dec [hl]                                      ; $5cd9: $35
    add sp, -$53                                  ; $5cda: $e8 $ad
    or l                                          ; $5cdc: $b5
    ld [bc], a                                    ; $5cdd: $02
    ld e, l                                       ; $5cde: $5d
    ld [de], a                                    ; $5cdf: $12
    adc c                                         ; $5ce0: $89
    call nz, $efbe                                ; $5ce1: $c4 $be $ef
    add e                                         ; $5ce4: $83
    ret z                                         ; $5ce5: $c8

    ld c, b                                       ; $5ce6: $48
    call c, $8b54                                 ; $5ce7: $dc $54 $8b
    and c                                         ; $5cea: $a1
    ret nz                                        ; $5ceb: $c0

    ld h, $d5                                     ; $5cec: $26 $d5
    ld e, a                                       ; $5cee: $5f
    sbc h                                         ; $5cef: $9c
    rra                                           ; $5cf0: $1f
    reti                                          ; $5cf1: $d9


    rra                                           ; $5cf2: $1f
    ld l, l                                       ; $5cf3: $6d
    xor d                                         ; $5cf4: $aa
    ld [$3ea3], a                                 ; $5cf5: $ea $a3 $3e
    push de                                       ; $5cf8: $d5
    rla                                           ; $5cf9: $17
    ld a, $f7                                     ; $5cfa: $3e $f7
    ld b, $5d                                     ; $5cfc: $06 $5d

jr_042_5cfe:
    ld c, [hl]                                    ; $5cfe: $4e
    ld h, d                                       ; $5cff: $62
    ld hl, sp-$33                                 ; $5d00: $f8 $cd
    push af                                       ; $5d02: $f5
    add sp, $02                                   ; $5d03: $e8 $02
    ei                                            ; $5d05: $fb
    ld d, b                                       ; $5d06: $50
    ld sp, hl                                     ; $5d07: $f9
    jr c, @-$3b                                   ; $5d08: $38 $c3

    inc de                                        ; $5d0a: $13
    ld l, a                                       ; $5d0b: $6f
    inc b                                         ; $5d0c: $04
    xor c                                         ; $5d0d: $a9
    ld e, [hl]                                    ; $5d0e: $5e
    dec sp                                        ; $5d0f: $3b
    rst $30                                       ; $5d10: $f7
    ld a, l                                       ; $5d11: $7d
    rst $18                                       ; $5d12: $df
    and a                                         ; $5d13: $a7
    inc bc                                        ; $5d14: $03
    cp a                                          ; $5d15: $bf
    ld l, $ee                                     ; $5d16: $2e $ee
    ld a, [hl]                                    ; $5d18: $7e
    ld d, d                                       ; $5d19: $52
    ei                                            ; $5d1a: $fb
    call $f408                                    ; $5d1b: $cd $08 $f4
    dec hl                                        ; $5d1e: $2b
    or l                                          ; $5d1f: $b5
    daa                                           ; $5d20: $27
    ei                                            ; $5d21: $fb
    db $e3                                        ; $5d22: $e3
    dec a                                         ; $5d23: $3d
    adc l                                         ; $5d24: $8d
    jp c, $47c9                                   ; $5d25: $da $c9 $47

    ld e, l                                       ; $5d28: $5d
    ld a, h                                       ; $5d29: $7c
    reti                                          ; $5d2a: $d9


    and b                                         ; $5d2b: $a0
    ld sp, hl                                     ; $5d2c: $f9
    ld de, $7aa4                                  ; $5d2d: $11 $a4 $7a
    call $f17f                                    ; $5d30: $cd $7f $f1
    ld a, [hl]                                    ; $5d33: $7e
    dec [hl]                                      ; $5d34: $35
    push hl                                       ; $5d35: $e5
    ld [c], a                                     ; $5d36: $e2
    db $fc                                        ; $5d37: $fc
    adc b                                         ; $5d38: $88
    db $fd                                        ; $5d39: $fd
    or d                                          ; $5d3a: $b2
    jr jr_042_5d47                                ; $5d3b: $18 $0a

    add h                                         ; $5d3d: $84
    ccf                                           ; $5d3e: $3f
    sbc [hl]                                      ; $5d3f: $9e
    ld h, a                                       ; $5d40: $67
    ld c, $fd                                     ; $5d41: $0e $fd
    ld a, [bc]                                    ; $5d43: $0a
    cp [hl]                                       ; $5d44: $be

Call_042_5d45:
    push af                                       ; $5d45: $f5
    jp hl                                         ; $5d46: $e9


jr_042_5d47:
    ld [c], a                                     ; $5d47: $e2
    inc c                                         ; $5d48: $0c
    ld l, d                                       ; $5d49: $6a
    ld [c], a                                     ; $5d4a: $e2
    db $fc                                        ; $5d4b: $fc
    ld c, b                                       ; $5d4c: $48
    cp c                                          ; $5d4d: $b9
    or b                                          ; $5d4e: $b0
    dec a                                         ; $5d4f: $3d
    di                                            ; $5d50: $f3
    ld b, l                                       ; $5d51: $45
    ld h, c                                       ; $5d52: $61
    rst $28                                       ; $5d53: $ef
    ld c, a                                       ; $5d54: $4f
    ld h, c                                       ; $5d55: $61
    sub h                                         ; $5d56: $94
    ld a, [c]                                     ; $5d57: $f2
    pop af                                        ; $5d58: $f1
    sbc [hl]                                      ; $5d59: $9e
    ld b, [hl]                                    ; $5d5a: $46
    db $ed                                        ; $5d5b: $ed
    db $e4                                        ; $5d5c: $e4
    ei                                            ; $5d5d: $fb
    or h                                          ; $5d5e: $b4
    rst $38                                       ; $5d5f: $ff
    ld e, c                                       ; $5d60: $59
    jr nz, jr_042_5dc8                            ; $5d61: $20 $65

    ld [c], a                                     ; $5d63: $e2
    db $fc                                        ; $5d64: $fc
    ld [$c9d3], sp                                ; $5d65: $08 $d3 $c9
    ld a, [c]                                     ; $5d68: $f2
    jp z, $f290                                   ; $5d69: $ca $90 $f2

    ld b, $bd                                     ; $5d6c: $06 $bd
    ld e, $29                                     ; $5d6e: $1e $29
    db $fc                                        ; $5d70: $fc
    inc a                                         ; $5d71: $3c
    pop af                                        ; $5d72: $f1
    ld h, d                                       ; $5d73: $62
    sbc a                                         ; $5d74: $9f
    ld b, e                                       ; $5d75: $43
    call nc, Call_042_49e5                        ; $5d76: $d4 $e5 $49
    ret c                                         ; $5d79: $d8

    cp $7e                                        ; $5d7a: $fe $7e
    dec b                                         ; $5d7c: $05
    ld l, l                                       ; $5d7d: $6d
    reti                                          ; $5d7e: $d9


    inc de                                        ; $5d7f: $13
    rrca                                          ; $5d80: $0f
    cp d                                          ; $5d81: $ba
    call nc, $f1b5                                ; $5d82: $d4 $b5 $f1
    and d                                         ; $5d85: $a2
    sub h                                         ; $5d86: $94
    or c                                          ; $5d87: $b1
    ld [hl], h                                    ; $5d88: $74
    call nc, $b7a0                                ; $5d89: $d4 $a0 $b7
    and $0a                                       ; $5d8c: $e6 $0a
    db $ed                                        ; $5d8e: $ed
    ld a, l                                       ; $5d8f: $7d
    ld [hl], $88                                  ; $5d90: $36 $88
    scf                                           ; $5d92: $37
    add d                                         ; $5d93: $82
    call nc, $c308                                ; $5d94: $d4 $08 $c3
    xor d                                         ; $5d97: $aa
    sub e                                         ; $5d98: $93
    rst $20                                       ; $5d99: $e7
    rst $28                                       ; $5d9a: $ef
    ei                                            ; $5d9b: $fb
    ld a, $44                                     ; $5d9c: $3e $44
    ld [hl+], a                                   ; $5d9e: $22
    sub c                                         ; $5d9f: $91
    ld c, b                                       ; $5da0: $48
    inc h                                         ; $5da1: $24
    or $7d                                        ; $5da2: $f6 $7d
    cp a                                          ; $5da4: $bf
    ld [bc], a                                    ; $5da5: $02
    ld e, l                                       ; $5da6: $5d
    ld [de], a                                    ; $5da7: $12
    adc c                                         ; $5da8: $89
    call nz, $efbe                                ; $5da9: $c4 $be $ef
    ld d, a                                       ; $5dac: $57
    dec e                                         ; $5dad: $1d
    ld d, d                                       ; $5dae: $52
    inc d                                         ; $5daf: $14
    cp $d4                                        ; $5db0: $fe $d4
    ld [$cf95], sp                                ; $5db2: $08 $95 $cf
    ld b, $f1                                     ; $5db5: $06 $f1
    ld b, [hl]                                    ; $5db7: $46
    sub b                                         ; $5db8: $90
    ld c, c                                       ; $5db9: $49
    adc l                                         ; $5dba: $8d
    ld l, h                                       ; $5dbb: $6c
    adc a                                         ; $5dbc: $8f
    or c                                          ; $5dbd: $b1
    adc a                                         ; $5dbe: $8f
    jp nz, Jump_000_194e                          ; $5dbf: $c2 $4e $19

    ld de, $7dec                                  ; $5dc2: $11 $ec $7d
    ld [hl-], a                                   ; $5dc5: $32
    or l                                          ; $5dc6: $b5
    ld d, [hl]                                    ; $5dc7: $56

jr_042_5dc8:
    sbc [hl]                                      ; $5dc8: $9e
    ld a, [hl]                                    ; $5dc9: $7e
    ld b, h                                       ; $5dca: $44
    and $5e                                       ; $5dcb: $e6 $5e
    rla                                           ; $5dcd: $17
    rra                                           ; $5dce: $1f
    adc d                                         ; $5dcf: $8a
    jp nz, Jump_000_0d9f                          ; $5dd0: $c2 $9f $0d

    ld [c], a                                     ; $5dd3: $e2
    adc l                                         ; $5dd4: $8d
    and b                                         ; $5dd5: $a0
    ld c, a                                       ; $5dd6: $4f
    xor e                                         ; $5dd7: $ab
    and h                                         ; $5dd8: $a4
    pop hl                                        ; $5dd9: $e1
    and d                                         ; $5dda: $a2
    add [hl]                                      ; $5ddb: $86
    and h                                         ; $5ddc: $a4
    inc a                                         ; $5ddd: $3c
    ld e, c                                       ; $5dde: $59
    add $f8                                       ; $5ddf: $c6 $f8
    xor l                                         ; $5de1: $ad
    cp d                                          ; $5de2: $ba
    ld hl, sp-$30                                 ; $5de3: $f8 $d0
    rst $18                                       ; $5de5: $df
    ld l, [hl]                                    ; $5de6: $6e
    jp z, $7d47                                   ; $5de7: $ca $47 $7d

    ld [hl], $34                                  ; $5dea: $36 $34
    dec c                                         ; $5dec: $0d
    add [hl]                                      ; $5ded: $86
    ld a, [hl]                                    ; $5dee: $7e
    dec b                                         ; $5def: $05
    cp [hl]                                       ; $5df0: $be
    cp a                                          ; $5df1: $bf
    ld c, c                                       ; $5df2: $49
    add sp, -$4e                                  ; $5df3: $e8 $b2
    ret c                                         ; $5df5: $d8

    ld a, b                                       ; $5df6: $78
    ld d, c                                       ; $5df7: $51
    jp z, $3a58                                   ; $5df8: $ca $58 $3a

    dec a                                         ; $5dfb: $3d
    cp [hl]                                       ; $5dfc: $be
    and c                                         ; $5dfd: $a1
    and l                                         ; $5dfe: $a5
    ld e, a                                       ; $5dff: $5f
    ld bc, $6175                                  ; $5e00: $01 $75 $61
    reti                                          ; $5e03: $d9


    ld e, $28                                     ; $5e04: $1e $28
    jr nc, jr_042_5e7f                            ; $5e06: $30 $77

    db $fc                                        ; $5e08: $fc
    call nz, $411b                                ; $5e09: $c4 $1b $41
    call nc, $3465                                ; $5e0c: $d4 $65 $34
    db $ed                                        ; $5e0f: $ed
    ld [hl], h                                    ; $5e10: $74
    ld e, c                                       ; $5e11: $59
    ld l, h                                       ; $5e12: $6c
    ld c, b                                       ; $5e13: $48
    jr @-$54                                      ; $5e14: $18 $aa

    ret                                           ; $5e16: $c9


    rst $00                                       ; $5e17: $c7
    ei                                            ; $5e18: $fb
    ld d, $72                                     ; $5e19: $16 $72
    or $1b                                        ; $5e1b: $f6 $1b
    ld b, d                                       ; $5e1d: $42
    push hl                                       ; $5e1e: $e5
    or e                                          ; $5e1f: $b3
    inc e                                         ; $5e20: $1c
    xor l                                         ; $5e21: $ad
    cp [hl]                                       ; $5e22: $be
    ld c, a                                       ; $5e23: $4f
    db $eb                                        ; $5e24: $eb
    cp a                                          ; $5e25: $bf
    ld d, e                                       ; $5e26: $53
    ld c, l                                       ; $5e27: $4d
    dec b                                         ; $5e28: $05
    pop hl                                        ; $5e29: $e1
    adc c                                         ; $5e2a: $89
    di                                            ; $5e2b: $f3
    inc hl                                        ; $5e2c: $23
    dec b                                         ; $5e2d: $05
    rla                                           ; $5e2e: $17
    rra                                           ; $5e2f: $1f
    ld a, d                                       ; $5e30: $7a
    pop af                                        ; $5e31: $f1
    jp c, $e647                                   ; $5e32: $da $47 $e6

    ld [hl], h                                    ; $5e35: $74

Jump_042_5e36:
    xor c                                         ; $5e36: $a9
    db $fd                                        ; $5e37: $fd
    ld h, [hl]                                    ; $5e38: $66
    inc b                                         ; $5e39: $04
    ld [hl], h                                    ; $5e3a: $74
    add hl, hl                                    ; $5e3b: $29
    ld c, $da                                     ; $5e3c: $0e $da
    ld a, $58                                     ; $5e3e: $3e $58
    db $fd                                        ; $5e40: $fd
    ld h, c                                       ; $5e41: $61
    ld h, h                                       ; $5e42: $64
    add c                                         ; $5e43: $81
    push bc                                       ; $5e44: $c5
    add a                                         ; $5e45: $87
    and d                                         ; $5e46: $a2
    ldh a, [rBGP]                                 ; $5e47: $f0 $47
    ld e, l                                       ; $5e49: $5d
    dec [hl]                                      ; $5e4a: $35
    add l                                         ; $5e4b: $85
    db $ed                                        ; $5e4c: $ed
    adc c                                         ; $5e4d: $89
    scf                                           ; $5e4e: $37
    add d                                         ; $5e4f: $82
    ld a, [hl]                                    ; $5e50: $7e
    dec b                                         ; $5e51: $05
    xor l                                         ; $5e52: $ad
    sub d                                         ; $5e53: $92
    ld b, $bd                                     ; $5e54: $06 $bd
    ld e, $51                                     ; $5e56: $1e $51
    ld b, e                                       ; $5e58: $43
    ld d, d                                       ; $5e59: $52
    sbc [hl]                                      ; $5e5a: $9e
    inc d                                         ; $5e5b: $14
    rlca                                          ; $5e5c: $07
    ld l, l                                       ; $5e5d: $6d
    rra                                           ; $5e5e: $1f
    inc c                                         ; $5e5f: $0c
    xor c                                         ; $5e60: $a9
    ret nc                                        ; $5e61: $d0

    rst $00                                       ; $5e62: $c7
    ld [hl], a                                    ; $5e63: $77
    ld h, h                                       ; $5e64: $64
    and d                                         ; $5e65: $a2
    ld e, l                                       ; $5e66: $5d
    dec a                                         ; $5e67: $3d
    pop af                                        ; $5e68: $f1
    and c                                         ; $5e69: $a1
    ld e, a                                       ; $5e6a: $5f
    ld l, $27                                     ; $5e6b: $2e $27
    pop de                                        ; $5e6d: $d1
    db $ec                                        ; $5e6e: $ec
    push de                                       ; $5e6f: $d5
    ld b, h                                       ; $5e70: $44
    ld e, l                                       ; $5e71: $5d
    cp h                                          ; $5e72: $bc
    ld l, a                                       ; $5e73: $6f
    ld hl, $bf67                                  ; $5e74: $21 $67 $bf
    ld hl, $3e54                                  ; $5e77: $21 $54 $3e
    set 2, c                                      ; $5e7a: $cb $d1
    ld [$15fb], a                                 ; $5e7c: $ea $fb $15

jr_042_5e7f:
    dec e                                         ; $5e7f: $1d
    call z, $75f8                                 ; $5e80: $cc $f8 $75
    add hl, hl                                    ; $5e83: $29
    cp b                                          ; $5e84: $b8
    ld d, b                                       ; $5e85: $50
    ld c, c                                       ; $5e86: $49

Call_042_5e87:
    push af                                       ; $5e87: $f5
    jp c, $1964                                   ; $5e88: $da $64 $19

    add [hl]                                      ; $5e8b: $86
    ldh a, [$95]                                  ; $5e8c: $f0 $95
    ld [hl], d                                    ; $5e8e: $72
    push de                                       ; $5e8f: $d5
    db $f4                                        ; $5e90: $f4
    ld l, c                                       ; $5e91: $69
    adc e                                         ; $5e92: $8b
    cp [hl]                                       ; $5e93: $be
    xor c                                         ; $5e94: $a9
    rst $10                                       ; $5e95: $d7
    and l                                         ; $5e96: $a5
    cp d                                          ; $5e97: $ba
    inc d                                         ; $5e98: $14
    cp $8b                                        ; $5e99: $fe $8b
    rst $30                                       ; $5e9b: $f7
    dec e                                         ; $5e9c: $1d
    ld b, h                                       ; $5e9d: $44
    ld c, l                                       ; $5e9e: $4d
    ld l, h                                       ; $5e9f: $6c
    jr jr_042_5f11                                ; $5ea0: $18 $6f

    adc b                                         ; $5ea2: $88
    or [hl]                                       ; $5ea3: $b6
    cpl                                           ; $5ea4: $2f
    db $e3                                        ; $5ea5: $e3
    sbc h                                         ; $5ea6: $9c
    rst $38                                       ; $5ea7: $ff
    ld l, d                                       ; $5ea8: $6a
    xor [hl]                                      ; $5ea9: $ae
    sbc [hl]                                      ; $5eaa: $9e
    ld d, e                                       ; $5eab: $53
    dec l                                         ; $5eac: $2d
    ei                                            ; $5ead: $fb
    ld a, [hl+]                                   ; $5eae: $2a
    ld [$2e9f], sp                                ; $5eaf: $08 $9f $2e
    or l                                          ; $5eb2: $b5
    rst $18                                       ; $5eb3: $df
    adc h                                         ; $5eb4: $8c
    ld b, b                                       ; $5eb5: $40
    sbc a                                         ; $5eb6: $9f
    ld h, [hl]                                    ; $5eb7: $66
    or d                                          ; $5eb8: $b2
    ld d, b                                       ; $5eb9: $50
    pop hl                                        ; $5eba: $e1
    set 5, a                                      ; $5ebb: $cb $ef
    db $fd                                        ; $5ebd: $fd
    pop af                                        ; $5ebe: $f1
    db $fc                                        ; $5ebf: $fc
    ld a, [c]                                     ; $5ec0: $f2
    ld d, c                                       ; $5ec1: $51
    sub a                                         ; $5ec2: $97
    or [hl]                                       ; $5ec3: $b6
    db $ec                                        ; $5ec4: $ec
    cp h                                          ; $5ec5: $bc
    inc hl                                        ; $5ec6: $23
    ld l, d                                       ; $5ec7: $6a
    ld l, h                                       ; $5ec8: $6c
    or d                                          ; $5ec9: $b2
    ret nz                                        ; $5eca: $c0

    or d                                          ; $5ecb: $b2
    ccf                                           ; $5ecc: $3f
    ld a, d                                       ; $5ecd: $7a
    ld a, [hl-]                                   ; $5ece: $3a
    ld a, [c]                                     ; $5ecf: $f2
    ld e, c                                       ; $5ed0: $59
    inc c                                         ; $5ed1: $0c
    add l                                         ; $5ed2: $85
    sbc a                                         ; $5ed3: $9f
    ld a, b                                       ; $5ed4: $78
    inc hl                                        ; $5ed5: $23
    add sp, $57                                   ; $5ed6: $e8 $57
    sbc [hl]                                      ; $5ed8: $9e
    inc hl                                        ; $5ed9: $23
    sbc d                                         ; $5eda: $9a
    dec a                                         ; $5edb: $3d
    db $d3                                        ; $5edc: $d3
    db $fd                                        ; $5edd: $fd
    call nz, $b91b                                ; $5ede: $c4 $1b $b9
    sbc d                                         ; $5ee1: $9a
    pop af                                        ; $5ee2: $f1
    push bc                                       ; $5ee3: $c5
    and l                                         ; $5ee4: $a5
    sbc h                                         ; $5ee5: $9c
    and e                                         ; $5ee6: $a3
    ld [hl], $51                                  ; $5ee7: $36 $51
    rla                                           ; $5ee9: $17
    add hl, de                                    ; $5eea: $19
    ret                                           ; $5eeb: $c9


    sub e                                         ; $5eec: $93
    or b                                          ; $5eed: $b0
    ld d, h                                       ; $5eee: $54
    ld a, a                                       ; $5eef: $7f
    ld e, c                                       ; $5ef0: $59
    ld l, h                                       ; $5ef1: $6c
    ret z                                         ; $5ef2: $c8

    rst $20                                       ; $5ef3: $e7
    ret                                           ; $5ef4: $c9


    rst $00                                       ; $5ef5: $c7
    ei                                            ; $5ef6: $fb
    ld d, $72                                     ; $5ef7: $16 $72
    or $1b                                        ; $5ef9: $f6 $1b
    ld b, d                                       ; $5efb: $42
    push hl                                       ; $5efc: $e5
    or e                                          ; $5efd: $b3
    inc e                                         ; $5efe: $1c
    xor l                                         ; $5eff: $ad
    ld a, $8b                                     ; $5f00: $3e $8b
    ld e, l                                       ; $5f02: $5d
    push af                                       ; $5f03: $f5
    ld d, c                                       ; $5f04: $51
    ld e, $a3                                     ; $5f05: $1e $a3
    ld l, c                                       ; $5f07: $69
    ld d, a                                       ; $5f08: $57
    dec hl                                        ; $5f09: $2b
    ld c, l                                       ; $5f0a: $4d
    inc [hl]                                      ; $5f0b: $34
    sbc [hl]                                      ; $5f0c: $9e
    add l                                         ; $5f0d: $85
    ld a, [bc]                                    ; $5f0e: $0a
    ld e, a                                       ; $5f0f: $5f
    ld a, [hl]                                    ; $5f10: $7e

jr_042_5f11:
    rst $28                                       ; $5f11: $ef
    adc a                                         ; $5f12: $8f
    rst $20                                       ; $5f13: $e7
    sub a                                         ; $5f14: $97
    adc a                                         ; $5f15: $8f
    cp d                                          ; $5f16: $ba
    or h                                          ; $5f17: $b4
    ld h, l                                       ; $5f18: $65
    rst $20                                       ; $5f19: $e7
    dec e                                         ; $5f1a: $1d
    ld d, c                                       ; $5f1b: $51
    ld h, e                                       ; $5f1c: $63
    sub e                                         ; $5f1d: $93
    dec b                                         ; $5f1e: $05
    sub [hl]                                      ; $5f1f: $96
    db $ed                                        ; $5f20: $ed
    ld sp, $57cc                                  ; $5f21: $31 $cc $57
    ld a, l                                       ; $5f24: $7d
    ld d, $43                                     ; $5f25: $16 $43
    pop hl                                        ; $5f27: $e1
    daa                                           ; $5f28: $27
    sbc $08                                       ; $5f29: $de $08
    ld l, d                                       ; $5f2b: $6a
    xor [hl]                                      ; $5f2c: $ae
    or l                                          ; $5f2d: $b5
    rst $38                                       ; $5f2e: $ff
    ld [c], a                                     ; $5f2f: $e2
    and [hl]                                      ; $5f30: $a6
    ld e, d                                       ; $5f31: $5a
    ld [hl], $f8                                  ; $5f32: $36 $f8
    ld a, c                                       ; $5f34: $79
    or d                                          ; $5f35: $b2
    dec a                                         ; $5f36: $3d
    ld d, b                                       ; $5f37: $50
    ld h, b                                       ; $5f38: $60
    xor $f8                                       ; $5f39: $ee $f8
    adc c                                         ; $5f3b: $89
    scf                                           ; $5f3c: $37
    add d                                         ; $5f3d: $82
    sbc h                                         ; $5f3e: $9c
    and h                                         ; $5f3f: $a4
    ld a, d                                       ; $5f40: $7a
    add hl, sp                                    ; $5f41: $39
    ret c                                         ; $5f42: $d8

    ld h, a                                       ; $5f43: $67
    add c                                         ; $5f44: $81
    ld a, c                                       ; $5f45: $79
    pop bc                                        ; $5f46: $c1
    db $fc                                        ; $5f47: $fc
    cp d                                          ; $5f48: $ba
    call nc, $337e                                ; $5f49: $d4 $7e $33
    ld [bc], a                                    ; $5f4c: $02
    dec [hl]                                      ; $5f4d: $35
    db $d3                                        ; $5f4e: $d3
    ld b, h                                       ; $5f4f: $44
    inc sp                                        ; $5f50: $33
    ld e, c                                       ; $5f51: $59
    xor b                                         ; $5f52: $a8
    ldh a, [$e5]                                  ; $5f53: $f0 $e5
    rst $30                                       ; $5f55: $f7
    cp $78                                        ; $5f56: $fe $78
    ld a, [hl]                                    ; $5f58: $7e
    ld sp, hl                                     ; $5f59: $f9
    xor b                                         ; $5f5a: $a8

jr_042_5f5b:
    ld c, e                                       ; $5f5b: $4b
    ld e, e                                       ; $5f5c: $5b
    halt                                          ; $5f5d: $76
    sbc $11                                       ; $5f5e: $de $11
    dec [hl]                                      ; $5f60: $35
    ld [hl], $59                                  ; $5f61: $36 $59
    ld h, b                                       ; $5f63: $60
    reti                                          ; $5f64: $d9


    ld e, $70                                     ; $5f65: $1e $70
    ld c, $7b                                     ; $5f67: $0e $7b
    ld b, e                                       ; $5f69: $43
    jr jr_042_5fc5                                ; $5f6a: $18 $59

    inc c                                         ; $5f6c: $0c
    add l                                         ; $5f6d: $85
    sbc a                                         ; $5f6e: $9f
    ld a, b                                       ; $5f6f: $78
    inc hl                                        ; $5f70: $23
    xor b                                         ; $5f71: $a8
    cp c                                          ; $5f72: $b9
    ld [bc], a                                    ; $5f73: $02
    ld [hl], l                                    ; $5f74: $75
    ld b, [hl]                                    ; $5f75: $46
    ld d, d                                       ; $5f76: $52
    ld [hl], b                                    ; $5f77: $70
    ld de, $1554                                  ; $5f78: $11 $54 $15
    ld h, h                                       ; $5f7b: $64
    ld h, d                                       ; $5f7c: $62
    ld b, a                                       ; $5f7d: $47
    adc e                                         ; $5f7e: $8b
    dec sp                                        ; $5f7f: $3b
    sbc [hl]                                      ; $5f80: $9e
    cp h                                          ; $5f81: $bc
    jp z, $9f33                                   ; $5f82: $ca $33 $9f

    cp l                                          ; $5f85: $bd
    ld hl, $e3db                                  ; $5f86: $21 $db $e3
    sbc c                                         ; $5f89: $99
    ld hl, $1bc4                                  ; $5f8a: $21 $c4 $1b
    ld b, c                                       ; $5f8d: $41
    inc d                                         ; $5f8e: $14
    or $fe                                        ; $5f8f: $f6 $fe
    inc l                                         ; $5f91: $2c
    ld b, a                                       ; $5f92: $47
    xor e                                         ; $5f93: $ab
    rst $10                                       ; $5f94: $d7
    add l                                         ; $5f95: $85
    ld d, c                                       ; $5f96: $51
    ld c, l                                       ; $5f97: $4d
    sbc a                                         ; $5f98: $9f
    adc [hl]                                      ; $5f99: $8e
    ld l, [hl]                                    ; $5f9a: $6e
    or c                                          ; $5f9b: $b1
    ld hl, $abef                                  ; $5f9c: $21 $ef $ab
    jp hl                                         ; $5f9f: $e9


    ld d, a                                       ; $5fa0: $57
    xor l                                         ; $5fa1: $ad
    ld a, [hl+]                                   ; $5fa2: $2a
    sub h                                         ; $5fa3: $94
    ld [hl-], a                                   ; $5fa4: $32
    cp d                                          ; $5fa5: $ba
    call nc, $337e                                ; $5fa6: $d4 $7e $33
    ld [bc], a                                    ; $5fa9: $02
    cp d                                          ; $5faa: $ba
    ret c                                         ; $5fab: $d8

    dec l                                         ; $5fac: $2d
    ldh [$0b], a                                  ; $5fad: $e0 $0b
    jp z, Jump_042_7f33                           ; $5faf: $ca $33 $7f

    dec b                                         ; $5fb2: $05
    ld h, c                                       ; $5fb3: $61
    db $e4                                        ; $5fb4: $e4
    ld d, d                                       ; $5fb5: $52
    dec e                                         ; $5fb6: $1d
    ld l, $d5                                     ; $5fb7: $2e $d5
    sub b                                         ; $5fb9: $90
    ld d, a                                       ; $5fba: $57
    ld b, c                                       ; $5fbb: $41
    ld hl, sp-$06                                 ; $5fbc: $f8 $fa
    ld [hl], h                                    ; $5fbe: $74
    ld a, [hl-]                                   ; $5fbf: $3a
    sub a                                         ; $5fc0: $97
    rst $18                                       ; $5fc1: $df
    ld l, h                                       ; $5fc2: $6c
    sub a                                         ; $5fc3: $97
    add hl, hl                                    ; $5fc4: $29

jr_042_5fc5:
    dec b                                         ; $5fc5: $05
    ld b, [hl]                                    ; $5fc6: $46
    ld a, $23                                     ; $5fc7: $3e $23
    rst $08                                       ; $5fc9: $cf
    inc c                                         ; $5fca: $0c
    pop hl                                        ; $5fcb: $e1
    xor a                                         ; $5fcc: $af
    jr nz, jr_042_5f5b                            ; $5fcd: $20 $8c

    ld a, [hl]                                    ; $5fcf: $7e
    dec b                                         ; $5fd0: $05
    dec e                                         ; $5fd1: $1d
    jr nc, jr_042_6033                            ; $5fd2: $30 $5f

    dec [hl]                                      ; $5fd4: $35
    reti                                          ; $5fd5: $d9


    ld c, a                                       ; $5fd6: $4f
    adc [hl]                                      ; $5fd7: $8e
    adc l                                         ; $5fd8: $8d

Call_042_5fd9:
    ld l, $b5                                     ; $5fd9: $2e $b5
    rst $18                                       ; $5fdb: $df
    adc h                                         ; $5fdc: $8c
    ld b, b                                       ; $5fdd: $40
    call $9db4                                    ; $5fde: $cd $b4 $9d
    or [hl]                                       ; $5fe1: $b6
    db $ec                                        ; $5fe2: $ec
    cp h                                          ; $5fe3: $bc
    inc hl                                        ; $5fe4: $23
    ld l, d                                       ; $5fe5: $6a
    ld l, h                                       ; $5fe6: $6c
    ld d, d                                       ; $5fe7: $52
    ld b, [hl]                                    ; $5fe8: $46
    ld h, $63                                     ; $5fe9: $26 $63
    jp c, $fb68                                   ; $5feb: $da $68 $fb

    and [hl]                                      ; $5fee: $a6
    ld e, h                                       ; $5fef: $5c
    call nc, Call_042_5185                        ; $5ff0: $d4 $85 $51
    ld [hl], e                                    ; $5ff3: $73
    dec b                                         ; $5ff4: $05
    cp [hl]                                       ; $5ff5: $be
    push af                                       ; $5ff6: $f5
    jp hl                                         ; $5ff7: $e9


    ld d, d                                       ; $5ff8: $52
    ei                                            ; $5ff9: $fb
    call $f408                                    ; $5ffa: $cd $08 $f4
    pop af                                        ; $5ffd: $f1
    sbc h                                         ; $5ffe: $9c
    adc d                                         ; $5fff: $8a
    adc d                                         ; $6000: $8a
    rrca                                          ; $6001: $0f
    add l                                         ; $6002: $85
    ld l, $2f                                     ; $6003: $2e $2f
    adc $ef                                       ; $6005: $ce $ef
    ld [hl], c                                    ; $6007: $71
    sub e                                         ; $6008: $93
    daa                                           ; $6009: $27
    dec c                                         ; $600a: $0d
    sub a                                         ; $600b: $97
    ld h, l                                       ; $600c: $65
    sbc b                                         ; $600d: $98
    ld a, [c]                                     ; $600e: $f2
    call nz, $86fb                                ; $600f: $c4 $fb $86
    db $fc                                        ; $6012: $fc
    ld h, [hl]                                    ; $6013: $66
    inc bc                                        ; $6014: $03
    di                                            ; $6015: $f3
    dec bc                                        ; $6016: $0b
    ld c, a                                       ; $6017: $4f
    cp a                                          ; $6018: $bf
    ld [bc], a                                    ; $6019: $02
    cp [hl]                                       ; $601a: $be
    ld c, h                                       ; $601b: $4c
    dec d                                         ; $601c: $15
    add h                                         ; $601d: $84
    ld c, a                                       ; $601e: $4f
    rla                                           ; $601f: $17
    inc d                                         ; $6020: $14
    sbc b                                         ; $6021: $98
    dec sp                                        ; $6022: $3b
    ld a, [hl]                                    ; $6023: $7e
    ld b, $79                                     ; $6024: $06 $79
    ld sp, hl                                     ; $6026: $f9
    ret c                                         ; $6027: $d8

    dec l                                         ; $6028: $2d
    ld h, b                                       ; $6029: $60
    jr jr_042_609e                                ; $602a: $18 $72

    xor c                                         ; $602c: $a9
    add [hl]                                      ; $602d: $86
    cp h                                          ; $602e: $bc
    ld a, [bc]                                    ; $602f: $0a
    jp nz, Jump_000_3717                          ; $6030: $c2 $17 $37

jr_042_6033:
    sub d                                         ; $6033: $92
    db $fd                                        ; $6034: $fd
    pop de                                        ; $6035: $d1
    cp a                                          ; $6036: $bf
    ld [hl], e                                    ; $6037: $73
    ld a, [hl]                                    ; $6038: $7e
    jr nc, jr_042_60ba                            ; $6039: $30 $7f

    sbc h                                         ; $603b: $9c
    rra                                           ; $603c: $1f
    cp c                                          ; $603d: $b9
    add hl, bc                                    ; $603e: $09
    ld d, d                                       ; $603f: $52
    ei                                            ; $6040: $fb
    call $8408                                    ; $6041: $cd $08 $84
    cp h                                          ; $6044: $bc
    cp h                                          ; $6045: $bc
    ld e, [hl]                                    ; $6046: $5e
    ld a, a                                       ; $6047: $7f
    ld e, a                                       ; $6048: $5f
    ld c, l                                       ; $6049: $4d
    xor d                                         ; $604a: $aa
    add hl, hl                                    ; $604b: $29
    ld l, h                                       ; $604c: $6c
    rst $08                                       ; $604d: $cf
    inc de                                        ; $604e: $13
    and h                                         ; $604f: $a4
    call c, $b233                                 ; $6050: $dc $33 $b2
    ret c                                         ; $6053: $d8

    ld [$3e5f], sp                                ; $6054: $08 $5f $3e
    sbc $b7                                       ; $6057: $de $b7
    sub b                                         ; $6059: $90
    or e                                          ; $605a: $b3
    rst $18                                       ; $605b: $df
    db $10                                        ; $605c: $10
    ld a, [hl+]                                   ; $605d: $2a
    sbc a                                         ; $605e: $9f
    push hl                                       ; $605f: $e5
    ld l, b                                       ; $6060: $68
    push af                                       ; $6061: $f5
    ld e, c                                       ; $6062: $59
    ld h, b                                       ; $6063: $60
    reti                                          ; $6064: $d9


    sbc a                                         ; $6065: $9f
    push bc                                       ; $6066: $c5
    and [hl]                                      ; $6067: $a6
    sub h                                         ; $6068: $94
    xor e                                         ; $6069: $ab
    ld a, $1b                                     ; $606a: $3e $1b
    call nz, $411b                                ; $606c: $c4 $1b $41
    sbc a                                         ; $606f: $9f
    ld d, [hl]                                    ; $6070: $56
    dec d                                         ; $6071: $15
    ld c, d                                       ; $6072: $4a
    sbc c                                         ; $6073: $99
    inc l                                         ; $6074: $2c
    jp $e460                                      ; $6075: $c3 $60 $e4


    ld b, l                                       ; $6078: $45
    cp l                                          ; $6079: $bd
    and c                                         ; $607a: $a1
    ld e, a                                       ; $607b: $5f
    ld bc, $7abe                                  ; $607c: $01 $be $7a
    dec sp                                        ; $607f: $3b
    db $ed                                        ; $6080: $ed
    ld sp, hl                                     ; $6081: $f9
    ld [hl], h                                    ; $6082: $74
    xor c                                         ; $6083: $a9
    db $fd                                        ; $6084: $fd
    ld h, [hl]                                    ; $6085: $66
    inc b                                         ; $6086: $04
    ld a, [$22f8]                                 ; $6087: $fa $f8 $22
    ld l, a                                       ; $608a: $6f
    halt                                          ; $608b: $76
    db $e4                                        ; $608c: $e4
    push hl                                       ; $608d: $e5
    inc h                                         ; $608e: $24
    halt                                          ; $608f: $76
    db $fc                                        ; $6090: $fc
    and [hl]                                      ; $6091: $a6

jr_042_6092:
    ld b, [hl]                                    ; $6092: $46
    rla                                           ; $6093: $17
    cp e                                          ; $6094: $bb
    ld [c], a                                     ; $6095: $e2
    db $fc                                        ; $6096: $fc
    rla                                           ; $6097: $17
    ld [hl], l                                    ; $6098: $75
    pop af                                        ; $6099: $f1
    cp [hl]                                       ; $609a: $be
    ld h, l                                       ; $609b: $65
    add c                                         ; $609c: $81
    add hl, hl                                    ; $609d: $29

jr_042_609e:
    jr jr_042_6092                                ; $609e: $18 $f2

    ld a, e                                       ; $60a0: $7b
    ld a, a                                       ; $60a1: $7f
    sbc b                                         ; $60a2: $98
    ld a, [hl]                                    ; $60a3: $7e
    inc a                                         ; $60a4: $3c
    cp a                                          ; $60a5: $bf
    ld a, h                                       ; $60a6: $7c
    ld l, $0b                                     ; $60a7: $2e $0b
    dec d                                         ; $60a9: $15
    cp [hl]                                       ; $60aa: $be
    jr c, jr_042_60ec                             ; $60ab: $38 $3f

    ld [c], a                                     ; $60ad: $e2
    rst $38                                       ; $60ae: $ff
    sra a                                         ; $60af: $cb $2f
    dec bc                                        ; $60b1: $0b
    db $e4                                        ; $60b2: $e4
    and e                                         ; $60b3: $a3
    pop de                                        ; $60b4: $d1
    ld d, a                                       ; $60b5: $57
    xor a                                         ; $60b6: $af
    ret                                           ; $60b7: $c9


    di                                            ; $60b8: $f3
    db $f4                                        ; $60b9: $f4

jr_042_60ba:
    dec hl                                        ; $60ba: $2b
    sbc l                                         ; $60bb: $9d
    cp $e5                                        ; $60bc: $fe $e5
    rst $30                                       ; $60be: $f7
    cp $30                                        ; $60bf: $fe $30
    db $fd                                        ; $60c1: $fd
    inc l                                         ; $60c2: $2c
    ld [hl], $a5                                  ; $60c3: $36 $a5
    ld e, h                                       ; $60c5: $5c
    push af                                       ; $60c6: $f5
    reti                                          ; $60c7: $d9


    jr nz, @-$20                                  ; $60c8: $20 $de

    ld [$a974], sp                                ; $60ca: $08 $74 $a9

jr_042_60cd:
    db $fd                                        ; $60cd: $fd
    ld h, [hl]                                    ; $60ce: $66
    inc b                                         ; $60cf: $04
    ld a, [$7515]                                 ; $60d0: $fa $15 $75
    ld b, [hl]                                    ; $60d3: $46
    ld [c], a                                     ; $60d4: $e2
    inc a                                         ; $60d5: $3c
    ld l, d                                       ; $60d6: $6a
    db $e4                                        ; $60d7: $e4
    or a                                          ; $60d8: $b7
    and e                                         ; $60d9: $a3
    sub d                                         ; $60da: $92
    ld l, d                                       ; $60db: $6a
    ld hl, sp-$38                                 ; $60dc: $f8 $c8
    adc c                                         ; $60de: $89
    cp d                                          ; $60df: $ba
    ret c                                         ; $60e0: $d8

    ld d, l                                       ; $60e1: $55
    cpl                                           ; $60e2: $2f
    jr nc, jr_042_60cd                            ; $60e3: $30 $e8

    ld b, d                                       ; $60e5: $42
    push hl                                       ; $60e6: $e5
    ld b, e                                       ; $60e7: $43
    adc $e6                                       ; $60e8: $ce $e6
    adc a                                         ; $60ea: $8f
    di                                            ; $60eb: $f3

jr_042_60ec:
    inc hl                                        ; $60ec: $23
    ei                                            ; $60ed: $fb
    or e                                          ; $60ee: $b3
    ld b, c                                       ; $60ef: $41
    cp h                                          ; $60f0: $bc
    ld de, $46a4                                  ; $60f1: $11 $a4 $46
    jr jr_042_614c                                ; $60f4: $18 $56

    sbc l                                         ; $60f6: $9d
    inc a                                         ; $60f7: $3c
    ld a, a                                       ; $60f8: $7f
    rra                                           ; $60f9: $1f
    ld c, a                                       ; $60fa: $4f
    adc a                                         ; $60fb: $8f
    ld a, [de]                                    ; $60fc: $1a
    xor c                                         ; $60fd: $a9
    ld h, [hl]                                    ; $60fe: $66
    di                                            ; $60ff: $f3
    ld b, h                                       ; $6100: $44
    ld a, l                                       ; $6101: $7d
    xor [hl]                                      ; $6102: $ae
    ld e, d                                       ; $6103: $5a
    sbc $de                                       ; $6104: $de $de
    and b                                         ; $6106: $a0
    adc e                                         ; $6107: $8b
    ld a, [$d0f8]                                 ; $6108: $fa $f8 $d0
    rst $18                                       ; $610b: $df
    adc $8f                                       ; $610c: $ce $8f
    db $fc                                        ; $610e: $fc
    ld h, [hl]                                    ; $610f: $66
    ei                                            ; $6110: $fb
    inc l                                         ; $6111: $2c
    ld l, a                                       ; $6112: $6f
    adc h                                         ; $6113: $8c
    ld a, [hl]                                    ; $6114: $7e
    dec b                                         ; $6115: $05
    ld [hl], l                                    ; $6116: $75
    ld h, c                                       ; $6117: $61
    adc $5f                                       ; $6118: $ce $5f
    ld l, a                                       ; $611a: $6f
    ld l, [hl]                                    ; $611b: $6e
    ld h, a                                       ; $611c: $67
    or c                                          ; $611d: $b1
    pop af                                        ; $611e: $f1
    and d                                         ; $611f: $a2
    sub h                                         ; $6120: $94
    or c                                          ; $6121: $b1
    ld [hl], h                                    ; $6122: $74
    db $f4                                        ; $6123: $f4
    dec bc                                        ; $6124: $0b
    adc a                                         ; $6125: $8f
    and l                                         ; $6126: $a5
    and b                                         ; $6127: $a0
    jp nc, $a7db                                  ; $6128: $d2 $db $a7

    and b                                         ; $612b: $a0
    ld e, d                                       ; $612c: $5a
    inc c                                         ; $612d: $0c
    ld [hl], c                                    ; $612e: $71
    ld d, e                                       ; $612f: $53
    ld [$c08b], a                                 ; $6130: $ea $8b $c0
    ret z                                         ; $6133: $c8

    add hl, hl                                    ; $6134: $29
    ld d, e                                       ; $6135: $53
    ld l, e                                       ; $6136: $6b
    dec b                                         ; $6137: $05
    dec e                                         ; $6138: $1d
    db $fd                                        ; $6139: $fd
    jp nz, $2963                                  ; $613a: $c2 $63 $29

    sbc a                                         ; $613d: $9f
    add d                                         ; $613e: $82
    ld l, d                                       ; $613f: $6a
    ld sp, $87c4                                  ; $6140: $31 $c4 $87
    ld h, d                                       ; $6143: $62
    rst $28                                       ; $6144: $ef
    adc c                                         ; $6145: $89
    di                                            ; $6146: $f3

Jump_042_6147:
    inc hl                                        ; $6147: $23
    ld a, h                                       ; $6148: $7c
    ld e, c                                       ; $6149: $59
    cp [hl]                                       ; $614a: $be
    sub h                                         ; $614b: $94

jr_042_614c:
    rst $08                                       ; $614c: $cf
    ld [bc], a                                    ; $614d: $02
    set 7, [hl]                                   ; $614e: $cb $fe
    jr nc, jr_042_615c                            ; $6150: $30 $0a

    ld a, a                                       ; $6152: $7f
    sbc a                                         ; $6153: $9f
    sub [hl]                                      ; $6154: $96
    db $e3                                        ; $6155: $e3
    and [hl]                                      ; $6156: $a6
    ld b, d                                       ; $6157: $42
    ld a, [bc]                                    ; $6158: $0a
    ld a, [c]                                     ; $6159: $f2
    inc h                                         ; $615a: $24
    ld c, d                                       ; $615b: $4a

jr_042_615c:
    ld b, c                                       ; $615c: $41
    inc d                                         ; $615d: $14
    or h                                          ; $615e: $b4
    ld a, l                                       ; $615f: $7d
    add hl, de                                    ; $6160: $19
    rst $20                                       ; $6161: $e7
    db $fc                                        ; $6162: $fc
    sub a                                         ; $6163: $97
    rla                                           ; $6164: $17
    rst $20                                       ; $6165: $e7
    ld b, a                                       ; $6166: $47
    call nc, Call_042_6d81                        ; $6167: $d4 $81 $6d
    or d                                          ; $616a: $b2
    ccf                                           ; $616b: $3f
    adc h                                         ; $616c: $8c
    jp nz, $afdf                                  ; $616d: $c2 $df $af

    db $ed                                        ; $6170: $ed
    ld e, a                                       ; $6171: $5f
    sbc h                                         ; $6172: $9c
    rst $38                                       ; $6173: $ff
    and b                                         ; $6174: $a0
    ld h, $6e                                     ; $6175: $26 $6e
    ld a, [hl+]                                   ; $6177: $2a
    and h                                         ; $6178: $a4
    ldh a, [rNR31]                                ; $6179: $f0 $1b
    ld l, $6e                                     ; $617b: $2e $6e
    inc h                                         ; $617d: $24
    ld d, h                                       ; $617e: $54
    jp nz, $f4d4                                  ; $617f: $c2 $d4 $f4

    cpl                                           ; $6182: $2f
    adc h                                         ; $6183: $8c
    sbc h                                         ; $6184: $9c
    add h                                         ; $6185: $84
    ld d, c                                       ; $6186: $51
    ld hl, sp-$05                                 ; $6187: $f8 $fb
    dec d                                         ; $6189: $15
    dec e                                         ; $618a: $1d
    ld d, d                                       ; $618b: $52

jr_042_618c:
    inc d                                         ; $618c: $14
    cp $6c                                        ; $618d: $fe $6c
    db $10                                        ; $618f: $10
    ld l, a                                       ; $6190: $6f
    inc b                                         ; $6191: $04
    xor c                                         ; $6192: $a9
    sub c                                         ; $6193: $91
    rst $18                                       ; $6194: $df
    ld a, $f4                                     ; $6195: $3e $f4
    add l                                         ; $6197: $85
    daa                                           ; $6198: $27
    ld a, [$1223]                                 ; $6199: $fa $23 $12
    rst $18                                       ; $619c: $df
    db $ec                                        ; $619d: $ec
    ei                                            ; $619e: $fb
    dec d                                         ; $619f: $15
    or l                                          ; $61a0: $b5
    rst $18                                       ; $61a1: $df
    adc h                                         ; $61a2: $8c
    ld b, b                                       ; $61a3: $40
    ld [$330e], a                                 ; $61a4: $ea $0e $33
    xor h                                         ; $61a7: $ac
    ld h, [hl]                                    ; $61a8: $66
    jp c, $27b2                                   ; $61a9: $da $b2 $27

    ld e, $f2                                     ; $61ac: $1e $f2
    dec sp                                        ; $61ae: $3b
    xor $b0                                       ; $61af: $ee $b0
    daa                                           ; $61b1: $27
    dec b                                         ; $61b2: $05
    rla                                           ; $61b3: $17
    rra                                           ; $61b4: $1f
    ld a, d                                       ; $61b5: $7a
    dec [hl]                                      ; $61b6: $35
    ld d, a                                       ; $61b7: $57
    sbc [hl]                                      ; $61b8: $9e
    ld e, $35                                     ; $61b9: $1e $35
    ld d, d                                       ; $61bb: $52
    ld hl, sp+$79                                 ; $61bc: $f8 $79
    ld b, d                                       ; $61be: $42
    dec h                                         ; $61bf: $25
    daa                                           ; $61c0: $27
    xor $14                                       ; $61c1: $ee $14
    add h                                         ; $61c3: $84
    pop de                                        ; $61c4: $d1
    ld d, d                                       ; $61c5: $52
    xor b                                         ; $61c6: $a8
    ld a, h                                       ; $61c7: $7c
    call c, $c28b                                 ; $61c8: $dc $8b $c2
    cp $d4                                        ; $61cb: $fe $d4
    ld c, b                                       ; $61cd: $48
    pop hl                                        ; $61ce: $e1
    rst $20                                       ; $61cf: $e7
    rrca                                          ; $61d0: $0f
    db $db                                        ; $61d1: $db
    rla                                           ; $61d2: $17
    rst $28                                       ; $61d3: $ef
    ld e, b                                       ; $61d4: $58
    push af                                       ; $61d5: $f5
    db $fc                                        ; $61d6: $fc
    add hl, sp                                    ; $61d7: $39
    add hl, bc                                    ; $61d8: $09
    sub l                                         ; $61d9: $95
    cp b                                          ; $61da: $b8
    sub c                                         ; $61db: $91
    db $d3                                        ; $61dc: $d3
    or $4d                                        ; $61dd: $f6 $4d
    cp a                                          ; $61df: $bf
    ld [bc], a                                    ; $61e0: $02
    xor l                                         ; $61e1: $ad
    add e                                         ; $61e2: $83
    db $f4                                        ; $61e3: $f4
    ld b, b                                       ; $61e4: $40
    add hl, hl                                    ; $61e5: $29
    jr nc, jr_042_618c                            ; $61e6: $30 $a4

    ldh a, [$f3]                                  ; $61e8: $f0 $f3
    ld b, h                                       ; $61ea: $44

jr_042_61eb:
    ld e, l                                       ; $61eb: $5d
    inc e                                         ; $61ec: $1c
    adc h                                         ; $61ed: $8c
    daa                                           ; $61ee: $27
    ld d, h                                       ; $61ef: $54
    ld [hl], d                                    ; $61f0: $72
    ld [c], a                                     ; $61f1: $e2
    ld c, [hl]                                    ; $61f2: $4e

jr_042_61f3:
    ld b, c                                       ; $61f3: $41
    jr jr_042_61f3                                ; $61f4: $18 $fd

    ld a, [bc]                                    ; $61f6: $0a
    ld l, l                                       ; $61f7: $6d
    ret c                                         ; $61f8: $d8

    add a                                         ; $61f9: $87
    jp z, $bdc7                                   ; $61fa: $ca $c7 $bd

    jr z, jr_042_61eb                             ; $61fd: $28 $ec

    rst $08                                       ; $61ff: $cf
    dec sp                                        ; $6200: $3b
    add a                                         ; $6201: $87
    ld a, [c]                                     ; $6202: $f2
    ld a, l                                       ; $6203: $7d
    rst $18                                       ; $6204: $df
    rlca                                          ; $6205: $07
    ld a, [hl+]                                   ; $6206: $2a
    dec [hl]                                      ; $6207: $35
    ld [c], a                                     ; $6208: $e2
    and l                                         ; $6209: $a5
    sbc d                                         ; $620a: $9a
    halt                                          ; $620b: $76
    db $fc                                        ; $620c: $fc
    dec [hl]                                      ; $620d: $35
    db $d3                                        ; $620e: $d3
    ld sp, $89aa                                  ; $620f: $31 $aa $89
    di                                            ; $6212: $f3
    inc hl                                        ; $6213: $23
    res 2, h                                      ; $6214: $cb $94
    ld a, [c]                                     ; $6216: $f2
    add hl, hl                                    ; $6217: $29
    xor $19                                       ; $6218: $ee $19
    ld a, [c]                                     ; $621a: $f2
    add [hl]                                      ; $621b: $86
    ld d, b                                       ; $621c: $50
    ret                                           ; $621d: $c9


    adc c                                         ; $621e: $89
    add e                                         ; $621f: $83
    xor b                                         ; $6220: $a8
    sbc e                                         ; $6221: $9b
    ld a, $b5                                     ; $6222: $3e $b5
    daa                                           ; $6224: $27
    ld a, [$a32b]                                 ; $6225: $fa $2b $a3
    ret                                           ; $6228: $c9


    ld b, h                                       ; $6229: $44
    ld e, l                                       ; $622a: $5d
    ld a, h                                       ; $622b: $7c
    add sp, $6f                                   ; $622c: $e8 $6f
    ld b, a                                       ; $622e: $47
    ld h, l                                       ; $622f: $65
    ld [c], a                                     ; $6230: $e2
    db $fc                                        ; $6231: $fc
    adc b                                         ; $6232: $88
    rla                                           ; $6233: $17
    ld d, [hl]                                    ; $6234: $56
    ld e, l                                       ; $6235: $5d
    ld a, h                                       ; $6236: $7c
    jr z, jr_042_6243                             ; $6237: $28 $0a

    ld c, a                                       ; $6239: $4f
    call c, Call_042_69c8                         ; $623a: $dc $c8 $69
    ei                                            ; $623d: $fb
    and [hl]                                      ; $623e: $a6
    ld c, a                                       ; $623f: $4f
    dec de                                        ; $6240: $1b
    pop af                                        ; $6241: $f1
    and c                                         ; $6242: $a1

jr_042_6243:
    ret c                                         ; $6243: $d8

    pop af                                        ; $6244: $f1
    and c                                         ; $6245: $a1
    cp a                                          ; $6246: $bf
    dec e                                         ; $6247: $1d
    sub l                                         ; $6248: $95
    ld c, c                                       ; $6249: $49
    pop bc                                        ; $624a: $c1
    add l                                         ; $624b: $85
    ld l, c                                       ; $624c: $69
    cp a                                          ; $624d: $bf
    ld [bc], a                                    ; $624e: $02
    sbc [hl]                                      ; $624f: $9e
    ld d, e                                       ; $6250: $53
    ld hl, $b7de                                  ; $6251: $21 $de $b7
    ld a, [$b1f3]                                 ; $6254: $fa $f3 $b1
    ld [hl], e                                    ; $6257: $73
    inc hl                                        ; $6258: $23
    ld d, e                                       ; $6259: $53
    inc e                                         ; $625a: $1c
    ld l, h                                       ; $625b: $6c
    ld c, a                                       ; $625c: $4f
    xor l                                         ; $625d: $ad
    dec d                                         ; $625e: $15
    dec l                                         ; $625f: $2d
    rst $00                                       ; $6260: $c7
    call $cb1e                                    ; $6261: $cd $1e $cb
    ld [hl-], a                                   ; $6264: $32
    or [hl]                                       ; $6265: $b6
    adc h                                         ; $6266: $8c
    ld a, l                                       ; $6267: $7d
    sbc a                                         ; $6268: $9f
    cp d                                          ; $6269: $ba
    ld b, a                                       ; $626a: $47
    sbc c                                         ; $626b: $99
    and a                                         ; $626c: $a7
    ldh a, [$e4]                                  ; $626d: $f0 $e4
    and h                                         ; $626f: $a4
    call z, $1e3e                                 ; $6270: $cc $3e $1e
    ld e, l                                       ; $6273: $5d
    ld d, $58                                     ; $6274: $16 $58
    add hl, sp                                    ; $6276: $39
    sbc c                                         ; $6277: $99
    inc l                                         ; $6278: $2c
    or b                                          ; $6279: $b0
    call nc, $ad1e                                ; $627a: $d4 $1e $ad
    cp e                                          ; $627d: $bb
    scf                                           ; $627e: $37
    ld l, $7d                                     ; $627f: $2e $7d
    ld a, h                                       ; $6281: $7c
    ld de, $5a3b                                  ; $6282: $11 $3b $5a
    call c, Call_042_5fd9                         ; $6285: $dc $d9 $5f
    ld a, $ee                                     ; $6288: $3e $ee
    sbc c                                         ; $628a: $99
    xor c                                         ; $628b: $a9
    cp l                                          ; $628c: $bd
    db $ed                                        ; $628d: $ed
    add hl, bc                                    ; $628e: $09
    ld a, [c]                                     ; $628f: $f2
    or c                                          ; $6290: $b1
    ld e, e                                       ; $6291: $5b
    add $f8                                       ; $6292: $c6 $f8
    ld l, l                                       ; $6294: $6d
    ld c, a                                       ; $6295: $4f
    ld c, [hl]                                    ; $6296: $4e
    call nc, Call_042_6d81                        ; $6297: $d4 $81 $6d
    ld [hl], h                                    ; $629a: $74
    pop hl                                        ; $629b: $e1
    bit 1, c                                      ; $629c: $cb $49
    add c                                         ; $629e: $81
    ld h, $b0                                     ; $629f: $26 $b0
    ld a, [$2543]                                 ; $62a1: $fa $43 $25
    ld b, d                                       ; $62a4: $42
    add a                                         ; $62a5: $87
    sbc h                                         ; $62a6: $9c
    sbc h                                         ; $62a7: $9c
    cp b                                          ; $62a8: $b8
    rla                                           ; $62a9: $17
    ld b, [hl]                                    ; $62aa: $46
    cp c                                          ; $62ab: $b9
    ld l, d                                       ; $62ac: $6a
    ld a, [$be15]                                 ; $62ad: $fa $15 $be
    ld l, [hl]                                    ; $62b0: $6e
    xor d                                         ; $62b1: $aa
    ld a, [bc]                                    ; $62b2: $0a
    call z, $e713                                 ; $62b3: $cc $13 $e7
    ld b, a                                       ; $62b6: $47
    jr @-$3c                                      ; $62b7: $18 $c2

    or b                                          ; $62b9: $b0
    ld a, d                                       ; $62ba: $7a
    and d                                         ; $62bb: $a2
    ld l, $b4                                     ; $62bc: $2e $b4
    cp b                                          ; $62be: $b8
    inc sp                                        ; $62bf: $33
    db $e4                                        ; $62c0: $e4
    rst $30                                       ; $62c1: $f7
    or $f8                                        ; $62c2: $f6 $f8
    dec b                                         ; $62c4: $05
    add $d3                                       ; $62c5: $c6 $d3
    xor a                                         ; $62c7: $af

Call_042_62c8:
    xor l                                         ; $62c8: $ad
    pop de                                        ; $62c9: $d1
    sub c                                         ; $62ca: $91
    adc a                                         ; $62cb: $8f
    ld [hl], a                                    ; $62cc: $77
    adc h                                         ; $62cd: $8c
    xor c                                         ; $62ce: $a9
    cp h                                          ; $62cf: $bc
    ld l, $b5                                     ; $62d0: $2e $b5
    rst $18                                       ; $62d2: $df
    adc h                                         ; $62d3: $8c
    ld b, b                                       ; $62d4: $40
    rra                                           ; $62d5: $1f
    ld e, a                                       ; $62d6: $5f
    cp $cb                                        ; $62d7: $fe $cb
    inc sp                                        ; $62d9: $33
    ld b, e                                       ; $62da: $43
    ld a, b                                       ; $62db: $78
    ld a, [c]                                     ; $62dc: $f2
    sub c                                         ; $62dd: $91
    sub c                                         ; $62de: $91
    inc d                                         ; $62df: $14
    scf                                           ; $62e0: $37
    call z, Call_042_7c6f                         ; $62e1: $cc $6f $7c
    db $fd                                        ; $62e4: $fd
    ld a, [bc]                                    ; $62e5: $0a
    ld l, l                                       ; $62e6: $6d
    rst $28                                       ; $62e7: $ef
    cp b                                          ; $62e8: $b8
    sub c                                         ; $62e9: $91
    db $d3                                        ; $62ea: $d3

Jump_042_62eb:
    or $4d                                        ; $62eb: $f6 $4d
    ld h, h                                       ; $62ed: $64
    inc h                                         ; $62ee: $24
    dec [hl]                                      ; $62ef: $35
    ld [c], a                                     ; $62f0: $e2
    ld b, e                                       ; $62f1: $43
    ld c, a                                       ; $62f2: $4f
    sub a                                         ; $62f3: $97
    jp c, $466f                                   ; $62f4: $da $6f $46

    and b                                         ; $62f7: $a0
    ld h, [hl]                                    ; $62f8: $66
    ld a, h                                       ; $62f9: $7c
    push af                                       ; $62fa: $f5
    halt                                          ; $62fb: $76
    jp c, $e5f3                                   ; $62fc: $da $f3 $e5

    jp $e436                                      ; $62ff: $c3 $36 $e4


    db $db                                        ; $6302: $db
    sbc [hl]                                      ; $6303: $9e
    sbc d                                         ; $6304: $9a
    dec hl                                        ; $6305: $2b
    or l                                          ; $6306: $b5
    rst $38                                       ; $6307: $ff
    ld b, d                                       ; $6308: $42
    ld e, [hl]                                    ; $6309: $5e
    pop hl                                        ; $630a: $e1
    add hl, bc                                    ; $630b: $09
    sub l                                         ; $630c: $95
    cp b                                          ; $630d: $b8
    sub c                                         ; $630e: $91
    db $d3                                        ; $630f: $d3
    or $4d                                        ; $6310: $f6 $4d
    call c, $b1ec                                 ; $6312: $dc $ec $b1
    inc l                                         ; $6315: $2c
    ld h, e                                       ; $6316: $63
    set 3, b                                      ; $6317: $cb $d8
    rst $10                                       ; $6319: $d7
    ld e, d                                       ; $631a: $5a
    ld bc, $f5be                                  ; $631b: $01 $be $f5
    jp hl                                         ; $631e: $e9


    ld d, d                                       ; $631f: $52
    ld hl, sp-$37                                 ; $6320: $f8 $c9
    adc a                                         ; $6322: $8f
    dec de                                        ; $6323: $1b
    inc sp                                        ; $6324: $33
    adc b                                         ; $6325: $88
    sbc d                                         ; $6326: $9a
    sbc h                                         ; $6327: $9c
    ld b, h                                       ; $6328: $44
    sbc l                                         ; $6329: $9d
    add c                                         ; $632a: $81
    ld a, b                                       ; $632b: $78
    inc hl                                        ; $632c: $23
    adc b                                         ; $632d: $88
    jp nz, Jump_042_48de                          ; $632e: $c2 $de $48

    ld [hl], c                                    ; $6331: $71
    cp a                                          ; $6332: $bf
    pop de                                        ; $6333: $d1
    xor a                                         ; $6334: $af
    or l                                          ; $6335: $b5
    daa                                           ; $6336: $27
    db $e4                                        ; $6337: $e4
    dec d                                         ; $6338: $15
    sbc [hl]                                      ; $6339: $9e
    ld d, b                                       ; $633a: $50
    adc c                                         ; $633b: $89
    dec de                                        ; $633c: $1b
    add hl, sp                                    ; $633d: $39
    ld l, l                                       ; $633e: $6d
    rst $18                                       ; $633f: $df
    and h                                         ; $6340: $a4
    ret nc                                        ; $6341: $d0

    cp l                                          ; $6342: $bd
    sub c                                         ; $6343: $91
    ld [c], a                                     ; $6344: $e2
    ld a, [hl]                                    ; $6345: $7e
    inc hl                                        ; $6346: $23
    adc $8f                                       ; $6347: $ce $8f
    inc l                                         ; $6349: $2c
    ld h, e                                       ; $634a: $63
    db $fc                                        ; $634b: $fc
    ld [hl-], a                                   ; $634c: $32
    ld sp, hl                                     ; $634d: $f9
    sbc l                                         ; $634e: $9d
    push hl                                       ; $634f: $e5
    ld e, [hl]                                    ; $6350: $5e
    jp nz, $8330                                  ; $6351: $c2 $30 $83

    ld c, h                                       ; $6354: $4c
    sbc a                                         ; $6355: $9f
    ld a, [hl-]                                   ; $6356: $3a
    inc hl                                        ; $6357: $23
    or c                                          ; $6358: $b1
    ld [hl], e                                    ; $6359: $73
    ld h, e                                       ; $635a: $63
    ld l, d                                       ; $635b: $6a
    and d                                         ; $635c: $a2
    ld l, $ce                                     ; $635d: $2e $ce
    adc a                                         ; $635f: $8f
    cp b                                          ; $6360: $b8
    reti                                          ; $6361: $d9


    ld h, e                                       ; $6362: $63
    adc b                                         ; $6363: $88
    ld [hl], a                                    ; $6364: $77
    ld c, d                                       ; $6365: $4a
    ld b, c                                       ; $6366: $41
    cp a                                          ; $6367: $bf
    ld [bc], a                                    ; $6368: $02
    cp [hl]                                       ; $6369: $be
    cp b                                          ; $636a: $b8
    inc d                                         ; $636b: $14
    ld d, h                                       ; $636c: $54
    adc e                                         ; $636d: $8b
    ld hl, $3a5e                                  ; $636e: $21 $5e $3a
    halt                                          ; $6371: $76
    ld d, c                                       ; $6372: $51
    cp a                                          ; $6373: $bf
    rst $30                                       ; $6374: $f7
    add a                                         ; $6375: $87
    jp hl                                         ; $6376: $e9


    rst $00                                       ; $6377: $c7
    db $ed                                        ; $6378: $ed
    cpl                                           ; $6379: $2f
    dec b                                         ; $637a: $05
    cp d                                          ; $637b: $ba
    call nc, $337e                                ; $637c: $d4 $7e $33
    ld [bc], a                                    ; $637f: $02
    db $fd                                        ; $6380: $fd
    ld a, [bc]                                    ; $6381: $0a
    ld [hl], l                                    ; $6382: $75
    ld h, c                                       ; $6383: $61
    adc [hl]                                      ; $6384: $8e
    add b                                         ; $6385: $80
    ld l, $fe                                     ; $6386: $2e $fe
    cp a                                          ; $6388: $bf
    inc l                                         ; $6389: $2c
    or b                                          ; $638a: $b0
    cp b                                          ; $638b: $b8
    cpl                                           ; $638c: $2f
    inc de                                        ; $638d: $13
    ld a, [c]                                     ; $638e: $f2
    ld a, [bc]                                    ; $638f: $0a
    ld c, a                                       ; $6390: $4f
    xor b                                         ; $6391: $a8
    call nz, $9c8d                                ; $6392: $c4 $8d $9c
    or [hl]                                       ; $6395: $b6
    ld l, a                                       ; $6396: $6f
    ld [c], a                                     ; $6397: $e2
    ld h, [hl]                                    ; $6398: $66
    adc a                                         ; $6399: $8f
    ld h, l                                       ; $639a: $65
    add hl, de                                    ; $639b: $19
    ld e, e                                       ; $639c: $5b
    add $3e                                       ; $639d: $c6 $3e
    ld [$43e3], a                                 ; $639f: $ea $e3 $43
    ld d, c                                       ; $63a2: $51
    jr @+$5b                                      ; $63a3: $18 $59

    sbc $f8                                       ; $63a5: $de $f8
    ld l, d                                       ; $63a7: $6a
    xor l                                         ; $63a8: $ad
    cp [hl]                                       ; $63a9: $be
    push af                                       ; $63aa: $f5
    jp hl                                         ; $63ab: $e9


    ld d, d                                       ; $63ac: $52
    inc hl                                        ; $63ad: $23
    push hl                                       ; $63ae: $e5
    scf                                           ; $63af: $37
    ld h, e                                       ; $63b0: $63
    rst $28                                       ; $63b1: $ef
    rst $20                                       ; $63b2: $e7
    adc c                                         ; $63b3: $89
    sub a                                         ; $63b4: $97
    adc [hl]                                      ; $63b5: $8e
    ld e, l                                       ; $63b6: $5d
    call nc, $fdef                                ; $63b7: $d4 $ef $fd
    ld e, c                                       ; $63ba: $59
    add $f8                                       ; $63bb: $c6 $f8
    ld b, e                                       ; $63bd: $43
    jp nz, $e4ca                                  ; $63be: $c2 $ca $e4

    and d                                         ; $63c1: $a2
    db $dd                                        ; $63c2: $dd
    sbc e                                         ; $63c3: $9b
    ld a, [hl-]                                   ; $63c4: $3a
    cp c                                          ; $63c5: $b9
    ld a, $75                                     ; $63c6: $3e $75
    ld h, c                                       ; $63c8: $61
    adc $5f                                       ; $63c9: $ce $5f
    ld l, a                                       ; $63cb: $6f
    ld l, d                                       ; $63cc: $6a
    call nz, $1ecd                                ; $63cd: $c4 $cd $1e
    swap d                                        ; $63d0: $cb $32
    or [hl]                                       ; $63d2: $b6
    adc h                                         ; $63d3: $8c
    ld a, l                                       ; $63d4: $7d
    xor l                                         ; $63d5: $ad
    dec d                                         ; $63d6: $15
    cp [hl]                                       ; $63d7: $be
    rla                                           ; $63d8: $17
    or [hl]                                       ; $63d9: $b6
    ld h, a                                       ; $63da: $67
    cp $a8                                        ; $63db: $fe $a8
    dec bc                                        ; $63dd: $0b
    sub l                                         ; $63de: $95
    adc a                                         ; $63df: $8f
    ld a, e                                       ; $63e0: $7b
    ld d, c                                       ; $63e1: $51
    ret c                                         ; $63e2: $d8

    sbc a                                         ; $63e3: $9f
    ld [hl], a                                    ; $63e4: $77
    ld c, $e5                                     ; $63e5: $0e $e5
    jp $c5f6                                      ; $63e7: $c3 $f6 $c5


    dec sp                                        ; $63ea: $3b
    ld d, [hl]                                    ; $63eb: $56
    dec a                                         ; $63ec: $3d
    ld a, a                                       ; $63ed: $7f
    ld d, $58                                     ; $63ee: $16 $58
    ld h, b                                       ; $63f0: $60
    ld [hl], $86                                  ; $63f1: $36 $86
    sbc h                                         ; $63f3: $9c
    add h                                         ; $63f4: $84
    ld c, d                                       ; $63f5: $4a
    call c, Call_042_69c8                         ; $63f6: $dc $c8 $69
    ei                                            ; $63f9: $fb
    and [hl]                                      ; $63fa: $a6
    ld e, a                                       ; $63fb: $5f
    ld bc, $521d                                  ; $63fc: $01 $1d $52
    inc d                                         ; $63ff: $14
    sbc [hl]                                      ; $6400: $9e
    sub h                                         ; $6401: $94
    push hl                                       ; $6402: $e5
    and b                                         ; $6403: $a0
    ld a, l                                       ; $6404: $7d
    or $67                                        ; $6405: $f6 $67
    ld sp, $0814                                  ; $6407: $31 $14 $08
    pop af                                        ; $640a: $f1
    and e                                         ; $640b: $a3
    or b                                          ; $640c: $b0
    rst $30                                       ; $640d: $f7
    rst $00                                       ; $640e: $c7
    pop bc                                        ; $640f: $c1
    ld a, $85                                     ; $6410: $3e $85
    xor $2c                                       ; $6412: $ee $2c
    ld c, a                                       ; $6414: $4f
    ld e, [hl]                                    ; $6415: $5e
    dec b                                         ; $6416: $05
    pop hl                                        ; $6417: $e1
    jp hl                                         ; $6418: $e9


    ld d, a                                       ; $6419: $57
    db $ed                                        ; $641a: $ed
    ld a, l                                       ; $641b: $7d
    ld d, $1b                                     ; $641c: $16 $1b
    cpl                                           ; $641e: $2f
    ld c, d                                       ; $641f: $4a
    add hl, de                                    ; $6420: $19
    ld b, e                                       ; $6421: $43
    add hl, hl                                    ; $6422: $29
    sbc a                                         ; $6423: $9f
    or $5d                                        ; $6424: $f6 $5d
    ld e, e                                       ; $6426: $5b
    or $72                                        ; $6427: $f6 $72
    call z, $e921                                 ; $6429: $cc $21 $e9
    ld l, h                                       ; $642c: $6c
    call nz, $91f9                                ; $642d: $c4 $f9 $91
    dec a                                         ; $6430: $3d
    ld [hl], c                                    ; $6431: $71
    rst $08                                       ; $6432: $cf
    ld c, h                                       ; $6433: $4c
    db $ed                                        ; $6434: $ed
    ld a, [$7515]                                 ; $6435: $fa $15 $75
    db $10                                        ; $6438: $10
    rst $38                                       ; $6439: $ff
    db $e4                                        ; $643a: $e4
    sub a                                         ; $643b: $97
    dec b                                         ; $643c: $05
    ld a, [c]                                     ; $643d: $f2
    ld hl, $f0af                                  ; $643e: $21 $af $f0
    add h                                         ; $6441: $84
    jp z, Jump_042_77e4                           ; $6442: $ca $e4 $77

    sub [hl]                                      ; $6445: $96
    ld a, e                                       ; $6446: $7b
    add hl, bc                                    ; $6447: $09
    jp Jump_000_320c                              ; $6448: $c3 $0c $32


    db $fd                                        ; $644b: $fd
    ld a, [bc]                                    ; $644c: $0a
    ld [hl], l                                    ; $644d: $75
    and [hl]                                      ; $644e: $a6
    ld c, a                                       ; $644f: $4f
    dec de                                        ; $6450: $1b
    ld h, c                                       ; $6451: $61
    ld e, d                                       ; $6452: $5a
    ld l, e                                       ; $6453: $6b
    dec b                                         ; $6454: $05
    ld [hl], l                                    ; $6455: $75
    ld b, [hl]                                    ; $6456: $46
    ld [hl+], a                                   ; $6457: $22
    ld c, b                                       ; $6458: $48
    sbc c                                         ; $6459: $99
    ret z                                         ; $645a: $c8

jr_042_645b:
    ld b, c                                       ; $645b: $41
    jr jr_042_645b                                ; $645c: $18 $fd

    ld a, [bc]                                    ; $645e: $0a
    ld [hl], l                                    ; $645f: $75
    and [hl]                                      ; $6460: $a6
    ld c, a                                       ; $6461: $4f
    xor e                                         ; $6462: $ab
    and h                                         ; $6463: $a4
    pop hl                                        ; $6464: $e1
    and d                                         ; $6465: $a2
    add [hl]                                      ; $6466: $86
    and h                                         ; $6467: $a4
    inc a                                         ; $6468: $3c
    ld hl, $60a1                                  ; $6469: $21 $a1 $60
    ld a, e                                       ; $646c: $7b
    ld l, d                                       ; $646d: $6a
    xor l                                         ; $646e: $ad
    ld [hl], l                                    ; $646f: $75
    ld b, [hl]                                    ; $6470: $46
    ld [c], a                                     ; $6471: $e2
    sbc a                                         ; $6472: $9f
    sub b                                         ; $6473: $90
    ld d, a                                       ; $6474: $57
    ld a, b                                       ; $6475: $78
    ld [c], a                                     ; $6476: $e2
    ld b, [hl]                                    ; $6477: $46
    ld c, [hl]                                    ; $6478: $4e
    db $db                                        ; $6479: $db
    and a                                         ; $647a: $a7
    adc e                                         ; $647b: $8b
    cp d                                          ; $647c: $ba
    ld [$a14a], sp                                ; $647d: $08 $4a $a1
    ld [de], a                                    ; $6480: $12
    scf                                           ; $6481: $37
    ld a, e                                       ; $6482: $7b
    inc c                                         ; $6483: $0c
    db $fd                                        ; $6484: $fd
    ld a, [bc]                                    ; $6485: $0a
    cp [hl]                                       ; $6486: $be
    cp b                                          ; $6487: $b8
    sub h                                         ; $6488: $94
    ld [hl], e                                    ; $6489: $73
    call nc, $ea26                                ; $648a: $d4 $26 $ea

jr_042_648d:
    ld d, d                                       ; $648d: $52
    jr nz, jr_042_650c                            ; $648e: $20 $7c

    add $17                                       ; $6490: $c6 $17
    dec a                                         ; $6492: $3d
    inc b                                         ; $6493: $04
    cp d                                          ; $6494: $ba
    call nc, $337e                                ; $6495: $d4 $7e $33
    ld [bc], a                                    ; $6498: $02
    or l                                          ; $6499: $b5
    ld d, [hl]                                    ; $649a: $56
    sbc l                                         ; $649b: $9d
    cp $e5                                        ; $649c: $fe $e5
    ld [hl], e                                    ; $649e: $73
    push de                                       ; $649f: $d5
    ld [hl-], a                                   ; $64a0: $32
    add $54                                       ; $64a1: $c6 $54
    sbc $10                                       ; $64a3: $de $10
    rra                                           ; $64a5: $1f
    ld a, [$51db]                                 ; $64a6: $fa $db $51
    ret                                           ; $64a9: $c9


    ld l, a                                       ; $64aa: $6f
    or [hl]                                       ; $64ab: $b6
    adc c                                         ; $64ac: $89
    dec de                                        ; $64ad: $1b
    ret                                           ; $64ae: $c9


    ld b, [hl]                                    ; $64af: $46
    sbc b                                         ; $64b0: $98
    ld [hl+], a                                   ; $64b1: $22
    add l                                         ; $64b2: $85
    jp hl                                         ; $64b3: $e9


    ld [hl], d                                    ; $64b4: $72
    ld a, [bc]                                    ; $64b5: $0a
    ld d, c                                       ; $64b6: $51
    ld d, e                                       ; $64b7: $53
    cp l                                          ; $64b8: $bd
    jr z, @-$2a                                   ; $64b9: $28 $d4

    ld e, h                                       ; $64bb: $5c
    ld bc, $966d                                  ; $64bc: $01 $6d $96
    ld d, d                                       ; $64bf: $52
    ld c, d                                       ; $64c0: $4a
    cp a                                          ; $64c1: $bf
    ld [bc], a                                    ; $64c2: $02
    ld [hl], l                                    ; $64c3: $75
    ld b, [hl]                                    ; $64c4: $46
    sub a                                         ; $64c5: $97
    ld [$40a3], a                                 ; $64c6: $ea $a3 $40
    ld c, [hl]                                    ; $64c9: $4e

Jump_042_64ca:
    cp [hl]                                       ; $64ca: $be
    xor d                                         ; $64cb: $aa
    ret nz                                        ; $64cc: $c0

    inc c                                         ; $64cd: $0c
    ld b, e                                       ; $64ce: $43
    sbc h                                         ; $64cf: $9c
    rra                                           ; $64d0: $1f
    reti                                          ; $64d1: $d9


    ld e, $a7                                     ; $64d2: $1e $a7
    ldh a, [$a9]                                  ; $64d4: $f0 $a9
    ld l, $bf                                     ; $64d6: $2e $bf
    scf                                           ; $64d8: $37
    sbc b                                         ; $64d9: $98
    cp a                                          ; $64da: $bf
    ld e, a                                       ; $64db: $5f
    ld bc, $4675                                  ; $64dc: $01 $75 $46
    ld [c], a                                     ; $64df: $e2
    sbc a                                         ; $64e0: $9f
    jr nc, jr_042_648d                            ; $64e1: $30 $aa

    ld h, l                                       ; $64e3: $65
    or d                                          ; $64e4: $b2
    ret nz                                        ; $64e5: $c0

    and d                                         ; $64e6: $a2
    db $ed                                        ; $64e7: $ed
    res 1, c                                      ; $64e8: $cb $89
    ld a, [de]                                    ; $64ea: $1a
    ld a, [c]                                     ; $64eb: $f2
    inc b                                         ; $64ec: $04
    ld a, e                                       ; $64ed: $7b
    sbc a                                         ; $64ee: $9f
    ld l, $75                                     ; $64ef: $2e $75
    add a                                         ; $64f1: $87
    add hl, de                                    ; $64f2: $19

Call_042_64f3:
    sub $af                                       ; $64f3: $d6 $af
    sbc [hl]                                      ; $64f5: $9e
    cp $83                                        ; $64f6: $fe $83
    cp d                                          ; $64f8: $ba
    ld a, h                                       ; $64f9: $7c
    ld l, d                                       ; $64fa: $6a
    cp a                                          ; $64fb: $bf
    ld h, [hl]                                    ; $64fc: $66
    and a                                         ; $64fd: $a7
    ld a, [$47b4]                                 ; $64fe: $fa $b4 $47
    cpl                                           ; $6501: $2f
    push hl                                       ; $6502: $e5
    ld d, e                                       ; $6503: $53
    ld d, b                                       ; $6504: $50
    dec l                                         ; $6505: $2d
    add [hl]                                      ; $6506: $86
    jr nc, jr_042_656e                            ; $6507: $30 $65

    sbc [hl]                                      ; $6509: $9e
    inc d                                         ; $650a: $14
    xor d                                         ; $650b: $aa

jr_042_650c:
    db $ed                                        ; $650c: $ed
    set 1, e                                      ; $650d: $cb $cb
    ld d, l                                       ; $650f: $55
    cp a                                          ; $6510: $bf
    cpl                                           ; $6511: $2f
    adc $8f                                       ; $6512: $ce $8f
    sub b                                         ; $6514: $90
    cpl                                           ; $6515: $2f
    ld [hl-], a                                   ; $6516: $32
    ld b, c                                       ; $6517: $41
    ld c, b                                       ; $6518: $48
    adc b                                         ; $6519: $88
    ld [hl], $32                                  ; $651a: $36 $32
    ld d, c                                       ; $651c: $51
    ld a, a                                       ; $651d: $7f
    pop de                                        ; $651e: $d1
    xor $4d                                       ; $651f: $ee $4d
    sbc l                                         ; $6521: $9d
    ld e, h                                       ; $6522: $5c
    inc d                                         ; $6523: $14
    or $fe                                        ; $6524: $f6 $fe
    inc d                                         ; $6526: $14
    ld b, a                                       ; $6527: $47
    ld h, a                                       ; $6528: $67
    ld a, a                                       ; $6529: $7f
    cp a                                          ; $652a: $bf
    ld [bc], a                                    ; $652b: $02
    dec l                                         ; $652c: $2d
    ld b, a                                       ; $652d: $47
    ld c, a                                       ; $652e: $4f
    cp l                                          ; $652f: $bd
    sbc $89                                       ; $6530: $de $89
    di                                            ; $6532: $f3
    inc hl                                        ; $6533: $23
    ld c, h                                       ; $6534: $4c
    ld d, e                                       ; $6535: $53
    ld hl, $e27b                                  ; $6536: $21 $7b $e2
    db $fc                                        ; $6539: $fc
    rlca                                          ; $653a: $07
    push af                                       ; $653b: $f5
    ld a, l                                       ; $653c: $7d
    ld [$3520], a                                 ; $653d: $ea $20 $35
    ld a, [c]                                     ; $6540: $f2
    rlc d                                         ; $6541: $cb $02
    ld sp, hl                                     ; $6543: $f9
    inc l                                         ; $6544: $2c
    ld e, a                                       ; $6545: $5f
    jp z, $84f3                                   ; $6546: $ca $f3 $84

    jp z, $fca4                                   ; $6549: $ca $a4 $fc

    ld h, [hl]                                    ; $654c: $66
    db $ec                                        ; $654d: $ec
    db $fd                                        ; $654e: $fd
    and d                                         ; $654f: $a2
    and [hl]                                      ; $6550: $a6
    ld c, a                                       ; $6551: $4f
    rst $00                                       ; $6552: $c7
    cp $31                                        ; $6553: $fe $31
    ld e, l                                       ; $6555: $5d
    sbc h                                         ; $6556: $9c
    rra                                           ; $6557: $1f
    ld d, c                                       ; $6558: $51
    sub a                                         ; $6559: $97
    ld [hl-], a                                   ; $655a: $32
    ei                                            ; $655b: $fb
    ld a, b                                       ; $655c: $78
    ld [hl], d                                    ; $655d: $72
    ld d, d                                       ; $655e: $52
    and b                                         ; $655f: $a0
    ld d, c                                       ; $6560: $51
    and h                                         ; $6561: $a4
    and b                                         ; $6562: $a0
    ld e, d                                       ; $6563: $5a
    inc c                                         ; $6564: $0c
    cp c                                          ; $6565: $b9
    cp b                                          ; $6566: $b8
    sub c                                         ; $6567: $91
    db $d3                                        ; $6568: $d3
    or $e9                                        ; $6569: $f6 $e9
    ld [c], a                                     ; $656b: $e2
    ld b, e                                       ; $656c: $43
    ld d, c                                       ; $656d: $51

jr_042_656e:
    ld hl, sp+$43                                 ; $656e: $f8 $43
    adc $e6                                       ; $6570: $ce $e6
    ld c, a                                       ; $6572: $4f
    cp c                                          ; $6573: $b9
    call nc, Call_042_4308                        ; $6574: $d4 $08 $43
    jr z, jr_042_65c8                             ; $6577: $28 $4f

    db $f4                                        ; $6579: $f4
    sub b                                         ; $657a: $90
    db $ec                                        ; $657b: $ec
    ld de, $997e                                  ; $657c: $11 $7e $99
    ld a, [hl]                                    ; $657f: $7e
    dec b                                         ; $6580: $05
    ld [hl], l                                    ; $6581: $75
    ld b, [hl]                                    ; $6582: $46
    ld [bc], a                                    ; $6583: $02
    ei                                            ; $6584: $fb
    ld d, b                                       ; $6585: $50
    adc c                                         ; $6586: $89
    dec de                                        ; $6587: $1b
    add hl, sp                                    ; $6588: $39
    ld l, l                                       ; $6589: $6d
    rst $18                                       ; $658a: $df
    add h                                         ; $658b: $84
    add h                                         ; $658c: $84
    ld c, l                                       ; $658d: $4d
    sub b                                         ; $658e: $90
    push bc                                       ; $658f: $c5
    ld h, [hl]                                    ; $6590: $66
    or c                                          ; $6591: $b1
    sbc e                                         ; $6592: $9b
    ld d, $53                                     ; $6593: $16 $53
    ld l, $6c                                     ; $6595: $2e $6c
    rst $08                                       ; $6597: $cf
    db $fc                                        ; $6598: $fc
    db $e4                                        ; $6599: $e4
    ld b, a                                       ; $659a: $47
    ld e, l                                       ; $659b: $5d
    xor b                                         ; $659c: $a8
    ld a, h                                       ; $659d: $7c
    call c, $c28b                                 ; $659e: $dc $8b $c2
    cp $bc                                        ; $65a1: $fe $bc
    ld [hl], e                                    ; $65a3: $73
    jr z, jr_042_65c5                             ; $65a4: $28 $1f

    or [hl]                                       ; $65a6: $b6
    cpl                                           ; $65a7: $2f
    sbc $b1                                       ; $65a8: $de $b1
    ld [$6bf9], a                                 ; $65aa: $ea $f9 $6b
    xor [hl]                                      ; $65ad: $ae
    dec e                                         ; $65ae: $1d
    ld d, d                                       ; $65af: $52
    inc d                                         ; $65b0: $14
    sbc [hl]                                      ; $65b1: $9e
    sub h                                         ; $65b2: $94
    push hl                                       ; $65b3: $e5
    and b                                         ; $65b4: $a0
    ld a, l                                       ; $65b5: $7d
    or [hl]                                       ; $65b6: $b6
    rst $00                                       ; $65b7: $c7
    xor b                                         ; $65b8: $a8
    ld sp, $5d44                                  ; $65b9: $31 $44 $5d
    ld d, $ec                                     ; $65bc: $16 $ec
    adc c                                         ; $65be: $89
    sbc $a8                                       ; $65bf: $de $a8
    cp e                                          ; $65c1: $bb
    rst $20                                       ; $65c2: $e7
    jp hl                                         ; $65c3: $e9


    ld d, a                                       ; $65c4: $57

jr_042_65c5:
    xor l                                         ; $65c5: $ad
    rrca                                          ; $65c6: $0f
    jp hl                                         ; $65c7: $e9


jr_042_65c8:
    ld d, c                                       ; $65c8: $51
    inc hl                                        ; $65c9: $23
    cpl                                           ; $65ca: $2f
    ld [$6a79], a                                 ; $65cb: $ea $79 $6a
    xor l                                         ; $65ce: $ad
    sbc l                                         ; $65cf: $9d
    jp nz, Jump_042_64ca                          ; $65d0: $c2 $ca $64

    ld a, a                                       ; $65d3: $7f
    ld a, [bc]                                    ; $65d4: $0a
    call z, Call_042_4fbe                         ; $65d5: $cc $be $4f
    xor e                                         ; $65d8: $ab
    ld a, e                                       ; $65d9: $7b
    ld a, a                                       ; $65da: $7f
    db $ec                                        ; $65db: $ec
    inc e                                         ; $65dc: $1c
    call z, $d47d                                 ; $65dd: $cc $7d $d4
    add l                                         ; $65e0: $85
    add h                                         ; $65e1: $84
    add hl, hl                                    ; $65e2: $29
    ld l, d                                       ; $65e3: $6a
    adc b                                         ; $65e4: $88
    cp d                                          ; $65e5: $ba
    jr c, @-$26                                   ; $65e6: $38 $d8

    db $eb                                        ; $65e8: $eb
    or d                                          ; $65e9: $b2
    ret c                                         ; $65ea: $d8

    add sp, $5f                                   ; $65eb: $e8 $5f
    ld a, a                                       ; $65ed: $7f
    cp e                                          ; $65ee: $bb
    add d                                         ; $65ef: $82
    jr nc, @-$04                                  ; $65f0: $30 $fa

    dec d                                         ; $65f2: $15
    dec e                                         ; $65f3: $1d
    ld e, a                                       ; $65f4: $5f
    call c, $7908                                 ; $65f5: $dc $08 $79
    db $10                                        ; $65f8: $10
    add h                                         ; $65f9: $84
    ld l, l                                       ; $65fa: $6d
    ret z                                         ; $65fb: $c8

    or a                                          ; $65fc: $b7
    dec a                                         ; $65fd: $3d
    add hl, sp                                    ; $65fe: $39
    adc c                                         ; $65ff: $89
    rst $10                                       ; $6600: $d7
    ret nz                                        ; $6601: $c0

    db $fc                                        ; $6602: $fc
    cp d                                          ; $6603: $ba
    call nc, $337e                                ; $6604: $d4 $7e $33
    ld [bc], a                                    ; $6607: $02
    ld a, l                                       ; $6608: $7d
    ld [$848c], a                                 ; $6609: $ea $8c $84
    inc e                                         ; $660c: $1c
    inc sp                                        ; $660d: $33
    ld e, h                                       ; $660e: $5c
    sbc h                                         ; $660f: $9c
    rra                                           ; $6610: $1f
    add hl, hl                                    ; $6611: $29
    ld l, [hl]                                    ; $6612: $6e
    sub [hl]                                      ; $6613: $96
    push hl                                       ; $6614: $e5
    cp [hl]                                       ; $6615: $be
    inc d                                         ; $6616: $14
    call nz, $fe87                                ; $6617: $c4 $87 $fe
    halt                                          ; $661a: $76
    ld a, [hl]                                    ; $661b: $7e
    db $e4                                        ; $661c: $e4

Call_042_661d:
    call nz, $d441                                ; $661d: $c4 $41 $d4
    ld c, l                                       ; $6620: $4d
    inc b                                         ; $6621: $04
    ld a, e                                       ; $6622: $7b
    ld a, a                                       ; $6623: $7f

jr_042_6624:
    cp h                                          ; $6624: $bc
    ld h, e                                       ; $6625: $63
    jr z, jr_042_6624                             ; $6626: $28 $fc

    db $fd                                        ; $6628: $fd
    ld a, [bc]                                    ; $6629: $0a
    or l                                          ; $662a: $b5
    xor e                                         ; $662b: $ab
    ld c, d                                       ; $662c: $4a
    rla                                           ; $662d: $17
    rst $28                                       ; $662e: $ef
    ld e, b                                       ; $662f: $58
    ld b, c                                       ; $6630: $41
    jp z, $ed85                                   ; $6631: $ca $85 $ed

    sbc c                                         ; $6634: $99
    ccf                                           ; $6635: $3f
    ld [$43e2], a                                 ; $6636: $ea $e2 $43
    or c                                          ; $6639: $b1
    rst $30                                       ; $663a: $f7
    rst $00                                       ; $663b: $c7
    ld c, l                                       ; $663c: $4d
    ld sp, hl                                     ; $663d: $f9
    cp b                                          ; $663e: $b8
    reti                                          ; $663f: $d9


    ld h, e                                       ; $6640: $63
    ld e, c                                       ; $6641: $59
    add $96                                       ; $6642: $c6 $96
    or c                                          ; $6644: $b1
    adc a                                         ; $6645: $8f
    di                                            ; $6646: $f3
    inc hl                                        ; $6647: $23
    cp $09                                        ; $6648: $fe $09
    ld a, c                                       ; $664a: $79
    add l                                         ; $664b: $85
    daa                                           ; $664c: $27
    push hl                                       ; $664d: $e5
    scf                                           ; $664e: $37
    ld h, e                                       ; $664f: $63
    rst $28                                       ; $6650: $ef
    scf                                           ; $6651: $37
    call nz, Call_042_5e87                        ; $6652: $c4 $87 $5e
    cp h                                          ; $6655: $bc
    ld [hl], h                                    ; $6656: $74
    db $ec                                        ; $6657: $ec
    ld a, [$1cb4]                                 ; $6658: $fa $b4 $1c
    and [hl]                                      ; $665b: $a6
    ld d, e                                       ; $665c: $53
    ld l, e                                       ; $665d: $6b
    dec b                                         ; $665e: $05
    ld [hl], l                                    ; $665f: $75
    ld b, [hl]                                    ; $6660: $46
    sub a                                         ; $6661: $97
    ld a, [de]                                    ; $6662: $1a
    cp c                                          ; $6663: $b9
    dec e                                         ; $6664: $1d
    cp e                                          ; $6665: $bb
    ld b, d                                       ; $6666: $42
    scf                                           ; $6667: $37
    ccf                                           ; $6668: $3f
    ld c, a                                       ; $6669: $4f
    call nc, $ca85                                ; $666a: $d4 $85 $ca
    and a                                         ; $666d: $a7
    ld a, d                                       ; $666e: $7a
    db $ed                                        ; $666f: $ed
    ld a, $45                                     ; $6670: $3e $45
    rst $38                                       ; $6672: $ff
    jp c, $e7be                                   ; $6673: $da $be $e7

    rst $28                                       ; $6676: $ef
    db $d3                                        ; $6677: $d3
    sbc $67                                       ; $6678: $de $67
    or c                                          ; $667a: $b1
    pop af                                        ; $667b: $f1
    and d                                         ; $667c: $a2
    sub h                                         ; $667d: $94
    ld sp, $f294                                  ; $667e: $31 $94 $f2
    ld l, c                                       ; $6681: $69
    rst $18                                       ; $6682: $df
    or l                                          ; $6683: $b5
    ld h, l                                       ; $6684: $65
    cpl                                           ; $6685: $2f
    rst $00                                       ; $6686: $c7
    sbc h                                         ; $6687: $9c
    ld [$ffe2], a                                 ; $6688: $ea $e2 $ff
    sbc h                                         ; $668b: $9c
    cp b                                          ; $668c: $b8
    or a                                          ; $668d: $b7
    ld [hl], e                                    ; $668e: $73
    rst $08                                       ; $668f: $cf
    inc de                                        ; $6690: $13
    ld [hl], l                                    ; $6691: $75
    ld [hl], c                                    ; $6692: $71
    rst $08                                       ; $6693: $cf
    ld c, h                                       ; $6694: $4c
    db $ed                                        ; $6695: $ed
    ld l, l                                       ; $6696: $6d
    ld c, a                                       ; $6697: $4f
    cp a                                          ; $6698: $bf
    ld [bc], a                                    ; $6699: $02
    xor l                                         ; $669a: $ad
    pop bc                                        ; $669b: $c1

jr_042_669c:
    xor a                                         ; $669c: $af
    adc e                                         ; $669d: $8b
    sbc [hl]                                      ; $669e: $9e
    adc [hl]                                      ; $669f: $8e
    ld a, h                                       ; $66a0: $7c
    cp h                                          ; $66a1: $bc
    ld h, e                                       ; $66a2: $63
    ld c, h                                       ; $66a3: $4c
    push hl                                       ; $66a4: $e5
    ei                                            ; $66a5: $fb
    ld [hl], h                                    ; $66a6: $74
    ld a, h                                       ; $66a7: $7c
    ld sp, hl                                     ; $66a8: $f9
    and e                                         ; $66a9: $a3
    inc c                                         ; $66aa: $0c
    jp $9c85                                      ; $66ab: $c3 $85 $9c


    dec c                                         ; $66ae: $0d
    pop hl                                        ; $66af: $e1
    add e                                         ; $66b0: $83
    sbc l                                         ; $66b1: $9d
    ld l, $d5                                     ; $66b2: $2e $d5
    and a                                         ; $66b4: $a7
    adc h                                         ; $66b5: $8c
    ld c, h                                       ; $66b6: $4c
    xor [hl]                                      ; $66b7: $ae
    ld e, d                                       ; $66b8: $5a
    and b                                         ; $66b9: $a0
    ret                                           ; $66ba: $c9


    di                                            ; $66bb: $f3
    rst $20                                       ; $66bc: $e7
    ld d, l                                       ; $66bd: $55
    ld e, [hl]                                    ; $66be: $5e
    xor c                                         ; $66bf: $a9
    xor c                                         ; $66c0: $a9
    ld d, b                                       ; $66c1: $50
    ld hl, sp-$24                                 ; $66c2: $f8 $dc
    dec de                                        ; $66c4: $1b
    and d                                         ; $66c5: $a2
    or b                                          ; $66c6: $b0
    ld h, e                                       ; $66c7: $63
    ld d, a                                       ; $66c8: $57
    ld h, $05                                     ; $66c9: $26 $05
    sbc e                                         ; $66cb: $9b
    ld a, h                                       ; $66cc: $7c
    ld a, $37                                     ; $66cd: $3e $37
    db $fd                                        ; $66cf: $fd
    ld a, [bc]                                    ; $66d0: $0a
    xor l                                         ; $66d1: $ad
    add e                                         ; $66d2: $83
    db $f4                                        ; $66d3: $f4
    ld b, b                                       ; $66d4: $40
    add hl, hl                                    ; $66d5: $29
    jr nc, jr_042_669c                            ; $66d6: $30 $c4

    add a                                         ; $66d8: $87
    ld h, d                                       ; $66d9: $62
    rst $28                                       ; $66da: $ef
    xor c                                         ; $66db: $a9
    cp c                                          ; $66dc: $b9
    ld [bc], a                                    ; $66dd: $02
    xor l                                         ; $66de: $ad
    ld b, c                                       ; $66df: $41
    and b                                         ; $66e0: $a0
    ld c, e                                       ; $66e1: $4b
    db $ed                                        ; $66e2: $ed
    scf                                           ; $66e3: $37
    inc hl                                        ; $66e4: $23
    and b                                         ; $66e5: $a0
    ld c, e                                       ; $66e6: $4b
    adc l                                         ; $66e7: $8d
    jr nc, jr_042_674f                            ; $66e8: $30 $65

    sbc [hl]                                      ; $66ea: $9e
    sub h                                         ; $66eb: $94
    dec hl                                        ; $66ec: $2b
    adc h                                         ; $66ed: $8c
    ld [$fa79], a                                 ; $66ee: $ea $79 $fa
    dec d                                         ; $66f1: $15
    dec e                                         ; $66f2: $1d
    ld d, d                                       ; $66f3: $52
    inc d                                         ; $66f4: $14
    sbc [hl]                                      ; $66f5: $9e
    call nc, $f6c8                                ; $66f6: $d4 $c8 $f6
    and b                                         ; $66f9: $a0
    ld [hl], d                                    ; $66fa: $72
    ld l, [hl]                                    ; $66fb: $6e
    ld [c], a                                     ; $66fc: $e2
    ld b, [hl]                                    ; $66fd: $46
    ld c, [hl]                                    ; $66fe: $4e
    db $db                                        ; $66ff: $db
    scf                                           ; $6700: $37
    ld [hl], c                                    ; $6701: $71
    or e                                          ; $6702: $b3
    rst $00                                       ; $6703: $c7
    or d                                          ; $6704: $b2
    adc h                                         ; $6705: $8c
    dec l                                         ; $6706: $2d
    ld h, e                                       ; $6707: $63
    rra                                           ; $6708: $1f
    rst $20                                       ; $6709: $e7
    ld b, a                                       ; $670a: $47
    jp z, $c4c8                                   ; $670b: $ca $c8 $c4

    adc [hl]                                      ; $670e: $8e
    ld d, $77                                     ; $670f: $16 $77
    inc a                                         ; $6711: $3c
    ld sp, hl                                     ; $6712: $f9
    or b                                          ; $6713: $b0
    dec c                                         ; $6714: $0d
    ld sp, hl                                     ; $6715: $f9
    add [hl]                                      ; $6716: $86
    ld a, [hl]                                    ; $6717: $7e
    dec b                                         ; $6718: $05
    dec e                                         ; $6719: $1d
    jr nc, jr_042_677b                            ; $671a: $30 $5f

    dec [hl]                                      ; $671c: $35
    reti                                          ; $671d: $d9


    ld c, a                                       ; $671e: $4f
    adc [hl]                                      ; $671f: $8e
    adc l                                         ; $6720: $8d
    ld l, $b5                                     ; $6721: $2e $b5
    rst $18                                       ; $6723: $df
    adc h                                         ; $6724: $8c
    ld b, b                                       ; $6725: $40
    call Call_042_5ab4                            ; $6726: $cd $b4 $5a
    ld a, [bc]                                    ; $6729: $0a
    inc [hl]                                      ; $672a: $34
    add c                                         ; $672b: $81
    push de                                       ; $672c: $d5
    sbc a                                         ; $672d: $9f
    ld h, $9b                                     ; $672e: $26 $9b
    ret                                           ; $6730: $c9


    ld b, d                                       ; $6731: $42
    add l                                         ; $6732: $85
    cpl                                           ; $6733: $2f
    sbc a                                         ; $6734: $9f
    or [hl]                                       ; $6735: $b6
    db $ec                                        ; $6736: $ec
    cp h                                          ; $6737: $bc
    inc hl                                        ; $6738: $23
    ld l, d                                       ; $6739: $6a
    ld l, h                                       ; $673a: $6c
    add d                                         ; $673b: $82
    jr nc, jr_042_674b                            ; $673c: $30 $0d

    db $db                                        ; $673e: $db
    sub b                                         ; $673f: $90
    or b                                          ; $6740: $b0
    cp a                                          ; $6741: $bf
    jr z, @-$74                                   ; $6742: $28 $8a

    ld [$121d], sp                                ; $6744: $08 $1d $12
    xor c                                         ; $6747: $a9
    ld e, [hl]                                    ; $6748: $5e
    dec sp                                        ; $6749: $3b
    add h                                         ; $674a: $84

jr_042_674b:
    db $ed                                        ; $674b: $ed
    adc e                                         ; $674c: $8b
    or e                                          ; $674d: $b3
    ld h, e                                       ; $674e: $63

jr_042_674f:
    ld b, [hl]                                    ; $674f: $46
    inc b                                         ; $6750: $04
    dec sp                                        ; $6751: $3b
    ld c, h                                       ; $6752: $4c
    daa                                           ; $6753: $27
    ei                                            ; $6754: $fb
    db $f4                                        ; $6755: $f4
    ld [hl], $51                                  ; $6756: $36 $51
    sub a                                         ; $6758: $97
    inc de                                        ; $6759: $13
    rst $30                                       ; $675a: $f7
    jp nz, Jump_042_5728                          ; $675b: $c2 $28 $57

    ld e, l                                       ; $675e: $5d
    cp a                                          ; $675f: $bf
    ld [bc], a                                    ; $6760: $02
    or l                                          ; $6761: $b5
    rst $38                                       ; $6762: $ff
    ld [c], a                                     ; $6763: $e2
    sbc [hl]                                      ; $6764: $9e
    sbc c                                         ; $6765: $99
    jp c, $e4f3                                   ; $6766: $da $f3 $e4

    halt                                          ; $6769: $76
    call c, Call_042_69c8                         ; $676a: $dc $c8 $69
    ei                                            ; $676d: $fb
    ld b, [hl]                                    ; $676e: $46
    sub a                                         ; $676f: $97
    jp c, $466f                                   ; $6770: $da $6f $46

    and b                                         ; $6773: $a0
    sub $0a                                       ; $6774: $d6 $0a
    ld [hl], l                                    ; $6776: $75
    ld b, [hl]                                    ; $6777: $46
    rla                                           ; $6778: $17
    add hl, de                                    ; $6779: $19
    ld c, c                                       ; $677a: $49

jr_042_677b:
    add hl, de                                    ; $677b: $19
    sbc c                                         ; $677c: $99
    ret c                                         ; $677d: $d8

    pop de                                        ; $677e: $d1
    ld [c], a                                     ; $677f: $e2
    adc [hl]                                      ; $6780: $8e
    daa                                           ; $6781: $27
    rra                                           ; $6782: $1f
    or [hl]                                       ; $6783: $b6
    ld hl, $f6df                                  ; $6784: $21 $df $f6
    db $f4                                        ; $6787: $f4

jr_042_6788:
    dec hl                                        ; $6788: $2b
    xor l                                         ; $6789: $ad
    pop bc                                        ; $678a: $c1
    xor a                                         ; $678b: $af
    adc e                                         ; $678c: $8b
    adc h                                         ; $678d: $8c
    ld b, h                                       ; $678e: $44
    and c                                         ; $678f: $a1
    ld a, [de]                                    ; $6790: $1a
    ld d, e                                       ; $6791: $53
    jr nc, jr_042_6788                            ; $6792: $30 $f4

    xor c                                         ; $6794: $a9
    inc sp                                        ; $6795: $33
    ld [de], a                                    ; $6796: $12
    ld [hl], d                                    ; $6797: $72
    or h                                          ; $6798: $b4
    ld a, l                                       ; $6799: $7d
    inc de                                        ; $679a: $13
    rst $20                                       ; $679b: $e7
    ld b, a                                       ; $679c: $47
    adc d                                         ; $679d: $8a
    ld a, e                                       ; $679e: $7b
    add [hl]                                      ; $679f: $86
    ld e, h                                       ; $67a0: $5c
    ld a, h                                       ; $67a1: $7c
    add sp, $6f                                   ; $67a2: $e8 $6f
    rst $20                                       ; $67a4: $e7
    ld b, a                                       ; $67a5: $47
    ld c, [hl]                                    ; $67a6: $4e
    inc e                                         ; $67a7: $1c
    ld b, h                                       ; $67a8: $44
    db $dd                                        ; $67a9: $dd
    call nc, $015c                                ; $67aa: $d4 $5c $01
    cp [hl]                                       ; $67ad: $be
    cp b                                          ; $67ae: $b8
    ret c                                         ; $67af: $d8

    pop de                                        ; $67b0: $d1
    ld [c], a                                     ; $67b1: $e2
    adc [hl]                                      ; $67b2: $8e
    daa                                           ; $67b3: $27
    rra                                           ; $67b4: $1f
    or [hl]                                       ; $67b5: $b6
    ld hl, $90df                                  ; $67b6: $21 $df $90
    db $db                                        ; $67b9: $db
    ld [hl], c                                    ; $67ba: $71
    inc hl                                        ; $67bb: $23
    and a                                         ; $67bc: $a7
    db $ed                                        ; $67bd: $ed
    dec de                                        ; $67be: $1b
    ld e, l                                       ; $67bf: $5d
    ld l, d                                       ; $67c0: $6a
    cp a                                          ; $67c1: $bf
    add hl, de                                    ; $67c2: $19
    add c                                         ; $67c3: $81
    ld e, d                                       ; $67c4: $5a
    dec hl                                        ; $67c5: $2b
    ld [hl], l                                    ; $67c6: $75
    ld b, [hl]                                    ; $67c7: $46
    rla                                           ; $67c8: $17
    add hl, de                                    ; $67c9: $19
    ld c, c                                       ; $67ca: $49
    sbc c                                         ; $67cb: $99
    inc l                                         ; $67cc: $2c
    ld [hl], $8b                                  ; $67cd: $36 $8b
    db $dd                                        ; $67cf: $dd
    ld b, h                                       ; $67d0: $44
    dec c                                         ; $67d1: $0d
    adc c                                         ; $67d2: $89
    sub h                                         ; $67d3: $94
    ld c, e                                       ; $67d4: $4b
    cp c                                          ; $67d5: $b9
    adc a                                         ; $67d6: $8f
    ld a, e                                       ; $67d7: $7b
    rst $20                                       ; $67d8: $e7
    xor $79                                       ; $67d9: $ee $79
    ld a, [$ad15]                                 ; $67db: $fa $15 $ad
    add e                                         ; $67de: $83
    cp h                                          ; $67df: $bc
    or b                                          ; $67e0: $b0
    dec c                                         ; $67e1: $0d
    ld sp, hl                                     ; $67e2: $f9
    or [hl]                                       ; $67e3: $b6
    and a                                         ; $67e4: $a7
    ld c, a                                       ; $67e5: $4f
    rst $00                                       ; $67e6: $c7
    sub a                                         ; $67e7: $97
    push bc                                       ; $67e8: $c5
    and b                                         ; $67e9: $a0
    adc l                                         ; $67ea: $8d
    ld l, $32                                     ; $67eb: $2e $32
    ld [de], a                                    ; $67ed: $12
    add l                                         ; $67ee: $85
    ld c, l                                       ; $67ef: $4d
    dec d                                         ; $67f0: $15
    xor h                                         ; $67f1: $ac
    cp d                                          ; $67f2: $ba
    ld d, b                                       ; $67f3: $50
    pop af                                        ; $67f4: $f1
    ld hl, sp-$33                                 ; $67f5: $f8 $cd
    or $21                                        ; $67f7: $f6 $21
    ld h, a                                       ; $67f9: $67
    di                                            ; $67fa: $f3
    rst $10                                       ; $67fb: $d7
    ld e, h                                       ; $67fc: $5c
    ld bc, $4675                                  ; $67fd: $01 $75 $46
    ld [c], a                                     ; $6800: $e2
    rst $38                                       ; $6801: $ff
    swap d                                        ; $6802: $cb $32
    add $cf                                       ; $6804: $c6 $cf
    sub e                                         ; $6806: $93
    rrca                                          ; $6807: $0f
    jp Jump_000_13aa                              ; $6808: $c3 $aa $13


    db $e4                                        ; $680b: $e4
    halt                                          ; $680c: $76
    sbc b                                         ; $680d: $98
    ld c, [hl]                                    ; $680e: $4e
    ld c, [hl]                                    ; $680f: $4e
    call c, $b9db                                 ; $6810: $dc $db $b9
    jp hl                                         ; $6813: $e9


    db $d3                                        ; $6814: $d3
    ld a, [hl-]                                   ; $6815: $3a
    ret z                                         ; $6816: $c8

    ld c, c                                       ; $6817: $49
    add hl, de                                    ; $6818: $19
    ld h, [hl]                                    ; $6819: $66
    ld a, e                                       ; $681a: $7b
    inc sp                                        ; $681b: $33
    and h                                         ; $681c: $a4
    adc c                                         ; $681d: $89
    inc l                                         ; $681e: $2c
    ld d, h                                       ; $681f: $54
    ld a, b                                       ; $6820: $78
    ld a, [c]                                     ; $6821: $f2
    ld a, e                                       ; $6822: $7b
    ld a, a                                       ; $6823: $7f
    inc a                                         ; $6824: $3c
    cp a                                          ; $6825: $bf
    ld a, h                                       ; $6826: $7c
    call nc, $2da5                                ; $6827: $d4 $a5 $2d
    dec sp                                        ; $682a: $3b
    rst $28                                       ; $682b: $ef
    adc b                                         ; $682c: $88
    ld a, [de]                                    ; $682d: $1a
    sbc e                                         ; $682e: $9b
    ld a, [hl]                                    ; $682f: $7e
    dec b                                         ; $6830: $05
    ld a, l                                       ; $6831: $7d
    rst $18                                       ; $6832: $df
    rst $28                                       ; $6833: $ef
    adc a                                         ; $6834: $8f
    ld a, [hl]                                    ; $6835: $7e
    or $fe                                        ; $6836: $f6 $fe
    ret nz                                        ; $6838: $c0

    adc l                                         ; $6839: $8d
    ld c, h                                       ; $683a: $4c
    ld [hl], l                                    ; $683b: $75
    xor $a3                                       ; $683c: $ee $a3
    or b                                          ; $683e: $b0
    db $d3                                        ; $683f: $d3
    ld a, c                                       ; $6840: $79
    db $db                                        ; $6841: $db
    sbc l                                         ; $6842: $9d
    and [hl]                                      ; $6843: $a6
    ret nz                                        ; $6844: $c0

    call Call_000_149e                            ; $6845: $cd $9e $14
    scf                                           ; $6848: $37
    bit 6, d                                      ; $6849: $cb $72
    push af                                       ; $684b: $f5
    rst $20                                       ; $684c: $e7
    inc h                                         ; $684d: $24
    dec b                                         ; $684e: $05
    ld a, [de]                                    ; $684f: $1a
    dec a                                         ; $6850: $3d
    sbc [hl]                                      ; $6851: $9e
    db $fc                                        ; $6852: $fc
    sbc $9f                                       ; $6853: $de $9f
    adc [hl]                                      ; $6855: $8e
    rst $00                                       ; $6856: $c7
    ld a, [hl+]                                   ; $6857: $2a
    ld [$d47f], sp                                ; $6858: $08 $7f $d4
    push bc                                       ; $685b: $c5
    rst $30                                       ; $685c: $f7
    sub a                                         ; $685d: $97
    ld de, $6144                                  ; $685e: $11 $44 $61
    and a                                         ; $6861: $a7
    adc c                                         ; $6862: $89
    and [hl]                                      ; $6863: $a6
    sbc d                                         ; $6864: $9a
    ld l, e                                       ; $6865: $6b
    cp [hl]                                       ; $6866: $be
    rst $28                                       ; $6867: $ef
    ei                                            ; $6868: $fb
    dec d                                         ; $6869: $15
    or l                                          ; $686a: $b5
    rst $18                                       ; $686b: $df
    adc h                                         ; $686c: $8c
    add b                                         ; $686d: $80
    ld l, $d5                                     ; $686e: $2e $d5
    push bc                                       ; $6870: $c5
    rst $38                                       ; $6871: $ff
    rla                                           ; $6872: $17
    rst $28                                       ; $6873: $ef
    inc sp                                        ; $6874: $33
    ld c, a                                       ; $6875: $4f
    jp z, Jump_000_24f2                           ; $6876: $ca $f2 $24

    add h                                         ; $6879: $84
    rst $18                                       ; $687a: $df
    ld d, b                                       ; $687b: $50
    inc sp                                        ; $687c: $33
    db $ed                                        ; $687d: $ed
    ld a, a                                       ; $687e: $7f
    ld h, h                                       ; $687f: $64
    inc h                                         ; $6880: $24
    ld h, l                                       ; $6881: $65
    sbc b                                         ; $6882: $98
    db $ed                                        ; $6883: $ed
    call $cfea                                    ; $6884: $cd $ea $cf
    ld b, d                                       ; $6887: $42
    add l                                         ; $6888: $85
    cpl                                           ; $6889: $2f
    add sp, -$62                                  ; $688a: $e8 $9e
    db $ed                                        ; $688c: $ed
    di                                            ; $688d: $f3

jr_042_688e:
    ld a, e                                       ; $688e: $7b
    ld a, a                                       ; $688f: $7f
    sbc b                                         ; $6890: $98
    ld a, [hl]                                    ; $6891: $7e
    inc a                                         ; $6892: $3c
    cp a                                          ; $6893: $bf
    ld a, h                                       ; $6894: $7c
    rst $18                                       ; $6895: $df

Jump_042_6896:
    rst $30                                       ; $6896: $f7
    add hl, hl                                    ; $6897: $29
    or e                                          ; $6898: $b3
    ld sp, hl                                     ; $6899: $f9
    add l                                         ; $689a: $85
    daa                                           ; $689b: $27
    sub a                                         ; $689c: $97
    ld [hl-], a                                   ; $689d: $32
    ei                                            ; $689e: $fb
    ld hl, sp-$2e                                 ; $689f: $f8 $d2
    ld c, h                                       ; $68a1: $4c
    ld d, $58                                     ; $68a2: $16 $58
    sbc [hl]                                      ; $68a4: $9e
    add h                                         ; $68a5: $84
    push hl                                       ; $68a6: $e5
    add h                                         ; $68a7: $84
    ld h, c                                       ; $68a8: $61
    ld [hl], $cc                                  ; $68a9: $36 $cc
    sub e                                         ; $68ab: $93
    db $fd                                        ; $68ac: $fd
    reti                                          ; $68ad: $d9


    jr nz, jr_042_688e                            ; $68ae: $20 $de

    ld [$15fa], sp                                ; $68b0: $08 $fa $15
    dec l                                         ; $68b3: $2d
    and a                                         ; $68b4: $a7
    and b                                         ; $68b5: $a0
    ld e, d                                       ; $68b6: $5a
    inc c                                         ; $68b7: $0c
    and c                                         ; $68b8: $a1
    sub d                                         ; $68b9: $92
    sub c                                         ; $68ba: $91
    ld sp, $49e4                                  ; $68bb: $31 $e4 $49
    jr jr_042_691f                                ; $68be: $18 $5f

    ld a, h                                       ; $68c0: $7c
    add sp, $45                                   ; $68c1: $e8 $45
    ld d, c                                       ; $68c3: $51
    ld a, e                                       ; $68c4: $7b
    ld h, c                                       ; $68c5: $61
    ld h, h                                       ; $68c6: $64
    ld a, a                                       ; $68c7: $7f
    xor d                                         ; $68c8: $aa
    ei                                            ; $68c9: $fb
    ld l, h                                       ; $68ca: $6c
    db $10                                        ; $68cb: $10
    ld l, a                                       ; $68cc: $6f
    inc b                                         ; $68cd: $04
    ld a, l                                       ; $68ce: $7d
    jp c, $94bf                                   ; $68cf: $da $bf $94

    push hl                                       ; $68d2: $e5
    sbc $21                                       ; $68d3: $de $21
    ld l, d                                       ; $68d5: $6a
    ld c, b                                       ; $68d6: $48
    ld e, b                                       ; $68d7: $58
    jp z, $db30                                   ; $68d8: $ca $30 $db

    sbc e                                         ; $68db: $9b
    ld hl, $f7bf                                  ; $68dc: $21 $bf $f7
    add a                                         ; $68df: $87
    jp hl                                         ; $68e0: $e9


    rst $00                                       ; $68e1: $c7
    di                                            ; $68e2: $f3
    res 4, a                                      ; $68e3: $cb $a7
    sbc c                                         ; $68e5: $99
    inc l                                         ; $68e6: $2c
    ld d, h                                       ; $68e7: $54
    ld hl, sp-$4e                                 ; $68e8: $f8 $b2
    ret nz                                        ; $68ea: $c0

    ld a, [c]                                     ; $68eb: $f2
    inc h                                         ; $68ec: $24
    ld l, h                                       ; $68ed: $6c
    ld a, a                                       ; $68ee: $7f
    ld c, [hl]                                    ; $68ef: $4e
    jr jr_042_6958                                ; $68f0: $18 $66

    jp $fdfc                                      ; $68f2: $c3 $fc $fd


    ld a, [bc]                                    ; $68f5: $0a
    or l                                          ; $68f6: $b5
    daa                                           ; $68f7: $27
    db $e4                                        ; $68f8: $e4
    dec d                                         ; $68f9: $15
    sbc [hl]                                      ; $68fa: $9e
    ld d, b                                       ; $68fb: $50
    adc c                                         ; $68fc: $89
    dec de                                        ; $68fd: $1b
    add hl, sp                                    ; $68fe: $39
    ld l, l                                       ; $68ff: $6d
    rst $18                                       ; $6900: $df
    add h                                         ; $6901: $84
    ld d, $77                                     ; $6902: $16 $77
    add [hl]                                      ; $6904: $86
    xor b                                         ; $6905: $a8
    rst $18                                       ; $6906: $df
    ld e, c                                       ; $6907: $59
    add $78                                       ; $6908: $c6 $78
    inc b                                         ; $690a: $04
    cp d                                          ; $690b: $ba
    ld d, h                                       ; $690c: $54
    sbc a                                         ; $690d: $9f
    ld [$5052], a                                 ; $690e: $ea $52 $50
    jp hl                                         ; $6911: $e9


    db $ed                                        ; $6912: $ed
    ret                                           ; $6913: $c9


    adc a                                         ; $6914: $8f
    sbc e                                         ; $6915: $9b
    dec a                                         ; $6916: $3d
    sub [hl]                                      ; $6917: $96
    db $fd                                        ; $6918: $fd
    db $e4                                        ; $6919: $e4
    adc e                                         ; $691a: $8b
    ld a, [$057e]                                 ; $691b: $fa $7e $05
    ld [hl], l                                    ; $691e: $75

jr_042_691f:
    ld b, [hl]                                    ; $691f: $46
    sub a                                         ; $6920: $97
    ld [$2323], a                                 ; $6921: $ea $23 $23
    pop af                                        ; $6924: $f1
    ld c, a                                       ; $6925: $4f
    ld d, $43                                     ; $6926: $16 $43
    pop hl                                        ; $6928: $e1
    rst $20                                       ; $6929: $e7
    ret                                           ; $692a: $c9


    ld a, [c]                                     ; $692b: $f2
    add $e7                                       ; $692c: $c6 $e7
    ld h, [hl]                                    ; $692e: $66
    cp a                                          ; $692f: $bf
    ld hl, $0ccf                                  ; $6930: $21 $cf $0c
    ld hl, $08de                                  ; $6933: $21 $de $08
    ld a, [$7515]                                 ; $6936: $fa $15 $75
    and [hl]                                      ; $6939: $a6
    ld c, a                                       ; $693a: $4f
    ei                                            ; $693b: $fb
    sbc a                                         ; $693c: $9f
    add d                                         ; $693d: $82
    jr c, jr_042_6984                             ; $693e: $38 $44

    inc a                                         ; $6940: $3c
    ld l, d                                       ; $6941: $6a
    add h                                         ; $6942: $84
    jp z, $f7e4                                   ; $6943: $ca $e4 $f7

    or $38                                        ; $6946: $f6 $38
    ld h, c                                       ; $6948: $61
    sbc b                                         ; $6949: $98
    ld c, h                                       ; $694a: $4c
    inc d                                         ; $694b: $14
    or $fe                                        ; $694c: $f6 $fe
    inc d                                         ; $694e: $14
    ld b, a                                       ; $694f: $47
    ld h, a                                       ; $6950: $67
    cp a                                          ; $6951: $bf
    ld l, $c5                                     ; $6952: $2e $c5
    ld c, l                                       ; $6954: $4d
    ld d, l                                       ; $6955: $55
    add c                                         ; $6956: $81
    ld a, c                                       ; $6957: $79

jr_042_6958:
    ld [c], a                                     ; $6958: $e2
    db $fc                                        ; $6959: $fc
    ld c, b                                       ; $695a: $48
    pop hl                                        ; $695b: $e1
    or a                                          ; $695c: $b7
    ld a, d                                       ; $695d: $7a
    ld [c], a                                     ; $695e: $e2
    ld h, b                                       ; $695f: $60
    xor $45                                       ; $6960: $ee $45
    ld c, l                                       ; $6962: $4d
    xor b                                         ; $6963: $a8
    and h                                         ; $6964: $a4
    ld a, [de]                                    ; $6965: $1a
    dec [hl]                                      ; $6966: $35
    ld e, c                                       ; $6967: $59
    ld h, b                                       ; $6968: $60
    and c                                         ; $6969: $a1
    push bc                                       ; $696a: $c5
    sbc l                                         ; $696b: $9d
    and c                                         ; $696c: $a1
    ld e, a                                       ; $696d: $5f
    ld bc, $4675                                  ; $696e: $01 $75 $46
    ld [c], a                                     ; $6971: $e2
    sbc a                                         ; $6972: $9f
    ld d, h                                       ; $6973: $54
    ld a, a                                       ; $6974: $7f
    ld hl, $f0af                                  ; $6975: $21 $af $f0
    add h                                         ; $6978: $84
    ld c, d                                       ; $6979: $4a
    call c, Call_042_69c8                         ; $697a: $dc $c8 $69
    ei                                            ; $697d: $fb
    ld h, $6e                                     ; $697e: $26 $6e
    or $58                                        ; $6980: $f6 $58
    sub [hl]                                      ; $6982: $96
    or c                                          ; $6983: $b1

jr_042_6984:
    ld h, l                                       ; $6984: $65
    db $ec                                        ; $6985: $ec
    ei                                            ; $6986: $fb
    or h                                          ; $6987: $b4
    sub c                                         ; $6988: $91
    or d                                          ; $6989: $b2
    ret nz                                        ; $698a: $c0

    ld h, $ea                                     ; $698b: $26 $ea
    ld [hl+], a                                   ; $698d: $22
    inc hl                                        ; $698e: $23
    ld hl, $60a1                                  ; $698f: $21 $a1 $60
    ld a, e                                       ; $6992: $7b
    ld d, d                                       ; $6993: $52
    db $fd                                        ; $6994: $fd
    push af                                       ; $6995: $f5
    dec hl                                        ; $6996: $2b
    ld [hl], l                                    ; $6997: $75
    db $10                                        ; $6998: $10
    rst $38                                       ; $6999: $ff
    add h                                         ; $699a: $84
    cp h                                          ; $699b: $bc
    jp nz, Jump_000_2a13                          ; $699c: $c2 $13 $2a

    sub e                                         ; $699f: $93
    sub e                                         ; $69a0: $93
    ld d, b                                       ; $69a1: $50
    ld c, c                                       ; $69a2: $49
    add hl, de                                    ; $69a3: $19
    ld c, l                                       ; $69a4: $4d
    ld b, [hl]                                    ; $69a5: $46
    rla                                           ; $69a6: $17
    dec [hl]                                      ; $69a7: $35
    set 0, h                                      ; $69a8: $cb $c4
    ld sp, hl                                     ; $69aa: $f9
    sub c                                         ; $69ab: $91
    daa                                           ; $69ac: $27
    ld b, c                                       ; $69ad: $41
    ld c, [hl]                                    ; $69ae: $4e
    xor d                                         ; $69af: $aa
    rla                                           ; $69b0: $17
    db $ed                                        ; $69b1: $ed
    sbc [hl]                                      ; $69b2: $9e
    daa                                           ; $69b3: $27
    ld l, h                                       ; $69b4: $6c
    or e                                          ; $69b5: $b3
    inc l                                         ; $69b6: $2c
    sub a                                         ; $69b7: $97
    ld l, $a9                                     ; $69b8: $2e $a9
    ld [hl], e                                    ; $69ba: $73
    jp $517c                                      ; $69bb: $c3 $7c $51


    rla                                           ; $69be: $17
    ld [hl+], a                                   ; $69bf: $22
    ld [hl], l                                    ; $69c0: $75
    xor $fb                                       ; $69c1: $ee $fb
    dec d                                         ; $69c3: $15
    ld [hl], l                                    ; $69c4: $75
    ld b, [hl]                                    ; $69c5: $46
    rla                                           ; $69c6: $17
    rst $38                                       ; $69c7: $ff

Call_042_69c8:
    add h                                         ; $69c8: $84
    cp h                                          ; $69c9: $bc
    jp nz, Jump_000_3293                          ; $69ca: $c2 $93 $32

    ld a, e                                       ; $69cd: $7b
    and d                                         ; $69ce: $a2
    ld [hl], b                                    ; $69cf: $70
    or c                                          ; $69d0: $b1
    add hl, hl                                    ; $69d1: $29
    set 0, l                                      ; $69d2: $cb $c5
    call $cb1e                                    ; $69d4: $cd $1e $cb
    ld [hl-], a                                   ; $69d7: $32
    or [hl]                                       ; $69d8: $b6
    adc h                                         ; $69d9: $8c
    ld a, l                                       ; $69da: $7d
    cp a                                          ; $69db: $bf
    ld [bc], a                                    ; $69dc: $02
    ld [hl], l                                    ; $69dd: $75
    and [hl]                                      ; $69de: $a6
    ld c, a                                       ; $69df: $4f
    daa                                           ; $69e0: $27
    ld a, [c]                                     ; $69e1: $f2
    ld hl, $f367                                  ; $69e2: $21 $67 $f3
    db $eb                                        ; $69e5: $eb
    or d                                          ; $69e6: $b2
    ret nz                                        ; $69e7: $c0

    ld [$c5d7], a                                 ; $69e8: $ea $d7 $c5
    ccf                                           ; $69eb: $3f
    ld hl, $f0af                                  ; $69ec: $21 $af $f0
    add h                                         ; $69ef: $84
    jp z, $c2a7                                   ; $69f0: $ca $a7 $c2

    ld a, [hl]                                    ; $69f3: $7e
    ld hl, $7cbe                                  ; $69f4: $21 $be $7c
    sbc h                                         ; $69f7: $9c
    rra                                           ; $69f8: $1f
    ld a, c                                       ; $69f9: $79
    ld [de], a                                    ; $69fa: $12
    db $e4                                        ; $69fb: $e4
    ld h, a                                       ; $69fc: $67
    ld a, a                                       ; $69fd: $7f
    cp h                                          ; $69fe: $bc
    ld h, e                                       ; $69ff: $63
    push de                                       ; $6a00: $d5
    ld b, a                                       ; $6a01: $47
    ld e, l                                       ; $6a02: $5d
    xor b                                         ; $6a03: $a8
    call nz, $9c8d                                ; $6a04: $c4 $8d $9c
    or [hl]                                       ; $6a07: $b6
    ld l, a                                       ; $6a08: $6f
    ld a, [$7515]                                 ; $6a09: $fa $15 $75
    ld b, [hl]                                    ; $6a0c: $46
    ld d, d                                       ; $6a0d: $52
    ld h, $ea                                     ; $6a0e: $26 $ea
    ld [c], a                                     ; $6a10: $e2
    and [hl]                                      ; $6a11: $a6
    ld a, h                                       ; $6a12: $7c
    sbc b                                         ; $6a13: $98
    and [hl]                                      ; $6a14: $a6
    ldh a, [$7d]                                  ; $6a15: $f0 $7d
    sub [hl]                                      ; $6a17: $96
    or a                                          ; $6a18: $b7
    db $fd                                        ; $6a19: $fd
    and d                                         ; $6a1a: $a2
    and [hl]                                      ; $6a1b: $a6
    ld e, a                                       ; $6a1c: $5f
    ld bc, $ffb5                                  ; $6a1d: $01 $b5 $ff
    ld b, d                                       ; $6a20: $42
    ld e, [hl]                                    ; $6a21: $5e
    pop hl                                        ; $6a22: $e1
    add hl, bc                                    ; $6a23: $09
    sub l                                         ; $6a24: $95
    cp b                                          ; $6a25: $b8
    sub c                                         ; $6a26: $91
    db $d3                                        ; $6a27: $d3
    or $4d                                        ; $6a28: $f6 $4d
    call c, $b1ec                                 ; $6a2a: $dc $ec $b1
    inc l                                         ; $6a2d: $2c
    ld h, e                                       ; $6a2e: $63
    set 3, b                                      ; $6a2f: $cb $d8
    rst $10                                       ; $6a31: $d7
    ld e, d                                       ; $6a32: $5a
    ld bc, $a675                                  ; $6a33: $01 $75 $a6
    ld c, a                                       ; $6a36: $4f
    ei                                            ; $6a37: $fb
    xor a                                         ; $6a38: $af
    cp l                                          ; $6a39: $bd
    ld e, l                                       ; $6a3a: $5d

jr_042_6a3b:
    sub [hl]                                      ; $6a3b: $96
    ld h, c                                       ; $6a3c: $61
    ld b, e                                       ; $6a3d: $43
    pop hl                                        ; $6a3e: $e1
    dec bc                                        ; $6a3f: $0b
    db $db                                        ; $6a40: $db
    sub b                                         ; $6a41: $90
    ld l, a                                       ; $6a42: $6f
    add d                                         ; $6a43: $82
    ld d, b                                       ; $6a44: $50
    sbc c                                         ; $6a45: $99
    ld d, b                                       ; $6a46: $50
    cp [hl]                                       ; $6a47: $be
    ld a, l                                       ; $6a48: $7d
    ld b, h                                       ; $6a49: $44
    ld [c], a                                     ; $6a4a: $e2
    adc e                                         ; $6a4b: $8b
    sbc d                                         ; $6a4c: $9a
    jr z, jr_042_6a3b                             ; $6a4d: $28 $ec

    adc l                                         ; $6a4f: $8d
    cp b                                          ; $6a50: $b8
    or a                                          ; $6a51: $b7
    ld h, c                                       ; $6a52: $61
    call nz, $1ecd                                ; $6a53: $c4 $cd $1e
    swap d                                        ; $6a56: $cb $32
    or [hl]                                       ; $6a58: $b6
    adc h                                         ; $6a59: $8c
    ld a, l                                       ; $6a5a: $7d
    cp a                                          ; $6a5b: $bf
    ld [bc], a                                    ; $6a5c: $02
    sbc l                                         ; $6a5d: $9d
    ret z                                         ; $6a5e: $c8

    add a                                         ; $6a5f: $87
    sbc h                                         ; $6a60: $9c
    call $411f                                    ; $6a61: $cd $1f $41
    db $fc                                        ; $6a64: $fc
    inc de                                        ; $6a65: $13
    ld a, [c]                                     ; $6a66: $f2
    ld a, [bc]                                    ; $6a67: $0a
    ld c, a                                       ; $6a68: $4f
    xor b                                         ; $6a69: $a8
    ld c, h                                       ; $6a6a: $4c
    sub [hl]                                      ; $6a6b: $96
    rra                                           ; $6a6c: $1f
    ld a, c                                       ; $6a6d: $79
    ld [hl+], a                                   ; $6a6e: $22
    ld [hl], c                                    ; $6a6f: $71
    or d                                          ; $6a70: $b2
    ret nz                                        ; $6a71: $c0

    or d                                          ; $6a72: $b2
    ccf                                           ; $6a73: $3f
    or $7a                                        ; $6a74: $f6 $7a
    db $fd                                        ; $6a76: $fd
    cp l                                          ; $6a77: $bd
    ld l, $d5                                     ; $6a78: $2e $d5
    ld b, a                                       ; $6a7a: $47
    ld b, [hl]                                    ; $6a7b: $46
    ld [bc], a                                    ; $6a7c: $02
    ei                                            ; $6a7d: $fb
    and b                                         ; $6a7e: $a0
    inc a                                         ; $6a7f: $3c
    di                                            ; $6a80: $f3
    ld d, a                                       ; $6a81: $57
    db $10                                        ; $6a82: $10
    ld b, [hl]                                    ; $6a83: $46
    call c, $b1ec                                 ; $6a84: $dc $ec $b1
    inc l                                         ; $6a87: $2c
    ld h, e                                       ; $6a88: $63
    set 3, b                                      ; $6a89: $cb $d8
    rst $30                                       ; $6a8b: $f7
    dec hl                                        ; $6a8c: $2b
    ld [hl], l                                    ; $6a8d: $75
    and [hl]                                      ; $6a8e: $a6
    ld c, a                                       ; $6a8f: $4f
    sbc e                                         ; $6a90: $9b
    ld h, e                                       ; $6a91: $63
    dec b                                         ; $6a92: $05
    ld d, c                                       ; $6a93: $51
    ld b, e                                       ; $6a94: $43
    ld a, [de]                                    ; $6a95: $1a
    ld a, [bc]                                    ; $6a96: $0a
    ld e, a                                       ; $6a97: $5f
    inc e                                         ; $6a98: $1c
    call z, Call_000_21bd                         ; $6a99: $cc $bd $21
    cp a                                          ; $6a9c: $bf
    or a                                          ; $6a9d: $b7
    rlca                                          ; $6a9e: $07
    ld a, [bc]                                    ; $6a9f: $0a
    jp $fa64                                      ; $6aa0: $c3 $64 $fa


    or h                                          ; $6aa3: $b4
    dec e                                         ; $6aa4: $1d
    scf                                           ; $6aa5: $37
    ld [hl], d                                    ; $6aa6: $72
    jp c, $8cbe                                   ; $6aa7: $da $be $8c

    cp d                                          ; $6aaa: $ba
    sub a                                         ; $6aab: $97
    ret                                           ; $6aac: $c9


    sbc e                                         ; $6aad: $9b
    ld a, l                                       ; $6aae: $7d
    or l                                          ; $6aaf: $b5
    sbc h                                         ; $6ab0: $9c
    ld a, e                                       ; $6ab1: $7b
    dec hl                                        ; $6ab2: $2b
    sub a                                         ; $6ab3: $97
    ld b, d                                       ; $6ab4: $42
    or e                                          ; $6ab5: $b3
    ret nz                                        ; $6ab6: $c0

    or d                                          ; $6ab7: $b2
    sub c                                         ; $6ab8: $91
    ld [c], a                                     ; $6ab9: $e2
    ld a, [hl]                                    ; $6aba: $7e
    and e                                         ; $6abb: $a3
    ld e, a                                       ; $6abc: $5f
    ld bc, $a675                                  ; $6abd: $01 $75 $a6
    ld c, a                                       ; $6ac0: $4f
    xor e                                         ; $6ac1: $ab
    and h                                         ; $6ac2: $a4
    pop hl                                        ; $6ac3: $e1
    and d                                         ; $6ac4: $a2
    add [hl]                                      ; $6ac5: $86
    and h                                         ; $6ac6: $a4
    inc a                                         ; $6ac7: $3c
    ld hl, $60a1                                  ; $6ac8: $21 $a1 $60
    ld a, e                                       ; $6acb: $7b
    ld l, d                                       ; $6acc: $6a
    xor l                                         ; $6acd: $ad
    ld [hl], l                                    ; $6ace: $75
    ld b, [hl]                                    ; $6acf: $46
    sub a                                         ; $6ad0: $97
    ld [$9053], a                                 ; $6ad1: $ea $53 $90
    dec a                                         ; $6ad4: $3d
    ld hl, $46a1                                  ; $6ad5: $21 $a1 $46
    rla                                           ; $6ad8: $17
    ld l, l                                       ; $6ad9: $6d
    ld e, a                                       ; $6ada: $5f
    call nc, $fd59                                ; $6adb: $d4 $59 $fd
    ld [hl], c                                    ; $6ade: $71
    ld a, [hl]                                    ; $6adf: $7e
    ld h, h                                       ; $6ae0: $64
    ld c, a                                       ; $6ae1: $4f
    ld a, [bc]                                    ; $6ae2: $0a
    rst $38                                       ; $6ae3: $ff
    push bc                                       ; $6ae4: $c5
    pop bc                                        ; $6ae5: $c1
    call c, $9a8b                                 ; $6ae6: $dc $8b $9a
    ld a, [hl]                                    ; $6ae9: $7e
    dec b                                         ; $6aea: $05
    dec e                                         ; $6aeb: $1d
    and e                                         ; $6aec: $a3
    sbc d                                         ; $6aed: $9a
    xor b                                         ; $6aee: $a8
    adc e                                         ; $6aef: $8b
    ld c, h                                       ; $6af0: $4c
    call Call_042_7515                            ; $6af1: $cd $15 $75
    ld h, c                                       ; $6af4: $61
    adc $5f                                       ; $6af5: $ce $5f
    ld l, a                                       ; $6af7: $6f
    xor d                                         ; $6af8: $aa
    cp a                                          ; $6af9: $bf
    ld d, b                                       ; $6afa: $50
    adc c                                         ; $6afb: $89
    dec de                                        ; $6afc: $1b
    add hl, sp                                    ; $6afd: $39
    ld l, l                                       ; $6afe: $6d
    rst $18                                       ; $6aff: $df
    ld b, h                                       ; $6b00: $44
    dec c                                         ; $6b01: $0d
    ld l, c                                       ; $6b02: $69
    ret nc                                        ; $6b03: $d0

    db $eb                                        ; $6b04: $eb
    ld de, $7212                                  ; $6b05: $11 $12 $72
    add [hl]                                      ; $6b08: $86
    ld a, b                                       ; $6b09: $78
    ld c, a                                       ; $6b0a: $4f
    ld [c], a                                     ; $6b0b: $e2
    ld b, e                                       ; $6b0c: $43
    cp a                                          ; $6b0d: $bf
    sub h                                         ; $6b0e: $94
    ld b, $6a                                     ; $6b0f: $06 $6a
    xor l                                         ; $6b11: $ad
    ld [hl], l                                    ; $6b12: $75
    ld b, [hl]                                    ; $6b13: $46
    ld [c], a                                     ; $6b14: $e2
    sbc a                                         ; $6b15: $9f
    sub b                                         ; $6b16: $90
    ld d, a                                       ; $6b17: $57
    ld a, b                                       ; $6b18: $78
    ld [c], a                                     ; $6b19: $e2
    ld b, [hl]                                    ; $6b1a: $46
    ld c, [hl]                                    ; $6b1b: $4e
    db $db                                        ; $6b1c: $db
    and a                                         ; $6b1d: $a7
    adc e                                         ; $6b1e: $8b
    cp d                                          ; $6b1f: $ba
    ld [$a14a], sp                                ; $6b20: $08 $4a $a1
    ld [de], a                                    ; $6b23: $12
    scf                                           ; $6b24: $37
    ld a, e                                       ; $6b25: $7b
    inc c                                         ; $6b26: $0c
    db $fd                                        ; $6b27: $fd
    ld a, [bc]                                    ; $6b28: $0a
    ld [hl], l                                    ; $6b29: $75
    and [hl]                                      ; $6b2a: $a6
    ld c, a                                       ; $6b2b: $4f
    ld b, a                                       ; $6b2c: $47
    inc hl                                        ; $6b2d: $23
    jp hl                                         ; $6b2e: $e9


    inc c                                         ; $6b2f: $0c
    ld e, a                                       ; $6b30: $5f
    ld [hl], $08                                  ; $6b31: $36 $08
    add sp, -$4e                                  ; $6b33: $e8 $b2
    ret nz                                        ; $6b35: $c0

    ld [$65d7], a                                 ; $6b36: $ea $d7 $65
    sbc c                                         ; $6b39: $99
    ld d, d                                       ; $6b3a: $52
    ld c, $0a                                     ; $6b3b: $0e $0a
    and c                                         ; $6b3d: $a1
    ld [de], a                                    ; $6b3e: $12
    sbc [hl]                                      ; $6b3f: $9e
    ld h, l                                       ; $6b40: $65
    and d                                         ; $6b41: $a2
    db $dd                                        ; $6b42: $dd
    rst $28                                       ; $6b43: $ef
    dec a                                         ; $6b44: $3d
    ld a, l                                       ; $6b45: $7d
    ld a, [hl-]                                   ; $6b46: $3a
    db $fd                                        ; $6b47: $fd
    add sp, $21                                   ; $6b48: $e8 $21
    ret z                                         ; $6b4a: $c8

    sbc [hl]                                      ; $6b4b: $9e
    inc d                                         ; $6b4c: $14
    ld b, [hl]                                    ; $6b4d: $46
    add hl, hl                                    ; $6b4e: $29
    ld d, e                                       ; $6b4f: $53
    ld l, e                                       ; $6b50: $6b
    dec b                                         ; $6b51: $05
    xor l                                         ; $6b52: $ad
    rrca                                          ; $6b53: $0f
    ld l, c                                       ; $6b54: $69
    jr z, jr_042_6bd3                             ; $6b55: $28 $7c

    ld a, c                                       ; $6b57: $79
    ld d, c                                       ; $6b58: $51
    ld l, a                                       ; $6b59: $6f
    ret z                                         ; $6b5a: $c8

    rst $28                                       ; $6b5b: $ef
    db $ed                                        ; $6b5c: $ed
    pop af                                        ; $6b5d: $f1
    dec bc                                        ; $6b5e: $0b
    adc h                                         ; $6b5f: $8c
    and a                                         ; $6b60: $a7

jr_042_6b61:
    ld c, a                                       ; $6b61: $4f
    ld e, l                                       ; $6b62: $5d
    ld c, b                                       ; $6b63: $48
    sbc c                                         ; $6b64: $99
    jr c, jr_042_6ba6                             ; $6b65: $38 $3f

    ld b, d                                       ; $6b67: $42
    dec h                                         ; $6b68: $25
    bit 7, b                                      ; $6b69: $cb $78
    ld b, h                                       ; $6b6b: $44
    ld a, c                                       ; $6b6c: $79
    cp h                                          ; $6b6d: $bc
    db $dd                                        ; $6b6e: $dd
    rst $00                                       ; $6b6f: $c7
    ld l, e                                       ; $6b70: $6b
    jr z, jr_042_6b61                             ; $6b71: $28 $ee

    jp $ef17                                      ; $6b73: $c3 $17 $ef


    ld e, e                                       ; $6b76: $5b
    dec a                                         ; $6b77: $3d
    pop de                                        ; $6b78: $d1
    ld b, e                                       ; $6b79: $43
    ret nc                                        ; $6b7a: $d0

    xor a                                         ; $6b7b: $af
    cp [hl]                                       ; $6b7c: $be
    cp b                                          ; $6b7d: $b8
    sub h                                         ; $6b7e: $94
    ld [hl], e                                    ; $6b7f: $73
    call nc, $ea26                                ; $6b80: $d4 $26 $ea
    ld d, d                                       ; $6b83: $52
    jr nz, @+$7e                                  ; $6b84: $20 $7c

    add $17                                       ; $6b86: $c6 $17
    dec a                                         ; $6b88: $3d
    inc b                                         ; $6b89: $04
    cp d                                          ; $6b8a: $ba
    call nc, $337e                                ; $6b8b: $d4 $7e $33
    ld [bc], a                                    ; $6b8e: $02
    or l                                          ; $6b8f: $b5
    ld d, [hl]                                    ; $6b90: $56
    cp [hl]                                       ; $6b91: $be
    db $fc                                        ; $6b92: $fc
    db $e4                                        ; $6b93: $e4
    ld b, h                                       ; $6b94: $44
    and e                                         ; $6b95: $a3
    ld l, a                                       ; $6b96: $6f
    ld [$4d45], a                                 ; $6b97: $ea $45 $4d
    cp h                                          ; $6b9a: $bc
    ld [hl], h                                    ; $6b9b: $74
    db $ec                                        ; $6b9c: $ec
    and d                                         ; $6b9d: $a2
    ld a, [hl]                                    ; $6b9e: $7e
    rst $28                                       ; $6b9f: $ef
    adc a                                         ; $6ba0: $8f
    rst $30                                       ; $6ba1: $f7
    inc b                                         ; $6ba2: $04
    add l                                         ; $6ba3: $85
    db $ed                                        ; $6ba4: $ed
    add e                                         ; $6ba5: $83

jr_042_6ba6:
    ld d, h                                       ; $6ba6: $54
    sub a                                         ; $6ba7: $97
    ld a, [de]                                    ; $6ba8: $1a
    add hl, hl                                    ; $6ba9: $29
    xor b                                         ; $6baa: $a8
    db $f4                                        ; $6bab: $f4
    or $3c                                        ; $6bac: $f6 $3c
    ld d, c                                       ; $6bae: $51
    rla                                           ; $6baf: $17
    ld [de], a                                    ; $6bb0: $12
    ld a, [bc]                                    ; $6bb1: $0a
    add [hl]                                      ; $6bb2: $86
    ld hl, sp-$30                                 ; $6bb3: $f8 $d0
    rst $18                                       ; $6bb5: $df
    ld l, [hl]                                    ; $6bb6: $6e
    jp z, $cdc7                                   ; $6bb7: $ca $c7 $cd

    ld e, $cb                                     ; $6bba: $1e $cb
    ld [hl-], a                                   ; $6bbc: $32
    or [hl]                                       ; $6bbd: $b6
    adc h                                         ; $6bbe: $8c
    ld a, l                                       ; $6bbf: $7d
    sbc h                                         ; $6bc0: $9c
    rra                                           ; $6bc1: $1f
    ld [hl], c                                    ; $6bc2: $71
    ld h, e                                       ; $6bc3: $63
    ld b, $f2                                     ; $6bc4: $06 $f2
    di                                            ; $6bc6: $f3
    ld a, e                                       ; $6bc7: $7b
    ld a, e                                       ; $6bc8: $7b
    db $fc                                        ; $6bc9: $fc
    ld [bc], a                                    ; $6bca: $02
    db $e3                                        ; $6bcb: $e3
    jp hl                                         ; $6bcc: $e9


    ld d, a                                       ; $6bcd: $57
    ld [hl], l                                    ; $6bce: $75
    ld b, [hl]                                    ; $6bcf: $46
    rla                                           ; $6bd0: $17
    ld [hl], l                                    ; $6bd1: $75
    add [hl]                                      ; $6bd2: $86

jr_042_6bd3:
    bit 4, d                                      ; $6bd3: $cb $62
    or e                                          ; $6bd5: $b3
    ret c                                         ; $6bd6: $d8

    ld c, l                                       ; $6bd7: $4d
    call nc, $a645                                ; $6bd8: $d4 $45 $a6
    and $0a                                       ; $6bdb: $e6 $0a
    cp [hl]                                       ; $6bdd: $be
    ld a, [hl]                                    ; $6bde: $7e
    ld a, a                                       ; $6bdf: $7f
    call $f2f8                                    ; $6be0: $cd $f8 $f2
    call nz, $dcc1                                ; $6be3: $c4 $c1 $dc
    adc e                                         ; $6be6: $8b
    sbc d                                         ; $6be7: $9a
    xor b                                         ; $6be8: $a8
    ld c, e                                       ; $6be9: $4b
    add c                                         ; $6bea: $81
    ld b, [hl]                                    ; $6beb: $46
    rst $08                                       ; $6bec: $cf
    sub b                                         ; $6bed: $90
    db $fd                                        ; $6bee: $fd
    add hl, hl                                    ; $6bef: $29
    bit 0, c                                      ; $6bf0: $cb $41
    ld a, e                                       ; $6bf2: $7b
    ld [c], a                                     ; $6bf3: $e2
    adc l                                         ; $6bf4: $8d
    jr nz, jr_042_6c01                            ; $6bf5: $20 $0a

    dec sp                                        ; $6bf7: $3b
    adc e                                         ; $6bf8: $8b
    adc l                                         ; $6bf9: $8d
    rla                                           ; $6bfa: $17
    and l                                         ; $6bfb: $a5
    adc h                                         ; $6bfc: $8c
    and c                                         ; $6bfd: $a1
    and $0a                                       ; $6bfe: $e6 $0a
    cp [hl]                                       ; $6c00: $be

jr_042_6c01:
    ld [$e749], sp                                ; $6c01: $08 $49 $e7
    ld [hl], h                                    ; $6c04: $74
    ld e, c                                       ; $6c05: $59
    and [hl]                                      ; $6c06: $a6
    sub h                                         ; $6c07: $94
    ret                                           ; $6c08: $c9


    ld h, d                                       ; $6c09: $62
    db $10                                        ; $6c0a: $10
    dec b                                         ; $6c0b: $05
    ld b, e                                       ; $6c0c: $43
    inc d                                         ; $6c0d: $14
    or h                                          ; $6c0e: $b4
    ld a, l                                       ; $6c0f: $7d
    ld sp, hl                                     ; $6c10: $f9
    ld h, l                                       ; $6c11: $65
    and c                                         ; $6c12: $a1
    jp nz, $a417                                  ; $6c13: $c2 $17 $a4

    inc l                                         ; $6c16: $2c
    rlca                                          ; $6c17: $07
    db $ed                                        ; $6c18: $ed
    adc l                                         ; $6c19: $8d
    or c                                          ; $6c1a: $b1
    cpl                                           ; $6c1b: $2f
    swap l                                        ; $6c1c: $cb $35
    db $10                                        ; $6c1e: $10
    ld a, [hl]                                    ; $6c1f: $7e
    ld d, e                                       ; $6c20: $53
    rst $10                                       ; $6c21: $d7
    xor a                                         ; $6c22: $af
    cp [hl]                                       ; $6c23: $be
    adc b                                         ; $6c24: $88
    rst $38                                       ; $6c25: $ff
    cpl                                           ; $6c26: $2f
    ld a, [$a32b]                                 ; $6c27: $fa $2b $a3
    ret                                           ; $6c2a: $c9


    db $c4, $f9, $11                              ; $6c2b: $c4 $f9 $11
    cp [hl]                                       ; $6c2e: $be
    sub h                                         ; $6c2f: $94
    push hl                                       ; $6c30: $e5
    and b                                         ; $6c31: $a0
    ld sp, hl                                     ; $6c32: $f9
    cpl                                           ; $6c33: $2f
    ld a, $f4                                     ; $6c34: $3e $f4
    or a                                          ; $6c36: $b7
    sbc e                                         ; $6c37: $9b
    ld a, [c]                                     ; $6c38: $f2
    cp d                                          ; $6c39: $ba
    ld a, h                                       ; $6c3a: $7c
    ld e, c                                       ; $6c3b: $59
    ret nz                                        ; $6c3c: $c0

    db $fc                                        ; $6c3d: $fc
    reti                                          ; $6c3e: $d9


    rra                                           ; $6c3f: $1f
    rst $28                                       ; $6c40: $ef
    add hl, bc                                    ; $6c41: $09
    and d                                         ; $6c42: $a2
    or b                                          ; $6c43: $b0
    rst $30                                       ; $6c44: $f7
    ld h, a                                       ; $6c45: $67
    add e                                         ; $6c46: $83
    ld a, b                                       ; $6c47: $78
    inc hl                                        ; $6c48: $23
    xor b                                         ; $6c49: $a8
    cp c                                          ; $6c4a: $b9
    ld [bc], a                                    ; $6c4b: $02
    cp [hl]                                       ; $6c4c: $be
    ld a, [hl]                                    ; $6c4d: $7e
    ld a, a                                       ; $6c4e: $7f
    call $bdb4                                    ; $6c4f: $cd $b4 $bd
    or e                                          ; $6c52: $b3
    ret c                                         ; $6c53: $d8

    ld a, b                                       ; $6c54: $78
    ld d, c                                       ; $6c55: $51
    jp z, $b218                                   ; $6c56: $ca $18 $b2

    inc c                                         ; $6c59: $0c
    dec de                                        ; $6c5a: $1b
    db $f4                                        ; $6c5b: $f4
    ld a, d                                       ; $6c5c: $7a
    ld b, h                                       ; $6c5d: $44
    sbc l                                         ; $6c5e: $9d
    ld hl, $f43e                                  ; $6c5f: $21 $3e $f4
    or a                                          ; $6c62: $b7
    sbc e                                         ; $6c63: $9b
    ld a, [c]                                     ; $6c64: $f2
    ld d, c                                       ; $6c65: $51
    sub a                                         ; $6c66: $97
    xor e                                         ; $6c67: $ab
    sub [hl]                                      ; $6c68: $96
    ld sp, $617e                                  ; $6c69: $31 $7e $61
    inc b                                         ; $6c6c: $04
    sub c                                         ; $6c6d: $91
    sub c                                         ; $6c6e: $91
    sub b                                         ; $6c6f: $90
    ld h, e                                       ; $6c70: $63
    add [hl]                                      ; $6c71: $86
    rlc d                                         ; $6c72: $cb $02
    ld d, e                                       ; $6c74: $53
    or b                                          ; $6c75: $b0
    ld a, [bc]                                    ; $6c76: $0a
    ld a, e                                       ; $6c77: $7b
    ld a, [$be15]                                 ; $6c78: $fa $15 $be
    ld a, [hl]                                    ; $6c7b: $7e
    ld a, a                                       ; $6c7c: $7f
    call Call_000_19d4                            ; $6c7d: $cd $d4 $19
    ld c, c                                       ; $6c80: $49
    add hl, de                                    ; $6c81: $19
    ld c, l                                       ; $6c82: $4d
    sbc $f8                                       ; $6c83: $de $f8
    and d                                         ; $6c85: $a2
    ld l, $15                                     ; $6c86: $2e $15
    sbc b                                         ; $6c88: $98
    ld h, c                                       ; $6c89: $61
    push de                                       ; $6c8a: $d5
    push hl                                       ; $6c8b: $e5
    inc h                                         ; $6c8c: $24
    ld a, $f4                                     ; $6c8d: $3e $f4
    or a                                          ; $6c8f: $b7
    di                                            ; $6c90: $f3
    inc hl                                        ; $6c91: $23
    ld a, [de]                                    ; $6c92: $1a
    db $fd                                        ; $6c93: $fd
    sbc e                                         ; $6c94: $9b
    sbc d                                         ; $6c95: $9a
    dec hl                                        ; $6c96: $2b
    ld [hl], l                                    ; $6c97: $75
    ld b, [hl]                                    ; $6c98: $46
    ld [c], a                                     ; $6c99: $e2
    inc c                                         ; $6c9a: $0c
    ld l, d                                       ; $6c9b: $6a
    and d                                         ; $6c9c: $a2
    ld l, $cb                                     ; $6c9d: $2e $cb
    jr nc, @+$2e                                  ; $6c9f: $30 $2c

    set 3, e                                      ; $6ca1: $cb $db
    ld a, [hl]                                    ; $6ca3: $7e
    ld b, e                                       ; $6ca4: $43
    inc d                                         ; $6ca5: $14
    or l                                          ; $6ca6: $b5
    rla                                           ; $6ca7: $17
    ld b, [hl]                                    ; $6ca8: $46
    xor b                                         ; $6ca9: $a8
    ld a, h                                       ; $6caa: $7c
    ld [hl], $88                                  ; $6cab: $36 $88
    scf                                           ; $6cad: $37
    add d                                         ; $6cae: $82
    ld a, [hl]                                    ; $6caf: $7e
    dec b                                         ; $6cb0: $05
    dec e                                         ; $6cb1: $1d
    ld e, a                                       ; $6cb2: $5f
    call c, $7908                                 ; $6cb3: $dc $08 $79
    db $10                                        ; $6cb6: $10
    db $e4                                        ; $6cb7: $e4
    ld b, l                                       ; $6cb8: $45
    cp l                                          ; $6cb9: $bd
    ld sp, $ba04                                  ; $6cba: $31 $04 $ba
    cp b                                          ; $6cbd: $b8
    add hl, hl                                    ; $6cbe: $29
    push af                                       ; $6cbf: $f5
    dec b                                         ; $6cc0: $05
    db $e4                                        ; $6cc1: $e4
    ld sp, $2fec                                  ; $6cc2: $31 $ec $2f
    ld [$dee2], a                                 ; $6cc5: $ea $e2 $de
    cp c                                          ; $6cc8: $b9
    ld a, e                                       ; $6cc9: $7b
    db $e3                                        ; $6cca: $e3
    adc e                                         ; $6ccb: $8b
    ldh [$a2], a                                  ; $6ccc: $e0 $a2
    pop de                                        ; $6cce: $d1
    cp a                                          ; $6ccf: $bf
    ld a, [hl]                                    ; $6cd0: $7e
    dec b                                         ; $6cd1: $05
    cp [hl]                                       ; $6cd2: $be
    ld a, [hl]                                    ; $6cd3: $7e
    ld a, a                                       ; $6cd4: $7f
    call $1a78                                    ; $6cd5: $cd $78 $1a
    call nc, $f9c4                                ; $6cd8: $d4 $c4 $f9
    sub c                                         ; $6cdb: $91
    db $db                                        ; $6cdc: $db
    ld e, c                                       ; $6cdd: $59
    ld l, h                                       ; $6cde: $6c
    cp h                                          ; $6cdf: $bc
    jr z, jr_042_6d47                             ; $6ce0: $28 $65

    inc c                                         ; $6ce2: $0c
    ld [hl], c                                    ; $6ce3: $71
    sub a                                         ; $6ce4: $97
    jp nz, $d1f7                                  ; $6ce5: $c2 $f7 $d1

    add sp, -$65                                  ; $6ce8: $e8 $9b
    ld a, d                                       ; $6cea: $7a
    ld d, c                                       ; $6ceb: $51
    db $d3                                        ; $6cec: $d3
    xor a                                         ; $6ced: $af
    dec l                                         ; $6cee: $2d
    and a                                         ; $6cef: $a7
    add d                                         ; $6cf0: $82
    or [hl]                                       ; $6cf1: $b6
    ld l, a                                       ; $6cf2: $6f
    ld [c], a                                     ; $6cf3: $e2
    db $fc                                        ; $6cf4: $fc
    adc b                                         ; $6cf5: $88
    adc h                                         ; $6cf6: $8c
    ld h, h                                       ; $6cf7: $64
    ld a, c                                       ; $6cf8: $79
    db $db                                        ; $6cf9: $db
    rst $30                                       ; $6cfa: $f7

Jump_042_6cfb:
    push de                                       ; $6cfb: $d5
    ld b, h                                       ; $6cfc: $44
    ld d, c                                       ; $6cfd: $51
    ld a, e                                       ; $6cfe: $7b
    ld h, c                                       ; $6cff: $61
    ld h, h                                       ; $6d00: $64
    ld a, a                                       ; $6d01: $7f
    ld [hl], $88                                  ; $6d02: $36 $88
    scf                                           ; $6d04: $37
    ld [bc], a                                    ; $6d05: $02
    ld e, l                                       ; $6d06: $5d
    ld a, [bc]                                    ; $6d07: $0a
    ld [hl+], a                                   ; $6d08: $22
    inc hl                                        ; $6d09: $23
    ld hl, $db47                                  ; $6d0a: $21 $47 $db
    rst $30                                       ; $6d0d: $f7
    push de                                       ; $6d0e: $d5
    inc b                                         ; $6d0f: $04
    and l                                         ; $6d10: $a5
    ret nz                                        ; $6d11: $c0

    sub b                                         ; $6d12: $90
    add l                                         ; $6d13: $85
    jp z, $f5f1                                   ; $6d14: $ca $f1 $f5

    dec hl                                        ; $6d17: $2b
    dec e                                         ; $6d18: $1d
    ld e, a                                       ; $6d19: $5f
    ld d, $83                                     ; $6d1a: $16 $83
    ld [hl], $ba                                  ; $6d1c: $36 $ba
    sub b                                         ; $6d1e: $90
    rst $08                                       ; $6d1f: $cf
    inc c                                         ; $6d20: $0c
    ld b, c                                       ; $6d21: $41
    call Call_000_19d4                            ; $6d22: $cd $d4 $19
    add hl, bc                                    ; $6d25: $09
    add hl, sp                                    ; $6d26: $39
    jp c, $89be                                   ; $6d27: $da $be $89

    rst $30                                       ; $6d2a: $f7
    dec l                                         ; $6d2b: $2d
    ld l, a                                       ; $6d2c: $6f
    or $7a                                        ; $6d2d: $f6 $7a
    db $fd                                        ; $6d2f: $fd
    cp l                                          ; $6d30: $bd
    ld hl, $b3b7                                  ; $6d31: $21 $b7 $b3
    ret c                                         ; $6d34: $d8

    ld a, b                                       ; $6d35: $78
    ld d, c                                       ; $6d36: $51
    jp z, $fa18                                   ; $6d37: $ca $18 $fa

    dec d                                         ; $6d3a: $15
    sbc l                                         ; $6d3b: $9d
    adc [hl]                                      ; $6d3c: $8e
    add hl, de                                    ; $6d3d: $19
    ld l, $24                                     ; $6d3e: $2e $24
    db $e4                                        ; $6d40: $e4
    inc c                                         ; $6d41: $0c
    ld [hl], c                                    ; $6d42: $71
    inc hl                                        ; $6d43: $23
    ld h, c                                       ; $6d44: $61
    inc b                                         ; $6d45: $04
    ld sp, hl                                     ; $6d46: $f9

jr_042_6d47:
    and e                                         ; $6d47: $a3
    db $fc                                        ; $6d48: $fc
    add $a7                                       ; $6d49: $c6 $a7
    ld c, e                                       ; $6d4b: $4b
    push af                                       ; $6d4c: $f5
    ld d, c                                       ; $6d4d: $51
    jr nz, jr_042_6d77                            ; $6d4e: $20 $27

    halt                                          ; $6d50: $76
    push de                                       ; $6d51: $d5
    dec bc                                        ; $6d52: $0b
    inc c                                         ; $6d53: $0c
    pop af                                        ; $6d54: $f1
    and c                                         ; $6d55: $a1
    rst $10                                       ; $6d56: $d7
    xor a                                         ; $6d57: $af
    xor l                                         ; $6d58: $ad
    pop de                                        ; $6d59: $d1
    sub c                                         ; $6d5a: $91
    adc a                                         ; $6d5b: $8f
    ld [hl], a                                    ; $6d5c: $77
    adc h                                         ; $6d5d: $8c
    xor c                                         ; $6d5e: $a9
    cp h                                          ; $6d5f: $bc
    ld l, $b5                                     ; $6d60: $2e $b5
    rst $18                                       ; $6d62: $df
    adc h                                         ; $6d63: $8c
    ld b, b                                       ; $6d64: $40
    sbc a                                         ; $6d65: $9f

jr_042_6d66:
    sub $67                                       ; $6d66: $d6 $67
    sbc c                                         ; $6d68: $99
    ld d, h                                       ; $6d69: $54
    rla                                           ; $6d6a: $17
    ld a, e                                       ; $6d6b: $7b
    rst $20                                       ; $6d6c: $e7
    ld b, [hl]                                    ; $6d6d: $46
    jr jr_042_6d66                                ; $6d6e: $18 $f6

    rla                                           ; $6d70: $17
    scf                                           ; $6d71: $37
    sub l                                         ; $6d72: $95
    ld b, a                                       ; $6d73: $47
    adc l                                         ; $6d74: $8d
    cp h                                          ; $6d75: $bc
    xor b                                         ; $6d76: $a8

Jump_042_6d77:
jr_042_6d77:
    rst $20                                       ; $6d77: $e7
    rst $28                                       ; $6d78: $ef
    ld d, a                                       ; $6d79: $57
    dec e                                         ; $6d7a: $1d
    ld e, a                                       ; $6d7b: $5f
    call c, $7908                                 ; $6d7c: $dc $08 $79
    db $10                                        ; $6d7f: $10
    db $e4                                        ; $6d80: $e4

Call_042_6d81:
    ld b, l                                       ; $6d81: $45
    cp l                                          ; $6d82: $bd
    ld sp, $ba04                                  ; $6d83: $31 $04 $ba
    inc l                                         ; $6d86: $2c
    halt                                          ; $6d87: $76
    push de                                       ; $6d88: $d5
    rst $00                                       ; $6d89: $c7
    ld sp, hl                                     ; $6d8a: $f9
    sub c                                         ; $6d8b: $91
    db $db                                        ; $6d8c: $db
    ld e, c                                       ; $6d8d: $59
    ld l, h                                       ; $6d8e: $6c
    cp h                                          ; $6d8f: $bc
    jr z, jr_042_6df7                             ; $6d90: $28 $65

    inc c                                         ; $6d92: $0c
    ld hl, $7d5f                                  ; $6d93: $21 $5f $7d
    ld a, [bc]                                    ; $6d96: $0a
    dec c                                         ; $6d97: $0d
    ld d, e                                       ; $6d98: $53
    ld h, [hl]                                    ; $6d99: $66
    ld h, h                                       ; $6d9a: $64
    inc hl                                        ; $6d9b: $23
    ld e, [hl]                                    ; $6d9c: $5e
    ld l, d                                       ; $6d9d: $6a
    add a                                         ; $6d9e: $87
    ld a, [hl]                                    ; $6d9f: $7e
    dec b                                         ; $6da0: $05
    xor l                                         ; $6da1: $ad
    pop de                                        ; $6da2: $d1
    sub c                                         ; $6da3: $91
    adc a                                         ; $6da4: $8f
    ld [hl], a                                    ; $6da5: $77
    adc h                                         ; $6da6: $8c
    xor c                                         ; $6da7: $a9
    cp h                                          ; $6da8: $bc
    ld l, $b5                                     ; $6da9: $2e $b5
    rst $18                                       ; $6dab: $df
    adc h                                         ; $6dac: $8c
    ld b, b                                       ; $6dad: $40
    rra                                           ; $6dae: $1f
    rst $18                                       ; $6daf: $df
    sub c                                         ; $6db0: $91
    ld c, c                                       ; $6db1: $49
    add hl, sp                                    ; $6db2: $39
    ld b, a                                       ; $6db3: $47
    ld l, l                                       ; $6db4: $6d
    ld [c], a                                     ; $6db5: $e2
    db $fc                                        ; $6db6: $fc
    adc b                                         ; $6db7: $88
    ld b, e                                       ; $6db8: $43
    or $c7                                        ; $6db9: $f6 $c7
    ei                                            ; $6dbb: $fb
    or $d7                                        ; $6dbc: $f6 $d7
    xor a                                         ; $6dbe: $af
    dec e                                         ; $6dbf: $1d
    ld e, a                                       ; $6dc0: $5f
    call c, $7908                                 ; $6dc1: $dc $08 $79
    db $10                                        ; $6dc4: $10
    db $e4                                        ; $6dc5: $e4
    ld b, l                                       ; $6dc6: $45
    cp l                                          ; $6dc7: $bd
    and c                                         ; $6dc8: $a1
    ld c, a                                       ; $6dc9: $4f
    db $db                                        ; $6dca: $db
    dec sp                                        ; $6dcb: $3b
    adc e                                         ; $6dcc: $8b
    adc l                                         ; $6dcd: $8d
    rla                                           ; $6dce: $17
    and l                                         ; $6dcf: $a5

jr_042_6dd0:
    adc h                                         ; $6dd0: $8c
    ld hl, $297c                                  ; $6dd1: $21 $7c $29
    db $fc                                        ; $6dd4: $fc
    pop de                                        ; $6dd5: $d1
    add sp, -$65                                  ; $6dd6: $e8 $9b
    ld a, d                                       ; $6dd8: $7a
    ld d, c                                       ; $6dd9: $51

jr_042_6dda:
    db $d3                                        ; $6dda: $d3
    xor a                                         ; $6ddb: $af
    cp [hl]                                       ; $6ddc: $be
    jr nc, jr_042_6dda                            ; $6ddd: $30 $fb

    ld d, $53                                     ; $6ddf: $16 $53
    ld h, a                                       ; $6de1: $67
    ld c, h                                       ; $6de2: $4c
    dec [hl]                                      ; $6de3: $35
    jp c, $8901                                   ; $6de4: $da $01 $89

    jp nz, Jump_000_3c7d                          ; $6de7: $c2 $7d $3c

    ld a, a                                       ; $6dea: $7f
    ld a, c                                       ; $6deb: $79
    sub c                                         ; $6dec: $91
    adc a                                         ; $6ded: $8f
    cp d                                          ; $6dee: $ba
    call nc, $cd7e                                ; $6def: $d4 $7e $cd
    ld c, [hl]                                    ; $6df2: $4e
    or l                                          ; $6df3: $b5
    jr jr_042_6e55                                ; $6df4: $18 $5f

    xor d                                         ; $6df6: $aa

jr_042_6df7:
    ld a, [de]                                    ; $6df7: $1a
    db $ed                                        ; $6df8: $ed
    add b                                         ; $6df9: $80
    ld b, h                                       ; $6dfa: $44
    pop hl                                        ; $6dfb: $e1
    ld a, [hl]                                    ; $6dfc: $7e
    dec b                                         ; $6dfd: $05
    ld [hl], l                                    ; $6dfe: $75
    ld h, c                                       ; $6dff: $61
    add hl, de                                    ; $6e00: $19
    ld c, l                                       ; $6e01: $4d
    cp e                                          ; $6e02: $bb
    ld l, h                                       ; $6e03: $6c
    ld h, h                                       ; $6e04: $64
    add e                                         ; $6e05: $83
    ld a, b                                       ; $6e06: $78
    inc hl                                        ; $6e07: $23
    sub a                                         ; $6e08: $97
    ld [hl-], a                                   ; $6e09: $32
    ld [hl-], a                                   ; $6e0a: $32
    ld h, c                                       ; $6e0b: $61
    ld e, b                                       ; $6e0c: $58
    ld [hl], l                                    ; $6e0d: $75
    ld a, [c]                                     ; $6e0e: $f2
    adc h                                         ; $6e0f: $8c
    ld a, $ad                                     ; $6e10: $3e $ad
    adc d                                         ; $6e12: $8a
    ld a, d                                       ; $6e13: $7a
    ld b, [hl]                                    ; $6e14: $46
    inc b                                         ; $6e15: $04
    ld a, e                                       ; $6e16: $7b
    ld a, a                                       ; $6e17: $7f
    ld a, h                                       ; $6e18: $7c
    ld a, a                                       ; $6e19: $7f
    ld a, a                                       ; $6e1a: $7f
    jp c, $17b2                                   ; $6e1b: $da $b2 $17

    add l                                         ; $6e1e: $85
    ld d, $b3                                     ; $6e1f: $16 $b3
    ccf                                           ; $6e21: $3f
    ld c, $f2                                     ; $6e22: $0e $f2
    add hl, hl                                    ; $6e24: $29
    db $fc                                        ; $6e25: $fc

Jump_042_6e26:
    ld e, c                                       ; $6e26: $59
    ld h, b                                       ; $6e27: $60
    ld b, c                                       ; $6e28: $41
    add hl, hl                                    ; $6e29: $29
    jr nc, jr_042_6dd0                            ; $6e2a: $30 $a4

    ret nz                                        ; $6e2c: $c0

    ret z                                         ; $6e2d: $c8

    db $e3                                        ; $6e2e: $e3
    rst $28                                       ; $6e2f: $ef
    ld d, a                                       ; $6e30: $57
    ld [hl], l                                    ; $6e31: $75
    ld b, [hl]                                    ; $6e32: $46
    or d                                          ; $6e33: $b2
    ccf                                           ; $6e34: $3f
    res 2, a                                      ; $6e35: $cb $97
    ld [bc], a                                    ; $6e37: $02
    ei                                            ; $6e38: $fb
    res 7, [hl]                                   ; $6e39: $cb $be
    ld [c], a                                     ; $6e3b: $e2
    xor $75                                       ; $6e3c: $ee $75
    ld d, c                                       ; $6e3e: $51
    or e                                          ; $6e3f: $b3
    ld c, h                                       ; $6e40: $4c
    ld a, h                                       ; $6e41: $7c
    jr z, @-$08                                   ; $6e42: $28 $f6

    sbc [hl]                                      ; $6e44: $9e
    jr c, jr_042_6e86                             ; $6e45: $38 $3f

    ld d, d                                       ; $6e47: $52
    inc hl                                        ; $6e48: $23
    add l                                         ; $6e49: $85
    ld a, [hl-]                                   ; $6e4a: $3a
    add a                                         ; $6e4b: $87
    ld d, d                                       ; $6e4c: $52
    ld h, $8a                                     ; $6e4d: $26 $8a
    jp c, $230b                                   ; $6e4f: $da $0b $23

    ei                                            ; $6e52: $fb
    or e                                          ; $6e53: $b3
    ld b, c                                       ; $6e54: $41

jr_042_6e55:
    cp h                                          ; $6e55: $bc
    ld de, $5d44                                  ; $6e56: $11 $44 $5d
    ld a, [hl-]                                   ; $6e59: $3a
    sbc l                                         ; $6e5a: $9d
    dec a                                         ; $6e5b: $3d
    cp d                                          ; $6e5c: $ba
    call nc, Call_042_661d                        ; $6e5d: $d4 $1d $66
    ld e, b                                       ; $6e60: $58
    cp a                                          ; $6e61: $bf
    ld [bc], a                                    ; $6e62: $02
    sbc l                                         ; $6e63: $9d
    ld b, d                                       ; $6e64: $42
    ld c, l                                       ; $6e65: $4d
    sbc h                                         ; $6e66: $9c
    rra                                           ; $6e67: $1f
    add hl, hl                                    ; $6e68: $29
    cp b                                          ; $6e69: $b8
    ld d, h                                       ; $6e6a: $54
    or e                                          ; $6e6b: $b3
    ld a, c                                       ; $6e6c: $79
    or d                                          ; $6e6d: $b2
    ld e, h                                       ; $6e6e: $5c
    inc bc                                        ; $6e6f: $03
    ld [hl], c                                    ; $6e70: $71
    ld h, e                                       ; $6e71: $63
    xor a                                         ; $6e72: $af
    ld l, c                                       ; $6e73: $69
    scf                                           ; $6e74: $37
    ld h, l                                       ; $6e75: $65
    ld [hl], h                                    ; $6e76: $74
    add hl, de                                    ; $6e77: $19
    ei                                            ; $6e78: $fb
    jr c, jr_042_6eba                             ; $6e79: $38 $3f

    ld d, d                                       ; $6e7b: $52
    ld [hl], b                                    ; $6e7c: $70
    pop hl                                        ; $6e7d: $e1
    ld sp, $9e79                                  ; $6e7e: $31 $79 $9e
    cp b                                          ; $6e81: $b8
    sub c                                         ; $6e82: $91
    ld e, h                                       ; $6e83: $5c
    sub [hl]                                      ; $6e84: $96
    add e                                         ; $6e85: $83

jr_042_6e86:
    cp d                                          ; $6e86: $ba
    inc l                                         ; $6e87: $2c
    or b                                          ; $6e88: $b0
    jr nc, @-$32                                  ; $6e89: $30 $cc

    ld a, $88                                     ; $6e8b: $3e $88
    rst $38                                       ; $6e8d: $ff
    cpl                                           ; $6e8e: $2f
    rla                                           ; $6e8f: $17
    and [hl]                                      ; $6e90: $a6
    ld [hl], e                                    ; $6e91: $73
    ld sp, hl                                     ; $6e92: $f9
    ld [$1f9c], a                                 ; $6e93: $ea $9c $1f
    call z, $df97                                 ; $6e96: $cc $97 $df
    ld h, c                                       ; $6e99: $61
    ld a, [hl-]                                   ; $6e9a: $3a
    pop af                                        ; $6e9b: $f1
    sbc $8b                                       ; $6e9c: $de $8b
    sbc e                                         ; $6e9e: $9b
    ld a, [hl]                                    ; $6e9f: $7e
    dec b                                         ; $6ea0: $05
    sbc [hl]                                      ; $6ea1: $9e
    inc hl                                        ; $6ea2: $23
    ld h, c                                       ; $6ea3: $61
    and h                                         ; $6ea4: $a4
    adc h                                         ; $6ea5: $8c
    ld c, h                                       ; $6ea6: $4c
    ld d, $1b                                     ; $6ea7: $16 $1b
    pop hl                                        ; $6ea9: $e1
    ret                                           ; $6eaa: $c9


    ld b, a                                       ; $6eab: $47
    rst $38                                       ; $6eac: $ff
    call z, $eab0                                 ; $6ead: $cc $b0 $ea
    ld [hl], d                                    ; $6eb0: $72

jr_042_6eb1:
    ld [de], a                                    ; $6eb1: $12
    rra                                           ; $6eb2: $1f
    ld a, [$dcbb]                                 ; $6eb3: $fa $bb $dc
    sub a                                         ; $6eb6: $97
    ld c, e                                       ; $6eb7: $4b
    dec [hl]                                      ; $6eb8: $35
    dec d                                         ; $6eb9: $15

jr_042_6eba:
    add h                                         ; $6eba: $84
    ld b, a                                       ; $6ebb: $47
    rla                                           ; $6ebc: $17
    push af                                       ; $6ebd: $f5
    add hl, hl                                    ; $6ebe: $29
    or e                                          ; $6ebf: $b3
    and a                                         ; $6ec0: $a7
    adc a                                         ; $6ec1: $8f
    rst $20                                       ; $6ec2: $e7
    sub h                                         ; $6ec3: $94
    adc a                                         ; $6ec4: $8f
    jr nz, jr_042_6eb1                            ; $6ec5: $20 $ea

    call c, Call_042_5d45                         ; $6ec7: $dc $45 $5d
    xor b                                         ; $6eca: $a8
    ld b, h                                       ; $6ecb: $44
    ld d, c                                       ; $6ecc: $51
    db $ec                                        ; $6ecd: $ec
    dec a                                         ; $6ece: $3d
    ld h, c                                       ; $6ecf: $61
    ei                                            ; $6ed0: $fb
    ld d, h                                       ; $6ed1: $54
    xor a                                         ; $6ed2: $af
    ld sp, hl                                     ; $6ed3: $f9
    ld c, a                                       ; $6ed4: $4f
    sub a                                         ; $6ed5: $97
    ld c, a                                       ; $6ed6: $4f
    dec b                                         ; $6ed7: $05
    ld [hl+], a                                   ; $6ed8: $22
    pop af                                        ; $6ed9: $f1
    ld h, l                                       ; $6eda: $65
    sbc b                                         ; $6edb: $98
    ld d, c                                       ; $6edc: $51
    dec hl                                        ; $6edd: $2b
    cp [hl]                                       ; $6ede: $be
    or e                                          ; $6edf: $b3
    ld sp, hl                                     ; $6ee0: $f9
    add l                                         ; $6ee1: $85
    daa                                           ; $6ee2: $27
    ld a, [$ce77]                                 ; $6ee3: $fa $77 $ce
    rrca                                          ; $6ee6: $0f
    ld h, [hl]                                    ; $6ee7: $66
    db $f4                                        ; $6ee8: $f4
    dec hl                                        ; $6ee9: $2b
    sbc l                                         ; $6eea: $9d
    ld c, b                                       ; $6eeb: $48
    call c, $af94                                 ; $6eec: $dc $94 $af
    or l                                          ; $6eef: $b5
    ld [bc], a                                    ; $6ef0: $02
    xor l                                         ; $6ef1: $ad
    ld b, c                                       ; $6ef2: $41
    ret nc                                        ; $6ef3: $d0

    and a                                         ; $6ef4: $a7
    db $ed                                        ; $6ef5: $ed
    ld c, c                                       ; $6ef6: $49
    ld a, c                                       ; $6ef7: $79
    xor e                                         ; $6ef8: $ab
    ccf                                           ; $6ef9: $3f
    or a                                          ; $6efa: $b7
    ld d, e                                       ; $6efb: $53
    add sp, -$5c                                  ; $6efc: $e8 $a4
    ret nz                                        ; $6efe: $c0

    adc l                                         ; $6eff: $8d
    xor b                                         ; $6f00: $a8
    jp hl                                         ; $6f01: $e9


    ld d, a                                       ; $6f02: $57
    ld l, l                                       ; $6f03: $6d
    rst $28                                       ; $6f04: $ef
    ld d, h                                       ; $6f05: $54
    scf                                           ; $6f06: $37
    add hl, hl                                    ; $6f07: $29
    ld [hl], b                                    ; $6f08: $70
    inc hl                                        ; $6f09: $23
    ld l, d                                       ; $6f0a: $6a
    ld d, d                                       ; $6f0b: $52
    sbc $ea                                       ; $6f0c: $de $ea
    ld c, c                                       ; $6f0e: $49
    rst $00                                       ; $6f0f: $c7
    and a                                         ; $6f10: $a7
    pop bc                                        ; $6f11: $c1
    ld a, [$5e78]                                 ; $6f12: $fa $78 $5e
    ret c                                         ; $6f15: $d8

    add [hl]                                      ; $6f16: $86
    cp h                                          ; $6f17: $bc
    xor a                                         ; $6f18: $af
    ld h, $82                                     ; $6f19: $26 $82
    cp l                                          ; $6f1b: $bd
    ccf                                           ; $6f1c: $3f
    push hl                                       ; $6f1d: $e5
    rst $30                                       ; $6f1e: $f7
    ld b, a                                       ; $6f1f: $47
    pop hl                                        ; $6f20: $e1
    jp nz, Jump_042_5e36                          ; $6f21: $c2 $36 $5e

    sbc h                                         ; $6f24: $9c
    ld l, $3e                                     ; $6f25: $2e $3e
    inc d                                         ; $6f27: $14
    add l                                         ; $6f28: $85
    ccf                                           ; $6f29: $3f
    ld [hl-], a                                   ; $6f2a: $32
    call z, Call_042_57e8                         ; $6f2b: $cc $e8 $57
    sbc [hl]                                      ; $6f2e: $9e
    ld a, [hl]                                    ; $6f2f: $7e
    call nz, $f14d                                ; $6f30: $c4 $4d $f1
    xor b                                         ; $6f33: $a8
    ld de, $512a                                  ; $6f34: $11 $2a $51
    inc d                                         ; $6f37: $14

jr_042_6f38:
    ld a, e                                       ; $6f38: $7b
    ld c, a                                       ; $6f39: $4f
    ret c                                         ; $6f3a: $d8

    ld a, $d5                                     ; $6f3b: $3e $d5
    ld l, e                                       ; $6f3d: $6b
    cp $ab                                        ; $6f3e: $fe $ab
    or l                                          ; $6f40: $b5
    ld [bc], a                                    ; $6f41: $02
    sbc l                                         ; $6f42: $9d
    ret z                                         ; $6f43: $c8

    and h                                         ; $6f44: $a4
    cp b                                          ; $6f45: $b8
    ld de, $89b6                                  ; $6f46: $11 $b6 $89
    ld h, b                                       ; $6f49: $60
    rst $00                                       ; $6f4a: $c7
    add a                                         ; $6f4b: $87
    cp $46                                        ; $6f4c: $fe $46
    jp z, $9685                                   ; $6f4e: $ca $85 $96

    sub a                                         ; $6f51: $97
    ld c, c                                       ; $6f52: $49
    sbc c                                         ; $6f53: $99
    dec a                                         ; $6f54: $3d
    pop de                                        ; $6f55: $d1
    or $e5                                        ; $6f56: $f6 $e5
    call nz, Call_000_30bd                        ; $6f58: $c4 $bd $30
    jp z, $d755                                   ; $6f5b: $ca $55 $d7

    and a                                         ; $6f5e: $a7
    ld c, $4a                                     ; $6f5f: $0e $4a
    and c                                         ; $6f61: $a1
    ld [hl-], a                                   ; $6f62: $32
    ld d, c                                       ; $6f63: $51
    rla                                           ; $6f64: $17
    ld [hl], d                                    ; $6f65: $72
    ld l, $8a                                     ; $6f66: $2e $8a
    ld [hl+], a                                   ; $6f68: $22
    ld l, [hl]                                    ; $6f69: $6e
    ld h, h                                       ; $6f6a: $64
    adc d                                         ; $6f6b: $8a
    ld b, e                                       ; $6f6c: $43
    ld e, [hl]                                    ; $6f6d: $5e
    xor a                                         ; $6f6e: $af

jr_042_6f6f:
    rst $38                                       ; $6f6f: $ff
    jp nz, $c42f                                  ; $6f70: $c2 $2f $c4

    ld c, a                                       ; $6f73: $4f
    push af                                       ; $6f74: $f5
    jp c, Jump_000_167d                           ; $6f75: $da $7d $16

    ld e, b                                       ; $6f78: $58
    cp h                                          ; $6f79: $bc
    ld l, a                                       ; $6f7a: $6f
    db $e4                                        ; $6f7b: $e4
    and l                                         ; $6f7c: $a5
    ld a, [$148d]                                 ; $6f7d: $fa $8d $14
    cp d                                          ; $6f80: $ba
    ld d, e                                       ; $6f81: $53
    ld h, b                                       ; $6f82: $60
    scf                                           ; $6f83: $37
    ld a, l                                       ; $6f84: $7d
    inc a                                         ; $6f85: $3c
    and a                                         ; $6f86: $a7
    ld b, d                                       ; $6f87: $42
    sbc b                                         ; $6f88: $98
    ld c, [hl]                                    ; $6f89: $4e
    ld a, [bc]                                    ; $6f8a: $0a
    call c, Call_000_1a88                         ; $6f8b: $dc $88 $1a
    ld e, l                                       ; $6f8e: $5d
    ld hl, sp-$5e                                 ; $6f8f: $f8 $a2
    sbc $ea                                       ; $6f91: $de $ea
    rrca                                          ; $6f93: $0f
    ld d, e                                       ; $6f94: $53
    and $c9                                       ; $6f95: $e6 $c9
    db $ed                                        ; $6f97: $ed
    ld d, h                                       ; $6f98: $54
    scf                                           ; $6f99: $37
    add hl, hl                                    ; $6f9a: $29
    ld d, e                                       ; $6f9b: $53
    jr jr_042_6f38                                ; $6f9c: $18 $9a

    ld c, h                                       ; $6f9e: $4c
    cp a                                          ; $6f9f: $bf
    ld [bc], a                                    ; $6fa0: $02
    sbc l                                         ; $6fa1: $9d

Jump_042_6fa2:
    ld e, [hl]                                    ; $6fa2: $5e
    db $fc                                        ; $6fa3: $fc
    sub e                                         ; $6fa4: $93
    ld [bc], a                                    ; $6fa5: $02
    pop hl                                        ; $6fa6: $e1
    db $e3                                        ; $6fa7: $e3
    db $eb                                        ; $6fa8: $eb
    db $d3                                        ; $6fa9: $d3
    and $1b                                       ; $6faa: $e6 $1b
    jr @+$5b                                      ; $6fac: $18 $59

    cp [hl]                                       ; $6fae: $be
    sub h                                         ; $6faf: $94
    scf                                           ; $6fb0: $37
    add h                                         ; $6fb1: $84
    ld c, d                                       ; $6fb2: $4a
    db $f4                                        ; $6fb3: $f4
    ret c                                         ; $6fb4: $d8

    pop de                                        ; $6fb5: $d1
    add sp, -$21                                  ; $6fb6: $e8 $df
    db $e4                                        ; $6fb8: $e4
    rst $30                                       ; $6fb9: $f7
    cp $78                                        ; $6fba: $fe $78
    ld a, [hl]                                    ; $6fbc: $7e
    ld sp, hl                                     ; $6fbd: $f9
    xor b                                         ; $6fbe: $a8
    ld c, e                                       ; $6fbf: $4b
    ld e, e                                       ; $6fc0: $5b
    halt                                          ; $6fc1: $76
    sbc $11                                       ; $6fc2: $de $11
    dec [hl]                                      ; $6fc4: $35
    ld [hl], $fd                                  ; $6fc5: $36 $fd
    ld a, [bc]                                    ; $6fc7: $0a
    ld [hl], l                                    ; $6fc8: $75
    ld b, [hl]                                    ; $6fc9: $46
    ld d, d                                       ; $6fca: $52
    ld b, [hl]                                    ; $6fcb: $46
    ld h, $de                                     ; $6fcc: $26 $de
    ld h, a                                       ; $6fce: $67
    cp [hl]                                       ; $6fcf: $be
    jr nc, jr_042_6f6f                            ; $6fd0: $30 $9d

    db $eb                                        ; $6fd2: $eb
    db $e3                                        ; $6fd3: $e3
    ld a, c                                       ; $6fd4: $79
    ld [hl], c                                    ; $6fd5: $71
    inc hl                                        ; $6fd6: $23
    db $e4                                        ; $6fd7: $e4
    ld b, c                                       ; $6fd8: $41
    sub b                                         ; $6fd9: $90
    ld a, [c]                                     ; $6fda: $f2
    ei                                            ; $6fdb: $fb
    inc c                                         ; $6fdc: $0c
    ld sp, hl                                     ; $6fdd: $f9
    inc l                                         ; $6fde: $2c
    add [hl]                                      ; $6fdf: $86
    push hl                                       ; $6fe0: $e5
    db $ed                                        ; $6fe1: $ed
    call $bf5d                                    ; $6fe2: $cd $5d $bf
    ld [bc], a                                    ; $6fe5: $02

Call_042_6fe6:
    cp [hl]                                       ; $6fe6: $be
    inc hl                                        ; $6fe7: $23
    sub e                                         ; $6fe8: $93

Jump_042_6fe9:
    adc l                                         ; $6fe9: $8d
    ld d, b                                       ; $6fea: $50
    ld d, c                                       ; $6feb: $51
    rst $20                                       ; $6fec: $e7
    ld l, $48                                     ; $6fed: $2e $48
    dec b                                         ; $6fef: $05
    ld [hl+], a                                   ; $6ff0: $22
    ld [hl], c                                    ; $6ff1: $71
    ld a, [$3eb4]                                 ; $6ff2: $fa $b4 $3e
    ld a, d                                       ; $6ff5: $7a
    db $fd                                        ; $6ff6: $fd
    ld a, l                                       ; $6ff7: $7d
    dec [hl]                                      ; $6ff8: $35
    ld a, c                                       ; $6ff9: $79
    ld d, c                                       ; $6ffa: $51
    ld l, a                                       ; $6ffb: $6f
    add sp, $57                                   ; $6ffc: $e8 $57
    ld [hl], l                                    ; $6ffe: $75
    ld b, [hl]                                    ; $6fff: $46
    ld [c], a                                     ; $7000: $e2
    ld l, $cb                                     ; $7001: $2e $cb
    sub h                                         ; $7003: $94
    ld [hl-], a                                   ; $7004: $32
    ld [hl], c                                    ; $7005: $71
    ld b, $05                                     ; $7006: $06 $05
    add e                                         ; $7008: $83
    ld l, $b5                                     ; $7009: $2e $b5
    rst $18                                       ; $700b: $df
    adc h                                         ; $700c: $8c
    ld b, b                                       ; $700d: $40
    sbc a                                         ; $700e: $9f
    or $3f                                        ; $700f: $f6 $3f

jr_042_7011:
    ld l, [hl]                                    ; $7011: $6e
    jp z, $f0a7                                   ; $7012: $ca $a7 $f0

    ld e, a                                       ; $7015: $5f
    cp h                                          ; $7016: $bc
    rst $28                                       ; $7017: $ef
    jr nz, jr_042_7084                            ; $7018: $20 $6a

jr_042_701a:
    ld l, d                                       ; $701a: $6a
    xor l                                         ; $701b: $ad
    dec e                                         ; $701c: $1d
    db $d3                                        ; $701d: $d3
    sbc d                                         ; $701e: $9a
    jp hl                                         ; $701f: $e9


    ld a, b                                       ; $7020: $78
    ld c, h                                       ; $7021: $4c
    sbc [hl]                                      ; $7022: $9e
    ld hl, $67c8                                  ; $7023: $21 $c8 $67
    add e                                         ; $7026: $83
    ld a, c                                       ; $7027: $79
    ld l, d                                       ; $7028: $6a
    xor [hl]                                      ; $7029: $ae
    dec e                                         ; $702a: $1d
    jp nc, Jump_000_3517                          ; $702b: $d2 $17 $35

    ld hl, $7a2f                                  ; $702e: $21 $2f $7a
    jr c, jr_042_701a                             ; $7031: $38 $e7

    add a                                         ; $7033: $87
    cp l                                          ; $7034: $bd
    ret z                                         ; $7035: $c8

    add sp, -$1e                                  ; $7036: $e8 $e2
    ld a, l                                       ; $7038: $7d
    inc bc                                        ; $7039: $03
    inc hl                                        ; $703a: $23
    dec bc                                        ; $703b: $0b
    ld c, h                                       ; $703c: $4c
    pop bc                                        ; $703d: $c1
    sub b                                         ; $703e: $90
    cp a                                          ; $703f: $bf
    or h                                          ; $7040: $b4
    ld h, l                                       ; $7041: $65
    rst $20                                       ; $7042: $e7
    dec e                                         ; $7043: $1d
    ld d, c                                       ; $7044: $51
    ld h, e                                       ; $7045: $63
    inc de                                        ; $7046: $13
    and [hl]                                      ; $7047: $a6
    call z, $cb97                                 ; $7048: $cc $97 $cb
    ld b, d                                       ; $704b: $42
    add l                                         ; $704c: $85
    cpl                                           ; $704d: $2f
    adc $8f                                       ; $704e: $ce $8f
    cp h                                          ; $7050: $bc
    ld e, [hl]                                    ; $7051: $5e
    ld a, a                                       ; $7052: $7f
    ld e, a                                       ; $7053: $5f
    ld c, l                                       ; $7054: $4d
    cp a                                          ; $7055: $bf
    ld [bc], a                                    ; $7056: $02
    sbc l                                         ; $7057: $9d
    ld a, $33                                     ; $7058: $3e $33
    inc b                                         ; $705a: $04
    dec [hl]                                      ; $705b: $35
    ld d, a                                       ; $705c: $57
    ld l, l                                       ; $705d: $6d
    add h                                         ; $705e: $84
    db $fc                                        ; $705f: $fc
    add sp, $21                                   ; $7060: $e8 $21
    ret nc                                        ; $7062: $d0

    ld h, l                                       ; $7063: $65
    add c                                         ; $7064: $81
    push de                                       ; $7065: $d5
    rra                                           ; $7066: $1f
    ld a, [c]                                     ; $7067: $f2
    ld [c], a                                     ; $7068: $e2
    sbc a                                         ; $7069: $9f
    inc a                                         ; $706a: $3c
    ld c, c                                       ; $706b: $49
    jp nz, Jump_042_78f8                          ; $706c: $c2 $f8 $78

    ld a, [$ed15]                                 ; $706f: $fa $15 $ed
    ld a, l                                       ; $7072: $7d
    ld a, h                                       ; $7073: $7c
    ld c, a                                       ; $7074: $4f
    sub e                                         ; $7075: $93
    or c                                          ; $7076: $b1
    ld c, a                                       ; $7077: $4f
    ld e, e                                       ; $7078: $5b
    or $a5                                        ; $7079: $f6 $a5
    ld a, h                                       ; $707b: $7c
    rst $18                                       ; $707c: $df
    rst $30                                       ; $707d: $f7
    sub c                                         ; $707e: $91
    sub c                                         ; $707f: $91
    jr c, jr_042_7011                             ; $7080: $38 $8f

    ld a, [de]                                    ; $7082: $1a
    dec [hl]                                      ; $7083: $35

jr_042_7084:
    ld d, e                                       ; $7084: $53
    ld a, e                                       ; $7085: $7b
    ld d, d                                       ; $7086: $52
    jr nz, jr_042_7105                            ; $7087: $20 $7c

    inc a                                         ; $7089: $3c
    ld d, c                                       ; $708a: $51
    ld h, a                                       ; $708b: $67
    adc b                                         ; $708c: $88
    di                                            ; $708d: $f3
    inc hl                                        ; $708e: $23
    rra                                           ; $708f: $1f
    ld [hl], d                                    ; $7090: $72
    ld [hl], $23                                  ; $7091: $36 $23
    db $e4                                        ; $7093: $e4
    rst $20                                       ; $7094: $e7
    db $e3                                        ; $7095: $e3
    ld a, l                                       ; $7096: $7d
    ld b, e                                       ; $7097: $43
    inc d                                         ; $7098: $14
    or $46                                        ; $7099: $f6 $46
    sub [hl]                                      ; $709b: $96
    cpl                                           ; $709c: $2f
    dec b                                         ; $709d: $05
    sbc d                                         ; $709e: $9a
    halt                                          ; $709f: $76
    rst $08                                       ; $70a0: $cf
    adc b                                         ; $70a1: $88
    inc c                                         ; $70a2: $0c
    inc sp                                        ; $70a3: $33
    dec [hl]                                      ; $70a4: $35
    ld b, c                                       ; $70a5: $41
    sbc a                                         ; $70a6: $9f
    ld a, [hl-]                                   ; $70a7: $3a
    inc hl                                        ; $70a8: $23
    ld e, c                                       ; $70a9: $59
    and [hl]                                      ; $70aa: $a6
    sub h                                         ; $70ab: $94
    adc c                                         ; $70ac: $89
    dec e                                         ; $70ad: $1d
    add h                                         ; $70ae: $84
    db $ed                                        ; $70af: $ed
    dec c                                         ; $70b0: $0d
    dec [hl]                                      ; $70b1: $35
    ld d, a                                       ; $70b2: $57
    dec e                                         ; $70b3: $1d
    ld d, d                                       ; $70b4: $52
    inc d                                         ; $70b5: $14
    sbc [hl]                                      ; $70b6: $9e
    call nc, $9508                                ; $70b7: $d4 $08 $95
    inc l                                         ; $70ba: $2c
    ld [hl], $fa                                  ; $70bb: $36 $fa
    adc l                                         ; $70bd: $8d
    ld [$74c3], a                                 ; $70be: $ea $c3 $74
    ld a, [$9e15]                                 ; $70c1: $fa $15 $9e
    cp $a3                                        ; $70c4: $fe $a3
    ld a, [bc]                                    ; $70c6: $0a
    adc h                                         ; $70c7: $8c
    call c, $1e8e                                 ; $70c8: $dc $8e $1e
    adc $4d                                       ; $70cb: $ce $4d
    call $9ed4                                    ; $70cd: $cd $d4 $9e
    inc d                                         ; $70d0: $14
    ld [$4f1f], sp                                ; $70d1: $08 $1f $4f
    ld a, h                                       ; $70d4: $7c
    add sp, $6f                                   ; $70d5: $e8 $6f
    scf                                           ; $70d7: $37
    push hl                                       ; $70d8: $e5
    ei                                            ; $70d9: $fb
    dec d                                         ; $70da: $15
    cp [hl]                                       ; $70db: $be
    inc hl                                        ; $70dc: $23
    inc de                                        ; $70dd: $13
    cp e                                          ; $70de: $bb
    ld [$4f0b], a                                 ; $70df: $ea $0b $4f
    ld a, h                                       ; $70e2: $7c
    add sp, -$3b                                  ; $70e3: $e8 $c5
    ld c, e                                       ; $70e5: $4b
    rst $00                                       ; $70e6: $c7
    ld l, $0b                                     ; $70e7: $2e $0b
    inc l                                         ; $70e9: $2c
    ld h, e                                       ; $70ea: $63
    ld [$8632], sp                                ; $70eb: $08 $32 $86
    ld a, $75                                     ; $70ee: $3e $75
    ld b, [hl]                                    ; $70f0: $46
    ld h, d                                       ; $70f1: $62
    ld b, a                                       ; $70f2: $47
    adc e                                         ; $70f3: $8b
    dec sp                                        ; $70f4: $3b
    ld [hl], d                                    ; $70f5: $72
    ld a, [c]                                     ; $70f6: $f2
    or c                                          ; $70f7: $b1
    ld [hl], e                                    ; $70f8: $73
    ld h, e                                       ; $70f9: $63
    ld [$baad], a                                 ; $70fa: $ea $ad $ba
    db $ec                                        ; $70fd: $ec
    adc a                                         ; $70fe: $8f
    ret nc                                        ; $70ff: $d0

    ld hl, $cb3f                                  ; $7100: $21 $3f $cb
    db $db                                        ; $7103: $db
    db $ec                                        ; $7104: $ec

jr_042_7105:
    adc a                                         ; $7105: $8f
    ld a, [c]                                     ; $7106: $f2
    jr jr_042_715c                                ; $7107: $18 $53

    daa                                           ; $7109: $27
    add sp, $57                                   ; $710a: $e8 $57
    dec l                                         ; $710c: $2d
    rst $00                                       ; $710d: $c7
    ld b, e                                       ; $710e: $43
    inc sp                                        ; $710f: $33
    xor d                                         ; $7110: $aa
    ret                                           ; $7111: $c9


    ld b, h                                       ; $7112: $44
    ld e, l                                       ; $7113: $5d
    sub [hl]                                      ; $7114: $96
    ld sp, $1e37                                  ; $7115: $31 $37 $1e
    ld a, l                                       ; $7118: $7d
    ld e, d                                       ; $7119: $5a
    ld d, l                                       ; $711a: $55
    jr z, jr_042_7182                             ; $711b: $28 $65

    and d                                         ; $711d: $a2
    ld b, [hl]                                    ; $711e: $46
    xor a                                         ; $711f: $af
    cp a                                          ; $7120: $bf
    xor a                                         ; $7121: $af
    ld h, $2f                                     ; $7122: $26 $2f
    ld [$390d], a                                 ; $7124: $ea $0d $39
    add hl, bc                                    ; $7127: $09
    sub l                                         ; $7128: $95
    jr c, jr_042_7143                             ; $7129: $38 $18

    ld c, a                                       ; $712b: $4f
    sub [hl]                                      ; $712c: $96
    add hl, hl                                    ; $712d: $29
    inc a                                         ; $712e: $3c
    cp d                                          ; $712f: $ba
    call nc, Call_042_7901                        ; $7130: $d4 $01 $79
    ld a, e                                       ; $7133: $7b
    and e                                         ; $7134: $a3
    adc a                                         ; $7135: $8f

Jump_042_7136:
    rst $20                                       ; $7136: $e7
    add l                                         ; $7137: $85
    add h                                         ; $7138: $84
    cp d                                          ; $7139: $ba
    xor a                                         ; $713a: $af
    ld h, $cb                                     ; $713b: $26 $cb
    dec [hl]                                      ; $713d: $35
    db $10                                        ; $713e: $10
    ld a, [hl]                                    ; $713f: $7e
    ld d, e                                       ; $7140: $53
    rst $10                                       ; $7141: $d7
    xor a                                         ; $7142: $af

jr_042_7143:
    ld [hl], l                                    ; $7143: $75
    ld b, [hl]                                    ; $7144: $46
    or d                                          ; $7145: $b2
    cp a                                          ; $7146: $bf
    cp b                                          ; $7147: $b8
    ld a, e                                       ; $7148: $7b
    ld b, [hl]                                    ; $7149: $46
    ld [hl], l                                    ; $714a: $75
    pop af                                        ; $714b: $f1
    and c                                         ; $714c: $a1
    ld d, a                                       ; $714d: $57
    ld [hl], e                                    ; $714e: $73
    dec b                                         ; $714f: $05
    ld [hl], l                                    ; $7150: $75
    ldh a, [$e2]                                  ; $7151: $f0 $e2
    db $fc                                        ; $7153: $fc
    ret z                                         ; $7154: $c8

    and a                                         ; $7155: $a7
    ld b, d                                       ; $7156: $42
    call $6d15                                    ; $7157: $cd $15 $6d
    add h                                         ; $715a: $84
    db $fc                                        ; $715b: $fc

jr_042_715c:
    add sp, $21                                   ; $715c: $e8 $21
    ret nc                                        ; $715e: $d0

    and l                                         ; $715f: $a5
    ld a, [$48c8]                                 ; $7160: $fa $c8 $48
    cp h                                          ; $7163: $bc
    rst $08                                       ; $7164: $cf
    adc b                                         ; $7165: $88
    pop de                                        ; $7166: $d1
    ld l, d                                       ; $7167: $6a
    inc c                                         ; $7168: $0c
    db $fd                                        ; $7169: $fd
    ld a, [bc]                                    ; $716a: $0a
    sbc [hl]                                      ; $716b: $9e
    sub a                                         ; $716c: $97
    ld [hl], d                                    ; $716d: $72
    ld e, a                                       ; $716e: $5f
    ld c, l                                       ; $716f: $4d
    sbc a                                         ; $7170: $9f
    adc [hl]                                      ; $7171: $8e
    ld hl, $d5f7                                  ; $7172: $21 $f7 $d5
    ld b, h                                       ; $7175: $44
    db $db                                        ; $7176: $db
    sub a                                         ; $7177: $97
    ld [hl], c                                    ; $7178: $71
    adc $7f                                       ; $7179: $ce $7f
    ld sp, hl                                     ; $717b: $f9
    dec b                                         ; $717c: $05
    add $a7                                       ; $717d: $c6 $a7
    ld c, e                                       ; $717f: $4b
    ei                                            ; $7180: $fb
    cp a                                          ; $7181: $bf

jr_042_7182:
    cp l                                          ; $7182: $bd
    ld b, e                                       ; $7183: $43
    jr nz, jr_042_71ce                            ; $7184: $20 $48

    rst $00                                       ; $7186: $c7
    and a                                         ; $7187: $a7
    pop bc                                        ; $7188: $c1
    or d                                          ; $7189: $b2
    inc c                                         ; $718a: $0c
    dec de                                        ; $718b: $1b
    db $f4                                        ; $718c: $f4
    ld a, d                                       ; $718d: $7a
    ret c                                         ; $718e: $d8

    inc b                                         ; $718f: $04
    and l                                         ; $7190: $a5
    ret nz                                        ; $7191: $c0

    and d                                         ; $7192: $a2
    ld e, l                                       ; $7193: $5d
    dec a                                         ; $7194: $3d
    pop af                                        ; $7195: $f1
    and c                                         ; $7196: $a1
    rst $10                                       ; $7197: $d7
    xor a                                         ; $7198: $af
    xor l                                         ; $7199: $ad
    adc d                                         ; $719a: $8a
    ret nc                                        ; $719b: $d0

    ld a, [c]                                     ; $719c: $f2
    pop af                                        ; $719d: $f1
    and c                                         ; $719e: $a1
    rra                                           ; $719f: $1f
    dec b                                         ; $71a0: $05
    ld h, c                                       ; $71a1: $61
    dec de                                        ; $71a2: $1b
    ld e, l                                       ; $71a3: $5d
    call c, $7739                                 ; $71a4: $dc $39 $77
    ld a, [c]                                     ; $71a7: $f2
    ld a, l                                       ; $71a8: $7d
    jp c, $edff                                   ; $71a9: $da $ff $ed

    dec e                                         ; $71ac: $1d
    ld [bc], a                                    ; $71ad: $02
    ld [hl], c                                    ; $71ae: $71
    rla                                           ; $71af: $17
    rst $38                                       ; $71b0: $ff
    ld b, a                                       ; $71b1: $47
    add c                                         ; $71b2: $81
    ld a, c                                       ; $71b3: $79
    ld [c], a                                     ; $71b4: $e2
    db $fc                                        ; $71b5: $fc
    ret z                                         ; $71b6: $c8

    cp [hl]                                       ; $71b7: $be
    inc a                                         ; $71b8: $3c
    ld l, c                                       ; $71b9: $69
    xor b                                         ; $71ba: $a8
    xor d                                         ; $71bb: $aa
    add hl, bc                                    ; $71bc: $09
    db $db                                        ; $71bd: $db
    sub b                                         ; $71be: $90
    rst $08                                       ; $71bf: $cf
    rla                                           ; $71c0: $17
    rra                                           ; $71c1: $1f
    ld a, d                                       ; $71c2: $7a
    db $fd                                        ; $71c3: $fd
    ld a, [bc]                                    ; $71c4: $0a
    dec e                                         ; $71c5: $1d
    ld c, l                                       ; $71c6: $4d
    ld [hl], a                                    ; $71c7: $77
    db $dd                                        ; $71c8: $dd
    sbc c                                         ; $71c9: $99
    push af                                       ; $71ca: $f5
    ld a, l                                       ; $71cb: $7d
    cp a                                          ; $71cc: $bf
    ld [bc], a                                    ; $71cd: $02

jr_042_71ce:
    ld l, l                                       ; $71ce: $6d
    jr c, jr_042_7208                             ; $71cf: $38 $37

    db $e4                                        ; $71d1: $e4
    jp hl                                         ; $71d2: $e9


    ld a, [c]                                     ; $71d3: $f2
    ld a, [bc]                                    ; $71d4: $0a
    and l                                         ; $71d5: $a5
    ld c, h                                       ; $71d6: $4c
    jp z, Jump_000_1181                           ; $71d7: $ca $81 $11

    pop bc                                        ; $71da: $c1
    ld b, l                                       ; $71db: $45
    and e                                         ; $71dc: $a3
    ld a, a                                       ; $71dd: $7f
    dec [hl]                                      ; $71de: $35
    ld d, a                                       ; $71df: $57
    sbc [hl]                                      ; $71e0: $9e
    ld d, e                                       ; $71e1: $53
    ld a, $ee                                     ; $71e2: $3e $ee
    ld [c], a                                     ; $71e4: $e2
    ld a, l                                       ; $71e5: $7d
    rlca                                          ; $71e6: $07
    ld a, [c]                                     ; $71e7: $f2
    add hl, de                                    ; $71e8: $19
    pop af                                        ; $71e9: $f1
    jp nc, $8bb1                                  ; $71ea: $d2 $b1 $8b

    ld a, [$351d]                                 ; $71ed: $fa $1d $35
    ld d, [hl]                                    ; $71f0: $56
    dec e                                         ; $71f1: $1d
    adc a                                         ; $71f2: $8f
    db $dd                                        ; $71f3: $dd
    db $e4                                        ; $71f4: $e4
    db $e3                                        ; $71f5: $e3
    ld b, e                                       ; $71f6: $43
    ld d, c                                       ; $71f7: $51
    ret c                                         ; $71f8: $d8

    ld h, e                                       ; $71f9: $63
    db $ec                                        ; $71fa: $ec
    ld l, e                                       ; $71fb: $6b
    xor l                                         ; $71fc: $ad
    xor l                                         ; $71fd: $ad
    pop bc                                        ; $71fe: $c1
    xor a                                         ; $71ff: $af
    bit 1, l                                      ; $7200: $cb $4d
    sbc [hl]                                      ; $7202: $9e
    inc b                                         ; $7203: $04
    add hl, sp                                    ; $7204: $39
    ld d, c                                       ; $7205: $51
    ld d, a                                       ; $7206: $57
    ld b, c                                       ; $7207: $41

jr_042_7208:
    ld hl, sp-$24                                 ; $7208: $f8 $dc
    di                                            ; $720a: $f3
    ld h, h                                       ; $720b: $64
    ld a, a                                       ; $720c: $7f
    sub [hl]                                      ; $720d: $96
    or a                                          ; $720e: $b7
    reti                                          ; $720f: $d9


    rra                                           ; $7210: $1f
    push hl                                       ; $7211: $e5
    ld sp, $4ea6                                  ; $7212: $31 $a6 $4e
    ret nc                                        ; $7215: $d0

    rst $30                                       ; $7216: $f7
    db $fd                                        ; $7217: $fd
    ld a, [bc]                                    ; $7218: $0a
    cp [hl]                                       ; $7219: $be
    or a                                          ; $721a: $b7
    ld hl, $9bc4                                  ; $721b: $21 $c4 $9b
    sbc d                                         ; $721e: $9a
    jp hl                                         ; $721f: $e9


    sub b                                         ; $7220: $90
    and d                                         ; $7221: $a2
    ldh a, [$a7]                                  ; $7222: $f0 $a7
    ld b, [hl]                                    ; $7224: $46
    xor b                                         ; $7225: $a8
    ld a, h                                       ; $7226: $7c
    ret z                                         ; $7227: $c8

    sbc e                                         ; $7228: $9b
    db $fd                                        ; $7229: $fd
    call nz, $411b                                ; $722a: $c4 $1b $41
    ld a, [bc]                                    ; $722d: $0a
    db $ec                                        ; $722e: $ec
    cp [hl]                                       ; $722f: $be
    ld c, a                                       ; $7230: $4f
    inc de                                        ; $7231: $13
    adc l                                         ; $7232: $8d
    ld h, a                                       ; $7233: $67
    and c                                         ; $7234: $a1
    jp nz, $9397                                  ; $7235: $c2 $97 $93

    ld d, h                                       ; $7238: $54
    sub b                                         ; $7239: $90
    ret                                           ; $723a: $c9


    ld [bc], a                                    ; $723b: $02
    ld c, e                                       ; $723c: $4b
    ld e, e                                       ; $723d: $5b
    halt                                          ; $723e: $76
    sbc $11                                       ; $723f: $de $11
    dec [hl]                                      ; $7241: $35
    ld [hl], $41                                  ; $7242: $36 $41
    xor b                                         ; $7244: $a8
    ld a, h                                       ; $7245: $7c
    ld d, $2a                                     ; $7246: $16 $2a
    ld b, a                                       ; $7248: $47
    cp h                                          ; $7249: $bc
    ld de, $f1f4                                  ; $724a: $11 $f4 $f1
    dec e                                         ; $724d: $1d
    sbc c                                         ; $724e: $99
    jr c, jr_042_7269                             ; $724f: $38 $18

    ld a, a                                       ; $7251: $7f
    sbc h                                         ; $7252: $9c
    rra                                           ; $7253: $1f
    ld l, c                                       ; $7254: $69
    rst $38                                       ; $7255: $ff
    push de                                       ; $7256: $d5
    ld d, a                                       ; $7257: $57
    rra                                           ; $7258: $1f
    ld c, a                                       ; $7259: $4f
    rst $38                                       ; $725a: $ff
    dec l                                         ; $725b: $2d
    ld b, l                                       ; $725c: $45
    rla                                           ; $725d: $17
    dec [hl]                                      ; $725e: $35
    push de                                       ; $725f: $d5
    set 5, c                                      ; $7260: $cb $e9
    ld a, [c]                                     ; $7262: $f2
    bit 4, d                                      ; $7263: $cb $62
    jr nz, jr_042_7279                            ; $7265: $20 $12

    ld h, c                                       ; $7267: $61
    push af                                       ; $7268: $f5

jr_042_7269:
    ld h, h                                       ; $7269: $64
    ld a, e                                       ; $726a: $7b
    db $fc                                        ; $726b: $fc
    ld d, c                                       ; $726c: $51
    sbc [hl]                                      ; $726d: $9e
    jr c, jr_042_72af                             ; $726e: $38 $3f

    or d                                          ; $7270: $b2
    sub c                                         ; $7271: $91
    pop af                                        ; $7272: $f1
    ld a, d                                       ; $7273: $7a
    db $ed                                        ; $7274: $ed
    inc c                                         ; $7275: $0c
    adc h                                         ; $7276: $8c
    cp [hl]                                       ; $7277: $be
    rst $28                                       ; $7278: $ef

jr_042_7279:
    or e                                          ; $7279: $b3
    ret nz                                        ; $727a: $c0

Call_042_727b:
    or d                                          ; $727b: $b2
    ret nc                                        ; $727c: $d0

    ld a, l                                       ; $727d: $7d
    add [hl]                                      ; $727e: $86
    db $ec                                        ; $727f: $ec
    ld c, a                                       ; $7280: $4f
    pop hl                                        ; $7281: $e1
    rla                                           ; $7282: $17
    ld [c], a                                     ; $7283: $e2
    ld b, a                                       ; $7284: $47
    ld h, c                                       ; $7285: $61
    ld l, a                                       ; $7286: $6f
    ld h, h                                       ; $7287: $64
    ld a, c                                       ; $7288: $79
    add l                                         ; $7289: $85
    cp l                                          ; $728a: $bd
    pop de                                        ; $728b: $d1
    xor a                                         ; $728c: $af
    db $ed                                        ; $728d: $ed
    ld a, l                                       ; $728e: $7d
    ld a, [bc]                                    ; $728f: $0a
    cp a                                          ; $7290: $bf
    db $10                                        ; $7291: $10
    ccf                                           ; $7292: $3f
    ld a, [bc]                                    ; $7293: $0a
    ld a, e                                       ; $7294: $7b
    inc hl                                        ; $7295: $23
    sra e                                         ; $7296: $cb $2b
    db $ec                                        ; $7298: $ec
    adc l                                         ; $7299: $8d
    sbc d                                         ; $729a: $9a
    dec hl                                        ; $729b: $2b
    ld l, l                                       ; $729c: $6d
    ret nc                                        ; $729d: $d0

    xor $6a                                       ; $729e: $ee $6a
    xor [hl]                                      ; $72a0: $ae
    xor l                                         ; $72a1: $ad
    ld a, [hl+]                                   ; $72a2: $2a
    sub h                                         ; $72a3: $94
    ld [hl-], a                                   ; $72a4: $32
    pop hl                                        ; $72a5: $e1
    ld sp, $4679                                  ; $72a6: $31 $79 $46
    inc b                                         ; $72a9: $04
    rla                                           ; $72aa: $17
    ld [hl], d                                    ; $72ab: $72
    ld a, [bc]                                    ; $72ac: $0a
    db $db                                        ; $72ad: $db
    ld b, l                                       ; $72ae: $45

jr_042_72af:
    adc l                                         ; $72af: $8d
    ld d, l                                       ; $72b0: $55
    rst $00                                       ; $72b1: $c7
    ld h, e                                       ; $72b2: $63
    rst $10                                       ; $72b3: $d7
    xor a                                         ; $72b4: $af
    ld [hl], l                                    ; $72b5: $75
    db $10                                        ; $72b6: $10
    rst $38                                       ; $72b7: $ff
    db $e4                                        ; $72b8: $e4
    push af                                       ; $72b9: $f5
    ld a, [$fc2f]                                 ; $72ba: $fa $2f $fc
    ld b, d                                       ; $72bd: $42
    db $fc                                        ; $72be: $fc
    sbc d                                         ; $72bf: $9a
    ld l, c                                       ; $72c0: $69
    and d                                         ; $72c1: $a2
    pop af                                        ; $72c2: $f1
    inc l                                         ; $72c3: $2c
    ld d, h                                       ; $72c4: $54
    ld hl, sp+$72                                 ; $72c5: $f8 $72
    sub d                                         ; $72c7: $92
    ld a, [bc]                                    ; $72c8: $0a
    ld [hl-], a                                   ; $72c9: $32
    ld e, c                                       ; $72ca: $59
    ld h, b                                       ; $72cb: $60
    ld l, c                                       ; $72cc: $69
    set 1, [hl]                                   ; $72cd: $cb $ce
    dec sp                                        ; $72cf: $3b
    and d                                         ; $72d0: $a2
    add $a6                                       ; $72d1: $c6 $a6
    ld c, a                                       ; $72d3: $4f
    xor e                                         ; $72d4: $ab
    ld a, [bc]                                    ; $72d5: $0a
    and l                                         ; $72d6: $a5
    ld c, h                                       ; $72d7: $4c
    ld a, b                                       ; $72d8: $78
    ld c, h                                       ; $72d9: $4c
    sbc [hl]                                      ; $72da: $9e
    ld de, $85c1                                  ; $72db: $11 $c1 $85
    sbc h                                         ; $72de: $9c
    jp nz, Jump_042_5176                          ; $72df: $c2 $76 $51

    ld h, e                                       ; $72e2: $63
    push de                                       ; $72e3: $d5
    pop af                                        ; $72e4: $f1
    ret c                                         ; $72e5: $d8

    push af                                       ; $72e6: $f5
    dec hl                                        ; $72e7: $2b
    cp [hl]                                       ; $72e8: $be
    cp b                                          ; $72e9: $b8
    ret c                                         ; $72ea: $d8

    pop de                                        ; $72eb: $d1
    ld [c], a                                     ; $72ec: $e2
    adc [hl]                                      ; $72ed: $8e
    daa                                           ; $72ee: $27
    rra                                           ; $72ef: $1f
    or [hl]                                       ; $72f0: $b6
    ld hl, $10df                                  ; $72f1: $21 $df $10
    ld a, [hl+]                                   ; $72f4: $2a
    xor c                                         ; $72f5: $a9
    ld b, [hl]                                    ; $72f6: $46
    ld c, l                                       ; $72f7: $4d
    ld d, $58                                     ; $72f8: $16 $58
    sbc $ec                                       ; $72fa: $de $ec
    ret z                                         ; $72fc: $c8

Call_042_72fd:
    scf                                           ; $72fd: $37
    db $e4                                        ; $72fe: $e4
    rst $30                                       ; $72ff: $f7
    cp $d4                                        ; $7300: $fe $d4
    dec a                                         ; $7302: $3d
    or b                                          ; $7303: $b0
    ld a, l                                       ; $7304: $7d
    jp c, Jump_000_3dbc                           ; $7305: $da $bc $3d

    ld h, l                                       ; $7308: $65
    cp h                                          ; $7309: $bc
    cp a                                          ; $730a: $bf
    ld d, c                                       ; $730b: $51
    ld l, e                                       ; $730c: $6b
    dec b                                         ; $730d: $05
    ld l, l                                       ; $730e: $6d
    ld c, a                                       ; $730f: $4f
    and h                                         ; $7310: $a4
    ld d, c                                       ; $7311: $51
    ld l, c                                       ; $7312: $69
    ld d, h                                       ; $7313: $54
    ld b, [hl]                                    ; $7314: $46
    ld a, [$8fbe]                                 ; $7315: $fa $be $8f
    adc h                                         ; $7318: $8c
    and h                                         ; $7319: $a4
    inc [hl]                                      ; $731a: $34
    ld e, d                                       ; $731b: $5a
    ld a, [de]                                    ; $731c: $1a
    dec l                                         ; $731d: $2d
    db $d3                                        ; $731e: $d3
    rst $30                                       ; $731f: $f7
    db $fd                                        ; $7320: $fd
    ld a, [bc]                                    ; $7321: $0a
    xor l                                         ; $7322: $ad
    ld e, a                                       ; $7323: $5f
    ld d, l                                       ; $7324: $55
    ld e, l                                       ; $7325: $5d
    ld a, [hl]                                    ; $7326: $7e
    ld d, a                                       ; $7327: $57
    sub b                                         ; $7328: $90
    adc c                                         ; $7329: $89
    sbc e                                         ; $732a: $9b
    ld a, [bc]                                    ; $732b: $0a
    add hl, hl                                    ; $732c: $29
    ld [hl], h                                    ; $732d: $74
    add c                                         ; $732e: $81
    cp l                                          ; $732f: $bd
    ld hl, $143e                                  ; $7330: $21 $3e $14
    rla                                           ; $7333: $17
    and [hl]                                      ; $7334: $a6
    ld [hl], e                                    ; $7335: $73
    ld a, c                                       ; $7336: $79
    cp l                                          ; $7337: $bd
    cp l                                          ; $7338: $bd
    ld a, e                                       ; $7339: $7b
    push af                                       ; $733a: $f5
    ld a, d                                       ; $733b: $7a
    ei                                            ; $733c: $fb
    xor b                                         ; $733d: $a8
    adc a                                         ; $733e: $8f
    rrca                                          ; $733f: $0f
    ld a, l                                       ; $7340: $7d
    ld h, [hl]                                    ; $7341: $66
    sbc e                                         ; $7342: $9b
    sub h                                         ; $7343: $94
    reti                                          ; $7344: $d9


    ld [$15fa], a                                 ; $7345: $ea $fa $15
    db $ed                                        ; $7348: $ed
    scf                                           ; $7349: $37
    jp c, $a37e                                   ; $734a: $da $7e $a3

    db $ed                                        ; $734d: $ed
    ld a, a                                       ; $734e: $7f
    jp z, $f41b                                   ; $734f: $ca $1b $f4

    ld a, d                                       ; $7352: $7a
    add h                                         ; $7353: $84
    ld c, d                                       ; $7354: $4a
    cp b                                          ; $7355: $b8
    ld d, c                                       ; $7356: $51
    ld l, [hl]                                    ; $7357: $6e
    sub h                                         ; $7358: $94
    db $ed                                        ; $7359: $ed
    push de                                       ; $735a: $d5
    ld d, l                                       ; $735b: $55
    db $10                                        ; $735c: $10
    sbc [hl]                                      ; $735d: $9e
    cp [hl]                                       ; $735e: $be
    rst $28                                       ; $735f: $ef
    ld d, a                                       ; $7360: $57
    ld l, l                                       ; $7361: $6d
    cp [hl]                                       ; $7362: $be
    and c                                         ; $7363: $a1
    sbc d                                         ; $7364: $9a
    inc l                                         ; $7365: $2c
    add [hl]                                      ; $7366: $86
    jp nz, Jump_000_2a13                          ; $7367: $c2 $13 $2a

    ld e, $bf                                     ; $736a: $1e $bf
    reti                                          ; $736c: $d9


    ld a, $7a                                     ; $736d: $3e $7a
    db $ec                                        ; $736f: $ec
    db $fd                                        ; $7370: $fd
    ld [hl], c                                    ; $7371: $71
    cp $7b                                        ; $7372: $fe $7b
    rst $20                                       ; $7374: $e7
    db $fc                                        ; $7375: $fc
    rlca                                          ; $7376: $07
    ld a, e                                       ; $7377: $7b
    ld a, [hl]                                    ; $7378: $7e
    ld e, l                                       ; $7379: $5d
    ld a, h                                       ; $737a: $7c
    add sp, -$75                                  ; $737b: $e8 $8b
    sbc d                                         ; $737d: $9a
    inc a                                         ; $737e: $3c
    ld l, c                                       ; $737f: $69
    ld a, a                                       ; $7380: $7f
    ld d, c                                       ; $7381: $51
    ld [hl], b                                    ; $7382: $70
    ld d, a                                       ; $7383: $57
    ld h, $ea                                     ; $7384: $26 $ea
    db $e3                                        ; $7386: $e3
    db $fc                                        ; $7387: $fc
    ret z                                         ; $7388: $c8

    ld a, [c]                                     ; $7389: $f2
    add $48                                       ; $738a: $c6 $48
    pop hl                                        ; $738c: $e1
    scf                                           ; $738d: $37
    db $f4                                        ; $738e: $f4
    dec hl                                        ; $738f: $2b
    ld l, l                                       ; $7390: $6d
    reti                                          ; $7391: $d9


    inc de                                        ; $7392: $13
    rrca                                          ; $7393: $0f
    ld sp, hl                                     ; $7394: $f9
    dec e                                         ; $7395: $1d
    ld [hl], a                                    ; $7396: $77
    ret c                                         ; $7397: $d8

    inc de                                        ; $7398: $13
    add hl, de                                    ; $7399: $19
    adc c                                         ; $739a: $89
    cp e                                          ; $739b: $bb
    ld hl, sp+$5f                                 ; $739c: $f8 $5f

jr_042_739e:
    ld h, h                                       ; $739e: $64
    ld b, d                                       ; $739f: $42
    ld e, [hl]                                    ; $73a0: $5e
    pop hl                                        ; $73a1: $e1
    db $eb                                        ; $73a2: $eb
    ld d, a                                       ; $73a3: $57
    sbc [hl]                                      ; $73a4: $9e
    ld d, e                                       ; $73a5: $53
    inc a                                         ; $73a6: $3c
    ld l, d                                       ; $73a7: $6a
    ld h, h                                       ; $73a8: $64
    ld a, a                                       ; $73a9: $7f
    ld [$d81e], a                                 ; $73aa: $ea $1e $d8
    ld a, $6d                                     ; $73ad: $3e $6d
    sbc $9e                                       ; $73af: $de $9e
    ld [hl-], a                                   ; $73b1: $32
    sbc $df                                       ; $73b2: $de $df
    xor b                                         ; $73b4: $a8
    or l                                          ; $73b5: $b5
    ld [bc], a                                    ; $73b6: $02
    ld [hl], l                                    ; $73b7: $75
    ld b, [hl]                                    ; $73b8: $46
    or d                                          ; $73b9: $b2
    daa                                           ; $73ba: $27
    ld h, l                                       ; $73bb: $65
    ld [hl], h                                    ; $73bc: $74
    xor c                                         ; $73bd: $a9
    ld a, $75                                     ; $73be: $3e $75
    adc a                                         ; $73c0: $8f
    ld b, a                                       ; $73c1: $47
    ld b, d                                       ; $73c2: $42
    jp nc, $88d9                                  ; $73c3: $d2 $d9 $88

    ld d, c                                       ; $73c6: $51
    db $fd                                        ; $73c7: $fd
    db $db                                        ; $73c8: $db
    cp $9a                                        ; $73c9: $fe $9a
    dec hl                                        ; $73cb: $2b
    ld l, l                                       ; $73cc: $6d
    dec a                                         ; $73cd: $3d
    sub c                                         ; $73ce: $91
    ld hl, sp+$35                                 ; $73cf: $f8 $35
    db $e3                                        ; $73d1: $e3
    ld a, c                                       ; $73d2: $79
    add hl, hl                                    ; $73d3: $29
    rst $30                                       ; $73d4: $f7
    push de                                       ; $73d5: $d5
    ld b, h                                       ; $73d6: $44
    ld e, l                                       ; $73d7: $5d
    dec b                                         ; $73d8: $05
    pop hl                                        ; $73d9: $e1
    ld [hl], e                                    ; $73da: $73
    rst $08                                       ; $73db: $cf
    rla                                           ; $73dc: $17
    ld [hl], l                                    ; $73dd: $75
    reti                                          ; $73de: $d9


    db $f4                                        ; $73df: $f4
    ld a, [$7515]                                 ; $73e0: $fa $15 $75
    dec c                                         ; $73e3: $0d
    add l                                         ; $73e4: $85
    and a                                         ; $73e5: $a7
    rst $28                                       ; $73e6: $ef
    ei                                            ; $73e7: $fb
    ret z                                         ; $73e8: $c8

    rla                                           ; $73e9: $17
    scf                                           ; $73ea: $37
    and d                                         ; $73eb: $a2
    ret nz                                        ; $73ec: $c0

    jr nz, jr_042_739e                            ; $73ed: $20 $af

    ld e, a                                       ; $73ef: $5f
    ld bc, $1bb5                                  ; $73f0: $01 $b5 $1b
    xor l                                         ; $73f3: $ad
    db $dd                                        ; $73f4: $dd
    ld l, b                                       ; $73f5: $68

jr_042_73f6:
    db $ed                                        ; $73f6: $ed
    scf                                           ; $73f7: $37
    inc hl                                        ; $73f8: $23
    ret nc                                        ; $73f9: $d0

    rst $30                                       ; $73fa: $f7
    ld a, l                                       ; $73fb: $7d
    or h                                          ; $73fc: $b4
    ld b, [hl]                                    ; $73fd: $46
    or l                                          ; $73fe: $b5
    ld b, [hl]                                    ; $73ff: $46
    dec [hl]                                      ; $7400: $35
    ld a, [$bea6]                                 ; $7401: $fa $a6 $be

jr_042_7404:
    and $0a                                       ; $7404: $e6 $0a
    ld [hl], l                                    ; $7406: $75
    ld b, [hl]                                    ; $7407: $46
    and d                                         ; $7408: $a2
    add [hl]                                      ; $7409: $86
    inc [hl]                                      ; $740a: $34
    inc d                                         ; $740b: $14
    cp [hl]                                       ; $740c: $be
    inc l                                         ; $740d: $2c
    ld b, $51                                     ; $740e: $06 $51
    jr nc, jr_042_73f6                            ; $7410: $30 $e4

    inc h                                         ; $7412: $24
    jp c, $e4d9                                   ; $7413: $da $d9 $e4

    halt                                          ; $7416: $76
    xor d                                         ; $7417: $aa
    ld d, c                                       ; $7418: $51
    inc de                                        ; $7419: $13
    ld [hl], l                                    ; $741a: $75
    ld e, c                                       ; $741b: $59
    sbc $f6                                       ; $741c: $de $f6
    dec de                                        ; $741e: $1b
    and d                                         ; $741f: $a2
    or b                                          ; $7420: $b0
    or e                                          ; $7421: $b3
    ret c                                         ; $7422: $d8

    ld a, b                                       ; $7423: $78
    ld d, c                                       ; $7424: $51
    jp z, $3a58                                   ; $7425: $ca $58 $3a

    ld a, [$c785]                                 ; $7428: $fa $85 $c7
    ld a, [$7515]                                 ; $742b: $fa $15 $75
    and [hl]                                      ; $742e: $a6
    ld h, [hl]                                    ; $742f: $66
    jp c, Jump_042_6fa2                           ; $7430: $da $a2 $6f

    ld [$ae6b], a                                 ; $7433: $ea $6b $ae
    sbc l                                         ; $7436: $9d
    sbc $d7                                       ; $7437: $de $d7
    ld c, h                                       ; $7439: $4c
    ld e, l                                       ; $743a: $5d
    add e                                         ; $743b: $83
    rla                                           ; $743c: $17
    halt                                          ; $743d: $76
    add [hl]                                      ; $743e: $86
    bit 7, e                                      ; $743f: $cb $7b
    cp l                                          ; $7441: $bd
    ld [hl], $c2                                  ; $7442: $36 $c2
    ld l, a                                       ; $7444: $6f
    ld c, b                                       ; $7445: $48
    ld e, e                                       ; $7446: $5b
    ld c, a                                       ; $7447: $4f
    inc h                                         ; $7448: $24
    cp [hl]                                       ; $7449: $be
    ld l, $cb                                     ; $744a: $2e $cb
    ld d, c                                       ; $744c: $51
    and $29                                       ; $744d: $e6 $29
    inc a                                         ; $744f: $3c
    ld [hl], c                                    ; $7450: $71
    ld a, [hl]                                    ; $7451: $7e
    call nz, $6287                                ; $7452: $c4 $87 $62
    rst $28                                       ; $7455: $ef
    adc a                                         ; $7456: $8f
    sbc e                                         ; $7457: $9b
    ld a, [c]                                     ; $7458: $f2
    dec [hl]                                      ; $7459: $35
    ld d, a                                       ; $745a: $57
    ld [hl], l                                    ; $745b: $75
    ld h, c                                       ; $745c: $61
    adc $5f                                       ; $745d: $ce $5f
    ld l, a                                       ; $745f: $6f
    jr jr_042_7404                                ; $7460: $18 $a2

    adc l                                         ; $7462: $8d
    ld c, h                                       ; $7463: $4c
    xor b                                         ; $7464: $a8
    and h                                         ; $7465: $a4
    sbc d                                         ; $7466: $9a
    jp nz, Jump_042_7136                          ; $7467: $c2 $36 $71

    ld d, e                                       ; $746a: $53
    ld hl, $143e                                  ; $746b: $21 $3e $14
    ld a, e                                       ; $746e: $7b
    ld c, a                                       ; $746f: $4f
    sbc h                                         ; $7470: $9c
    rst $38                                       ; $7471: $ff
    ld l, b                                       ; $7472: $68
    sbc c                                         ; $7473: $99
    ld a, h                                       ; $7474: $7c
    sbc h                                         ; $7475: $9c
    rst $38                                       ; $7476: $ff
    sbc [hl]                                      ; $7477: $9e
    ld b, h                                       ; $7478: $44
    inc b                                         ; $7479: $04
    ld a, e                                       ; $747a: $7b
    ld a, a                                       ; $747b: $7f
    adc d                                         ; $747c: $8a
    and e                                         ; $747d: $a3
    or e                                          ; $747e: $b3
    cp a                                          ; $747f: $bf
    sub $0a                                       ; $7480: $d6 $0a
    ld [hl], l                                    ; $7482: $75
    ld b, [hl]                                    ; $7483: $46
    ld a, [c]                                     ; $7484: $f2
    inc h                                         ; $7485: $24
    jr jr_042_74a9                                ; $7486: $18 $21

    xor a                                         ; $7488: $af
    ldh a, [$64]                                  ; $7489: $f0 $64
    ld a, a                                       ; $748b: $7f
    db $f4                                        ; $748c: $f4
    jp $3fb3                                      ; $748d: $c3 $b3 $3f


    add l                                         ; $7490: $85
    add $d1                                       ; $7491: $c6 $d1
    swap d                                        ; $7493: $cb $32
    sbc d                                         ; $7495: $9a
    halt                                          ; $7496: $76
    ld c, a                                       ; $7497: $4f
    ld a, [hl]                                    ; $7498: $7e
    ld [hl], $42                                  ; $7499: $36 $42
    db $fc                                        ; $749b: $fc
    ld l, d                                       ; $749c: $6a
    ld b, c                                       ; $749d: $41
    xor l                                         ; $749e: $ad
    or h                                          ; $749f: $b4
    inc e                                         ; $74a0: $1c
    sub b                                         ; $74a1: $90
    and a                                         ; $74a2: $a7
    jr nz, @-$72                                  ; $74a3: $20 $8c

    jr c, jr_042_74e6                             ; $74a5: $38 $3f

    ld [c], a                                     ; $74a7: $e2
    db $fd                                        ; $74a8: $fd

jr_042_74a9:
    db $ec                                        ; $74a9: $ec
    adc a                                         ; $74aa: $8f
    ld b, [hl]                                    ; $74ab: $46
    rst $18                                       ; $74ac: $df
    call nc, Call_000_3e7d                        ; $74ad: $d4 $7d $3e
    ld a, $f4                                     ; $74b0: $3e $f4
    or a                                          ; $74b2: $b7
    sbc e                                         ; $74b3: $9b
    ld a, [c]                                     ; $74b4: $f2
    db $fd                                        ; $74b5: $fd
    ld a, [bc]                                    ; $74b6: $0a
    cp [hl]                                       ; $74b7: $be
    ld l, [hl]                                    ; $74b8: $6e
    xor d                                         ; $74b9: $aa
    ld a, [bc]                                    ; $74ba: $0a
    call z, $e713                                 ; $74bb: $cc $13 $e7
    ld b, a                                       ; $74be: $47
    cp h                                          ; $74bf: $bc
    sbc a                                         ; $74c0: $9f
    db $fd                                        ; $74c1: $fd
    pop de                                        ; $74c2: $d1
    add sp, -$65                                  ; $74c3: $e8 $9b
    cp d                                          ; $74c5: $ba
    rst $08                                       ; $74c6: $cf
    rst $28                                       ; $74c7: $ef
    db $fd                                        ; $74c8: $fd
    xor c                                         ; $74c9: $a9
    ld a, e                                       ; $74ca: $7b
    ld h, b                                       ; $74cb: $60
    ei                                            ; $74cc: $fb
    or h                                          ; $74cd: $b4
    ld a, c                                       ; $74ce: $79
    ld a, e                                       ; $74cf: $7b
    jp z, Jump_042_7f78                           ; $74d0: $ca $78 $7f

    and e                                         ; $74d3: $a3
    and $0a                                       ; $74d4: $e6 $0a
    dec l                                         ; $74d6: $2d
    ld h, a                                       ; $74d7: $67
    add c                                         ; $74d8: $81
    sbc l                                         ; $74d9: $9d
    sbc e                                         ; $74da: $9b
    dec a                                         ; $74db: $3d
    ld h, l                                       ; $74dc: $65
    ld [bc], a                                    ; $74dd: $02
    ld e, l                                       ; $74de: $5d
    ld c, [hl]                                    ; $74df: $4e
    ld h, [hl]                                    ; $74e0: $66
    or e                                          ; $74e1: $b3
    ld b, c                                       ; $74e2: $41
    sub a                                         ; $74e3: $97
    ld [hl], d                                    ; $74e4: $72
    xor c                                         ; $74e5: $a9

jr_042_74e6:
    ld de, $33ef                                  ; $74e6: $11 $ef $33
    ld c, a                                       ; $74e9: $4f
    ld hl, sp+$4d                                 ; $74ea: $f8 $4d
    ld e, l                                       ; $74ec: $5d
    sbc a                                         ; $74ed: $9f
    ld d, [hl]                                    ; $74ee: $56
    ld b, l                                       ; $74ef: $45
    db $dd                                        ; $74f0: $dd
    ld d, a                                       ; $74f1: $57
    sub e                                         ; $74f2: $93
    rrca                                          ; $74f3: $0f
    add hl, bc                                    ; $74f4: $09
    dec b                                         ; $74f5: $05
    ld b, e                                       ; $74f6: $43
    ld a, [bc]                                    ; $74f7: $0a
    or d                                          ; $74f8: $b2
    ccf                                           ; $74f9: $3f
    cp [hl]                                       ; $74fa: $be
    and a                                         ; $74fb: $a7
    ret                                           ; $74fc: $c9


    ret c                                         ; $74fd: $d8

    and a                                         ; $74fe: $a7
    dec l                                         ; $74ff: $2d
    ei                                            ; $7500: $fb
    ld d, d                                       ; $7501: $52
    ld a, $6e                                     ; $7502: $3e $6e
    inc h                                         ; $7504: $24
    db $db                                        ; $7505: $db
    db $e3                                        ; $7506: $e3
    push af                                       ; $7507: $f5
    rst $00                                       ; $7508: $c7
    inc de                                        ; $7509: $13
    sbc e                                         ; $750a: $9b
    ld a, [c]                                     ; $750b: $f2
    xor c                                         ; $750c: $a9
    ld de, $931e                                  ; $750d: $11 $1e $93
    rst $20                                       ; $7510: $e7
    rst $28                                       ; $7511: $ef
    ld d, a                                       ; $7512: $57
    xor l                                         ; $7513: $ad
    rrca                                          ; $7514: $0f

Call_042_7515:
    adc c                                         ; $7515: $89
    xor b                                         ; $7516: $a8
    ld a, e                                       ; $7517: $7b
    ld [hl], d                                    ; $7518: $72
    or $a4                                        ; $7519: $f6 $a4
    inc e                                         ; $751b: $1c
    jr jr_042_7547                                ; $751c: $18 $29

    db $fc                                        ; $751e: $fc
    ld a, h                                       ; $751f: $7c
    or l                                          ; $7520: $b5
    ld d, [hl]                                    ; $7521: $56
    db $ed                                        ; $7522: $ed
    ld a, l                                       ; $7523: $7d
    ld [hl], c                                    ; $7524: $71
    rst $30                                       ; $7525: $f7
    push de                                       ; $7526: $d5
    ld h, h                                       ; $7527: $64
    add c                                         ; $7528: $81
    add hl, hl                                    ; $7529: $29
    jr @+$6c                                      ; $752a: $18 $6a

    and [hl]                                      ; $752c: $a6
    dec l                                         ; $752d: $2d
    and e                                         ; $752e: $a3
    sbc d                                         ; $752f: $9a
    ld c, h                                       ; $7530: $4c
    call nc, Call_000_1965                        ; $7531: $d4 $65 $19
    ld [hl], e                                    ; $7534: $73
    ld d, e                                       ; $7535: $53
    ld [hl], e                                    ; $7536: $73
    dec b                                         ; $7537: $05
    xor l                                         ; $7538: $ad

jr_042_7539:
    rrca                                          ; $7539: $0f
    add hl, bc                                    ; $753a: $09
    ld b, [hl]                                    ; $753b: $46
    ld c, d                                       ; $753c: $4a
    dec b                                         ; $753d: $05
    ld h, [hl]                                    ; $753e: $66
    ret c                                         ; $753f: $d8

    cp $a8                                        ; $7540: $fe $a8
    adc e                                         ; $7542: $8b

jr_042_7543:
    dec de                                        ; $7543: $1b
    inc sp                                        ; $7544: $33
    jr @+$54                                      ; $7545: $18 $52

jr_042_7547:
    xor [hl]                                      ; $7547: $ae

Jump_042_7548:
    cp d                                          ; $7548: $ba
    ld a, l                                       ; $7549: $7d
    or c                                          ; $754a: $b1
    dec hl                                        ; $754b: $2b
    adc $7f                                       ; $754c: $ce $7f
    ld a, l                                       ; $754e: $7d
    jp c, $d8c8                                   ; $754f: $da $c8 $d8

    db $eb                                        ; $7552: $eb
    ld d, d                                       ; $7553: $52
    db $10                                        ; $7554: $10
    add hl, de                                    ; $7555: $19
    add hl, bc                                    ; $7556: $09
    ld a, c                                       ; $7557: $79
    ld d, c                                       ; $7558: $51
    ld d, a                                       ; $7559: $57
    sub [hl]                                      ; $755a: $96
    ld a, e                                       ; $755b: $7b
    rlca                                          ; $755c: $07
    ld e, l                                       ; $755d: $5d
    ld l, [hl]                                    ; $755e: $6e
    ld b, d                                       ; $755f: $42
    cp [hl]                                       ; $7560: $be
    sbc d                                         ; $7561: $9a
    ld a, h                                       ; $7562: $7c
    ld [hl], $98                                  ; $7563: $36 $98
    and a                                         ; $7565: $a7
    ld e, a                                       ; $7566: $5f
    ld bc, $8aad                                  ; $7567: $01 $ad $8a
    di                                            ; $756a: $f3
    ld a, e                                       ; $756b: $7b
    call c, $e9f4                                 ; $756c: $dc $f4 $e9
    and b                                         ; $756f: $a0
    cp b                                          ; $7570: $b8
    or a                                          ; $7571: $b7
    ret z                                         ; $7572: $c8

    ld c, b                                       ; $7573: $48
    db $ec                                        ; $7574: $ec
    ld d, b                                       ; $7575: $50
    inc e                                         ; $7576: $1c
    ld a, [c]                                     ; $7577: $f2
    ld d, c                                       ; $7578: $51
    ld h, e                                       ; $7579: $63
    push de                                       ; $757a: $d5
    add hl, de                                    ; $757b: $19
    ld d, d                                       ; $757c: $52
    jr nz, jr_042_7543                            ; $757d: $20 $c4

    adc a                                         ; $757f: $8f
    cp d                                          ; $7580: $ba
    ld d, h                                       ; $7581: $54
    add sp, $57                                   ; $7582: $e8 $57
    xor l                                         ; $7584: $ad
    rrca                                          ; $7585: $0f
    ld l, c                                       ; $7586: $69
    xor b                                         ; $7587: $a8
    xor d                                         ; $7588: $aa
    adc c                                         ; $7589: $89
    cp l                                          ; $758a: $bd
    ld [hl], e                                    ; $758b: $73
    inc hl                                        ; $758c: $23
    db $fc                                        ; $758d: $fc
    add [hl]                                      ; $758e: $86
    xor b                                         ; $758f: $a8
    ld c, e                                       ; $7590: $4b
    db $dd                                        ; $7591: $dd
    db $e3                                        ; $7592: $e3
    sub c                                         ; $7593: $91
    db $fc                                        ; $7594: $fc
    sbc $9f                                       ; $7595: $de $9f
    push bc                                       ; $7597: $c5
    add $8b                                       ; $7598: $c6 $8b
    ld d, d                                       ; $759a: $52
    add $50                                       ; $759b: $c6 $50
    jp z, $7da7                                   ; $759d: $ca $a7 $7d

    rst $10                                       ; $75a0: $d7
    sub [hl]                                      ; $75a1: $96
    cp l                                          ; $75a2: $bd
    inc e                                         ; $75a3: $1c
    ld [hl], e                                    ; $75a4: $73
    cp a                                          ; $75a5: $bf
    ld [bc], a                                    ; $75a6: $02
    cp [hl]                                       ; $75a7: $be
    inc hl                                        ; $75a8: $23
    inc de                                        ; $75a9: $13
    scf                                           ; $75aa: $37
    ld b, d                                       ; $75ab: $42
    sbc [hl]                                      ; $75ac: $9e
    ldh a, [$c4]                                  ; $75ad: $f0 $c4
    ld sp, hl                                     ; $75af: $f9
    ld de, $8919                                  ; $75b0: $11 $19 $89
    cp e                                          ; $75b3: $bb
    jr c, jr_042_7539                             ; $75b4: $38 $83

    add d                                         ; $75b6: $82
    ld b, c                                       ; $75b7: $41
    xor a                                         ; $75b8: $af
    ld b, a                                       ; $75b9: $47
    sbc a                                         ; $75ba: $9f
    ld [hl], $f2                                  ; $75bb: $36 $f2
    ld [c], a                                     ; $75bd: $e2
    db $fc                                        ; $75be: $fc
    ld c, b                                       ; $75bf: $48
    ld b, c                                       ; $75c0: $41
    call c, $fa94                                 ; $75c1: $dc $94 $fa
    ld [hl+], a                                   ; $75c4: $22
    inc hl                                        ; $75c5: $23
    pop af                                        ; $75c6: $f1
    ld c, [hl]                                    ; $75c7: $4e
    add hl, hl                                    ; $75c8: $29
    ret nc                                        ; $75c9: $d0

    and l                                         ; $75ca: $a5
    cp h                                          ; $75cb: $bc
    ld b, c                                       ; $75cc: $41
    xor a                                         ; $75cd: $af
    ld b, a                                       ; $75ce: $47
    or $67                                        ; $75cf: $f6 $67
    or c                                          ; $75d1: $b1
    ld hl, $ce3f                                  ; $75d2: $21 $3f $ce
    adc a                                         ; $75d5: $8f
    db $ec                                        ; $75d6: $ec
    adc a                                         ; $75d7: $8f
    inc c                                         ; $75d8: $0c
    inc sp                                        ; $75d9: $33
    ld d, d                                       ; $75da: $52
    call c, $f958                                 ; $75db: $dc $58 $f9
    inc d                                         ; $75de: $14
    ld a, [hl]                                    ; $75df: $7e
    ld a, [c]                                     ; $75e0: $f2
    xor e                                         ; $75e1: $ab
    adc c                                         ; $75e2: $89
    halt                                          ; $75e3: $76
    or $a2                                        ; $75e4: $f6 $a2
    ld h, $0b                                     ; $75e6: $26 $0b
    inc l                                         ; $75e8: $2c
    rla                                           ; $75e9: $17
    scf                                           ; $75ea: $37
    ld h, [hl]                                    ; $75eb: $66
    and a                                         ; $75ec: $a7
    and $fa                                       ; $75ed: $e6 $fa
    dec d                                         ; $75ef: $15
    ld [hl], l                                    ; $75f0: $75
    ld l, c                                       ; $75f1: $69
    db $fd                                        ; $75f2: $fd
    ld d, c                                       ; $75f3: $51
    ld l, a                                       ; $75f4: $6f
    push hl                                       ; $75f5: $e5
    ld a, [$ffb4]                                 ; $75f6: $fa $b4 $ff
    ld d, c                                       ; $75f9: $51
    and e                                         ; $75fa: $a3
    rst $10                                       ; $75fb: $d7
    rst $18                                       ; $75fc: $df
    ld d, a                                       ; $75fd: $57
    inc de                                        ; $75fe: $13
    rst $28                                       ; $75ff: $ef
    dec de                                        ; $7600: $1b
    ld [c], a                                     ; $7601: $e2
    ld b, e                                       ; $7602: $43
    ld a, a                                       ; $7603: $7f
    cp e                                          ; $7604: $bb
    add hl, hl                                    ; $7605: $29
    ld e, a                                       ; $7606: $5f
    ld [hl], e                                    ; $7607: $73
    dec b                                         ; $7608: $05
    xor l                                         ; $7609: $ad
    ld [$f7f5], a                                 ; $760a: $ea $f5 $f7
    push de                                       ; $760d: $d5
    ld b, h                                       ; $760e: $44
    ld a, a                                       ; $760f: $7f
    ld h, l                                       ; $7610: $65
    inc [hl]                                      ; $7611: $34
    sbc c                                         ; $7612: $99
    xor b                                         ; $7613: $a8
    bit 5, a                                      ; $7614: $cb $6f
    ld [hl], $64                                  ; $7616: $36 $64
    or c                                          ; $7618: $b1
    ld hl, $4ba1                                  ; $7619: $21 $a1 $4b
    ld b, c                                       ; $761c: $41
    ret z                                         ; $761d: $c8

    pop de                                        ; $761e: $d1
    or $7d                                        ; $761f: $f6 $7d
    dec [hl]                                      ; $7621: $35
    ld [hl], c                                    ; $7622: $71
    inc hl                                        ; $7623: $23
    db $e4                                        ; $7624: $e4
    adc c                                         ; $7625: $89
    add e                                         ; $7626: $83
    ld hl, $b3fb                                  ; $7627: $21 $fb $b3
    ret c                                         ; $762a: $d8

    ld a, b                                       ; $762b: $78
    ld d, c                                       ; $762c: $51
    jp z, Jump_042_4a18                           ; $762d: $ca $18 $4a

    ld sp, hl                                     ; $7630: $f9
    or h                                          ; $7631: $b4
    rst $28                                       ; $7632: $ef
    jp c, $97b2                                   ; $7633: $da $b2 $97

    ld h, e                                       ; $7636: $63
    xor $d3                                       ; $7637: $ee $d3
    ld a, [$f5e8]                                 ; $7639: $fa $e8 $f5
    rst $30                                       ; $763c: $f7
    push de                                       ; $763d: $d5
    call nz, Call_042_72fd                        ; $763e: $c4 $fd $72
    add [hl]                                      ; $7641: $86
    cp b                                          ; $7642: $b8

jr_042_7643:
    add hl, hl                                    ; $7643: $29
    sbc a                                         ; $7644: $9f
    ld [hl], d                                    ; $7645: $72
    rra                                           ; $7646: $1f
    rra                                           ; $7647: $1f
    adc d                                         ; $7648: $8a
    jp nz, $ba9f                                  ; $7649: $c2 $9f $ba

    rlca                                          ; $764c: $07
    or [hl]                                       ; $764d: $b6
    ld c, a                                       ; $764e: $4f
    sbc e                                         ; $764f: $9b
    or a                                          ; $7650: $b7
    and a                                         ; $7651: $a7
    adc h                                         ; $7652: $8c
    rst $30                                       ; $7653: $f7
    scf                                           ; $7654: $37
    ld a, [$1d15]                                 ; $7655: $fa $15 $1d
    jr nc, jr_042_76b9                            ; $7658: $30 $5f

    push af                                       ; $765a: $f5
    add hl, sp                                    ; $765b: $39
    add l                                         ; $765c: $85
    rst $28                                       ; $765d: $ef
    db $e3                                        ; $765e: $e3
    ld a, c                                       ; $765f: $79
    ld e, c                                       ; $7660: $59
    jr nz, jr_042_7668                            ; $7661: $20 $05

    add [hl]                                      ; $7663: $86
    ld l, d                                       ; $7664: $6a
    and d                                         ; $7665: $a2
    and [hl]                                      ; $7666: $a6
    ld a, d                                       ; $7667: $7a

jr_042_7668:
    add hl, sp                                    ; $7668: $39
    ld e, l                                       ; $7669: $5d
    ld d, $58                                     ; $766a: $16 $58
    db $fd                                        ; $766c: $fd
    ld a, l                                       ; $766d: $7d
    ld [$e2c2], a                                 ; $766e: $ea $c2 $e2
    ld b, e                                       ; $7671: $43
    ld d, c                                       ; $7672: $51
    ld hl, sp+$23                                 ; $7673: $f8 $23
    jp $f88c                                      ; $7675: $c3 $8c $f8


    daa                                           ; $7678: $27
    jp c, $93d5                                   ; $7679: $da $d5 $93

    daa                                           ; $767c: $27
    add hl, hl                                    ; $767d: $29
    ld c, a                                       ; $767e: $4f
    or $a7                                        ; $767f: $f6 $a7
    cp d                                          ; $7681: $ba
    adc a                                         ; $7682: $8f
    dec a                                         ; $7683: $3d
    pop af                                        ; $7684: $f1
    ld b, [hl]                                    ; $7685: $46
    db $10                                        ; $7686: $10
    ld [hl], l                                    ; $7687: $75
    ld a, c                                       ; $7688: $79
    sub d                                         ; $7689: $92
    add h                                         ; $768a: $84
    jr nc, jr_042_76c2                            ; $768b: $30 $35

    db $f4                                        ; $768d: $f4
    ld l, c                                       ; $768e: $69
    adc l                                         ; $768f: $8d
    adc [hl]                                      ; $7690: $8e
    cp h                                          ; $7691: $bc
    inc c                                         ; $7692: $0c
    inc sp                                        ; $7693: $33
    ld [hl], h                                    ; $7694: $74
    xor c                                         ; $7695: $a9
    db $fd                                        ; $7696: $fd
    ld h, [hl]                                    ; $7697: $66
    inc b                                         ; $7698: $04
    ld a, [$ad15]                                 ; $7699: $fa $15 $ad
    pop de                                        ; $769c: $d1
    sub c                                         ; $769d: $91
    sub a                                         ; $769e: $97
    ld h, c                                       ; $769f: $61
    add [hl]                                      ; $76a0: $86
    ld l, $1d                                     ; $76a1: $2e $1d
    adc l                                         ; $76a3: $8d
    db $f4                                        ; $76a4: $f4
    dec hl                                        ; $76a5: $2b
    sbc [hl]                                      ; $76a6: $9e
    ld h, e                                       ; $76a7: $63
    xor a                                         ; $76a8: $af
    ld l, c                                       ; $76a9: $69
    scf                                           ; $76aa: $37
    ld a, l                                       ; $76ab: $7d
    ld e, d                                       ; $76ac: $5a
    rra                                           ; $76ad: $1f
    cp l                                          ; $76ae: $bd
    cp $be                                        ; $76af: $fe $be
    sbc d                                         ; $76b1: $9a
    ldh a, [$98]                                  ; $76b2: $f0 $98
    cp h                                          ; $76b4: $bc
    ld hl, $071f                                  ; $76b5: $21 $1f $07
    ld [hl], e                                    ; $76b8: $73

jr_042_76b9:
    ld l, a                                       ; $76b9: $6f
    ld c, b                                       ; $76ba: $48
    ei                                            ; $76bb: $fb
    cp a                                          ; $76bc: $bf
    cp l                                          ; $76bd: $bd
    ld b, e                                       ; $76be: $43
    jr nz, jr_042_7643                            ; $76bf: $20 $82

    cp l                                          ; $76c1: $bd

jr_042_76c2:
    ccf                                           ; $76c2: $3f
    push hl                                       ; $76c3: $e5
    rst $30                                       ; $76c4: $f7
    ld b, a                                       ; $76c5: $47
    pop hl                                        ; $76c6: $e1
    jp nz, Jump_042_5e36                          ; $76c7: $c2 $36 $5e

    ld e, h                                       ; $76ca: $5c
    cp a                                          ; $76cb: $bf
    ld [bc], a                                    ; $76cc: $02
    xor l                                         ; $76cd: $ad
    rrca                                          ; $76ce: $0f
    ld l, c                                       ; $76cf: $69
    xor b                                         ; $76d0: $a8
    xor d                                         ; $76d1: $aa
    adc c                                         ; $76d2: $89
    ld e, l                                       ; $76d3: $5d
    push af                                       ; $76d4: $f5
    ld [bc], a                                    ; $76d5: $02
    ld b, e                                       ; $76d6: $43
    ld a, h                                       ; $76d7: $7c
    add sp, -$69                                  ; $76d8: $e8 $97
    jp nc, Jump_000_2e80                          ; $76da: $d2 $80 $2e

    or l                                          ; $76dd: $b5
    rst $18                                       ; $76de: $df
    adc h                                         ; $76df: $8c
    ld b, b                                       ; $76e0: $40
    sbc a                                         ; $76e1: $9f
    or $3e                                        ; $76e2: $f6 $3e

Call_042_76e4:
    push hl                                       ; $76e4: $e5
    rst $30                                       ; $76e5: $f7
    ld b, a                                       ; $76e6: $47
    pop hl                                        ; $76e7: $e1
    jp nz, Jump_042_5e36                          ; $76e8: $c2 $36 $5e

    ld e, h                                       ; $76eb: $5c
    ld l, d                                       ; $76ec: $6a
    db $e4                                        ; $76ed: $e4
    ld [hl], a                                    ; $76ee: $77
    jr jr_042_7737                                ; $76ef: $18 $46

    sbc h                                         ; $76f1: $9c
    inc l                                         ; $76f2: $2c
    rst $30                                       ; $76f3: $f7
    ld [hl-], a                                   ; $76f4: $32
    db $fd                                        ; $76f5: $fd
    ld a, [bc]                                    ; $76f6: $0a
    ld l, l                                       ; $76f7: $6d
    jr c, jr_042_7731                             ; $76f8: $38 $37

    ld a, h                                       ; $76fa: $7c
    pop af                                        ; $76fb: $f1
    and c                                         ; $76fc: $a1
    and a                                         ; $76fd: $a7
    ld c, e                                       ; $76fe: $4b
    db $ed                                        ; $76ff: $ed
    scf                                           ; $7700: $37
    inc hl                                        ; $7701: $23
    ret nc                                        ; $7702: $d0

    and a                                         ; $7703: $a7
    ld d, l                                       ; $7704: $55
    ld d, c                                       ; $7705: $51
    rst $30                                       ; $7706: $f7
    push de                                       ; $7707: $d5
    db $e4                                        ; $7708: $e4
    ld [hl], a                                    ; $7709: $77
    ld h, h                                       ; $770a: $64
    ld a, [bc]                                    ; $770b: $0a
    db $db                                        ; $770c: $db
    add h                                         ; $770d: $84
    sbc a                                         ; $770e: $9f
    sbc h                                         ; $770f: $9c
    dec a                                         ; $7710: $3d
    db $fd                                        ; $7711: $fd
    ld a, [bc]                                    ; $7712: $0a
    ld l, l                                       ; $7713: $6d
    add hl, de                                    ; $7714: $19
    push de                                       ; $7715: $d5
    ld h, h                                       ; $7716: $64
    and d                                         ; $7717: $a2
    ld l, $cb                                     ; $7718: $2e $cb
    sbc b                                         ; $771a: $98
    sbc e                                         ; $771b: $9b
    ld a, [hl]                                    ; $771c: $7e
    dec b                                         ; $771d: $05
    db $ed                                        ; $771e: $ed
    ld b, e                                       ; $771f: $43
    db $db                                        ; $7720: $db
    scf                                           ; $7721: $37
    sub c                                         ; $7722: $91
    sub c                                         ; $7723: $91
    ld b, b                                       ; $7724: $40
    ret c                                         ; $7725: $d8

    sbc $90                                       ; $7726: $de $90
    ld e, l                                       ; $7728: $5d
    ld e, a                                       ; $7729: $5f
    sbc a                                         ; $772a: $9f
    ld a, [hl-]                                   ; $772b: $3a
    inc hl                                        ; $772c: $23
    xor c                                         ; $772d: $a9
    sub c                                         ; $772e: $91
    dec b                                         ; $772f: $05
    ld d, [hl]                                    ; $7730: $56

jr_042_7731:
    and c                                         ; $7731: $a1
    sub h                                         ; $7732: $94
    jp hl                                         ; $7733: $e9


    ld d, a                                       ; $7734: $57
    xor l                                         ; $7735: $ad
    pop de                                        ; $7736: $d1

jr_042_7737:
    sub c                                         ; $7737: $91
    call nc, $fe79                                ; $7738: $d4 $79 $fe
    dec c                                         ; $773b: $0d
    ld e, l                                       ; $773c: $5d
    ld l, d                                       ; $773d: $6a
    cp a                                          ; $773e: $bf
    add hl, de                                    ; $773f: $19
    add c                                         ; $7740: $81
    sbc d                                         ; $7741: $9a
    dec hl                                        ; $7742: $2b
    xor l                                         ; $7743: $ad
    pop de                                        ; $7744: $d1
    sub c                                         ; $7745: $91
    call nc, $fe79                                ; $7746: $d4 $79 $fe
    dec c                                         ; $7749: $0d
    ld e, l                                       ; $774a: $5d
    ld a, [hl-]                                   ; $774b: $3a
    ld a, [de]                                    ; $774c: $1a
    xor c                                         ; $774d: $a9
    sbc c                                         ; $774e: $99
    or [hl]                                       ; $774f: $b6
    add sp, -$65                                  ; $7750: $e8 $9b
    ld a, d                                       ; $7752: $7a
    ld e, l                                       ; $7753: $5d
    ld e, [hl]                                    ; $7754: $5e
    xor a                                         ; $7755: $af
    cp a                                          ; $7756: $bf
    xor a                                         ; $7757: $af
    ld h, $76                                     ; $7758: $26 $76
    ld c, $24                                     ; $775a: $0e $24
    push hl                                       ; $775c: $e5
    adc c                                         ; $775d: $89
    jp nz, $a0c5                                  ; $775e: $c2 $c5 $a0

    db $fd                                        ; $7761: $fd
    cp [hl]                                       ; $7762: $be
    ld a, [hl]                                    ; $7763: $7e
    dec b                                         ; $7764: $05
    xor l                                         ; $7765: $ad
    adc d                                         ; $7766: $8a
    di                                            ; $7767: $f3
    inc hl                                        ; $7768: $23
    dec b                                         ; $7769: $05
    pop af                                        ; $776a: $f1
    and c                                         ; $776b: $a1
    ld e, a                                       ; $776c: $5f
    ld l, $4c                                     ; $776d: $2e $4c
    sbc c                                         ; $776f: $99
    cpl                                           ; $7770: $2f
    jp c, $fcbe                                   ; $7771: $da $be $fc

    ld h, [hl]                                    ; $7774: $66
    cp e                                          ; $7775: $bb
    inc d                                         ; $7776: $14
    and [hl]                                      ; $7777: $a6
    ld a, [bc]                                    ; $7778: $0a
    jp nz, $3297                                  ; $7779: $c2 $97 $32

    ld [hl-], a                                   ; $777c: $32

jr_042_777d:
    pop hl                                        ; $777d: $e1
    ld sp, $be79                                  ; $777e: $31 $79 $be
    ld a, h                                       ; $7781: $7c
    call c, $d797                                 ; $7782: $dc $97 $d7
    ld h, l                                       ; $7785: $65
    sbc c                                         ; $7786: $99
    ld d, d                                       ; $7787: $52
    xor $ab                                       ; $7788: $ee $ab
    adc c                                         ; $778a: $89
    ld a, [hl-]                                   ; $778b: $3a
    ld [de], a                                    ; $778c: $12
    add $67                                       ; $778d: $c6 $67
    xor $42                                       ; $778f: $ee $42
    dec [hl]                                      ; $7791: $35
    ld a, [$82bb]                                 ; $7792: $fa $bb $82
    jr nc, jr_042_7801                            ; $7795: $30 $6a

    xor [hl]                                      ; $7797: $ae
    xor l                                         ; $7798: $ad
    pop de                                        ; $7799: $d1
    ld de, $8bc4                                  ; $779a: $11 $c4 $8b
    jp nz, $a5d0                                  ; $779d: $c2 $d0 $a5

    ld a, [hl-]                                   ; $77a0: $3a
    ld e, h                                       ; $77a1: $5c
    sub [hl]                                      ; $77a2: $96
    ld [hl], e                                    ; $77a3: $73
    ld l, [hl]                                    ; $77a4: $6e
    or $a5                                        ; $77a5: $f6 $a5
    jr nc, jr_042_77fe                            ; $77a7: $30 $55

    db $10                                        ; $77a9: $10
    add $de                                       ; $77aa: $c6 $de
    rla                                           ; $77ac: $17
    add l                                         ; $77ad: $85
    sbc l                                         ; $77ae: $9d
    push bc                                       ; $77af: $c5
    xor [hl]                                      ; $77b0: $ae
    sbc d                                         ; $77b1: $9a
    cp h                                          ; $77b2: $bc
    ret z                                         ; $77b3: $c8

    db $f4                                        ; $77b4: $f4
    dec hl                                        ; $77b5: $2b
    sbc [hl]                                      ; $77b6: $9e
    ld d, e                                       ; $77b7: $53
    ld a, $24                                     ; $77b8: $3e $24
    sbc l                                         ; $77ba: $9d
    db $d3                                        ; $77bb: $d3
    and l                                         ; $77bc: $a5
    xor $75                                       ; $77bd: $ee $75
    ld e, a                                       ; $77bf: $5f
    ld l, e                                       ; $77c0: $6b
    dec b                                         ; $77c1: $05
    dec e                                         ; $77c2: $1d
    ld b, c                                       ; $77c3: $41
    ei                                            ; $77c4: $fb
    ld a, l                                       ; $77c5: $7d
    cp d                                          ; $77c6: $ba
    jr jr_042_777d                                ; $77c7: $18 $b4

    rst $18                                       ; $77c9: $df
    and a                                         ; $77ca: $a7
    adc e                                         ; $77cb: $8b
    ld b, c                                       ; $77cc: $41
    ei                                            ; $77cd: $fb
    ld a, l                                       ; $77ce: $7d
    dec [hl]                                      ; $77cf: $35
    db $e3                                        ; $77d0: $e3
    adc e                                         ; $77d1: $8b
    ld c, d                                       ; $77d2: $4a
    ld l, a                                       ; $77d3: $6f
    cpl                                           ; $77d4: $2f
    sub e                                         ; $77d5: $93
    ld l, d                                       ; $77d6: $6a
    ld [hl], $4f                                  ; $77d7: $36 $4f
    db $f4                                        ; $77d9: $f4
    ret c                                         ; $77da: $d8

    ei                                            ; $77db: $fb
    ld a, [$1d15]                                 ; $77dc: $fa $15 $1d
    sbc l                                         ; $77df: $9d
    ld a, d                                       ; $77e0: $7a
    rst $20                                       ; $77e1: $e7
    or b                                          ; $77e2: $b0
    cpl                                           ; $77e3: $2f

Jump_042_77e4:
    daa                                           ; $77e4: $27
    ld [$36c0], a                                 ; $77e5: $ea $c0 $36
    cp d                                          ; $77e8: $ba
    call nc, $eebd                                ; $77e9: $d4 $bd $ee
    ld l, e                                       ; $77ec: $6b
    xor [hl]                                      ; $77ed: $ae
    dec l                                         ; $77ee: $2d
    and a                                         ; $77ef: $a7
    add d                                         ; $77f0: $82
    or [hl]                                       ; $77f1: $b6
    ld l, a                                       ; $77f2: $6f
    and d                                         ; $77f3: $a2
    sbc $10                                       ; $77f4: $de $10
    rst $20                                       ; $77f6: $e7

jr_042_77f7:
    ld b, a                                       ; $77f7: $47
    db $ec                                        ; $77f8: $ec
    inc e                                         ; $77f9: $1c
    ld c, b                                       ; $77fa: $48
    jr jr_042_77f7                                ; $77fb: $18 $fa

    or h                                          ; $77fd: $b4

jr_042_77fe:
    rst $38                                       ; $77fe: $ff
    cp c                                          ; $77ff: $b9
    sbc l                                         ; $7800: $9d

jr_042_7801:
    ld a, [bc]                                    ; $7801: $0a
    jp c, $c9be                                   ; $7802: $da $be $c9

    ld c, c                                       ; $7805: $49

jr_042_7806:
    cp [hl]                                       ; $7806: $be
    sub h                                         ; $7807: $94
    reti                                          ; $7808: $d9


    sub h                                         ; $7809: $94
    daa                                           ; $780a: $27
    dec [hl]                                      ; $780b: $35
    ld [hl+], a                                   ; $780c: $22
    ld e, a                                       ; $780d: $5f
    call c, $8288                                 ; $780e: $dc $88 $82
    ld hl, $711b                                  ; $7811: $21 $1b $71
    ld d, e                                       ; $7814: $53
    ld d, b                                       ; $7815: $50
    inc sp                                        ; $7816: $33
    ld [hl], l                                    ; $7817: $75
    add a                                         ; $7818: $87
    dec c                                         ; $7819: $0d
    adc h                                         ; $781a: $8c
    ret c                                         ; $781b: $d8

    dec a                                         ; $781c: $3d
    add hl, bc                                    ; $781d: $09
    ld b, e                                       ; $781e: $43
    ld c, [hl]                                    ; $781f: $4e
    call nc, Call_042_6d81                        ; $7820: $d4 $81 $6d
    ld [hl], d                                    ; $7823: $72
    ld hl, $b0a7                                  ; $7824: $21 $a7 $b0
    ld e, l                                       ; $7827: $5d
    inc c                                         ; $7828: $0c
    jp c, $ebef                                   ; $7829: $da $ef $eb

    ei                                            ; $782c: $fb
    ld a, $05                                     ; $782d: $3e $05
    or c                                          ; $782f: $b1
    and e                                         ; $7830: $a3
    push bc                                       ; $7831: $c5
    sbc l                                         ; $7832: $9d
    add c                                         ; $7833: $81
    sub c                                         ; $7834: $91
    rrca                                          ; $7835: $0f
    db $db                                        ; $7836: $db
    sub b                                         ; $7837: $90
    ld l, a                                       ; $7838: $6f
    ei                                            ; $7839: $fb
    ld a, [$7515]                                 ; $783a: $fa $15 $75
    ld b, [hl]                                    ; $783d: $46
    or d                                          ; $783e: $b2
    ret nz                                        ; $783f: $c0

    ld a, [hl+]                                   ; $7840: $2a
    jr nc, jr_042_7806                            ; $7841: $30 $c3

    ld [$f38f], a                                 ; $7843: $ea $8f $f3
    inc hl                                        ; $7846: $23
    ld [hl], l                                    ; $7847: $75
    xor a                                         ; $7848: $af
    ei                                            ; $7849: $fb
    ld d, h                                       ; $784a: $54
    rla                                           ; $784b: $17
    dec de                                        ; $784c: $1b
    ld a, [c]                                     ; $784d: $f2
    db $e4                                        ; $784e: $e4
    ld [hl], d                                    ; $784f: $72
    dec sp                                        ; $7850: $3b
    ld [hl], l                                    ; $7851: $75
    sbc [hl]                                      ; $7852: $9e
    ld a, a                                       ; $7853: $7f
    and e                                         ; $7854: $a3
    ld c, a                                       ; $7855: $4f
    ld b, a                                       ; $7856: $47
    rst $00                                       ; $7857: $c7
    ld [hl], $24                                  ; $7858: $36 $24
    xor h                                         ; $785a: $ac
    cp $30                                        ; $785b: $fe $30
    ld h, l                                       ; $785d: $65
    cp [hl]                                       ; $785e: $be
    ld e, h                                       ; $785f: $5c
    xor d                                         ; $7860: $aa
    jp $a0c5                                      ; $7861: $c3 $c5 $a0


    db $fd                                        ; $7864: $fd
    cp [hl]                                       ; $7865: $be
    sbc d                                         ; $7866: $9a
    dec hl                                        ; $7867: $2b
    db $ed                                        ; $7868: $ed
    ld a, l                                       ; $7869: $7d
    adc d                                         ; $786a: $8a
    and e                                         ; $786b: $a3
    or e                                          ; $786c: $b3
    ccf                                           ; $786d: $3f
    dec [hl]                                      ; $786e: $35
    ld [hl], d                                    ; $786f: $72
    ld d, l                                       ; $7870: $55
    dec b                                         ; $7871: $05
    add hl, hl                                    ; $7872: $29
    rra                                           ; $7873: $1f
    ld b, h                                       ; $7874: $44
    and c                                         ; $7875: $a1
    ret nz                                        ; $7876: $c0

    ld hl, sp-$05                                 ; $7877: $f8 $fb
    or h                                          ; $7879: $b4
    dec a                                         ; $787a: $3d
    or c                                          ; $787b: $b1
    xor e                                         ; $787c: $ab
    sbc $ac                                       ; $787d: $de $ac
    cp $f8                                        ; $787f: $fe $f8
    ret nc                                        ; $7881: $d0

    rlc d                                         ; $7882: $cb $02
    res 2, a                                      ; $7884: $cb $97
    ld [hl], d                                    ; $7886: $72
    adc [hl]                                      ; $7887: $8e
    jp c, $e21b                                   ; $7888: $da $1b $e2

    db $fc                                        ; $788b: $fc
    adc b                                         ; $788c: $88
    adc h                                         ; $788d: $8c
    ld h, h                                       ; $788e: $64
    ld sp, $fa88                                  ; $788f: $31 $88 $fa
    ret z                                         ; $7892: $c8

    ld b, c                                       ; $7893: $41
    ret c                                         ; $7894: $d8

    db $e3                                        ; $7895: $e3
    scf                                           ; $7896: $37
    db $db                                        ; $7897: $db
    db $f4                                        ; $7898: $f4
    dec hl                                        ; $7899: $2b
    or l                                          ; $789a: $b5
    xor e                                         ; $789b: $ab
    ld c, d                                       ; $789c: $4a
    rla                                           ; $789d: $17
    ld a, [hl+]                                   ; $789e: $2a
    pop de                                        ; $789f: $d1
    sbc a                                         ; $78a0: $9f
    or [hl]                                       ; $78a1: $b6
    rrca                                          ; $78a2: $0f
    call z, $afd3                                 ; $78a3: $cc $d3 $af
    db $ed                                        ; $78a6: $ed
    ld b, c                                       ; $78a7: $41
    db $d3                                        ; $78a8: $d3
    ld l, $7a                                     ; $78a9: $2e $7a
    ld [$5974], sp                                ; $78ab: $08 $74 $59
    db $ec                                        ; $78ae: $ec
    xor d                                         ; $78af: $aa
    adc a                                         ; $78b0: $8f
    cp d                                          ; $78b1: $ba
    cp h                                          ; $78b2: $bc
    xor b                                         ; $78b3: $a8
    scf                                           ; $78b4: $37
    add [hl]                                      ; $78b5: $86
    and b                                         ; $78b6: $a0
    ld e, a                                       ; $78b7: $5f
    ld bc, $ef6d                                  ; $78b8: $01 $6d $ef
    ld d, h                                       ; $78bb: $54
    or b                                          ; $78bc: $b0
    daa                                           ; $78bd: $27
    ld c, a                                       ; $78be: $4f
    db $db                                        ; $78bf: $db
    scf                                           ; $78c0: $37
    ld h, l                                       ; $78c1: $65
    ld d, d                                       ; $78c2: $52
    ld [hl], a                                    ; $78c3: $77
    ld [hl], $c3                                  ; $78c4: $36 $c3
    inc [hl]                                      ; $78c6: $34
    ld e, h                                       ; $78c7: $5c
    pop hl                                        ; $78c8: $e1
    xor b                                         ; $78c9: $a8
    ld [hl], e                                    ; $78ca: $73
    adc b                                         ; $78cb: $88
    di                                            ; $78cc: $f3
    inc hl                                        ; $78cd: $23
    or a                                          ; $78ce: $b7
    db $d3                                        ; $78cf: $d3
    ld l, h                                       ; $78d0: $6c
    ld l, d                                       ; $78d1: $6a
    add h                                         ; $78d2: $84
    ld c, d                                       ; $78d3: $4a
    add h                                         ; $78d4: $84
    ld d, [hl]                                    ; $78d5: $56
    or b                                          ; $78d6: $b0
    adc c                                         ; $78d7: $89
    ld [hl], a                                    ; $78d8: $77
    adc h                                         ; $78d9: $8c
    xor c                                         ; $78da: $a9
    inc a                                         ; $78db: $3c
    ld c, a                                       ; $78dc: $4f
    cp a                                          ; $78dd: $bf
    ld [bc], a                                    ; $78de: $02
    dec e                                         ; $78df: $1d
    ld b, c                                       ; $78e0: $41
    ei                                            ; $78e1: $fb
    ld a, l                                       ; $78e2: $7d
    ld d, c                                       ; $78e3: $51
    sub a                                         ; $78e4: $97
    ld a, [hl-]                                   ; $78e5: $3a
    rst $08                                       ; $78e6: $cf
    cp a                                          ; $78e7: $bf
    ld de, $9ecd                                  ; $78e8: $11 $cd $9e
    jp hl                                         ; $78eb: $e9


    pop af                                        ; $78ec: $f1
    push af                                       ; $78ed: $f5
    ld l, c                                       ; $78ee: $69
    ld d, l                                       ; $78ef: $55
    call c, $e7d8                                 ; $78f0: $dc $d8 $e7
    call nz, $f1bd                                ; $78f3: $c4 $bd $f1
    di                                            ; $78f6: $f3
    push af                                       ; $78f7: $f5

Jump_042_78f8:
    xor c                                         ; $78f8: $a9
    dec bc                                        ; $78f9: $0b
    dec bc                                        ; $78fa: $0b
    db $dd                                        ; $78fb: $dd
    inc c                                         ; $78fc: $0c
    cp e                                          ; $78fd: $bb
    or c                                          ; $78fe: $b1

Jump_042_78ff:
    res 1, c                                      ; $78ff: $cb $89

Call_042_7901:
    ld [hl], a                                    ; $7901: $77
    xor h                                         ; $7902: $ac
    ld a, d                                       ; $7903: $7a
    ld [c], a                                     ; $7904: $e2
    adc l                                         ; $7905: $8d
    sbc h                                         ; $7906: $9c
    ld l, $76                                     ; $7907: $2e $76
    db $e4                                        ; $7909: $e4
    ld l, h                                       ; $790a: $6c
    dec c                                         ; $790b: $0d
    ld d, [hl]                                    ; $790c: $56
    ld l, $9f                                     ; $790d: $2e $9f
    cp d                                          ; $790f: $ba
    rst $10                                       ; $7910: $d7
    ld a, l                                       ; $7911: $7d
    cp a                                          ; $7912: $bf
    ld [bc], a                                    ; $7913: $02
    or l                                          ; $7914: $b5
    ccf                                           ; $7915: $3f
    db $e4                                        ; $7916: $e4
    dec d                                         ; $7917: $15
    sbc [hl]                                      ; $7918: $9e
    call nc, $eebd                                ; $7919: $d4 $bd $ee
    ld l, e                                       ; $791c: $6b
    and l                                         ; $791d: $a5
    or $c7                                        ; $791e: $f6 $c7
    xor b                                         ; $7920: $a8
    cp $79                                        ; $7921: $fe $79
    ld [hl], d                                    ; $7923: $72
    xor c                                         ; $7924: $a9
    ld c, $17                                     ; $7925: $0e $17
    add e                                         ; $7927: $83
    or $fb                                        ; $7928: $f6 $fb
    and d                                         ; $792a: $a2
    ld l, $75                                     ; $792b: $2e $75
    sbc [hl]                                      ; $792d: $9e
    ld a, a                                       ; $792e: $7f
    and e                                         ; $792f: $a3

jr_042_7930:
    ld e, a                                       ; $7930: $5f
    ld bc, $4675                                  ; $7931: $01 $75 $46
    or d                                          ; $7934: $b2
    dec a                                         ; $7935: $3d
    db $fc                                        ; $7936: $fc
    inc de                                        ; $7937: $13
    ld a, [c]                                     ; $7938: $f2
    ld a, [bc]                                    ; $7939: $0a
    ld c, a                                       ; $793a: $4f
    sbc a                                         ; $793b: $9f
    or $3f                                        ; $793c: $f6 $3f
    ld h, l                                       ; $793e: $65
    ld [c], a                                     ; $793f: $e2
    db $fc                                        ; $7940: $fc
    ret z                                         ; $7941: $c8

    xor e                                         ; $7942: $ab
    or c                                          ; $7943: $b1
    adc a                                         ; $7944: $8f
    ld a, h                                       ; $7945: $7c
    ld [hl], c                                    ; $7946: $71
    inc hl                                        ; $7947: $23
    ld a, [bc]                                    ; $7948: $0a
    add [hl]                                      ; $7949: $86
    ld l, b                                       ; $794a: $68
    ei                                            ; $794b: $fb
    ld [hl-], a                                   ; $794c: $32
    sbc d                                         ; $794d: $9a
    ld b, $e6                                     ; $794e: $06 $e6
    adc e                                         ; $7950: $8b
    ld a, [hl-]                                   ; $7951: $3a
    or b                                          ; $7952: $b0
    ld c, l                                       ; $7953: $4d
    ld [hl], $b2                                  ; $7954: $36 $b2
    adc h                                         ; $7956: $8c
    ld sp, $fce2                                  ; $7957: $31 $e2 $fc
    ld b, a                                       ; $795a: $47
    dec bc                                        ; $795b: $0b
    ld a, [c]                                     ; $795c: $f2
    ld [hl], c                                    ; $795d: $71
    cp $7b                                        ; $795e: $fe $7b
    ld [de], a                                    ; $7960: $12
    db $fd                                        ; $7961: $fd
    ld a, [bc]                                    ; $7962: $0a
    ld [hl], l                                    ; $7963: $75
    ld b, [hl]                                    ; $7964: $46
    or d                                          ; $7965: $b2
    dec a                                         ; $7966: $3d
    db $fc                                        ; $7967: $fc
    inc de                                        ; $7968: $13
    ld a, [c]                                     ; $7969: $f2
    ld a, [bc]                                    ; $796a: $0a
    ld c, a                                       ; $796b: $4f
    cp a                                          ; $796c: $bf
    ld [bc], a                                    ; $796d: $02
    ld [hl], l                                    ; $796e: $75
    xor a                                         ; $796f: $af
    ei                                            ; $7970: $fb
    sbc d                                         ; $7971: $9a
    jp hl                                         ; $7972: $e9


    sub b                                         ; $7973: $90
    ld h, d                                       ; $7974: $62
    rst $28                                       ; $7975: $ef
    adc e                                         ; $7976: $8b
    sbc e                                         ; $7977: $9b
    ld a, [bc]                                    ; $7978: $0a
    reti                                          ; $7979: $d9


    db $f4                                        ; $797a: $f4
    ld h, d                                       ; $797b: $62
    ld b, e                                       ; $797c: $43
    sbc [hl]                                      ; $797d: $9e
    cp h                                          ; $797e: $bc
    ld c, h                                       ; $797f: $4c
    or $c7                                        ; $7980: $f6 $c7
    or b                                          ; $7982: $b0
    ld d, b                                       ; $7983: $50
    ld a, [hl]                                    ; $7984: $7e
    ld [c], a                                     ; $7985: $e2
    adc l                                         ; $7986: $8d
    jr nz, jr_042_79a8                            ; $7987: $20 $1f

    and [hl]                                      ; $7989: $a6
    call z, $8b97                                 ; $798a: $cc $97 $8b
    rst $30                                       ; $798d: $f7
    add l                                         ; $798e: $85
    cp a                                          ; $798f: $bf
    ld d, h                                       ; $7990: $54
    rst $10                                       ; $7991: $d7
    rst $00                                       ; $7992: $c7
    ld [hl], e                                    ; $7993: $73
    ld a, [hl+]                                   ; $7994: $2a
    ld a, [hl+]                                   ; $7995: $2a
    ld a, $14                                     ; $7996: $3e $14
    cp d                                          ; $7998: $ba
    xor b                                         ; $7999: $a8
    adc e                                         ; $799a: $8b
    pop bc                                        ; $799b: $c1
    ld b, c                                       ; $799c: $41
    jr jr_042_7930                                ; $799d: $18 $91

    sub c                                         ; $799f: $91
    ld l, h                                       ; $79a0: $6c
    rrca                                          ; $79a1: $0f
    rst $38                                       ; $79a2: $ff
    add h                                         ; $79a3: $84
    cp h                                          ; $79a4: $bc
    jp nz, $afd3                                  ; $79a5: $c2 $d3 $af

jr_042_79a8:
    ld [hl], l                                    ; $79a8: $75
    ld b, [hl]                                    ; $79a9: $46
    ld [c], a                                     ; $79aa: $e2
    sbc a                                         ; $79ab: $9f
    sub b                                         ; $79ac: $90
    ld d, a                                       ; $79ad: $57
    ld a, b                                       ; $79ae: $78
    ld [hl+], a                                   ; $79af: $22
    push af                                       ; $79b0: $f5
    ld h, [hl]                                    ; $79b1: $66
    db $d3                                        ; $79b2: $d3
    adc e                                         ; $79b3: $8b
    call nc, $db9b                                ; $79b4: $d4 $9b $db
    ld h, c                                       ; $79b7: $61
    ld a, [hl-]                                   ; $79b8: $3a
    ld e, c                                       ; $79b9: $59
    sbc $39                                       ; $79ba: $de $39
    ccf                                           ; $79bc: $3f
    sbc b                                         ; $79bd: $98
    and a                                         ; $79be: $a7
    adc a                                         ; $79bf: $8f
    rst $28                                       ; $79c0: $ef
    ld [bc], a                                    ; $79c1: $02
    sbc e                                         ; $79c2: $9b
    jr c, jr_042_7a04                             ; $79c3: $38 $3f

    ld [hl+], a                                   ; $79c5: $22
    inc hl                                        ; $79c6: $23
    ld [hl], c                                    ; $79c7: $71
    inc hl                                        ; $79c8: $23
    inc c                                         ; $79c9: $0c
    ld b, c                                       ; $79ca: $41
    add hl, hl                                    ; $79cb: $29
    adc b                                         ; $79cc: $88
    rrca                                          ; $79cd: $0f
    db $fd                                        ; $79ce: $fd
    db $ed                                        ; $79cf: $ed
    db $fc                                        ; $79d0: $fc
    ret z                                         ; $79d1: $c8

    add [hl]                                      ; $79d2: $86
    ld [hl], e                                    ; $79d3: $73
    ld h, e                                       ; $79d4: $63
    ld [hl], d                                    ; $79d5: $72
    rst $18                                       ; $79d6: $df
    xor a                                         ; $79d7: $af
    db $ed                                        ; $79d8: $ed
    ld e, a                                       ; $79d9: $5f
    ld a, [bc]                                    ; $79da: $0a
    ccf                                           ; $79db: $3f
    add hl, sp                                    ; $79dc: $39
    ld [hl], c                                    ; $79dd: $71
    cp $83                                        ; $79de: $fe $83
    add d                                         ; $79e0: $82
    xor b                                         ; $79e1: $a8
    adc c                                         ; $79e2: $89
    sbc e                                         ; $79e3: $9b
    ld a, [c]                                     ; $79e4: $f2
    pop af                                        ; $79e5: $f1
    ld c, [hl]                                    ; $79e6: $4e
    add hl, hl                                    ; $79e7: $29
    adc b                                         ; $79e8: $88
    rrca                                          ; $79e9: $0f
    push bc                                       ; $79ea: $c5
    adc $f2                                       ; $79eb: $ce $f2
    adc $f9                                       ; $79ed: $ce $f9
    pop bc                                        ; $79ef: $c1
    inc a                                         ; $79f0: $3c
    ld [hl], c                                    ; $79f1: $71
    ld a, [hl]                                    ; $79f2: $7e
    db $e4                                        ; $79f3: $e4
    ld c, c                                       ; $79f4: $49
    sub b                                         ; $79f5: $90
    rra                                           ; $79f6: $1f
    scf                                           ; $79f7: $37
    sub d                                         ; $79f8: $92
    ld d, d                                       ; $79f9: $52
    ld l, a                                       ; $79fa: $6f
    cp a                                          ; $79fb: $bf
    ld [bc], a                                    ; $79fc: $02
    db $ed                                        ; $79fd: $ed
    ld a, c                                       ; $79fe: $79
    cp h                                          ; $79ff: $bc
    ld e, [hl]                                    ; $7a00: $5e
    ld a, a                                       ; $7a01: $7f
    ld e, a                                       ; $7a02: $5f
    ld c, l                                       ; $7a03: $4d

jr_042_7a04:
    ret z                                         ; $7a04: $c8

    dec hl                                        ; $7a05: $2b
    inc a                                         ; $7a06: $3c
    add hl, hl                                    ; $7a07: $29
    db $e4                                        ; $7a08: $e4
    db $ec                                        ; $7a09: $ec
    daa                                           ; $7a0a: $27
    ld [de], a                                    ; $7a0b: $12
    rst $18                                       ; $7a0c: $df
    sub b                                         ; $7a0d: $90
    ld h, a                                       ; $7a0e: $67
    or [hl]                                       ; $7a0f: $b6
    daa                                           ; $7a10: $27
    ld h, c                                       ; $7a11: $61
    ld h, l                                       ; $7a12: $65
    or d                                          ; $7a13: $b2
    ccf                                           ; $7a14: $3f
    rr b                                          ; $7a15: $cb $18
    ld a, a                                       ; $7a17: $7f
    sbc h                                         ; $7a18: $9c
    rst $38                                       ; $7a19: $ff
    ld l, b                                       ; $7a1a: $68
    ld sp, hl                                     ; $7a1b: $f9
    ld a, h                                       ; $7a1c: $7c
    sbc h                                         ; $7a1d: $9c
    rst $38                                       ; $7a1e: $ff
    sbc [hl]                                      ; $7a1f: $9e
    ld b, h                                       ; $7a20: $44
    call nc, $6bc5                                ; $7a21: $d4 $c5 $6b
    inc hl                                        ; $7a24: $23
    adc h                                         ; $7a25: $8c
    db $fc                                        ; $7a26: $fc
    sbc $1e                                       ; $7a27: $de $1e
    ld c, a                                       ; $7a29: $4f
    rst $30                                       ; $7a2a: $f7
    ld b, a                                       ; $7a2b: $47
    ld e, l                                       ; $7a2c: $5d
    ld e, d                                       ; $7a2d: $5a
    dec d                                         ; $7a2e: $15
    ld a, $e7                                     ; $7a2f: $3e $e7
    ld b, a                                       ; $7a31: $47
    ld a, [hl-]                                   ; $7a32: $3a
    and d                                         ; $7a33: $a2
    add d                                         ; $7a34: $82
    ld a, [hl]                                    ; $7a35: $7e
    dec b                                         ; $7a36: $05
    db $ed                                        ; $7a37: $ed
    ld a, c                                       ; $7a38: $79
    ld hl, sp+$27                                 ; $7a39: $f8 $27
    db $e4                                        ; $7a3b: $e4
    dec d                                         ; $7a3c: $15
    sbc [hl]                                      ; $7a3d: $9e
    inc d                                         ; $7a3e: $14
    rlca                                          ; $7a3f: $07
    ld d, c                                       ; $7a40: $51
    jr nc, @+$46                                  ; $7a41: $30 $44

    db $fd                                        ; $7a43: $fd
    ld c, [hl]                                    ; $7a44: $4e
    ld b, c                                       ; $7a45: $41
    pop hl                                        ; $7a46: $e1
    ret                                           ; $7a47: $c9


    ld [hl], d                                    ; $7a48: $72
    cpl                                           ; $7a49: $2f
    and e                                         ; $7a4a: $a3
    ld c, e                                       ; $7a4b: $4b
    push af                                       ; $7a4c: $f5
    sub c                                         ; $7a4d: $91
    sub c                                         ; $7a4e: $91
    inc a                                         ; $7a4f: $3c
    add hl, bc                                    ; $7a50: $09
    ld a, [c]                                     ; $7a51: $f2
    inc hl                                        ; $7a52: $23
    rlca                                          ; $7a53: $07
    ld h, c                                       ; $7a54: $61
    call nz, $a48d                                ; $7a55: $c4 $8d $a4
    call nc, $afdb                                ; $7a58: $d4 $db $af
    xor l                                         ; $7a5b: $ad
    pop bc                                        ; $7a5c: $c1
    cp c                                          ; $7a5d: $b9
    rst $20                                       ; $7a5e: $e7
    xor c                                         ; $7a5f: $a9
    add hl, de                                    ; $7a60: $19
    ld e, a                                       ; $7a61: $5f
    ld e, h                                       ; $7a62: $5c
    xor b                                         ; $7a63: $a8
    and h                                         ; $7a64: $a4
    dec l                                         ; $7a65: $2d
    dec sp                                        ; $7a66: $3b
    rst $28                                       ; $7a67: $ef
    adc b                                         ; $7a68: $88
    ld a, [de]                                    ; $7a69: $1a
    sbc e                                         ; $7a6a: $9b
    cp [hl]                                       ; $7a6b: $be
    rst $28                                       ; $7a6c: $ef
    di                                            ; $7a6d: $f3
    ld a, [bc]                                    ; $7a6e: $0a
    and l                                         ; $7a6f: $a5
    ld c, h                                       ; $7a70: $4c
    ld e, [hl]                                    ; $7a71: $5e
    sub h                                         ; $7a72: $94
    and c                                         ; $7a73: $a1
    sbc d                                         ; $7a74: $9a
    xor b                                         ; $7a75: $a8
    rst $18                                       ; $7a76: $df
    ei                                            ; $7a77: $fb
    or e                                          ; $7a78: $b3
    ret c                                         ; $7a79: $d8

    ld a, b                                       ; $7a7a: $78
    ld d, c                                       ; $7a7b: $51
    jp z, Jump_042_4a18                           ; $7a7c: $ca $18 $4a

    ld sp, hl                                     ; $7a7f: $f9
    or h                                          ; $7a80: $b4
    rst $28                                       ; $7a81: $ef
    jp c, $97b2                                   ; $7a82: $da $b2 $97

    ld h, e                                       ; $7a85: $63
    xor $57                                       ; $7a86: $ee $57
    ld l, l                                       ; $7a88: $6d
    ld [$1bdb], sp                                ; $7a89: $08 $db $1b
    ld [hl+], a                                   ; $7a8c: $22
    ret c                                         ; $7a8d: $d8

    ld a, e                                       ; $7a8e: $7b
    ld d, d                                       ; $7a8f: $52
    ld hl, sp-$7b                                 ; $7a90: $f8 $85
    ld a, b                                       ; $7a92: $78
    ld [hl-], a                                   ; $7a93: $32
    ld d, c                                       ; $7a94: $51
    ret c                                         ; $7a95: $d8

    add hl, hl                                    ; $7a96: $29
    and a                                         ; $7a97: $a7
    ret                                           ; $7a98: $c9


    ld e, b                                       ; $7a99: $58
    jp c, $227a                                   ; $7a9a: $da $7a $22

    pop af                                        ; $7a9d: $f1
    ld d, e                                       ; $7a9e: $53
    inc hl                                        ; $7a9f: $23
    push de                                       ; $7aa0: $d5
    ld l, h                                       ; $7aa1: $6c
    sbc [hl]                                      ; $7aa2: $9e
    ld l, b                                       ; $7aa3: $68
    or $24                                        ; $7aa4: $f6 $24
    ld [hl], h                                    ; $7aa6: $74
    xor c                                         ; $7aa7: $a9
    db $fd                                        ; $7aa8: $fd
    ld h, [hl]                                    ; $7aa9: $66
    inc b                                         ; $7aaa: $04
    ld a, [$ed15]                                 ; $7aab: $fa $15 $ed
    ld a, a                                       ; $7aae: $7f
    rst $18                                       ; $7aaf: $df
    rst $30                                       ; $7ab0: $f7
    ld e, c                                       ; $7ab1: $59
    ld l, h                                       ; $7ab2: $6c
    cp h                                          ; $7ab3: $bc
    jr z, jr_042_7b1b                             ; $7ab4: $28 $65

    inc c                                         ; $7ab6: $0c
    and l                                         ; $7ab7: $a5
    ld a, h                                       ; $7ab8: $7c
    jp c, Jump_042_6d77                           ; $7ab9: $da $77 $6d

    reti                                          ; $7abc: $d9


    swap c                                        ; $7abd: $cb $31
    rst $30                                       ; $7abf: $f7
    ld a, l                                       ; $7ac0: $7d
    cp a                                          ; $7ac1: $bf
    ld [bc], a                                    ; $7ac2: $02
    ld [hl], l                                    ; $7ac3: $75
    ld c, $c2                                     ; $7ac4: $0e $c2
    ld c, b                                       ; $7ac6: $48
    ld [hl], c                                    ; $7ac7: $71
    or h                                          ; $7ac8: $b4
    and b                                         ; $7ac9: $a0
    ld h, [hl]                                    ; $7aca: $66
    ld e, d                                       ; $7acb: $5a
    rst $38                                       ; $7acc: $ff
    sbc l                                         ; $7acd: $9d
    ld l, d                                       ; $7ace: $6a
    ld a, [hl+]                                   ; $7acf: $2a
    ld [$9c4f], sp                                ; $7ad0: $08 $4f $9c
    rra                                           ; $7ad3: $1f
    xor c                                         ; $7ad4: $a9
    sub c                                         ; $7ad5: $91
    ld a, [hl-]                                   ; $7ad6: $3a
    rst $08                                       ; $7ad7: $cf
    cp a                                          ; $7ad8: $bf
    and c                                         ; $7ad9: $a1
    dec bc                                        ; $7ada: $0b
    adc a                                         ; $7adb: $8f
    or [hl]                                       ; $7adc: $b6
    rrca                                          ; $7add: $0f
    ld d, [hl]                                    ; $7ade: $56
    ld a, a                                       ; $7adf: $7f
    jp z, Jump_042_49ec                           ; $7ae0: $ca $ec $49

    inc de                                        ; $7ae3: $13
    ld e, c                                       ; $7ae4: $59
    xor b                                         ; $7ae5: $a8
    ldh a, [$e4]                                  ; $7ae6: $f0 $e4
    cpl                                           ; $7ae8: $2f
    ld l, l                                       ; $7ae9: $6d
    reti                                          ; $7aea: $d9


    ld a, c                                       ; $7aeb: $79
    ld b, a                                       ; $7aec: $47
    call nc, $f4d8                                ; $7aed: $d4 $d8 $f4
    ld l, c                                       ; $7af0: $69
    ld d, l                                       ; $7af1: $55
    and c                                         ; $7af2: $a1
    sub h                                         ; $7af3: $94
    add hl, bc                                    ; $7af4: $09
    ld sp, hl                                     ; $7af5: $f9
    ld d, a                                       ; $7af6: $57
    ld [hl], e                                    ; $7af7: $73
    dec b                                         ; $7af8: $05
    ld l, l                                       ; $7af9: $6d
    and h                                         ; $7afa: $a4
    ldh a, [$5f]                                  ; $7afb: $f0 $5f
    ld a, [hl]                                    ; $7afd: $7e
    rst $28                                       ; $7afe: $ef
    rst $08                                       ; $7aff: $cf
    ld a, [hl]                                    ; $7b00: $7e
    db $d3                                        ; $7b01: $d3
    ld a, $ea                                     ; $7b02: $3e $ea
    cpl                                           ; $7b04: $2f
    sbc e                                         ; $7b05: $9b
    adc [hl]                                      ; $7b06: $8e
    and $bf                                       ; $7b07: $e6 $bf
    jr c, jr_042_7b4a                             ; $7b09: $38 $3f

    ld [hl+], a                                   ; $7b0b: $22
    inc hl                                        ; $7b0c: $23
    pop hl                                        ; $7b0d: $e1
    adc e                                         ; $7b0e: $8b
    sbc e                                         ; $7b0f: $9b
    ld l, d                                       ; $7b10: $6a
    ld bc, $4c8f                                  ; $7b11: $01 $8f $4c
    call $b515                                    ; $7b14: $cd $15 $b5
    rst $38                                       ; $7b17: $ff
    jp nz, $e436                                  ; $7b18: $c2 $36 $e4

jr_042_7b1b:
    di                                            ; $7b1b: $f3
    db $e4                                        ; $7b1c: $e4
    jp nz, Jump_000_2e74                          ; $7b1d: $c2 $74 $2e

    ld b, $ed                                     ; $7b20: $06 $ed
    rst $30                                       ; $7b22: $f7
    jp hl                                         ; $7b23: $e9


    ld d, d                                       ; $7b24: $52
    ei                                            ; $7b25: $fb
    call $d408                                    ; $7b26: $cd $08 $d4
    ld e, d                                       ; $7b29: $5a
    ld bc, $a675                                  ; $7b2a: $01 $75 $a6
    ld e, a                                       ; $7b2d: $5f
    ld bc, $c1ad                                  ; $7b2e: $01 $ad $c1
    xor a                                         ; $7b31: $af
    bit 4, d                                      ; $7b32: $cb $62
    ld b, e                                       ; $7b34: $43
    cp [hl]                                       ; $7b35: $be
    cp e                                          ; $7b36: $bb
    cp h                                          ; $7b37: $bc
    cp b                                          ; $7b38: $b8
    or c                                          ; $7b39: $b1
    rst $28                                       ; $7b3a: $ef
    ld d, e                                       ; $7b3b: $53
    ld h, a                                       ; $7b3c: $67
    inc h                                         ; $7b3d: $24
    cp a                                          ; $7b3e: $bf
    ret c                                         ; $7b3f: $d8

    ld e, c                                       ; $7b40: $59
    db $fd                                        ; $7b41: $fd
    cp c                                          ; $7b42: $b9
    ld d, h                                       ; $7b43: $54
    add a                                         ; $7b44: $87
    adc e                                         ; $7b45: $8b
    rst $30                                       ; $7b46: $f7
    call nz, $ebf9                                ; $7b47: $c4 $f9 $eb

jr_042_7b4a:
    call $f38b                                    ; $7b4a: $cd $8b $f3
    inc hl                                        ; $7b4d: $23
    ld c, h                                       ; $7b4e: $4c

jr_042_7b4f:
    inc hl                                        ; $7b4f: $23
    inc hl                                        ; $7b50: $23
    ld e, c                                       ; $7b51: $59
    add [hl]                                      ; $7b52: $86
    db $ed                                        ; $7b53: $ed
    cpl                                           ; $7b54: $2f
    cp a                                          ; $7b55: $bf
    ret c                                         ; $7b56: $d8

    add hl, de                                    ; $7b57: $19
    ld [hl], d                                    ; $7b58: $72
    ld h, c                                       ; $7b59: $61
    ld a, [hl-]                                   ; $7b5a: $3a
    rst $10                                       ; $7b5b: $d7
    xor a                                         ; $7b5c: $af
    dec e                                         ; $7b5d: $1d
    adc l                                         ; $7b5e: $8d
    call nc, $ed4c                                ; $7b5f: $d4 $4c $ed
    adc c                                         ; $7b62: $89
    pop bc                                        ; $7b63: $c1
    pop de                                        ; $7b64: $d1
    dec b                                         ; $7b65: $05
    or $3c                                        ; $7b66: $f6 $3c
    cp c                                          ; $7b68: $b9
    ld d, h                                       ; $7b69: $54
    add a                                         ; $7b6a: $87
    adc e                                         ; $7b6b: $8b
    ld b, c                                       ; $7b6c: $41
    ei                                            ; $7b6d: $fb
    ld a, l                                       ; $7b6e: $7d
    dec [hl]                                      ; $7b6f: $35
    ld d, a                                       ; $7b70: $57
    ld l, l                                       ; $7b71: $6d
    cp [hl]                                       ; $7b72: $be
    ldh a, [rNR22]                                ; $7b73: $f0 $17
    ld a, $37                                     ; $7b75: $3e $37
    dec [hl]                                      ; $7b77: $35
    db $d3                                        ; $7b78: $d3
    ld [$f762], a                                 ; $7b79: $ea $62 $f7
    push de                                       ; $7b7c: $d5
    db $ec                                        ; $7b7d: $ec
    db $eb                                        ; $7b7e: $eb
    ld d, a                                       ; $7b7f: $57
    xor l                                         ; $7b80: $ad
    and [hl]                                      ; $7b81: $a6
    or $9b                                        ; $7b82: $f6 $9b
    ld de, $fa88                                  ; $7b84: $11 $88 $fa
    call nc, $cd7e                                ; $7b87: $d4 $7e $cd
    ld c, [hl]                                    ; $7b8a: $4e
    push af                                       ; $7b8b: $f5
    dec hl                                        ; $7b8c: $2b
    sbc l                                         ; $7b8d: $9d
    ld c, b                                       ; $7b8e: $48
    cp h                                          ; $7b8f: $bc
    ei                                            ; $7b90: $fb
    add hl, hl                                    ; $7b91: $29
    ld c, a                                       ; $7b92: $4f
    call nc, Call_042_4365                        ; $7b93: $d4 $65 $43
    sub e                                         ; $7b96: $93
    xor c                                         ; $7b97: $a9
    sbc c                                         ; $7b98: $99
    sub $41                                       ; $7b99: $d6 $41
    ld [hl+], a                                   ; $7b9b: $22
    ld c, a                                       ; $7b9c: $4f
    jp nz, $e4f6                                  ; $7b9d: $c2 $f6 $e4

    add h                                         ; $7ba0: $84
    ld e, a                                       ; $7ba1: $5f
    db $db                                        ; $7ba2: $db
    rst $30                                       ; $7ba3: $f7
    inc a                                         ; $7ba4: $3c
    reti                                          ; $7ba5: $d9


    db $f4                                        ; $7ba6: $f4
    ld d, d                                       ; $7ba7: $52
    jr jr_042_7b4f                                ; $7ba8: $18 $a5

    ld c, h                                       ; $7baa: $4c
    cp a                                          ; $7bab: $bf
    ld [bc], a                                    ; $7bac: $02
    ld l, l                                       ; $7bad: $6d
    ld a, [hl]                                    ; $7bae: $7e
    xor b                                         ; $7baf: $a8
    and h                                         ; $7bb0: $a4
    ret nc                                        ; $7bb1: $d0

    sub c                                         ; $7bb2: $91
    ld c, c                                       ; $7bb3: $49
    cp c                                          ; $7bb4: $b9
    ld [$f236], a                                 ; $7bb5: $ea $36 $f2
    dec sp                                        ; $7bb8: $3b
    inc h                                         ; $7bb9: $24
    xor h                                         ; $7bba: $ac
    ld c, h                                       ; $7bbb: $4c
    call nc, $ca85                                ; $7bbc: $d4 $85 $ca
    rst $00                                       ; $7bbf: $c7
    dec e                                         ; $7bc0: $1d
    add hl, bc                                    ; $7bc1: $09
    and $ef                                       ; $7bc2: $e6 $ef
    ld d, a                                       ; $7bc4: $57
    dec e                                         ; $7bc5: $1d
    ld hl, sp+$75                                 ; $7bc6: $f8 $75
    sub c                                         ; $7bc8: $91
    xor c                                         ; $7bc9: $a9
    sbc c                                         ; $7bca: $99
    ld c, [hl]                                    ; $7bcb: $4e
    inc h                                         ; $7bcc: $24
    cp a                                          ; $7bcd: $bf
    reti                                          ; $7bce: $d9


    ld h, $d5                                     ; $7bcf: $26 $d5
    ld l, e                                       ; $7bd1: $6b
    ei                                            ; $7bd2: $fb
    ld b, [hl]                                    ; $7bd3: $46
    db $10                                        ; $7bd4: $10
    scf                                           ; $7bd5: $37
    ld a, e                                       ; $7bd6: $7b
    inc l                                         ; $7bd7: $2c

Jump_042_7bd8:
    dec d                                         ; $7bd8: $15
    or $0b                                        ; $7bd9: $f6 $0b
    pop af                                        ; $7bdb: $f1
    push hl                                       ; $7bdc: $e5
    ei                                            ; $7bdd: $fb
    or h                                          ; $7bde: $b4
    dec a                                         ; $7bdf: $3d
    add hl, de                                    ; $7be0: $19
    ld [hl], l                                    ; $7be1: $75
    sub e                                         ; $7be2: $93
    db $db                                        ; $7be3: $db
    ld [hl], c                                    ; $7be4: $71
    or e                                          ; $7be5: $b3
    rst $00                                       ; $7be6: $c7
    ld d, d                                       ; $7be7: $52
    ld h, c                                       ; $7be8: $61
    cp a                                          ; $7be9: $bf
    db $10                                        ; $7bea: $10
    ld e, a                                       ; $7beb: $5f
    cp [hl]                                       ; $7bec: $be
    ld e, a                                       ; $7bed: $5f
    ld bc, $386d                                  ; $7bee: $01 $6d $38
    scf                                           ; $7bf1: $37
    and c                                         ; $7bf2: $a1
    ld a, [c]                                     ; $7bf3: $f2
    pop af                                        ; $7bf4: $f1
    sbc [hl]                                      ; $7bf5: $9e
    ld b, [hl]                                    ; $7bf6: $46
    db $ed                                        ; $7bf7: $ed
    db $e4                                        ; $7bf8: $e4
    ei                                            ; $7bf9: $fb
    dec d                                         ; $7bfa: $15
    xor l                                         ; $7bfb: $ad
    ld a, a                                       ; $7bfc: $7f
    sub [hl]                                      ; $7bfd: $96
    scf                                           ; $7bfe: $37
    ld b, [hl]                                    ; $7bff: $46
    call nc, $7885                                ; $7c00: $d4 $85 $78
    sub e                                         ; $7c03: $93
    ld c, [hl]                                    ; $7c04: $4e
    ld h, c                                       ; $7c05: $61
    ld [hl-], a                                   ; $7c06: $32
    ld [de], a                                    ; $7c07: $12
    add h                                         ; $7c08: $84
    ld a, b                                       ; $7c09: $78
    sbc a                                         ; $7c0a: $9f
    cp d                                          ; $7c0b: $ba
    ld h, b                                       ; $7c0c: $60
    ld a, [hl+]                                   ; $7c0d: $2a
    rst $30                                       ; $7c0e: $f7
    db $fd                                        ; $7c0f: $fd
    ld a, [bc]                                    ; $7c10: $0a
    sbc l                                         ; $7c11: $9d
    ret z                                         ; $7c12: $c8

    and a                                         ; $7c13: $a7
    ld a, [de]                                    ; $7c14: $1a
    ld bc, $d47f                                  ; $7c15: $01 $7f $d4
    and a                                         ; $7c18: $a7
    ld [bc], a                                    ; $7c19: $02
    sub c                                         ; $7c1a: $91
    ld hl, sp+$29                                 ; $7c1b: $f8 $29
    inc c                                         ; $7c1d: $0c
    db $db                                        ; $7c1e: $db
    daa                                           ; $7c1f: $27
    rst $18                                       ; $7c20: $df
    and a                                         ; $7c21: $a7
    db $fd                                        ; $7c22: $fd
    reti                                          ; $7c23: $d9


    inc a                                         ; $7c24: $3c
    ld [hl], c                                    ; $7c25: $71
    ld l, a                                       ; $7c26: $6f
    daa                                           ; $7c27: $27
    inc de                                        ; $7c28: $13
    push af                                       ; $7c29: $f5
    ld e, c                                       ; $7c2a: $59
    sbc $18                                       ; $7c2b: $de $18
    reti                                          ; $7c2d: $d9


    ld h, e                                       ; $7c2e: $63
    db $d3                                        ; $7c2f: $d3
    xor a                                         ; $7c30: $af
    ld l, l                                       ; $7c31: $6d
    pop de                                        ; $7c32: $d1
    scf                                           ; $7c33: $37
    push af                                       ; $7c34: $f5
    cp d                                          ; $7c35: $ba
    ld d, b                                       ; $7c36: $50
    ld sp, hl                                     ; $7c37: $f9
    ld l, b                                       ; $7c38: $68
    ld [hl], $a5                                  ; $7c39: $36 $a5
    ld a, h                                       ; $7c3b: $7c
    adc d                                         ; $7c3c: $8a
    ld a, e                                       ; $7c3d: $7b
    sbc [hl]                                      ; $7c3e: $9e
    db $fd                                        ; $7c3f: $fd
    ld d, c                                       ; $7c40: $51
    rla                                           ; $7c41: $17
    rst $08                                       ; $7c42: $cf
    dec de                                        ; $7c43: $1b
    rst $20                                       ; $7c44: $e7
    add $5e                                       ; $7c45: $c6 $5e
    ret nc                                        ; $7c47: $d0

Call_042_7c48:
    and a                                         ; $7c48: $a7
    db $ed                                        ; $7c49: $ed
    dec e                                         ; $7c4a: $1d
    db $fd                                        ; $7c4b: $fd
    ld l, c                                       ; $7c4c: $69
    ei                                            ; $7c4d: $fb
    ret nz                                        ; $7c4e: $c0

    inc a                                         ; $7c4f: $3c
    ld hl, $820f                                  ; $7c50: $21 $0f $82
    xor b                                         ; $7c53: $a8
    rst $08                                       ; $7c54: $cf
    ld a, [c]                                     ; $7c55: $f2
    add $88                                       ; $7c56: $c6 $88
    cp d                                          ; $7c58: $ba
    call nc, $5586                                ; $7c59: $d4 $86 $55
    scf                                           ; $7c5c: $37
    add d                                         ; $7c5d: $82
    ld a, $6d                                     ; $7c5e: $3e $6d
    call nz, $f08d                                ; $7c60: $c4 $8d $f0
    ld b, c                                       ; $7c63: $41
    sub b                                         ; $7c64: $90
    db $fd                                        ; $7c65: $fd
    pop af                                        ; $7c66: $f1
    sbc [hl]                                      ; $7c67: $9e
    ld b, [hl]                                    ; $7c68: $46
    db $ed                                        ; $7c69: $ed
    db $e4                                        ; $7c6a: $e4
    and e                                         ; $7c6b: $a3
    ld l, $be                                     ; $7c6c: $2e $be
    or a                                          ; $7c6e: $b7

Call_042_7c6f:
    ld hl, $9a8c                                  ; $7c6f: $21 $8c $9a
    dec hl                                        ; $7c72: $2b
    dec l                                         ; $7c73: $2d
    add a                                         ; $7c74: $87
    jp z, Jump_042_6147                           ; $7c75: $ca $47 $61

    ld l, a                                       ; $7c78: $6f
    call nz, $1a7b                                ; $7c79: $c4 $7b $1a
    or l                                          ; $7c7c: $b5
    inc de                                        ; $7c7d: $13
    ld h, h                                       ; $7c7e: $64
    cp c                                          ; $7c7f: $b9
    ld b, $72                                     ; $7c80: $06 $72
    push de                                       ; $7c82: $d5
    ld [hl-], a                                   ; $7c83: $32
    add $2f                                       ; $7c84: $c6 $2f
    ld a, h                                       ; $7c86: $7c
    db $fd                                        ; $7c87: $fd
    ld a, [bc]                                    ; $7c88: $0a
    dec e                                         ; $7c89: $1d
    adc l                                         ; $7c8a: $8d
    add sp, -$0e                                  ; $7c8b: $e8 $f2
    push bc                                       ; $7c8d: $c5
    call Call_042_6fe6                            ; $7c8e: $cd $e6 $6f
    ld sp, $751e                                  ; $7c91: $31 $1e $75
    dec c                                         ; $7c94: $0d
    push hl                                       ; $7c95: $e5
    inc d                                         ; $7c96: $14
    and d                                         ; $7c97: $a2
    ld l, $b5                                     ; $7c98: $2e $b5
    ld b, a                                       ; $7c9a: $47
    db $eb                                        ; $7c9b: $eb
    xor $8d                                       ; $7c9c: $ee $8d
    ld c, e                                       ; $7c9e: $4b
    sbc a                                         ; $7c9f: $9f
    ld d, [hl]                                    ; $7ca0: $56
    xor e                                         ; $7ca1: $ab
    ld [hl], e                                    ; $7ca2: $73
    inc de                                        ; $7ca3: $13
    ld [hl], l                                    ; $7ca4: $75
    xor c                                         ; $7ca5: $a9
    ld [hl], e                                    ; $7ca6: $73
    ld l, [hl]                                    ; $7ca7: $6e
    or $97                                        ; $7ca8: $f6 $97
    or h                                          ; $7caa: $b4
    cp c                                          ; $7cab: $b9
    cp a                                          ; $7cac: $bf
    jp nz, $c5d6                                  ; $7cad: $c2 $d6 $c5

    add hl, de                                    ; $7cb0: $19
    sbc [hl]                                      ; $7cb1: $9e
    rst $00                                       ; $7cb2: $c7
    db $10                                        ; $7cb3: $10
    add l                                         ; $7cb4: $85
    cp l                                          ; $7cb5: $bd
    ccf                                           ; $7cb6: $3f
    ld [hl], l                                    ; $7cb7: $75
    rrca                                          ; $7cb8: $0f
    ld l, h                                       ; $7cb9: $6c
    sbc a                                         ; $7cba: $9f
    ld [hl], $6f                                  ; $7cbb: $36 $6f
    ld c, a                                       ; $7cbd: $4f
    add hl, de                                    ; $7cbe: $19
    rst $28                                       ; $7cbf: $ef
    ld l, a                                       ; $7cc0: $6f
    ld a, b                                       ; $7cc1: $78
    db $f4                                        ; $7cc2: $f4
    ld l, c                                       ; $7cc3: $69
    jp $89b9                                      ; $7cc4: $c3 $b9 $89


    di                                            ; $7cc7: $f3
    ld e, a                                       ; $7cc8: $5f
    ld l, d                                       ; $7cc9: $6a
    and h                                         ; $7cca: $a4
    adc $b9                                       ; $7ccb: $ce $b9
    reti                                          ; $7ccd: $d9


    ld e, a                                       ; $7cce: $5f
    jp nc, $fee6                                  ; $7ccf: $d2 $e6 $fe

    ld a, [bc]                                    ; $7cd2: $0a
    cp e                                          ; $7cd3: $bb
    and $0a                                       ; $7cd4: $e6 $0a
    ld l, l                                       ; $7cd6: $6d
    ld h, h                                       ; $7cd7: $64
    ld a, a                                       ; $7cd8: $7f
    ld [$d81e], a                                 ; $7cd9: $ea $1e $d8
    ld a, $6d                                     ; $7cdc: $3e $6d
    sbc $9e                                       ; $7cde: $de $9e
    ld [hl-], a                                   ; $7ce0: $32
    sbc $df                                       ; $7ce1: $de $df
    add sp, -$05                                  ; $7ce3: $e8 $fb
    ld a, $de                                     ; $7ce5: $3e $de
    or c                                          ; $7ce7: $b1
    add d                                         ; $7ce8: $82
    call nc, Call_042_62c8                        ; $7ce9: $d4 $c8 $62
    or e                                          ; $7cec: $b3
    ret c                                         ; $7ced: $d8

    ld c, l                                       ; $7cee: $4d
    ld a, $3e                                     ; $7cef: $3e $3e
    inc d                                         ; $7cf1: $14
    add l                                         ; $7cf2: $85
    ccf                                           ; $7cf3: $3f
    adc $8f                                       ; $7cf4: $ce $8f
    ld a, b                                       ; $7cf6: $78
    ccf                                           ; $7cf7: $3f
    ei                                            ; $7cf8: $fb
    and e                                         ; $7cf9: $a3
    pop de                                        ; $7cfa: $d1
    scf                                           ; $7cfb: $37
    ld [hl], l                                    ; $7cfc: $75
    rra                                           ; $7cfd: $1f
    rra                                           ; $7cfe: $1f
    adc d                                         ; $7cff: $8a
    dec e                                         ; $7d00: $1d
    rst $30                                       ; $7d01: $f7
    add d                                         ; $7d02: $82
    ld a, [hl]                                    ; $7d03: $7e
    dec b                                         ; $7d04: $05
    xor l                                         ; $7d05: $ad
    rrca                                          ; $7d06: $0f
    ld l, c                                       ; $7d07: $69
    xor b                                         ; $7d08: $a8
    xor d                                         ; $7d09: $aa
    adc c                                         ; $7d0a: $89
    add e                                         ; $7d0b: $83
    cp c                                          ; $7d0c: $b9
    scf                                           ; $7d0d: $37
    ld b, h                                       ; $7d0e: $44
    ld e, l                                       ; $7d0f: $5d
    jp z, Jump_000_302f                           ; $7d10: $ca $2f $30

    ld b, c                                       ; $7d13: $41
    call nc, $b965                                ; $7d14: $d4 $65 $b9
    ld b, $fa                                     ; $7d17: $06 $fa
    cp [hl]                                       ; $7d19: $be
    adc a                                         ; $7d1a: $8f
    sbc d                                         ; $7d1b: $9a
    ld h, l                                       ; $7d1c: $65
    ld a, [c]                                     ; $7d1d: $f2
    inc h                                         ; $7d1e: $24
    inc l                                         ; $7d1f: $2c
    cp a                                          ; $7d20: $bf
    ret nz                                        ; $7d21: $c0

    ld a, b                                       ; $7d22: $78
    ld [hl], d                                    ; $7d23: $72
    ld sp, $bf68                                  ; $7d24: $31 $68 $bf
    xor a                                         ; $7d27: $af
    ld e, a                                       ; $7d28: $5f
    ld bc, $2ead                                  ; $7d29: $01 $ad $2e
    halt                                          ; $7d2c: $76
    pop af                                        ; $7d2d: $f1
    and c                                         ; $7d2e: $a1
    ret c                                         ; $7d2f: $d8

    ld a, e                                       ; $7d30: $7b
    ld [hl], h                                    ; $7d31: $74
    ld a, c                                       ; $7d32: $79
    add l                                         ; $7d33: $85
    ld d, d                                       ; $7d34: $52
    and [hl]                                      ; $7d35: $a6
    ld e, a                                       ; $7d36: $5f
    ld bc, $48be                                  ; $7d37: $01 $be $48
    adc l                                         ; $7d3a: $8d
    ld hl, sp+$50                                 ; $7d3b: $f8 $50
    db $ec                                        ; $7d3d: $ec
    dec a                                         ; $7d3e: $3d
    ld [hl], c                                    ; $7d3f: $71
    ld a, [hl]                                    ; $7d40: $7e
    ld h, h                                       ; $7d41: $64
    add c                                         ; $7d42: $81
    sub h                                         ; $7d43: $94
    jp hl                                         ; $7d44: $e9


    ei                                            ; $7d45: $fb
    ld a, $35                                     ; $7d46: $3e $35
    ld d, d                                       ; $7d48: $52
    call $89e6                                    ; $7d49: $cd $e6 $89
    cp l                                          ; $7d4c: $bd
    ld c, l                                       ; $7d4d: $4d
    db $10                                        ; $7d4e: $10
    ld [de], a                                    ; $7d4f: $12
    or $15                                        ; $7d50: $f6 $15
    add h                                         ; $7d52: $84
    sub c                                         ; $7d53: $91
    push bc                                       ; $7d54: $c5
    ld b, b                                       ; $7d55: $40
    cp h                                          ; $7d56: $bc
    add hl, hl                                    ; $7d57: $29
    db $d3                                        ; $7d58: $d3
    xor a                                         ; $7d59: $af
    sbc [hl]                                      ; $7d5a: $9e
    ld a, [hl]                                    ; $7d5b: $7e
    call nz, $f14d                                ; $7d5c: $c4 $4d $f1
    xor b                                         ; $7d5f: $a8
    ld d, c                                       ; $7d60: $51
    ld l, e                                       ; $7d61: $6b
    dec b                                         ; $7d62: $05
    dec l                                         ; $7d63: $2d
    rst $20                                       ; $7d64: $e7
    halt                                          ; $7d65: $76
    xor d                                         ; $7d66: $aa
    rla                                           ; $7d67: $17
    add $de                                       ; $7d68: $c6 $de
    inc de                                        ; $7d6a: $13
    rst $20                                       ; $7d6b: $e7
    ld b, a                                       ; $7d6c: $47
    inc c                                         ; $7d6d: $0c
    and d                                         ; $7d6e: $a2
    sub b                                         ; $7d6f: $90
    inc de                                        ; $7d70: $13
    ld a, [c]                                     ; $7d71: $f2
    jp z, Jump_042_6fe9                           ; $7d72: $ca $e9 $6f

    ld e, a                                       ; $7d75: $5f
    sbc a                                         ; $7d76: $9f
    ld a, [hl-]                                   ; $7d77: $3a
    ld c, b                                       ; $7d78: $48
    add hl, de                                    ; $7d79: $19
    sbc c                                         ; $7d7a: $99
    sub h                                         ; $7d7b: $94
    ld [hl], e                                    ; $7d7c: $73
    call nc, $efa6                                ; $7d7d: $d4 $a6 $ef
    ei                                            ; $7d80: $fb
    inc l                                         ; $7d81: $2c
    ld [hl], $e4                                  ; $7d82: $36 $e4
    rst $28                                       ; $7d84: $ef
    xor c                                         ; $7d85: $a9
    cp c                                          ; $7d86: $b9
    ld [bc], a                                    ; $7d87: $02
    dec l                                         ; $7d88: $2d
    rst $00                                       ; $7d89: $c7
    ld c, l                                       ; $7d8a: $4d
    add l                                         ; $7d8b: $85
    xor b                                         ; $7d8c: $a8
    ld [hl], e                                    ; $7d8d: $73
    sub e                                         ; $7d8e: $93
    sbc e                                         ; $7d8f: $9b
    sbc d                                         ; $7d90: $9a
    ld l, c                                       ; $7d91: $69
    adc e                                         ; $7d92: $8b
    cp [hl]                                       ; $7d93: $be
    xor c                                         ; $7d94: $a9
    adc a                                         ; $7d95: $8f
    halt                                          ; $7d96: $76
    dec c                                         ; $7d97: $0d
    call nc, $015c                                ; $7d98: $d4 $5c $01
    cp [hl]                                       ; $7d9b: $be
    inc hl                                        ; $7d9c: $23
    sub e                                         ; $7d9d: $93
    inc de                                        ; $7d9e: $13
    ld a, [c]                                     ; $7d9f: $f2
    jp z, Jump_042_6fe9                           ; $7da0: $ca $e9 $6f

    and e                                         ; $7da3: $a3
    ld h, [hl]                                    ; $7da4: $66
    jp c, Jump_042_6fa2                           ; $7da5: $da $a2 $6f

    ld [$7175], a                                 ; $7da8: $ea $75 $71
    ld e, $35                                     ; $7dab: $1e $35
    ld b, d                                       ; $7dad: $42
    dec h                                         ; $7dae: $25
    ld a, [$f6d3]                                 ; $7daf: $fa $d3 $f6
    add c                                         ; $7db2: $81
    ld a, c                                       ; $7db3: $79
    ld a, [$1d15]                                 ; $7db4: $fa $15 $1d
    ld d, d                                       ; $7db7: $52
    inc d                                         ; $7db8: $14
    sbc [hl]                                      ; $7db9: $9e
    ld d, h                                       ; $7dba: $54
    ret z                                         ; $7dbb: $c8

    or $f0                                        ; $7dbc: $f6 $f0
    ld a, a                                       ; $7dbe: $7f
    sbc $eb                                       ; $7dbf: $de $eb
    dec a                                         ; $7dc1: $3d
    push af                                       ; $7dc2: $f5
    inc a                                         ; $7dc3: $3c
    ld h, c                                       ; $7dc4: $61
    ld a, [hl-]                                   ; $7dc5: $3a
    ld e, c                                       ; $7dc6: $59
    ld e, [hl]                                    ; $7dc7: $5e
    add hl, de                                    ; $7dc8: $19
    or d                                          ; $7dc9: $b2
    ret c                                         ; $7dca: $d8

    ld d, l                                       ; $7dcb: $55
    rra                                           ; $7dcc: $1f
    ld [hl], l                                    ; $7dcd: $75
    xor c                                         ; $7dce: $a9
    add $ce                                       ; $7dcf: $c6 $ce
    ret nc                                        ; $7dd1: $d0

    and a                                         ; $7dd2: $a7
    push hl                                       ; $7dd3: $e5
    ld l, b                                       ; $7dd4: $68
    ld b, a                                       ; $7dd5: $47
    add l                                         ; $7dd6: $85
    daa                                           ; $7dd7: $27
    or a                                          ; $7dd8: $b7
    ld d, e                                       ; $7dd9: $53
    ld c, l                                       ; $7dda: $4d
    dec b                                         ; $7ddb: $05
    pop hl                                        ; $7ddc: $e1
    adc c                                         ; $7ddd: $89
    di                                            ; $7dde: $f3
    inc hl                                        ; $7ddf: $23
    inc a                                         ; $7de0: $3c
    ld h, $97                                     ; $7de1: $26 $97
    rrca                                          ; $7de3: $0f
    and e                                         ; $7de4: $a3
    ld c, a                                       ; $7de5: $4f
    sbc e                                         ; $7de6: $9b
    cpl                                           ; $7de7: $2f
    add d                                         ; $7de8: $82
    add sp, -$17                                  ; $7de9: $e8 $e9
    ld c, b                                       ; $7deb: $48
    ld l, b                                       ; $7dec: $68
    sbc c                                         ; $7ded: $99
    ld a, $ad                                     ; $7dee: $3e $ad
    pop de                                        ; $7df0: $d1
    sub c                                         ; $7df1: $91
    call nc, $fe79                                ; $7df2: $d4 $79 $fe
    adc l                                         ; $7df5: $8d
    ld a, [hl]                                    ; $7df6: $7e
    dec b                                         ; $7df7: $05
    xor l                                         ; $7df8: $ad
    cp a                                          ; $7df9: $bf
    pop hl                                        ; $7dfa: $e1
    ld [c], a                                     ; $7dfb: $e2
    ld b, e                                       ; $7dfc: $43
    ld a, a                                       ; $7dfd: $7f
    sub a                                         ; $7dfe: $97
    ei                                            ; $7dff: $fb
    ld [hl], d                                    ; $7e00: $72
    ld [hl], c                                    ; $7e01: $71
    ld d, e                                       ; $7e02: $53
    ld a, $0b                                     ; $7e03: $3e $0b
    inc l                                         ; $7e05: $2c
    ld c, a                                       ; $7e06: $4f
    jp nz, $a104                                  ; $7e07: $c2 $04 $a1

    ld [hl-], a                                   ; $7e0a: $32
    dec [hl]                                      ; $7e0b: $35
    ld d, a                                       ; $7e0c: $57
    db $ed                                        ; $7e0d: $ed
    ld a, a                                       ; $7e0e: $7f
    rst $18                                       ; $7e0f: $df
    rst $30                                       ; $7e10: $f7
    ld [hl], c                                    ; $7e11: $71
    cp $4b                                        ; $7e12: $fe $4b
    add l                                         ; $7e14: $85
    ld l, h                                       ; $7e15: $6c
    rrca                                          ; $7e16: $0f
    rst $38                                       ; $7e17: $ff
    and a                                         ; $7e18: $a7
    ld a, d                                       ; $7e19: $7a
    ld d, c                                       ; $7e1a: $51
    rst $08                                       ; $7e1b: $cf
    ld d, e                                       ; $7e1c: $53
    ld l, e                                       ; $7e1d: $6b
    dec b                                         ; $7e1e: $05
    sbc [hl]                                      ; $7e1f: $9e
    ld b, $35                                     ; $7e20: $06 $35
    ld [hl], c                                    ; $7e22: $71
    ld a, [hl]                                    ; $7e23: $7e
    and h                                         ; $7e24: $a4
    cp d                                          ; $7e25: $ba
    inc l                                         ; $7e26: $2c
    ld [hl], $24                                  ; $7e27: $36 $24
    xor h                                         ; $7e29: $ac
    cp $dc                                        ; $7e2a: $fe $dc
    ld c, [hl]                                    ; $7e2c: $4e
    push af                                       ; $7e2d: $f5
    jp nz, Jump_042_7bd8                          ; $7e2e: $c2 $d8 $7b

    ld l, d                                       ; $7e31: $6a
    xor [hl]                                      ; $7e32: $ae
    ld [hl], l                                    ; $7e33: $75
    and a                                         ; $7e34: $a7
    sub h                                         ; $7e35: $94
    add hl, bc                                    ; $7e36: $09
    add h                                         ; $7e37: $84
    db $ed                                        ; $7e38: $ed
    dec c                                         ; $7e39: $0d
    ld de, $74ec                                  ; $7e3a: $11 $ec $74
    add h                                         ; $7e3d: $84
    push hl                                       ; $7e3e: $e5
    adc l                                         ; $7e3f: $8d
    daa                                           ; $7e40: $27
    ld [hl], l                                    ; $7e41: $75
    ld l, l                                       ; $7e42: $6d
    ld c, [hl]                                    ; $7e43: $4e
    ld a, a                                       ; $7e44: $7f
    inc a                                         ; $7e45: $3c
    add hl, hl                                    ; $7e46: $29
    db $10                                        ; $7e47: $10
    ld [c], a                                     ; $7e48: $e2
    rst $00                                       ; $7e49: $c7
    ld sp, hl                                     ; $7e4a: $f9
    ld de, $2941                                  ; $7e4b: $11 $41 $29
    ld d, h                                       ; $7e4e: $54

Jump_042_7e4f:
    ld h, $d5                                     ; $7e4f: $26 $d5
    add l                                         ; $7e51: $85
    add h                                         ; $7e52: $84
    ld a, [$2b9a]                                 ; $7e53: $fa $9a $2b
    sbc [hl]                                      ; $7e56: $9e
    cp $8b                                        ; $7e57: $fe $8b
    di                                            ; $7e59: $f3
    xor b                                         ; $7e5a: $a8
    ld de, $7a1f                                  ; $7e5b: $11 $1f $7a
    ld d, c                                       ; $7e5e: $51
    db $10                                        ; $7e5f: $10
    or [hl]                                       ; $7e60: $b6
    xor c                                         ; $7e61: $a9
    or l                                          ; $7e62: $b5
    ld [bc], a                                    ; $7e63: $02
    dec e                                         ; $7e64: $1d
    ld e, a                                       ; $7e65: $5f
    db $fc                                        ; $7e66: $fc
    sub e                                         ; $7e67: $93
    push bc                                       ; $7e68: $c5
    ld d, b                                       ; $7e69: $50
    and [hl]                                      ; $7e6a: $a6
    and $0a                                       ; $7e6b: $e6 $0a
    or l                                          ; $7e6d: $b5
    rst $18                                       ; $7e6e: $df
    adc h                                         ; $7e6f: $8c
    ld b, b                                       ; $7e70: $40
    ld [$330e], a                                 ; $7e71: $ea $0e $33
    xor h                                         ; $7e74: $ac
    ld h, [hl]                                    ; $7e75: $66
    jp c, Jump_042_6896                           ; $7e76: $da $96 $68

    ld h, a                                       ; $7e79: $67
    inc de                                        ; $7e7a: $13
    ld [hl], l                                    ; $7e7b: $75
    sub c                                         ; $7e7c: $91
    ld h, c                                       ; $7e7d: $61
    ld b, [hl]                                    ; $7e7e: $46
    db $10                                        ; $7e7f: $10
    pop bc                                        ; $7e80: $c1
    ld c, [hl]                                    ; $7e81: $4e
    ld b, a                                       ; $7e82: $47
    ld e, b                                       ; $7e83: $58
    sbc $78                                       ; $7e84: $de $78
    ld d, d                                       ; $7e86: $52
    rst $10                                       ; $7e87: $d7
    and $f4                                       ; $7e88: $e6 $f4
    rst $00                                       ; $7e8a: $c7
    and e                                         ; $7e8b: $a3
    rlc d                                         ; $7e8c: $cb $02
    adc e                                         ; $7e8e: $8b
    cp d                                          ; $7e8f: $ba
    inc l                                         ; $7e90: $2c
    rst $10                                       ; $7e91: $d7
    ld b, b                                       ; $7e92: $40
    call $d134                                    ; $7e93: $cd $34 $d1
    ld a, b                                       ; $7e96: $78
    ld d, $2a                                     ; $7e97: $16 $2a
    ld a, h                                       ; $7e99: $7c
    add hl, sp                                    ; $7e9a: $39
    ld c, c                                       ; $7e9b: $49
    dec b                                         ; $7e9c: $05
    sbc c                                         ; $7e9d: $99
    inc l                                         ; $7e9e: $2c
    or b                                          ; $7e9f: $b0
    or h                                          ; $7ea0: $b4
    ld h, l                                       ; $7ea1: $65
    rst $20                                       ; $7ea2: $e7
    dec e                                         ; $7ea3: $1d
    ld d, c                                       ; $7ea4: $51
    ld h, e                                       ; $7ea5: $63
    db $d3                                        ; $7ea6: $d3
    and a                                         ; $7ea7: $a7
    ld d, l                                       ; $7ea8: $55
    add l                                         ; $7ea9: $85
    ld d, d                                       ; $7eaa: $52
    ld h, $3c                                     ; $7eab: $26 $3c
    ld h, $1f                                     ; $7ead: $26 $1f
    pop bc                                        ; $7eaf: $c1
    ld c, $d3                                     ; $7eb0: $0e $d3
    adc c                                         ; $7eb2: $89
    ld a, [de]                                    ; $7eb3: $1a
    xor e                                         ; $7eb4: $ab
    adc [hl]                                      ; $7eb5: $8e
    rst $00                                       ; $7eb6: $c7
    ld l, [hl]                                    ; $7eb7: $6e
    ld a, [$1d15]                                 ; $7eb8: $fa $15 $1d
    ld d, d                                       ; $7ebb: $52
    inc d                                         ; $7ebc: $14
    cp $90                                        ; $7ebd: $fe $90
    or e                                          ; $7ebf: $b3
    ld sp, hl                                     ; $7ec0: $f9
    ld d, e                                       ; $7ec1: $53
    sbc $ea                                       ; $7ec2: $de $ea
    rst $08                                       ; $7ec4: $cf
    ld [hl], d                                    ; $7ec5: $72
    dec c                                         ; $7ec6: $0d
    ld h, h                                       ; $7ec7: $64
    ld sp, $20aa                                  ; $7ec8: $31 $aa $20
    adc h                                         ; $7ecb: $8c
    ld a, [hl]                                    ; $7ecc: $7e
    dec b                                         ; $7ecd: $05
    sbc [hl]                                      ; $7ece: $9e
    ld d, e                                       ; $7ecf: $53
    ld a, $85                                     ; $7ed0: $3e $85
    ccf                                           ; $7ed2: $3f
    add l                                         ; $7ed3: $85
    ld a, [hl-]                                   ; $7ed4: $3a
    rlca                                          ; $7ed5: $07
    dec b                                         ; $7ed6: $05
    ld d, c                                       ; $7ed7: $51
    ld d, e                                       ; $7ed8: $53
    ld l, e                                       ; $7ed9: $6b
    dec b                                         ; $7eda: $05
    xor l                                         ; $7edb: $ad
    pop bc                                        ; $7edc: $c1
    cp c                                          ; $7edd: $b9
    rst $20                                       ; $7ede: $e7
    xor c                                         ; $7edf: $a9
    cp c                                          ; $7ee0: $b9
    ld [bc], a                                    ; $7ee1: $02
    xor l                                         ; $7ee2: $ad
    ld b, c                                       ; $7ee3: $41
    and b                                         ; $7ee4: $a0
    adc e                                         ; $7ee5: $8b
    ld e, $02                                     ; $7ee6: $1e $02
    ld e, l                                       ; $7ee8: $5d
    ld l, d                                       ; $7ee9: $6a
    cp a                                          ; $7eea: $bf
    add hl, de                                    ; $7eeb: $19
    add c                                         ; $7eec: $81
    call nc, Call_042_661d                        ; $7eed: $d4 $1d $66
    ld e, b                                       ; $7ef0: $58
    call $e7b4                                    ; $7ef1: $cd $b4 $e7
    pop hl                                        ; $7ef4: $e1
    sbc a                                         ; $7ef5: $9f
    inc l                                         ; $7ef6: $2c
    add [hl]                                      ; $7ef7: $86
    ld [hl-], a                                   ; $7ef8: $32
    cp d                                          ; $7ef9: $ba
    or h                                          ; $7efa: $b4
    rst $38                                       ; $7efb: $ff
    ld [$4fab], a                                 ; $7efc: $ea $ab $4f
    db $dd                                        ; $7eff: $dd
    inc de                                        ; $7f00: $13
    add a                                         ; $7f01: $87
    ld a, [hl]                                    ; $7f02: $7e
    dec b                                         ; $7f03: $05
    ld l, l                                       ; $7f04: $6d
    ld c, e                                       ; $7f05: $4b
    or h                                          ; $7f06: $b4
    or e                                          ; $7f07: $b3
    adc c                                         ; $7f08: $89
    cp d                                          ; $7f09: $ba
    ret z                                         ; $7f0a: $c8

    jr nc, @+$25                                  ; $7f0b: $30 $23

    adc b                                         ; $7f0d: $88
    ld h, b                                       ; $7f0e: $60
    and a                                         ; $7f0f: $a7
    inc hl                                        ; $7f10: $23
    inc l                                         ; $7f11: $2c
    ld l, a                                       ; $7f12: $6f
    inc a                                         ; $7f13: $3c
    xor c                                         ; $7f14: $a9
    ld l, e                                       ; $7f15: $6b
    ld [hl], e                                    ; $7f16: $73
    ld a, [$d1e3]                                 ; $7f17: $fa $e3 $d1
    ld h, l                                       ; $7f1a: $65
    add c                                         ; $7f1b: $81
    ld b, l                                       ; $7f1c: $45
    ld e, l                                       ; $7f1d: $5d
    sub [hl]                                      ; $7f1e: $96
    ld l, e                                       ; $7f1f: $6b
    ld b, b                                       ; $7f20: $40
    sub a                                         ; $7f21: $97
    add d                                         ; $7f22: $82
    ret z                                         ; $7f23: $c8

    ld c, b                                       ; $7f24: $48
    xor d                                         ; $7f25: $aa
    ld c, e                                       ; $7f26: $4b
    pop de                                        ; $7f27: $d1
    cp a                                          ; $7f28: $bf
    or [hl]                                       ; $7f29: $b6
    ld l, a                                       ; $7f2a: $6f
    ld a, [$d134]                                 ; $7f2b: $fa $34 $d1
    ld a, b                                       ; $7f2e: $78
    ld d, $2a                                     ; $7f2f: $16 $2a
    ld a, h                                       ; $7f31: $7c
    add hl, sp                                    ; $7f32: $39

Jump_042_7f33:
    ld c, c                                       ; $7f33: $49

jr_042_7f34:
    dec b                                         ; $7f34: $05
    sbc c                                         ; $7f35: $99
    inc l                                         ; $7f36: $2c
    or b                                          ; $7f37: $b0
    or h                                          ; $7f38: $b4
    ld h, l                                       ; $7f39: $65
    rst $20                                       ; $7f3a: $e7
    dec e                                         ; $7f3b: $1d
    ld d, c                                       ; $7f3c: $51
    ld h, e                                       ; $7f3d: $63
    db $d3                                        ; $7f3e: $d3
    and a                                         ; $7f3f: $a7
    ld d, l                                       ; $7f40: $55
    add l                                         ; $7f41: $85
    ld d, d                                       ; $7f42: $52
    ld h, $3c                                     ; $7f43: $26 $3c
    ld h, $1f                                     ; $7f45: $26 $1f
    pop bc                                        ; $7f47: $c1
    ld c, $d3                                     ; $7f48: $0e $d3
    adc c                                         ; $7f4a: $89
    ld a, [de]                                    ; $7f4b: $1a
    xor e                                         ; $7f4c: $ab
    adc [hl]                                      ; $7f4d: $8e
    rst $00                                       ; $7f4e: $c7
    ld l, [hl]                                    ; $7f4f: $6e
    ld a, [$be15]                                 ; $7f50: $fa $15 $be
    inc de                                        ; $7f53: $13
    rst $20                                       ; $7f54: $e7

jr_042_7f55:
    ld b, a                                       ; $7f55: $47
    sbc h                                         ; $7f56: $9c
    ld b, a                                       ; $7f57: $47
    adc l                                         ; $7f58: $8d
    ld hl, sp-$30                                 ; $7f59: $f8 $d0
    rst $18                                       ; $7f5b: $df
    adc [hl]                                      ; $7f5c: $8e
    jp z, $7df4                                   ; $7f5d: $ca $f4 $7d

    rra                                           ; $7f60: $1f
    dec sp                                        ; $7f61: $3b
    inc d                                         ; $7f62: $14
    scf                                           ; $7f63: $37
    ld sp, hl                                     ; $7f64: $f9
    inc d                                         ; $7f65: $14
    ld [$ed9f], sp                                ; $7f66: $08 $9f $ed
    jp hl                                         ; $7f69: $e9


    ld d, a                                       ; $7f6a: $57
    sbc l                                         ; $7f6b: $9d
    ld e, $e4                                     ; $7f6c: $1e $e4
    ld [c], a                                     ; $7f6e: $e2
    and l                                         ; $7f6f: $a5
    ld h, e                                       ; $7f70: $63
    and a                                         ; $7f71: $a7
    adc e                                         ; $7f72: $8b
    rst $30                                       ; $7f73: $f7
    sbc c                                         ; $7f74: $99
    cpl                                           ; $7f75: $2f
    inc h                                         ; $7f76: $24
    inc d                                         ; $7f77: $14

Jump_042_7f78:
    inc c                                         ; $7f78: $0c
    cp d                                          ; $7f79: $ba
    inc c                                         ; $7f7a: $0c
    ld c, c                                       ; $7f7b: $49
    push bc                                       ; $7f7c: $c5
    add a                                         ; $7f7d: $87
    ld [hl+], a                                   ; $7f7e: $22
    ld c, h                                       ; $7f7f: $4c
    ld d, e                                       ; $7f80: $53
    xor $fb                                       ; $7f81: $ee $fb
    dec d                                         ; $7f83: $15
    ld l, l                                       ; $7f84: $6d
    jr c, jr_042_7fbe                             ; $7f85: $38 $37

    ld a, h                                       ; $7f87: $7c
    dec [hl]                                      ; $7f88: $35
    ld d, a                                       ; $7f89: $57
    dec e                                         ; $7f8a: $1d
    ld e, a                                       ; $7f8b: $5f
    sub [hl]                                      ; $7f8c: $96
    ld a, e                                       ; $7f8d: $7b
    add a                                         ; $7f8e: $87
    cp h                                          ; $7f8f: $bc
    xor b                                         ; $7f90: $a8
    scf                                           ; $7f91: $37
    add [hl]                                      ; $7f92: $86
    jr nz, jr_042_7f34                            ; $7f93: $20 $9f

    or d                                          ; $7f95: $b2
    ld a, h                                       ; $7f96: $7c
    add hl, hl                                    ; $7f97: $29
    and e                                         ; $7f98: $a3
    dec bc                                        ; $7f99: $0b
    db $fc                                        ; $7f9a: $fc
    cp d                                          ; $7f9b: $ba
    call nc, Call_042_661d                        ; $7f9c: $d4 $1d $66
    ld e, b                                       ; $7f9f: $58
    xor l                                         ; $7fa0: $ad
    ld [hl], h                                    ; $7fa1: $74
    ld c, b                                       ; $7fa2: $48
    ld d, c                                       ; $7fa3: $51
    ld a, b                                       ; $7fa4: $78
    ld [c], a                                     ; $7fa5: $e2
    and [hl]                                      ; $7fa6: $a6
    jr nc, jr_042_7f55                            ; $7fa7: $30 $ac

    sbc [hl]                                      ; $7fa9: $9e
    inc [hl]                                      ; $7faa: $34
    sub e                                         ; $7fab: $93
    add l                                         ; $7fac: $85
    ld a, [bc]                                    ; $7fad: $0a
    ld e, a                                       ; $7fae: $5f
    ld a, [hl]                                    ; $7faf: $7e
    rst $28                                       ; $7fb0: $ef
    adc a                                         ; $7fb1: $8f
    rst $20                                       ; $7fb2: $e7
    sub a                                         ; $7fb3: $97
    adc a                                         ; $7fb4: $8f
    cp d                                          ; $7fb5: $ba
    or h                                          ; $7fb6: $b4
    ld h, l                                       ; $7fb7: $65
    rst $20                                       ; $7fb8: $e7
    dec e                                         ; $7fb9: $1d
    ld d, c                                       ; $7fba: $51
    ld h, e                                       ; $7fbb: $63
    db $d3                                        ; $7fbc: $d3
    and a                                         ; $7fbd: $a7

jr_042_7fbe:
    ld d, l                                       ; $7fbe: $55
    add l                                         ; $7fbf: $85
    ld d, d                                       ; $7fc0: $52
    ld h, $3c                                     ; $7fc1: $26 $3c
    ld h, $9f                                     ; $7fc3: $26 $9f
    rst $08                                       ; $7fc5: $cf
    ld b, $f3                                     ; $7fc6: $06 $f3
    call nc, $015c                                ; $7fc8: $d4 $5c $01
    dec l                                         ; $7fcb: $2d
    rst $20                                       ; $7fcc: $e7
    push bc                                       ; $7fcd: $c5
    adc l                                         ; $7fce: $8d
    ld a, l                                       ; $7fcf: $7d
    ld a, [bc]                                    ; $7fd0: $0a
    adc l                                         ; $7fd1: $8d
    rrca                                          ; $7fd2: $0f
    ld b, l                                       ; $7fd3: $45
    pop hl                                        ; $7fd4: $e1
    ret                                           ; $7fd5: $c9


    ld [hl], d                                    ; $7fd6: $72
    cpl                                           ; $7fd7: $2f
    ld d, e                                       ; $7fd8: $53
    dec hl                                        ; $7fd9: $2b
    ld [hl], l                                    ; $7fda: $75
    ld b, [hl]                                    ; $7fdb: $46
    ld h, d                                       ; $7fdc: $62
    add a                                         ; $7fdd: $87
    ld [c], a                                     ; $7fde: $e2
    ld h, $1f                                     ; $7fdf: $26 $1f
    ld [de], a                                    ; $7fe1: $12
    ld a, [bc]                                    ; $7fe2: $0a
    add [hl]                                      ; $7fe3: $86
    ld [$a14a], sp                                ; $7fe4: $08 $4a $a1
    ld [hl-], a                                   ; $7fe7: $32
    db $fd                                        ; $7fe8: $fd
    ld a, [bc]                                    ; $7fe9: $0a
    ld [hl], l                                    ; $7fea: $75
    ld b, [hl]                                    ; $7feb: $46
    or d                                          ; $7fec: $b2
    ret nc                                        ; $7fed: $d0

    cp c                                          ; $7fee: $b9
    ret z                                         ; $7fef: $c8

    rla                                           ; $7ff0: $17
    scf                                           ; $7ff1: $37
    and d                                         ; $7ff2: $a2
    ld h, b                                       ; $7ff3: $60
    ld a, h                                       ; $7ff4: $7c
    add hl, sp                                    ; $7ff5: $39
    add hl, bc                                    ; $7ff6: $09
    jr @+$28                                      ; $7ff7: $18 $26

    db $d3                                        ; $7ff9: $d3
    xor a                                         ; $7ffa: $af
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
