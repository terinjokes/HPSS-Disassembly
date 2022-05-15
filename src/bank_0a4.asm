; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a4", ROMX[$4000], BANK[$a4]

    db $a4

    ld [hl], b                                    ; $4001: $70
    dec d                                         ; $4002: $15
    add e                                         ; $4003: $83
    ld c, $50                                     ; $4004: $0e $50
    nop                                           ; $4006: $00
    ld bc, $0170                                  ; $4007: $01 $70 $01
    ld bc, $0200                                  ; $400a: $01 $00 $02
    inc bc                                        ; $400d: $03
    ld [bc], a                                    ; $400e: $02
    inc bc                                        ; $400f: $03

jr_0a4_4010:
    nop                                           ; $4010: $00
    inc b                                         ; $4011: $04
    rlca                                          ; $4012: $07
    ld c, $0f                                     ; $4013: $0e $0f
    dec b                                         ; $4015: $05
    rlca                                          ; $4016: $07
    db $db                                        ; $4017: $db
    db $e4                                        ; $4018: $e4
    nop                                           ; $4019: $00
    sbc h                                         ; $401a: $9c
    db $e3                                        ; $401b: $e3
    ld c, c                                       ; $401c: $49
    rst $30                                       ; $401d: $f7
    sbc d                                         ; $401e: $9a
    rst $20                                       ; $401f: $e7
    dec a                                         ; $4020: $3d
    jp $bc00                                      ; $4021: $c3 $00 $bc


    ld b, e                                       ; $4024: $43
    ld c, $f1                                     ; $4025: $0e $f1
    ld e, a                                       ; $4027: $5f
    ldh [rP1], a                                  ; $4028: $e0 $00
    add b                                         ; $402a: $80
    inc b                                         ; $402b: $04
    ld b, b                                       ; $402c: $40
    ret nz                                        ; $402d: $c0

    jr nz, jr_0a4_4010                            ; $402e: $20 $e0

    ret nz                                        ; $4030: $c0

    ld bc, $6000                                  ; $4031: $01 $00 $60
    ldh [rSB], a                                  ; $4034: $e0 $01
    and b                                         ; $4036: $a0
    ld h, b                                       ; $4037: $60
    ld d, b                                       ; $4038: $50
    or b                                          ; $4039: $b0
    ld [bc], a                                    ; $403a: $02
    inc bc                                        ; $403b: $03
    rlca                                          ; $403c: $07
    ld bc, $0000                                  ; $403d: $01 $00 $00
    dec b                                         ; $4040: $05
    rlca                                          ; $4041: $07
    ld a, [bc]                                    ; $4042: $0a
    rrca                                          ; $4043: $0f
    inc c                                         ; $4044: $0c
    rrca                                          ; $4045: $0f
    ld e, c                                       ; $4046: $59
    ld e, a                                       ; $4047: $5f
    nop                                           ; $4048: $00
    or d                                          ; $4049: $b2
    cp l                                          ; $404a: $bd
    xor h                                         ; $404b: $ac
    di                                            ; $404c: $f3
    ld c, c                                       ; $404d: $49
    rst $30                                       ; $404e: $f7
    ldh [rIE], a                                  ; $404f: $e0 $ff
    nop                                           ; $4051: $00
    reti                                          ; $4052: $d9


    rst $20                                       ; $4053: $e7
    xor h                                         ; $4054: $ac
    db $d3                                        ; $4055: $d3
    ld e, $e1                                     ; $4056: $1e $e1
    dec a                                         ; $4058: $3d
    jp nz, $be00                                  ; $4059: $c2 $00 $be

    ld b, c                                       ; $405c: $41
    cp b                                          ; $405d: $b8
    ld hl, sp+$70                                 ; $405e: $f8 $70
    ldh a, [$e0]                                  ; $4060: $f0 $e0
    ldh [rP1], a                                  ; $4062: $e0 $00
    ret nc                                        ; $4064: $d0

    ret nc                                        ; $4065: $d0

    ldh [$e0], a                                  ; $4066: $e0 $e0
    ld d, b                                       ; $4068: $50
    ldh a, [$28]                                  ; $4069: $f0 $28
    ld hl, sp+$20                                 ; $406b: $f8 $20
    or h                                          ; $406d: $b4
    ld e, h                                       ; $406e: $5c
    ld [hl], b                                    ; $406f: $70
    ld c, b                                       ; $4070: $48
    ld [bc], a                                    ; $4071: $02
    ld [bc], a                                    ; $4072: $02
    dec b                                         ; $4073: $05
    dec b                                         ; $4074: $05
    ld l, c                                       ; $4075: $69
    nop                                           ; $4076: $00
    ld a, [hl]                                    ; $4077: $7e
    inc [hl]                                      ; $4078: $34
    ccf                                           ; $4079: $3f
    dec de                                        ; $407a: $1b
    rra                                           ; $407b: $1f
    ld e, $1f                                     ; $407c: $1e $1f
    dec a                                         ; $407e: $3d
    nop                                           ; $407f: $00
    ccf                                           ; $4080: $3f
    ld l, d                                       ; $4081: $6a
    ld a, a                                       ; $4082: $7f
    push de                                       ; $4083: $d5
    rst $38                                       ; $4084: $ff
    xor d                                         ; $4085: $aa
    rst $38                                       ; $4086: $ff
    ld e, a                                       ; $4087: $5f
    nop                                           ; $4088: $00
    and b                                         ; $4089: $a0
    ccf                                           ; $408a: $3f
    ret nz                                        ; $408b: $c0

    ld a, [bc]                                    ; $408c: $0a
    push af                                       ; $408d: $f5
    add h                                         ; $408e: $84
    ei                                            ; $408f: $fb
    ld e, $00                                     ; $4090: $1e $00
    pop hl                                        ; $4092: $e1
    cpl                                           ; $4093: $2f
    ret nc                                        ; $4094: $d0

    ld d, a                                       ; $4095: $57
    xor b                                         ; $4096: $a8
    xor a                                         ; $4097: $af
    ld d, b                                       ; $4098: $50
    ld e, d                                       ; $4099: $5a
    nop                                           ; $409a: $00
    xor [hl]                                      ; $409b: $ae
    rlca                                          ; $409c: $07
    rst $38                                       ; $409d: $ff
    ld d, [hl]                                    ; $409e: $56
    cp $bc                                        ; $409f: $fe $bc
    db $fc                                        ; $40a1: $fc
    cp h                                          ; $40a2: $bc
    ld bc, $147c                                  ; $40a3: $01 $7c $14
    db $fc                                        ; $40a6: $fc
    xor d                                         ; $40a7: $aa
    ld a, [hl]                                    ; $40a8: $7e
    ld d, l                                       ; $40a9: $55
    cp a                                          ; $40aa: $bf
    and d                                         ; $40ab: $a2
    jr jr_0a4_40ae                                ; $40ac: $18 $00

jr_0a4_40ae:
    inc bc                                        ; $40ae: $03
    inc bc                                        ; $40af: $03
    rrca                                          ; $40b0: $0f
    rrca                                          ; $40b1: $0f
    rla                                           ; $40b2: $17
    rla                                           ; $40b3: $17
    ld [bc], a                                    ; $40b4: $02
    inc bc                                        ; $40b5: $03
    nop                                           ; $40b6: $00
    dec b                                         ; $40b7: $05
    rlca                                          ; $40b8: $07
    ldh a, [rIE]                                  ; $40b9: $f0 $ff
    ld a, [$f1fd]                                 ; $40bb: $fa $fd $f1
    cp $00                                        ; $40be: $fe $00
    db $fc                                        ; $40c0: $fc
    rst $38                                       ; $40c1: $ff
    add sp, -$01                                  ; $40c2: $e8 $ff
    ld d, h                                       ; $40c4: $54
    ei                                            ; $40c5: $fb
    xor e                                         ; $40c6: $ab
    db $f4                                        ; $40c7: $f4
    nop                                           ; $40c8: $00
    ld b, a                                       ; $40c9: $47
    ld hl, sp+$7f                                 ; $40ca: $f8 $7f
    add b                                         ; $40cc: $80
    rst $38                                       ; $40cd: $ff
    nop                                           ; $40ce: $00
    ld a, e                                       ; $40cf: $7b
    add h                                         ; $40d0: $84
    nop                                           ; $40d1: $00
    or l                                          ; $40d2: $b5
    ld c, d                                       ; $40d3: $4a
    ld e, b                                       ; $40d4: $58
    and a                                         ; $40d5: $a7
    and c                                         ; $40d6: $a1
    ld e, a                                       ; $40d7: $5f
    ldh a, [rIF]                                  ; $40d8: $f0 $0f
    nop                                           ; $40da: $00
    db $fd                                        ; $40db: $fd
    ld [bc], a                                    ; $40dc: $02
    and d                                         ; $40dd: $a2
    ld e, a                                       ; $40de: $5f
    push de                                       ; $40df: $d5
    dec hl                                        ; $40e0: $2b
    ld [$0015], a                                 ; $40e1: $ea $15 $00
    ld b, b                                       ; $40e4: $40
    cp a                                          ; $40e5: $bf
    ld a, [bc]                                    ; $40e6: $0a
    rst $38                                       ; $40e7: $ff
    ld e, a                                       ; $40e8: $5f
    rst $38                                       ; $40e9: $ff
    rlca                                          ; $40ea: $07
    rst $38                                       ; $40eb: $ff
    nop                                           ; $40ec: $00
    ld d, e                                       ; $40ed: $53
    xor a                                         ; $40ee: $af
    ld [$0008], sp                                ; $40ef: $08 $08 $00
    ld [$0808], sp                                ; $40f2: $08 $08 $08
    nop                                           ; $40f5: $00
    db $10                                        ; $40f6: $10
    jr jr_0a4_4101                                ; $40f7: $18 $08

    db $10                                        ; $40f9: $10
    inc [hl]                                      ; $40fa: $34
    inc a                                         ; $40fb: $3c
    inc l                                         ; $40fc: $2c
    inc [hl]                                      ; $40fd: $34
    nop                                           ; $40fe: $00
    nop                                           ; $40ff: $00
    inc a                                         ; $4100: $3c

jr_0a4_4101:
    ld b, $07                                     ; $4101: $06 $07
    rrca                                          ; $4103: $0f
    rrca                                          ; $4104: $0f
    rra                                           ; $4105: $1f
    rra                                           ; $4106: $1f
    inc b                                         ; $4107: $04
    ld a, l                                       ; $4108: $7d
    ld a, a                                       ; $4109: $7f
    ld e, $1f                                     ; $410a: $1e $1f
    inc [hl]                                      ; $410c: $34
    add d                                         ; $410d: $82
    nop                                           ; $410e: $00
    db $fc                                        ; $410f: $fc
    rst $38                                       ; $4110: $ff
    nop                                           ; $4111: $00
    xor e                                         ; $4112: $ab
    call nc, $fa85                                ; $4113: $d4 $85 $fa
    ld a, [c]                                     ; $4116: $f2
    db $fd                                        ; $4117: $fd
    ld b, c                                       ; $4118: $41
    cp $20                                        ; $4119: $fe $20
    rla                                           ; $411b: $17
    add sp, $4a                                   ; $411c: $e8 $4a
    ld [$d42b], sp                                ; $411e: $08 $2b $d4
    xor [hl]                                      ; $4121: $ae
    or [hl]                                       ; $4122: $b6
    ld c, d                                       ; $4123: $4a
    nop                                           ; $4124: $00
    or $2c                                        ; $4125: $f6 $2c
    or $4a                                        ; $4127: $f6 $4a
    or $ed                                        ; $4129: $f6 $ed
    di                                            ; $412b: $f3
    ret c                                         ; $412c: $d8

    inc b                                         ; $412d: $04
    rst $20                                       ; $412e: $e7
    db $dd                                        ; $412f: $dd
    db $e3                                        ; $4130: $e3
    cp [hl]                                       ; $4131: $be
    pop bc                                        ; $4132: $c1
    inc l                                         ; $4133: $2c
    ld l, c                                       ; $4134: $69
    cp [hl]                                       ; $4135: $be
    cp a                                          ; $4136: $bf
    nop                                           ; $4137: $00
    ld e, a                                       ; $4138: $5f
    ld e, a                                       ; $4139: $5f
    rlca                                          ; $413a: $07
    rlca                                          ; $413b: $07
    ld c, $0e                                     ; $413c: $0e $0e
    inc b                                         ; $413e: $04
    inc b                                         ; $413f: $04
    add b                                         ; $4140: $80
    ld c, d                                       ; $4141: $4a
    add hl, de                                    ; $4142: $19
    sub l                                         ; $4143: $95
    ld [$fe61], a                                 ; $4144: $ea $61 $fe
    ret nc                                        ; $4147: $d0

    rst $38                                       ; $4148: $ff
    ld [$ff00], a                                 ; $4149: $ea $00 $ff
    db $fd                                        ; $414c: $fd
    rst $38                                       ; $414d: $ff
    ccf                                           ; $414e: $3f
    ccf                                           ; $414f: $3f
    inc de                                        ; $4150: $13
    inc de                                        ; $4151: $13
    inc b                                         ; $4152: $04
    inc b                                         ; $4153: $04

jr_0a4_4154:
    inc b                                         ; $4154: $04
    cp $01                                        ; $4155: $fe $01
    rst $38                                       ; $4157: $ff
    nop                                           ; $4158: $00
    ld [bc], a                                    ; $4159: $02
    ld [$a15e], sp                                ; $415a: $08 $5e $a1
    jr nz, jr_0a4_4154                            ; $415d: $20 $f5

    ld a, [bc]                                    ; $415f: $0a
    ld a, [bc]                                    ; $4160: $0a
    ld [$57a9], sp                                ; $4161: $08 $a9 $57
    di                                            ; $4164: $f3
    rrca                                          ; $4165: $0f
    push hl                                       ; $4166: $e5
    nop                                           ; $4167: $00
    rra                                           ; $4168: $1f
    add [hl]                                      ; $4169: $86
    ld a, a                                       ; $416a: $7f
    and d                                         ; $416b: $a2
    ld e, a                                       ; $416c: $5f
    ld d, h                                       ; $416d: $54
    xor a                                         ; $416e: $af
    cp $01                                        ; $416f: $fe $01
    rrca                                          ; $4171: $0f
    db $fd                                        ; $4172: $fd
    rlca                                          ; $4173: $07
    xor a                                         ; $4174: $af
    ld d, b                                       ; $4175: $50
    ld d, l                                       ; $4176: $55
    xor d                                         ; $4177: $aa
    ld hl, $0808                                  ; $4178: $21 $08 $08
    ld c, d                                       ; $417b: $4a
    rst $38                                       ; $417c: $ff
    and l                                         ; $417d: $a5
    rst $38                                       ; $417e: $ff
    ld bc, $aa08                                  ; $417f: $01 $08 $aa
    ld d, a                                       ; $4182: $57
    ld b, a                                       ; $4183: $47
    nop                                           ; $4184: $00
    cp a                                          ; $4185: $bf
    rrca                                          ; $4186: $0f
    rst $38                                       ; $4187: $ff
    ld d, l                                       ; $4188: $55
    rst $38                                       ; $4189: $ff
    cp d                                          ; $418a: $ba
    rst $38                                       ; $418b: $ff
    ld a, h                                       ; $418c: $7c
    nop                                           ; $418d: $00
    rst $38                                       ; $418e: $ff
    ld sp, hl                                     ; $418f: $f9
    rst $38                                       ; $4190: $ff
    ld a, [c]                                     ; $4191: $f2
    db $fd                                        ; $4192: $fd
    ld l, $36                                     ; $4193: $2e $36
    ld a, [bc]                                    ; $4195: $0a
    ld bc, $2c36                                  ; $4196: $01 $36 $2c
    ld [hl], $4a                                  ; $4199: $36 $4a
    halt                                          ; $419b: $76
    ld l, l                                       ; $419c: $6d
    ld [hl], e                                    ; $419d: $73
    add b                                         ; $419e: $80
    jr jr_0a4_41a1                                ; $419f: $18 $00

jr_0a4_41a1:
    rst $38                                       ; $41a1: $ff
    rst $38                                       ; $41a2: $ff
    adc e                                         ; $41a3: $8b
    rst $38                                       ; $41a4: $ff
    di                                            ; $41a5: $f3
    rst $08                                       ; $41a6: $cf
    sbc c                                         ; $41a7: $99
    rst $20                                       ; $41a8: $e7
    nop                                           ; $41a9: $00
    di                                            ; $41aa: $f3
    rst $08                                       ; $41ab: $cf
    reti                                          ; $41ac: $d9


    rst $20                                       ; $41ad: $e7
    ld d, d                                       ; $41ae: $52
    ld l, [hl]                                    ; $41af: $6e
    dec a                                         ; $41b0: $3d
    dec a                                         ; $41b1: $3d
    add b                                         ; $41b2: $80
    ret nc                                        ; $41b3: $d0

    ld [$0909], sp                                ; $41b4: $08 $09 $09
    inc de                                        ; $41b7: $13
    dec de                                        ; $41b8: $1b
    rrca                                          ; $41b9: $0f
    rla                                           ; $41ba: $17
    scf                                           ; $41bb: $37
    inc b                                         ; $41bc: $04
    ccf                                           ; $41bd: $3f

Jump_0a4_41be:
    ld l, $37                                     ; $41be: $2e $37
    ld bc, $f03f                                  ; $41c0: $01 $3f $f0
    ld e, b                                       ; $41c3: $58
    ld d, d                                       ; $41c4: $52
    xor a                                         ; $41c5: $af
    ld bc, $8080                                  ; $41c6: $01 $80 $80
    ld h, b                                       ; $41c9: $60
    ldh [$30], a                                  ; $41ca: $e0 $30

jr_0a4_41cc:
    ldh a, [$60]                                  ; $41cc: $f0 $60
    or d                                          ; $41ce: $b2
    ld bc, $8000                                  ; $41cf: $01 $00 $80
    add b                                         ; $41d2: $80

jr_0a4_41d3:
    ret nz                                        ; $41d3: $c0

    ret nz                                        ; $41d4: $c0

    and b                                         ; $41d5: $a0
    ldh [$2e], a                                  ; $41d6: $e0 $2e
    scf                                           ; $41d8: $37
    inc bc                                        ; $41d9: $03
    dec bc                                        ; $41da: $0b
    scf                                           ; $41db: $37
    dec l                                         ; $41dc: $2d
    scf                                           ; $41dd: $37
    ld c, e                                       ; $41de: $4b
    ld [hl], a                                    ; $41df: $77
    ld d, b                                       ; $41e0: $50
    jr z, jr_0a4_41d3                             ; $41e1: $28 $f0

    ld e, b                                       ; $41e3: $58
    dec b                                         ; $41e4: $05
    xor e                                         ; $41e5: $ab
    call nc, $57a9                                ; $41e6: $d4 $a9 $57
    ld a, [c]                                     ; $41e9: $f2
    and b                                         ; $41ea: $a0
    nop                                           ; $41eb: $00
    add a                                         ; $41ec: $87
    and b                                         ; $41ed: $a0
    nop                                           ; $41ee: $00
    ld bc, $af51                                  ; $41ef: $01 $51 $af
    ld a, [$fd05]                                 ; $41f2: $fa $05 $fd
    ld [bc], a                                    ; $41f5: $02
    dec d                                         ; $41f6: $15
    ret nc                                        ; $41f7: $d0

    nop                                           ; $41f8: $00
    ld b, b                                       ; $41f9: $40
    jr nc, jr_0a4_41cc                            ; $41fa: $30 $d0

    db $10                                        ; $41fc: $10
    ld a, a                                       ; $41fd: $7f
    rst $38                                       ; $41fe: $ff
    or e                                          ; $41ff: $b3
    ld [hl], e                                    ; $4200: $73
    ld d, h                                       ; $4201: $54
    or h                                          ; $4202: $b4
    db $10                                        ; $4203: $10
    xor b                                         ; $4204: $a8

Call_0a4_4205:
    ld d, a                                       ; $4205: $57
    ld b, c                                       ; $4206: $41
    ld c, h                                       ; $4207: $4c
    ld bc, $ff57                                  ; $4208: $01 $57 $ff
    cp l                                          ; $420b: $bd
    db $fd                                        ; $420c: $fd
    nop                                           ; $420d: $00
    ld a, h                                       ; $420e: $7c
    db $fc                                        ; $420f: $fc
    cp b                                          ; $4210: $b8
    cp b                                          ; $4211: $b8
    ld b, b                                       ; $4212: $40
    ld b, b                                       ; $4213: $40
    ld d, b                                       ; $4214: $50
    ldh a, [rP1]                                  ; $4215: $f0 $00
    xor b                                         ; $4217: $a8
    ld hl, sp-$2c                                 ; $4218: $f8 $d4
    db $fc                                        ; $421a: $fc
    ld a, [$fcfa]                                 ; $421b: $fa $fa $fc
    db $fc                                        ; $421e: $fc
    nop                                           ; $421f: $00

jr_0a4_4220:
    ld e, b                                       ; $4220: $58
    ld hl, sp+$2c                                 ; $4221: $f8 $2c
    db $fc                                        ; $4223: $fc
    ld e, h                                       ; $4224: $5c
    db $fc                                        ; $4225: $fc
    jr z, jr_0a4_4220                             ; $4226: $28 $f8

    nop                                           ; $4228: $00
    ld d, h                                       ; $4229: $54
    db $f4                                        ; $422a: $f4
    add sp, -$18                                  ; $422b: $e8 $e8
    ret nc                                        ; $422d: $d0

    ret nc                                        ; $422e: $d0

    and b                                         ; $422f: $a0
    and b                                         ; $4230: $a0
    jp nz, $1a5a                                  ; $4231: $c2 $5a $1a

    or b                                          ; $4234: $b0
    ld e, b                                       ; $4235: $58
    inc a                                         ; $4236: $3c
    inc a                                         ; $4237: $3c
    rst $38                                       ; $4238: $ff
    nop                                           ; $4239: $00
    ld [de], a                                    ; $423a: $12
    add hl, bc                                    ; $423b: $09
    call c, $2200                                 ; $423c: $dc $00 $22
    db $ec                                        ; $423f: $ec
    ld [hl-], a                                   ; $4240: $32
    push hl                                       ; $4241: $e5
    ld [hl-], a                                   ; $4242: $32
    jp hl                                         ; $4243: $e9


    ld [de], a                                    ; $4244: $12
    or c                                          ; $4245: $b1
    ld b, b                                       ; $4246: $40
    ret c                                         ; $4247: $d8

    ld e, $09                                     ; $4248: $1e $09
    ld a, a                                       ; $424a: $7f
    add b                                         ; $424b: $80
    ld [hl], a                                    ; $424c: $77
    adc h                                         ; $424d: $8c
    ld c, a                                       ; $424e: $4f
    xor b                                         ; $424f: $a8
    nop                                           ; $4250: $00
    rrca                                          ; $4251: $0f
    ld e, b                                       ; $4252: $58
    inc a                                         ; $4253: $3c
    inc de                                        ; $4254: $13
    add hl, de                                    ; $4255: $19
    inc sp                                        ; $4256: $33
    call Call_000_0068                            ; $4257: $cd $68 $00
    db $e4                                        ; $425a: $e4
    jr nc, @+$4a                                  ; $425b: $30 $48

    or b                                          ; $425d: $b0
    ld b, b                                       ; $425e: $40
    add b                                         ; $425f: $80
    sub h                                         ; $4260: $94
    ldh [rP1], a                                  ; $4261: $e0 $00
    ld [$f970], a                                 ; $4263: $ea $70 $f9
    ld a, $a2                                     ; $4266: $3e $a2
    ld e, l                                       ; $4268: $5d
    inc de                                        ; $4269: $13
    ld h, $00                                     ; $426a: $26 $00
    ld b, c                                       ; $426c: $41
    ld c, $17                                     ; $426d: $0e $17
    ld bc, $030d                                  ; $426f: $01 $0d $03
    ld d, e                                       ; $4272: $53

jr_0a4_4273:
    ld c, $00                                     ; $4273: $0e $00
    xor e                                         ; $4275: $ab
    ld e, $57                                     ; $4276: $1e $57
    cp h                                          ; $4278: $bc
    and l                                         ; $4279: $a5
    ld e, d                                       ; $427a: $5a
    rst $28                                       ; $427b: $ef
    nop                                           ; $427c: $00
    ld [hl+], a                                   ; $427d: $22
    db $dd                                        ; $427e: $dd
    ld [hl+], a                                   ; $427f: $22
    ld d, d                                       ; $4280: $52
    add hl, bc                                    ; $4281: $09
    ld d, a                                       ; $4282: $57
    adc b                                         ; $4283: $88
    rst $28                                       ; $4284: $ef
    ld e, b                                       ; $4285: $58
    ld bc, $a4dd                                  ; $4286: $01 $dd $a4
    ld e, h                                       ; $4289: $5c
    ld bc, $60fb                                  ; $428a: $01 $fb $60
    ld bc, $245b                                  ; $428d: $01 $5b $24
    ld h, [hl]                                    ; $4290: $66
    add hl, bc                                    ; $4291: $09
    rst $28                                       ; $4292: $ef
    nop                                           ; $4293: $00
    ld a, [bc]                                    ; $4294: $0a
    cp l                                          ; $4295: $bd
    ld b, d                                       ; $4296: $42
    or $08                                        ; $4297: $f6 $08
    nop                                           ; $4299: $00
    ld [bc], a                                    ; $429a: $02
    inc b                                         ; $429b: $04
    ld c, $18                                     ; $429c: $0e $18
    rst $30                                       ; $429e: $f7
    ld [$df00], sp                                ; $429f: $08 $00 $df
    jr nz, @+$01                                  ; $42a2: $20 $ff

    ld b, $00                                     ; $42a4: $06 $00
    rst $38                                       ; $42a6: $ff
    nop                                           ; $42a7: $00
    ld [hl], a                                    ; $42a8: $77
    and d                                         ; $42a9: $a2
    ld d, $00                                     ; $42aa: $16 $00
    ei                                            ; $42ac: $fb
    ld l, b                                       ; $42ad: $68
    nop                                           ; $42ae: $00
    rst $18                                       ; $42af: $df
    nop                                           ; $42b0: $00
    push af                                       ; $42b1: $f5
    jr z, @+$12                                   ; $42b2: $28 $10

    cp $03                                        ; $42b4: $fe $03
    nop                                           ; $42b6: $00
    cp e                                          ; $42b7: $bb
    nop                                           ; $42b8: $00
    rst $18                                       ; $42b9: $df
    nop                                           ; $42ba: $00
    or $34                                        ; $42bb: $f6 $34
    db $10                                        ; $42bd: $10
    ld e, $00                                     ; $42be: $1e $00
    and e                                         ; $42c0: $a3
    and d                                         ; $42c1: $a2
    ld bc, $2ebb                                  ; $42c2: $01 $bb $2e
    nop                                           ; $42c5: $00
    cp $00                                        ; $42c6: $fe $00
    xor l                                         ; $42c8: $ad
    xor h                                         ; $42c9: $ac
    ld bc, $1030                                  ; $42ca: $01 $30 $10

jr_0a4_42cd:
    cp e                                          ; $42cd: $bb
    ld e, b                                       ; $42ce: $58
    db $10                                        ; $42cf: $10
    ld a, a                                       ; $42d0: $7f
    inc h                                         ; $42d1: $24
    nop                                           ; $42d2: $00
    ld [hl], b                                    ; $42d3: $70
    nop                                           ; $42d4: $00
    ret nz                                        ; $42d5: $c0

    ld de, $2a57                                  ; $42d6: $11 $57 $2a
    db $10                                        ; $42d9: $10
    ld [hl], b                                    ; $42da: $70
    jr nc, jr_0a4_42cd                            ; $42db: $30 $f0

    call nc, Call_0a4_7011                        ; $42dd: $d4 $11 $70
    nop                                           ; $42e0: $00
    ld b, b                                       ; $42e1: $40
    jr @+$76                                      ; $42e2: $18 $74

    nop                                           ; $42e4: $00
    cp e                                          ; $42e5: $bb
    ld b, b                                       ; $42e6: $40
    rst $30                                       ; $42e7: $f7
    ld [$40ac], sp                                ; $42e8: $08 $ac $40
    nop                                           ; $42eb: $00
    db $10                                        ; $42ec: $10
    ld d, h                                       ; $42ed: $54
    ld [$1e7b], sp                                ; $42ee: $08 $7b $1e
    jr nz, jr_0a4_4273                            ; $42f1: $20 $80

    nop                                           ; $42f3: $00
    nop                                           ; $42f4: $00
    push af                                       ; $42f5: $f5
    ld d, [hl]                                    ; $42f6: $56
    ld [bc], a                                    ; $42f7: $02
    sbc b                                         ; $42f8: $98
    nop                                           ; $42f9: $00
    db $10                                        ; $42fa: $10
    ld [hl], b                                    ; $42fb: $70
    nop                                           ; $42fc: $00
    inc b                                         ; $42fd: $04
    ld [hl], b                                    ; $42fe: $70
    nop                                           ; $42ff: $00
    sbc h                                         ; $4300: $9c
    nop                                           ; $4301: $00
    rst $30                                       ; $4302: $f7
    nop                                           ; $4303: $00
    ld [$807f], sp                                ; $4304: $08 $7f $80
    rst $28                                       ; $4307: $ef
    db $10                                        ; $4308: $10
    db $fd                                        ; $4309: $fd
    ld [bc], a                                    ; $430a: $02
    ei                                            ; $430b: $fb
    inc c                                         ; $430c: $0c
    inc b                                         ; $430d: $04
    ld l, a                                       ; $430e: $6f
    sub b                                         ; $430f: $90
    db $fd                                        ; $4310: $fd
    inc e                                         ; $4311: $1c
    nop                                           ; $4312: $00
    ret nz                                        ; $4313: $c0

    nop                                           ; $4314: $00
    inc b                                         ; $4315: $04
    db $dd                                        ; $4316: $dd
    nop                                           ; $4317: $00
    ld h, [hl]                                    ; $4318: $66
    and $32                                       ; $4319: $e6 $32
    pop af                                        ; $431b: $f1
    ld a, [de]                                    ; $431c: $1a
    and l                                         ; $431d: $a5
    ret nz                                        ; $431e: $c0

    ret nc                                        ; $431f: $d0

    nop                                           ; $4320: $00
    ld a, b                                       ; $4321: $78
    ld a, [$ef1d]                                 ; $4322: $fa $1d $ef
    db $10                                        ; $4325: $10
    rst $08                                       ; $4326: $cf
    db $10                                        ; $4327: $10
    sbc c                                         ; $4328: $99
    nop                                           ; $4329: $00

jr_0a4_432a:
    ld [hl], $b3                                  ; $432a: $36 $b3
    inc h                                         ; $432c: $24
    rlca                                          ; $432d: $07
    ld l, $4c                                     ; $432e: $2e $4c
    dec e                                         ; $4330: $1d
    dec bc                                        ; $4331: $0b
    nop                                           ; $4332: $00
    rlca                                          ; $4333: $07
    xor a                                         ; $4334: $af
    ld e, h                                       ; $4335: $5c
    rst $28                                       ; $4336: $ef
    db $10                                        ; $4337: $10
    rst $18                                       ; $4338: $df
    jr nz, jr_0a4_4344                            ; $4339: $20 $09

    nop                                           ; $433b: $00
    and [hl]                                      ; $433c: $a6
    db $e3                                        ; $433d: $e3
    ld b, h                                       ; $433e: $44
    dec hl                                        ; $433f: $2b
    and $84                                       ; $4340: $e6 $84
    dec l                                         ; $4342: $2d
    add e                                         ; $4343: $83

jr_0a4_4344:
    ld [bc], a                                    ; $4344: $02
    rst $28                                       ; $4345: $ef
    rst $08                                       ; $4346: $cf
    ld a, h                                       ; $4347: $7c
    rst $30                                       ; $4348: $f7
    ld [$ecdb], sp                                ; $4349: $08 $db $ec
    db $10                                        ; $434c: $10
    cp l                                          ; $434d: $bd
    nop                                           ; $434e: $00
    ld b, d                                       ; $434f: $42
    rst $28                                       ; $4350: $ef
    db $10                                        ; $4351: $10
    rst $38                                       ; $4352: $ff
    nop                                           ; $4353: $00
    ld a, l                                       ; $4354: $7d
    add d                                         ; $4355: $82
    rst $28                                       ; $4356: $ef
    jr jr_0a4_4369                                ; $4357: $18 $10

    cp [hl]                                       ; $4359: $be
    ld b, c                                       ; $435a: $41
    ld d, [hl]                                    ; $435b: $56
    ld [$0a66], sp                                ; $435c: $08 $66 $0a
    rst $18                                       ; $435f: $df
    jr nz, @-$03                                  ; $4360: $20 $fb

    jr jr_0a4_4368                                ; $4362: $18 $04

    cp e                                          ; $4364: $bb
    ld b, h                                       ; $4365: $44
    ld [hl], b                                    ; $4366: $70
    ld a, [bc]                                    ; $4367: $0a

jr_0a4_4368:
    inc h                                         ; $4368: $24

jr_0a4_4369:
    jr jr_0a4_432a                                ; $4369: $18 $bf

    ld b, b                                       ; $436b: $40
    db $fd                                        ; $436c: $fd
    ld a, [bc]                                    ; $436d: $0a
    ld [bc], a                                    ; $436e: $02
    rst $30                                       ; $436f: $f7
    ld c, d                                       ; $4370: $4a
    rst $38                                       ; $4371: $ff
    ld [hl], b                                    ; $4372: $70
    ld [$7022], sp                                ; $4373: $08 $22 $70
    nop                                           ; $4376: $00
    sub c                                         ; $4377: $91
    add b                                         ; $4378: $80
    adc d                                         ; $4379: $8a
    ld [bc], a                                    ; $437a: $02
    ld [$42bd], sp                                ; $437b: $08 $bd $42
    rst $30                                       ; $437e: $f7
    ld [$40bf], sp                                ; $437f: $08 $bf $40
    ret nz                                        ; $4382: $c0

    ld [hl+], a                                   ; $4383: $22
    jr jr_0a4_438e                                ; $4384: $18 $08

    ld [$04fb], sp                                ; $4386: $08 $fb $04
    rst $28                                       ; $4389: $ef
    db $10                                        ; $438a: $10
    ld a, l                                       ; $438b: $7d
    add d                                         ; $438c: $82
    add l                                         ; $438d: $85

jr_0a4_438e:
    and h                                         ; $438e: $a4
    ld a, [bc]                                    ; $438f: $0a
    db $dd                                        ; $4390: $dd
    ld [hl+], a                                   ; $4391: $22
    or [hl]                                       ; $4392: $b6
    ld c, c                                       ; $4393: $49
    ld e, b                                       ; $4394: $58
    ld [$20ff], sp                                ; $4395: $08 $ff $20
    jr jr_0a4_440b                                ; $4398: $18 $71

    dec h                                         ; $439a: $25
    cp b                                          ; $439b: $b8
    ld [bc], a                                    ; $439c: $02

jr_0a4_439d:
    ld a, $01                                     ; $439d: $3e $01
    jr nz, @+$22                                  ; $439f: $20 $20

    jr nz, @+$01                                  ; $43a1: $20 $ff

    ld de, $1820                                  ; $43a3: $11 $20 $18
    jr nz, @+$01                                  ; $43a6: $20 $ff

    inc b                                         ; $43a8: $04
    ld [hl], b                                    ; $43a9: $70
    nop                                           ; $43aa: $00
    jr nz, @-$07                                  ; $43ab: $20 $f7

    ld [$11ef], sp                                ; $43ad: $08 $ef $11
    and h                                         ; $43b0: $a4
    ret c                                         ; $43b1: $d8

    ld [bc], a                                    ; $43b2: $02
    db $10                                        ; $43b3: $10
    ld [hl], b                                    ; $43b4: $70
    jr nz, jr_0a4_43bf                            ; $43b5: $20 $08

    ei                                            ; $43b7: $fb
    halt                                          ; $43b8: $76
    ld [$bf04], sp                                ; $43b9: $08 $04 $bf

Jump_0a4_43bc:
    ld b, b                                       ; $43bc: $40
    ld c, b                                       ; $43bd: $48
    ld [hl], b                                    ; $43be: $70

jr_0a4_43bf:
    nop                                           ; $43bf: $00
    ld [$21df], sp                                ; $43c0: $08 $df $21
    rst $38                                       ; $43c3: $ff
    ld [bc], a                                    ; $43c4: $02
    rst $38                                       ; $43c5: $ff

jr_0a4_43c6:
    db $10                                        ; $43c6: $10
    jr nz, jr_0a4_43c6                            ; $43c7: $20 $fd

    ld [bc], a                                    ; $43c9: $02
    ld [hl+], a                                   ; $43ca: $22
    nop                                           ; $43cb: $00
    jr nz, jr_0a4_444b                            ; $43cc: $20 $7d

    sub d                                         ; $43ce: $92
    rst $38                                       ; $43cf: $ff
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    db $e3                                        ; $43d2: $e3
    inc e                                         ; $43d3: $1c
    push af                                       ; $43d4: $f5
    ld [de], a                                    ; $43d5: $12
    ld a, [$f411]                                 ; $43d6: $fa $11 $f4
    ld bc, $fc19                                  ; $43d9: $01 $19 $fc
    add hl, de                                    ; $43dc: $19
    add $3d                                       ; $43dd: $c6 $3d
    ret z                                         ; $43df: $c8

    daa                                           ; $43e0: $27
    ld c, $0b                                     ; $43e1: $0e $0b
    nop                                           ; $43e3: $00
    pop af                                        ; $43e4: $f1
    ld c, $cb                                     ; $43e5: $0e $cb
    ld [hl-], a                                   ; $43e7: $32
    and a                                         ; $43e8: $a7
    ld b, d                                       ; $43e9: $42
    rst $08                                       ; $43ea: $cf
    add h                                         ; $43eb: $84
    nop                                           ; $43ec: $00
    sbc a                                         ; $43ed: $9f
    adc b                                         ; $43ee: $88
    xor a                                         ; $43ef: $af
    sbc b                                         ; $43f0: $98
    jr jr_0a4_4412                                ; $43f1: $18 $1f

    dec d                                         ; $43f3: $15
    ld e, $00                                     ; $43f4: $1e $00
    dec de                                        ; $43f6: $1b
    ld e, h                                       ; $43f7: $5c
    db $10                                        ; $43f8: $10
    rra                                           ; $43f9: $1f
    scf                                           ; $43fa: $37
    dec a                                         ; $43fb: $3d
    jr jr_0a4_439d                                ; $43fc: $18 $9f

    nop                                           ; $43fe: $00
    ld d, h                                       ; $43ff: $54
    ld e, a                                       ; $4400: $5f
    ld sp, $8b3e                                  ; $4401: $31 $3e $8b
    rst $38                                       ; $4404: $ff
    dec d                                         ; $4405: $15
    rst $38                                       ; $4406: $ff
    nop                                           ; $4407: $00
    add b                                         ; $4408: $80
    rst $38                                       ; $4409: $ff
    ld d, c                                       ; $440a: $51

jr_0a4_440b:
    cp $a2                                        ; $440b: $fe $a2
    db $fd                                        ; $440d: $fd
    call $00f2                                    ; $440e: $cd $f2 $00
    sub a                                         ; $4411: $97

jr_0a4_4412:
    add sp, -$51                                  ; $4412: $e8 $af
    ret nc                                        ; $4414: $d0

    adc a                                         ; $4415: $8f
    rst $38                                       ; $4416: $ff
    rla                                           ; $4417: $17
    rst $28                                       ; $4418: $ef
    nop                                           ; $4419: $00
    dec hl                                        ; $441a: $2b
    rst $10                                       ; $441b: $d7
    ld a, c                                       ; $441c: $79
    add a                                         ; $441d: $87
    db $f4                                        ; $441e: $f4
    dec bc                                        ; $441f: $0b
    jp hl                                         ; $4420: $e9


    rla                                           ; $4421: $17
    nop                                           ; $4422: $00
    db $d3                                        ; $4423: $d3
    cpl                                           ; $4424: $2f
    and a                                         ; $4425: $a7
    ld e, a                                       ; $4426: $5f
    db $10                                        ; $4427: $10
    rra                                           ; $4428: $1f
    ld a, [hl-]                                   ; $4429: $3a
    dec a                                         ; $442a: $3d
    nop                                           ; $442b: $00
    ld de, $9a1e                                  ; $442c: $11 $1e $9a
    sbc l                                         ; $442f: $9d
    ld de, $351e                                  ; $4430: $11 $1e $35
    ld a, $00                                     ; $4433: $3e $00
    jr jr_0a4_4496                                ; $4435: $18 $5f

    ld sp, $963f                                  ; $4437: $31 $3f $96
    jp hl                                         ; $443a: $e9


    pop bc                                        ; $443b: $c1
    cp $10                                        ; $443c: $fe $10
    and b                                         ; $443e: $a0
    rst $38                                       ; $443f: $ff
    call nc, $0372                                ; $4440: $d4 $72 $03
    rst $10                                       ; $4443: $d7
    rst $38                                       ; $4444: $ff
    xor b                                         ; $4445: $a8
    rst $38                                       ; $4446: $ff
    nop                                           ; $4447: $00
    pop bc                                        ; $4448: $c1
    cp $c9                                        ; $4449: $fe $c9

jr_0a4_444b:
    ccf                                           ; $444b: $3f
    sub b                                         ; $444c: $90
    ld a, a                                       ; $444d: $7f
    dec b                                         ; $444e: $05
    rst $38                                       ; $444f: $ff
    inc b                                         ; $4450: $04
    dec hl                                        ; $4451: $2b
    rst $38                                       ; $4452: $ff
    ld [hl], a                                    ; $4453: $77
    rst $38                                       ; $4454: $ff
    db $dd                                        ; $4455: $dd
    ld b, $00                                     ; $4456: $06 $00
    ld b, l                                       ; $4458: $45
    cp a                                          ; $4459: $bf
    nop                                           ; $445a: $00
    dec d                                         ; $445b: $15
    rra                                           ; $445c: $1f
    add hl, sp                                    ; $445d: $39
    ccf                                           ; $445e: $3f
    ld d, $1f                                     ; $445f: $16 $1f
    ld a, [de]                                    ; $4461: $1a
    rra                                           ; $4462: $1f
    nop                                           ; $4463: $00
    dec e                                         ; $4464: $1d
    ld e, $99                                     ; $4465: $1e $99
    sbc [hl]                                      ; $4467: $9e
    ld [de], a                                    ; $4468: $12
    dec e                                         ; $4469: $1d
    ld e, c                                       ; $446a: $59
    ld e, [hl]                                    ; $446b: $5e
    nop                                           ; $446c: $00
    adc d                                         ; $446d: $8a
    push af                                       ; $446e: $f5
    ld d, a                                       ; $446f: $57
    add sp, -$76                                  ; $4470: $e8 $8a
    push af                                       ; $4472: $f5
    ld c, c                                       ; $4473: $49
    cp $00                                        ; $4474: $fe $00
    sub d                                         ; $4476: $92
    rst $38                                       ; $4477: $ff
    ret z                                         ; $4478: $c8

    rst $30                                       ; $4479: $f7
    sub l                                         ; $447a: $95
    ld [$e01f], a                                 ; $447b: $ea $1f $e0
    nop                                           ; $447e: $00
    xor e                                         ; $447f: $ab
    ld e, a                                       ; $4480: $5f
    push af                                       ; $4481: $f5
    rrca                                          ; $4482: $0f
    db $e3                                        ; $4483: $e3
    rra                                           ; $4484: $1f
    ld [hl], l                                    ; $4485: $75
    adc a                                         ; $4486: $8f
    nop                                           ; $4487: $00
    or d                                          ; $4488: $b2
    ld c, a                                       ; $4489: $4f
    add hl, hl                                    ; $448a: $29
    rst $10                                       ; $448b: $d7
    ld de, $abef                                  ; $448c: $11 $ef $ab
    ld a, a                                       ; $448f: $7f
    nop                                           ; $4490: $00
    ld de, $1a1f                                  ; $4491: $11 $1f $1a
    dec e                                         ; $4494: $1d
    dec d                                         ; $4495: $15

jr_0a4_4496:
    ld e, [hl]                                    ; $4496: $5e
    jr jr_0a4_44b8                                ; $4497: $18 $1f

    nop                                           ; $4499: $00
    ld de, $161e                                  ; $449a: $11 $1e $16
    sbc l                                         ; $449d: $9d
    ld sp, $183e                                  ; $449e: $31 $3e $18
    rra                                           ; $44a1: $1f
    nop                                           ; $44a2: $00
    rrca                                          ; $44a3: $0f
    ldh a, [$95]                                  ; $44a4: $f0 $95
    ld [$ffd0], a                                 ; $44a6: $ea $d0 $ff
    ld l, d                                       ; $44a9: $6a
    rst $38                                       ; $44aa: $ff
    inc b                                         ; $44ab: $04
    add e                                         ; $44ac: $83
    db $fc                                        ; $44ad: $fc
    push bc                                       ; $44ae: $c5
    ld a, [$68a8]                                 ; $44af: $fa $a8 $68
    nop                                           ; $44b2: $00
    rst $10                                       ; $44b3: $d7
    ccf                                           ; $44b4: $3f
    nop                                           ; $44b5: $00
    ld l, l                                       ; $44b6: $6d
    sbc a                                         ; $44b7: $9f

jr_0a4_44b8:
    ld [hl-], a                                   ; $44b8: $32
    rst $08                                       ; $44b9: $cf
    ld bc, $d3ff                                  ; $44ba: $01 $ff $d3
    ccf                                           ; $44bd: $3f
    nop                                           ; $44be: $00
    push hl                                       ; $44bf: $e5
    rra                                           ; $44c0: $1f
    or d                                          ; $44c1: $b2
    ld c, a                                       ; $44c2: $4f
    ld h, l                                       ; $44c3: $65
    sbc a                                         ; $44c4: $9f
    pop bc                                        ; $44c5: $c1
    cp $00                                        ; $44c6: $fe $00
    sub e                                         ; $44c8: $93
    db $fc                                        ; $44c9: $fc
    pop bc                                        ; $44ca: $c1
    cp $82                                        ; $44cb: $fe $82
    db $fd                                        ; $44cd: $fd
    pop de                                        ; $44ce: $d1
    cp $00                                        ; $44cf: $fe $00
    add e                                         ; $44d1: $83
    db $fd                                        ; $44d2: $fd
    pop bc                                        ; $44d3: $c1
    cp $83                                        ; $44d4: $fe $83
    db $fc                                        ; $44d6: $fc
    ld [hl], l                                    ; $44d7: $75
    xor a                                         ; $44d8: $af
    nop                                           ; $44d9: $00
    cp [hl]                                       ; $44da: $be
    ld b, l                                       ; $44db: $45
    push af                                       ; $44dc: $f5
    ld c, $ee                                     ; $44dd: $0e $ee
    ld d, a                                       ; $44df: $57
    call Call_000_003f                            ; $44e0: $cd $3f $00
    call $9f37                                    ; $44e3: $cd $37 $9f
    ld l, a                                       ; $44e6: $6f
    ld a, l                                       ; $44e7: $7d
    sbc a                                         ; $44e8: $9f
    ld d, l                                       ; $44e9: $55
    ei                                            ; $44ea: $fb
    nop                                           ; $44eb: $00
    xor c                                         ; $44ec: $a9
    cp $75                                        ; $44ed: $fe $75
    rst $38                                       ; $44ef: $ff
    ld a, [$bfff]                                 ; $44f0: $fa $ff $bf
    rst $38                                       ; $44f3: $ff
    jr @+$01                                      ; $44f4: $18 $ff

    ld a, a                                       ; $44f6: $7f
    rst $10                                       ; $44f7: $d7
    ld b, $08                                     ; $44f8: $06 $08
    adc b                                         ; $44fa: $88
    inc b                                         ; $44fb: $04
    dec bc                                        ; $44fc: $0b
    rst $38                                       ; $44fd: $ff
    and b                                         ; $44fe: $a0
    and b                                         ; $44ff: $a0
    ld [c], a                                     ; $4500: $e2
    inc bc                                        ; $4501: $03
    ei                                            ; $4502: $fb
    ldh a, [rNR13]                                ; $4503: $f0 $13
    pop hl                                        ; $4505: $e1
    sbc $83                                       ; $4506: $de $83
    db $fc                                        ; $4508: $fc
    ret                                           ; $4509: $c9


    adc b                                         ; $450a: $88
    jr c, jr_0a4_450d                             ; $450b: $38 $00

jr_0a4_450d:
    ret                                           ; $450d: $c9


jr_0a4_450e:
    or $82                                        ; $450e: $f6 $82
    ld b, b                                       ; $4510: $40
    nop                                           ; $4511: $00
    sub e                                         ; $4512: $93
    db $fc                                        ; $4513: $fc
    adc $00                                       ; $4514: $ce $00
    ccf                                           ; $4516: $3f
    cp c                                          ; $4517: $b9
    rst $18                                       ; $4518: $df
    sub $3d                                       ; $4519: $d6 $3d
    ld a, e                                       ; $451b: $7b
    cp h                                          ; $451c: $bc
    pop af                                        ; $451d: $f1
    nop                                           ; $451e: $00
    ld e, $da                                     ; $451f: $1e $da
    dec a                                         ; $4521: $3d
    db $f4                                        ; $4522: $f4
    ld e, a                                       ; $4523: $5f
    ld a, d                                       ; $4524: $7a
    cp a                                          ; $4525: $bf
    rst $30                                       ; $4526: $f7
    add b                                         ; $4527: $80
    cp b                                          ; $4528: $b8
    inc b                                         ; $4529: $04
    cp l                                          ; $452a: $bd
    rst $38                                       ; $452b: $ff
    ld l, a                                       ; $452c: $6f
    rst $38                                       ; $452d: $ff
    cp a                                          ; $452e: $bf
    ld a, a                                       ; $452f: $7f
    rst $18                                       ; $4530: $df
    dec b                                         ; $4531: $05
    ccf                                           ; $4532: $3f
    ld l, a                                       ; $4533: $6f
    sbc a                                         ; $4534: $9f
    sub e                                         ; $4535: $93
    rst $28                                       ; $4536: $ef
    ld b, d                                       ; $4537: $42
    ld [$80ff], sp                                ; $4538: $08 $ff $80
    inc bc                                        ; $453b: $03
    ld bc, $dfa0                                  ; $453c: $01 $a0 $df
    call nc, $eafb                                ; $453f: $d4 $fb $ea
    db $fd                                        ; $4542: $fd
    db $fd                                        ; $4543: $fd
    ld a, [c]                                     ; $4544: $f2
    nop                                           ; $4545: $00
    call nz, Call_000_0080                        ; $4546: $c4 $80 $00
    sbc [hl]                                      ; $4549: $9e
    nop                                           ; $454a: $00
    pop de                                        ; $454b: $d1
    xor $8a                                       ; $454c: $ee $8a
    add b                                         ; $454e: $80
    nop                                           ; $454f: $00
    add d                                         ; $4550: $82
    db $fd                                        ; $4551: $fd
    nop                                           ; $4552: $00
    push de                                       ; $4553: $d5
    ccf                                           ; $4554: $3f
    ld a, [$751f]                                 ; $4555: $fa $1f $75
    cp e                                          ; $4558: $bb
    sbc d                                         ; $4559: $9a
    ld a, l                                       ; $455a: $7d
    nop                                           ; $455b: $00
    db $ed                                        ; $455c: $ed
    rra                                           ; $455d: $1f
    jp z, $ad3f                                   ; $455e: $ca $3f $ad

    ld e, a                                       ; $4561: $5f
    ret c                                         ; $4562: $d8

    cpl                                           ; $4563: $2f
    nop                                           ; $4564: $00
    ld b, h                                       ; $4565: $44
    ei                                            ; $4566: $fb
    xor b                                         ; $4567: $a8
    rst $38                                       ; $4568: $ff
    push de                                       ; $4569: $d5
    rst $38                                       ; $456a: $ff
    ld a, [$017f]                                 ; $456b: $fa $7f $01
    cp a                                          ; $456e: $bf
    rst $38                                       ; $456f: $ff
    rst $18                                       ; $4570: $df
    ld a, a                                       ; $4571: $7f
    rst $30                                       ; $4572: $f7
    rst $38                                       ; $4573: $ff
    rst $18                                       ; $4574: $df
    ld h, h                                       ; $4575: $64
    inc b                                         ; $4576: $04
    ccf                                           ; $4577: $3f
    cp a                                          ; $4578: $bf
    ld a, a                                       ; $4579: $7f
    add b                                         ; $457a: $80
    jr jr_0a4_450e                                ; $457b: $18 $91

    nop                                           ; $457d: $00
    ld [hl], d                                    ; $457e: $72
    inc b                                         ; $457f: $04
    or h                                          ; $4580: $b4
    ld [$0884], sp                                ; $4581: $08 $84 $08
    cp h                                          ; $4584: $bc
    ld [$c100], sp                                ; $4585: $08 $00 $c1
    cp $8b                                        ; $4588: $fe $8b
    db $f4                                        ; $458a: $f4
    db $ed                                        ; $458b: $ed
    sbc [hl]                                      ; $458c: $9e
    jp hl                                         ; $458d: $e9


    ld e, $00                                     ; $458e: $1e $00
    xor h                                         ; $4590: $ac
    ld e, a                                       ; $4591: $5f
    ld [hl], l                                    ; $4592: $75
    xor a                                         ; $4593: $af
    xor $1f                                       ; $4594: $ee $1f
    ld d, a                                       ; $4596: $57
    xor a                                         ; $4597: $af
    nop                                           ; $4598: $00
    rst $28                                       ; $4599: $ef
    sbc e                                         ; $459a: $9b
    sub $2f                                       ; $459b: $d6 $2f
    ld a, a                                       ; $459d: $7f
    rst $38                                       ; $459e: $ff
    sbc a                                         ; $459f: $9f
    ld a, a                                       ; $45a0: $7f
    ld bc, $9f67                                  ; $45a1: $01 $67 $9f
    dec d                                         ; $45a4: $15
    db $eb                                        ; $45a5: $eb
    add c                                         ; $45a6: $81
    cp $54                                        ; $45a7: $fe $54
    sub $14                                       ; $45a9: $d6 $14
    ld [bc], a                                    ; $45ab: $02
    ld c, e                                       ; $45ac: $4b
    rst $38                                       ; $45ad: $ff
    and h                                         ; $45ae: $a4
    ei                                            ; $45af: $fb
    pop af                                        ; $45b0: $f1
    cp $de                                        ; $45b1: $fe $de
    inc b                                         ; $45b3: $04
    rst $38                                       ; $45b4: $ff
    db $10                                        ; $45b5: $10
    daa                                           ; $45b6: $27
    rst $18                                       ; $45b7: $df
    add b                                         ; $45b8: $80
    xor b                                         ; $45b9: $a8
    inc b                                         ; $45ba: $04
    ld [hl-], a                                   ; $45bb: $32
    dec a                                         ; $45bc: $3d
    add hl, de                                    ; $45bd: $19
    ld e, $00                                     ; $45be: $1e $00
    ld [hl-], a                                   ; $45c0: $32
    ld a, l                                       ; $45c1: $7d
    add hl, de                                    ; $45c2: $19
    rra                                           ; $45c3: $1f
    dec d                                         ; $45c4: $15
    rra                                           ; $45c5: $1f
    add hl, de                                    ; $45c6: $19
    ccf                                           ; $45c7: $3f
    nop                                           ; $45c8: $00
    ld e, $1f                                     ; $45c9: $1e $1f
    sbc d                                         ; $45cb: $9a
    sbc a                                         ; $45cc: $9f
    ld a, [$efff]                                 ; $45cd: $fa $ff $ef
    rst $38                                       ; $45d0: $ff
    ld b, b                                       ; $45d1: $40
    db $f4                                        ; $45d2: $f4
    adc d                                         ; $45d3: $8a
    ld de, $f58a                                  ; $45d4: $11 $8a $f5
    rst $10                                       ; $45d7: $d7
    add sp, -$71                                  ; $45d8: $e8 $8f
    ldh a, [rLCDC]                                ; $45da: $f0 $40
    adc e                                         ; $45dc: $8b
    sbc b                                         ; $45dd: $98
    ld bc, $ff2b                                  ; $45de: $01 $2b $ff
    sub l                                         ; $45e1: $95
    ld a, a                                       ; $45e2: $7f
    ld b, e                                       ; $45e3: $43
    cp a                                          ; $45e4: $bf
    nop                                           ; $45e5: $00
    ld sp, hl                                     ; $45e6: $f9
    rlca                                          ; $45e7: $07
    db $fd                                        ; $45e8: $fd
    inc bc                                        ; $45e9: $03
    ld sp, hl                                     ; $45ea: $f9
    rlca                                          ; $45eb: $07
    dec d                                         ; $45ec: $15
    ld e, $00                                     ; $45ed: $1e $00
    ld e, d                                       ; $45ef: $5a
    ld e, l                                       ; $45f0: $5d
    ld de, $191e                                  ; $45f1: $11 $1e $19
    ld e, $1a                                     ; $45f4: $1e $1a
    ld e, l                                       ; $45f6: $5d
    nop                                           ; $45f7: $00
    dec e                                         ; $45f8: $1d
    ld e, $1a                                     ; $45f9: $1e $1a
    dec e                                         ; $45fb: $1d
    inc [hl]                                      ; $45fc: $34
    ccf                                           ; $45fd: $3f
    rra                                           ; $45fe: $1f
    ldh [rSC], a                                  ; $45ff: $e0 $02
    ld c, e                                       ; $4601: $4b
    db $f4                                        ; $4602: $f4
    add l                                         ; $4603: $85
    ld a, [$fdca]                                 ; $4604: $fa $ca $fd
    call nz, $aa09                                ; $4607: $c4 $09 $aa
    add b                                         ; $460a: $80
    dec hl                                        ; $460b: $2b
    dec b                                         ; $460c: $05
    push de                                       ; $460d: $d5
    dec hl                                        ; $460e: $2b
    and d                                         ; $460f: $a2
    ld e, a                                       ; $4610: $5f
    ld d, l                                       ; $4611: $55
    xor a                                         ; $4612: $af
    and d                                         ; $4613: $a2
    jr nz, jr_0a4_4675                            ; $4614: $20 $5f

    add hl, bc                                    ; $4616: $09
    scf                                           ; $4617: $37
    dec b                                         ; $4618: $05
    add hl, hl                                    ; $4619: $29
    rst $10                                       ; $461a: $d7
    ld d, d                                       ; $461b: $52
    xor a                                         ; $461c: $af
    ld de, $1e10                                  ; $461d: $11 $10 $1e
    ld a, [hl-]                                   ; $4620: $3a
    cp l                                          ; $4621: $bd
    db $ec                                        ; $4622: $ec
    add hl, bc                                    ; $4623: $09
    ld e, b                                       ; $4624: $58
    ld e, a                                       ; $4625: $5f
    ld a, [hl-]                                   ; $4626: $3a
    dec a                                         ; $4627: $3d
    ld b, b                                       ; $4628: $40
    dec d                                         ; $4629: $15
    ld hl, sp+$01                                 ; $462a: $f8 $01
    ld c, d                                       ; $462c: $4a
    or l                                          ; $462d: $b5
    and a                                         ; $462e: $a7
    ret c                                         ; $462f: $d8

    adc a                                         ; $4630: $8f
    ldh a, [rP1]                                  ; $4631: $f0 $00
    add a                                         ; $4633: $87
    ld hl, sp-$3b                                 ; $4634: $f8 $c5
    ld a, [$fdaa]                                 ; $4636: $fa $aa $fd
    db $f4                                        ; $4639: $f4
    rst $38                                       ; $463a: $ff
    nop                                           ; $463b: $00
    db $eb                                        ; $463c: $eb
    rst $38                                       ; $463d: $ff
    jp hl                                         ; $463e: $e9


    rla                                           ; $463f: $17
    ldh a, [rIF]                                  ; $4640: $f0 $0f
    pop hl                                        ; $4642: $e1
    rra                                           ; $4643: $1f
    ld bc, $2fd3                                  ; $4644: $01 $d3 $2f
    pop hl                                        ; $4647: $e1
    rra                                           ; $4648: $1f
    srl a                                         ; $4649: $cb $3f
    dec d                                         ; $464b: $15
    jr z, @+$03                                   ; $464c: $28 $01

    jr nz, jr_0a4_4661                            ; $464e: $20 $11

    ccf                                           ; $4650: $3f
    adc h                                         ; $4651: $8c
    ld [$5f5a], sp                                ; $4652: $08 $5a $5f
    inc sp                                        ; $4655: $33
    ld a, $1c                                     ; $4656: $3e $1c
    nop                                           ; $4658: $00
    sbc a                                         ; $4659: $9f
    dec sp                                        ; $465a: $3b
    ld a, $1c                                     ; $465b: $3e $1c
    rra                                           ; $465d: $1f
    add sp, -$01                                  ; $465e: $e8 $ff
    add [hl]                                      ; $4660: $86

jr_0a4_4661:
    nop                                           ; $4661: $00
    ld sp, hl                                     ; $4662: $f9
    rra                                           ; $4663: $1f
    ldh [$ba], a                                  ; $4664: $e0 $ba
    push bc                                       ; $4666: $c5
    ld [hl], l                                    ; $4667: $75
    adc d                                         ; $4668: $8a
    jr z, jr_0a4_466b                             ; $4669: $28 $00

jr_0a4_466b:
    rst $10                                       ; $466b: $d7
    db $10                                        ; $466c: $10
    rst $28                                       ; $466d: $ef
    ld hl, $17df                                  ; $466e: $21 $df $17
    rst $38                                       ; $4671: $ff
    ld bc, $ff00                                  ; $4672: $01 $00 $ff

jr_0a4_4675:
    ld b, d                                       ; $4675: $42
    cp a                                          ; $4676: $bf
    and c                                         ; $4677: $a1
    ld e, a                                       ; $4678: $5f
    ld d, e                                       ; $4679: $53
    xor a                                         ; $467a: $af
    dec b                                         ; $467b: $05
    inc hl                                        ; $467c: $23
    rst $38                                       ; $467d: $ff
    inc hl                                        ; $467e: $23
    ld l, b                                       ; $467f: $68
    dec b                                         ; $4680: $05
    pop bc                                        ; $4681: $c1
    cp $92                                        ; $4682: $fe $92
    cp b                                          ; $4684: $b8
    ld de, $11c4                                  ; $4685: $11 $c4 $11
    nop                                           ; $4688: $00
    xor $83                                       ; $4689: $ee $83
    db $fc                                        ; $468b: $fc
    rst $18                                       ; $468c: $df
    scf                                           ; $468d: $37
    ei                                            ; $468e: $fb
    adc a                                         ; $468f: $8f
    xor a                                         ; $4690: $af
    nop                                           ; $4691: $00
    ld e, l                                       ; $4692: $5d
    ld l, a                                       ; $4693: $6f
    sub a                                         ; $4694: $97
    db $fd                                        ; $4695: $fd
    ld c, a                                       ; $4696: $4f
    and a                                         ; $4697: $a7
    ld e, l                                       ; $4698: $5d
    or $02                                        ; $4699: $f6 $02
    cpl                                           ; $469b: $2f
    xor a                                         ; $469c: $af
    rst $18                                       ; $469d: $df
    rst $38                                       ; $469e: $ff
    ld a, a                                       ; $469f: $7f
    ld a, a                                       ; $46a0: $7f
    jp nc, $bf00                                  ; $46a1: $d2 $00 $bf

    add [hl]                                      ; $46a4: $86
    cp $04                                        ; $46a5: $fe $04
    rst $28                                       ; $46a7: $ef
    rst $38                                       ; $46a8: $ff
    cp l                                          ; $46a9: $bd
    ld a, a                                       ; $46aa: $7f
    ld b, b                                       ; $46ab: $40
    add hl, bc                                    ; $46ac: $09
    ld [hl], $09                                  ; $46ad: $36 $09
    jp z, $ff2d                                   ; $46af: $ca $2d $ff

    db $f4                                        ; $46b2: $f4
    ld a, [hl]                                    ; $46b3: $7e
    ld de, $72fb                                  ; $46b4: $11 $fb $72
    ld [bc], a                                    ; $46b7: $02
    cp b                                          ; $46b8: $b8
    add hl, bc                                    ; $46b9: $09
    adc e                                         ; $46ba: $8b
    inc b                                         ; $46bb: $04
    ld [de], a                                    ; $46bc: $12
    nop                                           ; $46bd: $00
    ret                                           ; $46be: $c9


    or $83                                        ; $46bf: $f6 $83
    db $fc                                        ; $46c1: $fc
    ld a, l                                       ; $46c2: $7d
    adc a                                         ; $46c3: $8f
    cp e                                          ; $46c4: $bb
    ld e, a                                       ; $46c5: $5f
    nop                                           ; $46c6: $00
    db $fc                                        ; $46c7: $fc
    rrca                                          ; $46c8: $0f
    xor c                                         ; $46c9: $a9
    sbc $dd                                       ; $46ca: $de $dd
    ld a, $ea                                     ; $46cc: $3e $ea
    rra                                           ; $46ce: $1f
    ld [hl], $ad                                  ; $46cf: $36 $ad
    ld e, a                                       ; $46d1: $5f
    ld [c], a                                     ; $46d2: $e2
    dec b                                         ; $46d3: $05
    jr c, @+$07                                   ; $46d4: $38 $05

    xor [hl]                                      ; $46d6: $ae
    call nz, $c009                                ; $46d7: $c4 $09 $c0
    ld de, $a097                                  ; $46da: $11 $97 $a0
    ret nz                                        ; $46dd: $c0

    ld bc, $c275                                  ; $46de: $01 $75 $c2
    dec b                                         ; $46e1: $05
    ld d, c                                       ; $46e2: $51
    xor $ea                                       ; $46e3: $ee $ea
    db $fd                                        ; $46e5: $fd
    push af                                       ; $46e6: $f5
    add b                                         ; $46e7: $80
    ldh a, [$15]                                  ; $46e8: $f0 $15
    nop                                           ; $46ea: $00
    nop                                           ; $46eb: $00
    call nz, $aa04                                ; $46ec: $c4 $04 $aa
    add b                                         ; $46ef: $80
    push af                                       ; $46f0: $f5
    inc e                                         ; $46f1: $1c
    nop                                           ; $46f2: $00
    rst $18                                       ; $46f3: $df
    ld [bc], a                                    ; $46f4: $02
    ld h, $04                                     ; $46f5: $26 $04
    inc l                                         ; $46f7: $2c
    ld b, $90                                     ; $46f8: $06 $90
    rra                                           ; $46fa: $1f
    ld d, b                                       ; $46fb: $50
    db $10                                        ; $46fc: $10
    inc b                                         ; $46fd: $04
    and h                                         ; $46fe: $a4
    nop                                           ; $46ff: $00
    ret c                                         ; $4700: $d8

    nop                                           ; $4701: $00
    ld [$14c8], a                                 ; $4702: $ea $c8 $14
    ei                                            ; $4705: $fb
    inc b                                         ; $4706: $04
    inc b                                         ; $4707: $04
    sbc $21                                       ; $4708: $de $21
    rst $38                                       ; $470a: $ff
    add b                                         ; $470b: $80
    ei                                            ; $470c: $fb
    call nc, $400c                                ; $470d: $d4 $0c $40
    or $18                                        ; $4710: $f6 $18
    add hl, bc                                    ; $4712: $09
    cp $81                                        ; $4713: $fe $81
    ld hl, sp+$0b                                 ; $4715: $f8 $0b
    ld l, h                                       ; $4717: $6c
    inc b                                         ; $4718: $04
    ld hl, $82ff                                  ; $4719: $21 $ff $82
    add b                                         ; $471c: $80
    or $0b                                        ; $471d: $f6 $0b
    add b                                         ; $471f: $80
    nop                                           ; $4720: $00
    jp z, $e808                                   ; $4721: $ca $08 $e8

    nop                                           ; $4724: $00
    or [hl]                                       ; $4725: $b6
    inc c                                         ; $4726: $0c
    nop                                           ; $4727: $00
    rst $18                                       ; $4728: $df
    inc h                                         ; $4729: $24
    db $fd                                        ; $472a: $fd
    ld l, b                                       ; $472b: $68
    inc b                                         ; $472c: $04
    ld b, b                                       ; $472d: $40
    jr @-$7e                                      ; $472e: $18 $80

    add b                                         ; $4730: $80
    nop                                           ; $4731: $00
    and b                                         ; $4732: $a0
    nop                                           ; $4733: $00
    ld b, d                                       ; $4734: $42
    nop                                           ; $4735: $00
    xor d                                         ; $4736: $aa
    ld [bc], a                                    ; $4737: $02
    ld [hl], h                                    ; $4738: $74
    add b                                         ; $4739: $80
    nop                                           ; $473a: $00
    cp $00                                        ; $473b: $fe $00
    ld l, a                                       ; $473d: $6f
    sub b                                         ; $473e: $90
    rst $38                                       ; $473f: $ff
    nop                                           ; $4740: $00
    or l                                          ; $4741: $b5
    ld c, d                                       ; $4742: $4a
    nop                                           ; $4743: $00
    db $fd                                        ; $4744: $fd
    ld [bc], a                                    ; $4745: $02
    reti                                          ; $4746: $d9


    ld h, $af                                     ; $4747: $26 $af
    ld d, b                                       ; $4749: $50
    push af                                       ; $474a: $f5
    ld a, [bc]                                    ; $474b: $0a
    db $10                                        ; $474c: $10
    db $eb                                        ; $474d: $eb
    inc d                                         ; $474e: $14
    rst $38                                       ; $474f: $ff
    ld [de], a                                    ; $4750: $12
    nop                                           ; $4751: $00
    cp l                                          ; $4752: $bd
    ld b, d                                       ; $4753: $42
    ld d, a                                       ; $4754: $57
    xor b                                         ; $4755: $a8
    ld bc, $609f                                  ; $4756: $01 $9f $60
    ld c, d                                       ; $4759: $4a
    or l                                          ; $475a: $b5
    ld [hl], l                                    ; $475b: $75
    adc d                                         ; $475c: $8a
    rst $18                                       ; $475d: $df
    jp z, Jump_0a4_4b03                           ; $475e: $ca $03 $4b

    cp $40                                        ; $4761: $fe $40
    inc b                                         ; $4763: $04
    ld a, [hl]                                    ; $4764: $7e
    add l                                         ; $4765: $85
    sbc d                                         ; $4766: $9a

jr_0a4_4767:
    inc c                                         ; $4767: $0c
    cp a                                          ; $4768: $bf
    ld c, d                                       ; $4769: $4a
    inc b                                         ; $476a: $04
    sub h                                         ; $476b: $94
    inc b                                         ; $476c: $04
    ret z                                         ; $476d: $c8

    inc [hl]                                      ; $476e: $34
    dec b                                         ; $476f: $05
    sbc $0b                                       ; $4770: $de $0b

jr_0a4_4772:
    cp e                                          ; $4772: $bb
    ld b, h                                       ; $4773: $44
    cp h                                          ; $4774: $bc
    ld c, $80                                     ; $4775: $0e $80
    nop                                           ; $4777: $00
    ret nz                                        ; $4778: $c0

    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    xor b                                         ; $477b: $a8
    nop                                           ; $477c: $00
    ldh a, [rP1]                                  ; $477d: $f0 $00
    ld a, [$f426]                                 ; $477f: $fa $26 $f4
    inc [hl]                                      ; $4782: $34
    nop                                           ; $4783: $00
    db $db                                        ; $4784: $db
    ld c, [hl]                                    ; $4785: $4e
    dec b                                         ; $4786: $05
    ld h, h                                       ; $4787: $64
    inc b                                         ; $4788: $04
    dec b                                         ; $4789: $05
    ld [hl], $08                                  ; $478a: $36 $08
    rst $38                                       ; $478c: $ff
    add b                                         ; $478d: $80
    pop hl                                        ; $478e: $e1
    jp c, $c406                                   ; $478f: $da $06 $c4

jr_0a4_4792:
    inc b                                         ; $4792: $04
    halt                                          ; $4793: $76
    inc c                                         ; $4794: $0c
    cp $05                                        ; $4795: $fe $05
    ld [hl], a                                    ; $4797: $77
    adc b                                         ; $4798: $88
    ld a, [hl-]                                   ; $4799: $3a
    stop                                          ; $479a: $10 $00
    db $10                                        ; $479c: $10
    cp e                                          ; $479d: $bb
    ld b, h                                       ; $479e: $44
    db $fd                                        ; $479f: $fd
    ld [bc], a                                    ; $47a0: $02
    rst $10                                       ; $47a1: $d7
    jr z, jr_0a4_4792                             ; $47a2: $28 $ee

    nop                                           ; $47a4: $00
    ld de, $aa55                                  ; $47a5: $11 $55 $aa
    or h                                          ; $47a8: $b4
    ld c, e                                       ; $47a9: $4b
    xor d                                         ; $47aa: $aa
    ld d, l                                       ; $47ab: $55
    push de                                       ; $47ac: $d5
    ld b, $2a                                     ; $47ad: $06 $2a
    xor e                                         ; $47af: $ab
    ld d, h                                       ; $47b0: $54
    db $fd                                        ; $47b1: $fd
    ld [bc], a                                    ; $47b2: $02
    ld l, [hl]                                    ; $47b3: $6e
    inc b                                         ; $47b4: $04
    xor d                                         ; $47b5: $aa
    inc b                                         ; $47b6: $04
    ld e, e                                       ; $47b7: $5b
    ld [hl], e                                    ; $47b8: $73
    and h                                         ; $47b9: $a4
    inc [hl]                                      ; $47ba: $34
    ld [$08c6], sp                                ; $47bb: $08 $c6 $08
    or b                                          ; $47be: $b0
    inc c                                         ; $47bf: $0c
    cp $09                                        ; $47c0: $fe $09
    xor b                                         ; $47c2: $a8
    rrca                                          ; $47c3: $0f
    or [hl]                                       ; $47c4: $b6
    inc b                                         ; $47c5: $04
    pop af                                        ; $47c6: $f1
    and b                                         ; $47c7: $a0
    dec b                                         ; $47c8: $05
    ld a, d                                       ; $47c9: $7a
    inc c                                         ; $47ca: $0c
    ld b, $0d                                     ; $47cb: $06 $0d
    jr @+$0f                                      ; $47cd: $18 $0d

    rst $38                                       ; $47cf: $ff
    inc b                                         ; $47d0: $04
    ld a, a                                       ; $47d1: $7f
    adc h                                         ; $47d2: $8c
    inc b                                         ; $47d3: $04
    ld a, $ed                                     ; $47d4: $3e $ed
    ld d, d                                       ; $47d6: $52
    xor d                                         ; $47d7: $aa
    inc l                                         ; $47d8: $2c
    inc a                                         ; $47d9: $3c
    rrca                                          ; $47da: $0f
    jp nz, Jump_0a4_5a00                          ; $47db: $c2 $00 $5a

    nop                                           ; $47de: $00
    jp z, $fd0d                                   ; $47df: $ca $0d $fd

    db $10                                        ; $47e2: $10
    ld [bc], a                                    ; $47e3: $02
    rst $18                                       ; $47e4: $df
    jr nz, jr_0a4_4767                            ; $47e5: $20 $80

    daa                                           ; $47e7: $27
    ld [$404a], sp                                ; $47e8: $08 $4a $40
    rla                                           ; $47eb: $17
    jr nz, jr_0a4_47ee                            ; $47ec: $20 $00

jr_0a4_47ee:
    ld a, l                                       ; $47ee: $7d
    db $10                                        ; $47ef: $10
    jr nz, jr_0a4_4772                            ; $47f0: $20 $80

    add h                                         ; $47f2: $84
    ld hl, $0b20                                  ; $47f3: $21 $20 $0b
    ld [hl+], a                                   ; $47f6: $22
    nop                                           ; $47f7: $00
    or a                                          ; $47f8: $b7
    nop                                           ; $47f9: $00
    dec d                                         ; $47fa: $15
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    ld b, e                                       ; $47fd: $43
    ld a, [de]                                    ; $47fe: $1a
    nop                                           ; $47ff: $00
    xor a                                         ; $4800: $af
    sub b                                         ; $4801: $90
    ld a, [c]                                     ; $4802: $f2
    dec b                                         ; $4803: $05
    cp $01                                        ; $4804: $fe $01
    jp nz, $bf0f                                  ; $4806: $c2 $0f $bf

    ld b, b                                       ; $4809: $40
    ld a, [$0205]                                 ; $480a: $fa $05 $02
    db $ed                                        ; $480d: $ed
    ld [de], a                                    ; $480e: $12
    ld sp, hl                                     ; $480f: $f9
    ld b, $56                                     ; $4810: $06 $56
    xor c                                         ; $4812: $a9
    ld [$bb08], sp                                ; $4813: $08 $08 $bb
    nop                                           ; $4816: $00
    ld b, h                                       ; $4817: $44
    ld e, e                                       ; $4818: $5b
    and h                                         ; $4819: $a4
    or a                                          ; $481a: $b7
    ld c, b                                       ; $481b: $48
    db $dd                                        ; $481c: $dd
    ld [hl+], a                                   ; $481d: $22
    ld c, e                                       ; $481e: $4b
    ld bc, $b7b4                                  ; $481f: $01 $b4 $b7
    ld c, b                                       ; $4822: $48
    ld l, [hl]                                    ; $4823: $6e
    sub c                                         ; $4824: $91
    dec sp                                        ; $4825: $3b
    call nz, Call_000_07e4                        ; $4826: $c4 $e4 $07
    ld h, l                                       ; $4829: $65
    ld [hl+], a                                   ; $482a: $22
    ld c, b                                       ; $482b: $48
    dec b                                         ; $482c: $05
    ld [$dd07], a                                 ; $482d: $ea $07 $dd
    ld [hl+], a                                   ; $4830: $22
    ld l, $05                                     ; $4831: $2e $05
    ld [de], a                                    ; $4833: $12
    xor h                                         ; $4834: $ac
    rrca                                          ; $4835: $0f
    ld bc, $12fd                                  ; $4836: $01 $fd $12
    ld a, a                                       ; $4839: $7f
    add b                                         ; $483a: $80
    rst $30                                       ; $483b: $f7
    ld [$66fd], sp                                ; $483c: $08 $fd $66
    ld b, $60                                     ; $483f: $06 $60
    cp a                                          ; $4841: $bf
    call nc, $f005                                ; $4842: $d4 $05 $f0
    rla                                           ; $4845: $17
    jr c, jr_0a4_4880                             ; $4846: $38 $38

    ld b, [hl]                                    ; $4848: $46
    ld e, l                                       ; $4849: $5d
    and e                                         ; $484a: $a3
    dec bc                                        ; $484b: $0b
    and c                                         ; $484c: $a1
    rst $18                                       ; $484d: $df
    ld l, d                                       ; $484e: $6a
    ld a, [hl]                                    ; $484f: $7e
    ret nz                                        ; $4850: $c0

    ld c, $df                                     ; $4851: $0e $df
    add b                                         ; $4853: $80
    ld b, $7c                                     ; $4854: $06 $7c
    dec c                                         ; $4856: $0d
    ld hl, $05fa                                  ; $4857: $21 $fa $05
    ret c                                         ; $485a: $d8

    ld [$0af7], sp                                ; $485b: $08 $f7 $0a
    xor a                                         ; $485e: $af
    ld d, b                                       ; $485f: $50
    ld a, [bc]                                    ; $4860: $0a
    add hl, bc                                    ; $4861: $09
    xor b                                         ; $4862: $a8
    call nc, Call_0a4_4205                        ; $4863: $d4 $05 $42
    ld c, $08                                     ; $4866: $0e $08
    jr nz, @+$03                                  ; $4868: $20 $01

    ld [$0030], sp                                ; $486a: $08 $30 $00
    jr c, jr_0a4_486f                             ; $486d: $38 $00

jr_0a4_486f:
    db $10                                        ; $486f: $10
    jr jr_0a4_4882                                ; $4870: $18 $10

    inc e                                         ; $4872: $1c
    nop                                           ; $4873: $00
    inc e                                         ; $4874: $1c

jr_0a4_4875:
    sub b                                         ; $4875: $90
    sbc [hl]                                      ; $4876: $9e
    nop                                           ; $4877: $00
    ld c, b                                       ; $4878: $48
    sbc $a4                                       ; $4879: $de $a4
    ld a, [$f98e]                                 ; $487b: $fa $8e $f9
    ld b, h                                       ; $487e: $44
    ld a, e                                       ; $487f: $7b

jr_0a4_4880:
    nop                                           ; $4880: $00
    ld c, d                                       ; $4881: $4a

jr_0a4_4882:
    ld [hl], l                                    ; $4882: $75
    ld h, d                                       ; $4883: $62
    ld e, l                                       ; $4884: $5d
    ld [hl-], a                                   ; $4885: $32
    dec l                                         ; $4886: $2d
    jp hl                                         ; $4887: $e9


    or $02                                        ; $4888: $f6 $02
    nop                                           ; $488a: $00
    nop                                           ; $488b: $00
    inc b                                         ; $488c: $04
    inc b                                         ; $488d: $04
    add h                                         ; $488e: $84
    adc h                                         ; $488f: $8c
    ld [bc], a                                    ; $4890: $02
    ld [$00a0], sp                                ; $4891: $08 $a0 $00
    adc h                                         ; $4894: $8c
    add h                                         ; $4895: $84
    db $fc                                        ; $4896: $fc
    jr nz, jr_0a4_4875                            ; $4897: $20 $dc

    add h                                         ; $4899: $84
    ld hl, sp+$24                                 ; $489a: $f8 $24
    nop                                           ; $489c: $00
    ret c                                         ; $489d: $d8

    add b                                         ; $489e: $80
    db $fc                                        ; $489f: $fc
    dec h                                         ; $48a0: $25
    reti                                          ; $48a1: $d9


    xor c                                         ; $48a2: $a9
    push de                                       ; $48a3: $d5
    daa                                           ; $48a4: $27
    nop                                           ; $48a5: $00
    rst $18                                       ; $48a6: $df
    ld c, c                                       ; $48a7: $49
    or a                                          ; $48a8: $b7
    dec h                                         ; $48a9: $25
    rst $18                                       ; $48aa: $df

Jump_0a4_48ab:
    dec sp                                        ; $48ab: $3b
    db $e4                                        ; $48ac: $e4
    adc l                                         ; $48ad: $8d
    nop                                           ; $48ae: $00
    ld a, [c]                                     ; $48af: $f2
    push de                                       ; $48b0: $d5
    ld [$724d], a                                 ; $48b1: $ea $4d $72
    daa                                           ; $48b4: $27
    jr c, jr_0a4_48e2                             ; $48b5: $38 $2b

    nop                                           ; $48b7: $00
    inc [hl]                                      ; $48b8: $34
    dec d                                         ; $48b9: $15
    ld a, [de]                                    ; $48ba: $1a
    ld c, d                                       ; $48bb: $4a
    ld c, l                                       ; $48bc: $4d
    ld c, l                                       ; $48bd: $4d
    or a                                          ; $48be: $b7
    pop de                                        ; $48bf: $d1
    nop                                           ; $48c0: $00
    cpl                                           ; $48c1: $2f
    ld c, c                                       ; $48c2: $49
    cp a                                          ; $48c3: $bf
    db $d3                                        ; $48c4: $d3
    cpl                                           ; $48c5: $2f
    ld a, e                                       ; $48c6: $7b
    adc a                                         ; $48c7: $8f
    and $06                                       ; $48c8: $e6 $06
    ld e, $d6                                     ; $48ca: $1e $d6
    ld l, $2b                                     ; $48cc: $2e $2b
    db $db                                        ; $48ce: $db
    ld e, b                                       ; $48cf: $58
    dec b                                         ; $48d0: $05
    ld h, $01                                     ; $48d1: $26 $01
    rst $10                                       ; $48d3: $d7
    ld [hl], b                                    ; $48d4: $70
    jr z, jr_0a4_48e9                             ; $48d5: $28 $12

    ld a, [bc]                                    ; $48d7: $0a
    ld [bc], a                                    ; $48d8: $02
    ld c, $a0                                     ; $48d9: $0e $a0
    add hl, bc                                    ; $48db: $09
    xor d                                         ; $48dc: $aa
    ld [bc], a                                    ; $48dd: $02
    ldh a, [rP1]                                  ; $48de: $f0 $00
    jr nz, @-$06                                  ; $48e0: $20 $f8

jr_0a4_48e2:
    inc h                                         ; $48e2: $24
    and b                                         ; $48e3: $a0
    add hl, de                                    ; $48e4: $19
    ld a, [c]                                     ; $48e5: $f2
    ld hl, $10f9                                  ; $48e6: $21 $f9 $10

jr_0a4_48e9:
    cp $00                                        ; $48e9: $fe $00
    inc c                                         ; $48eb: $0c
    di                                            ; $48ec: $f3
    rrca                                          ; $48ed: $0f
    add sp, $11                                   ; $48ee: $e8 $11
    rst $10                                       ; $48f0: $d7
    ld hl, $00aa                                  ; $48f1: $21 $aa $00
    ld b, a                                       ; $48f4: $47
    sbc l                                         ; $48f5: $9d
    ld c, [hl]                                    ; $48f6: $4e
    db $f4                                        ; $48f7: $f4
    ld a, b                                       ; $48f8: $78
    ld [$db11], a                                 ; $48f9: $ea $11 $db
    jr c, jr_0a4_4925                             ; $48fc: $38 $27

    rst $38                                       ; $48fe: $ff
    ld a, b                                       ; $48ff: $78
    rlca                                          ; $4900: $07
    ld b, [hl]                                    ; $4901: $46
    add hl, bc                                    ; $4902: $09
    inc h                                         ; $4903: $24
    ld b, $b0                                     ; $4904: $06 $b0
    ld a, a                                       ; $4906: $7f
    ldh [rP1], a                                  ; $4907: $e0 $00
    ld b, e                                       ; $4909: $43
    db $fc                                        ; $490a: $fc
    ld sp, $cec2                                  ; $490b: $31 $c2 $ce
    add c                                         ; $490e: $81
    rst $08                                       ; $490f: $cf
    cp $00                                        ; $4910: $fe $00
    ccf                                           ; $4912: $3f
    ldh a, [$73]                                  ; $4913: $f0 $73
    ld c, h                                       ; $4915: $4c
    push de                                       ; $4916: $d5
    ld h, d                                       ; $4917: $62
    ld [$02f1], a                                 ; $4918: $ea $f1 $02
    db $f4                                        ; $491b: $f4
    reti                                          ; $491c: $d9


    cp $cf                                        ; $491d: $fe $cf
    rst $38                                       ; $491f: $ff
    ret nz                                        ; $4920: $c0

    ld [bc], a                                    ; $4921: $02
    nop                                           ; $4922: $00
    ret nc                                        ; $4923: $d0

    nop                                           ; $4924: $00

jr_0a4_4925:
    rst $38                                       ; $4925: $ff
    nop                                           ; $4926: $00
    ld [bc], a                                    ; $4927: $02
    ld [bc], a                                    ; $4928: $02
    inc b                                         ; $4929: $04
    dec b                                         ; $492a: $05
    add hl, bc                                    ; $492b: $09
    ld a, [bc]                                    ; $492c: $0a
    ld [bc], a                                    ; $492d: $02
    inc b                                         ; $492e: $04
    rlca                                          ; $492f: $07
    add hl, de                                    ; $4930: $19
    ld e, $0c                                     ; $4931: $1e $0c
    rrca                                          ; $4933: $0f
    ld [hl], $05                                  ; $4934: $36 $05
    rra                                           ; $4936: $1f
    nop                                           ; $4937: $00
    ld c, $0f                                     ; $4938: $0e $0f
    rra                                           ; $493a: $1f
    rra                                           ; $493b: $1f
    ld [hl], $3f                                  ; $493c: $36 $3f
    inc hl                                        ; $493e: $23
    ccf                                           ; $493f: $3f
    nop                                           ; $4940: $00
    ld l, c                                       ; $4941: $69
    ld [hl], a                                    ; $4942: $77
    ld h, b                                       ; $4943: $60
    ld a, a                                       ; $4944: $7f
    jp z, Jump_0a4_4df5                           ; $4945: $ca $f5 $4d

    ld [hl], d                                    ; $4948: $72
    add b                                         ; $4949: $80
    and c                                         ; $494a: $a1
    ld [hl+], a                                   ; $494b: $22
    ld bc, $0201                                  ; $494c: $01 $01 $02
    ld bc, $0704                                  ; $494f: $01 $04 $07
    jr z, jr_0a4_4954                             ; $4952: $28 $00

jr_0a4_4954:
    rra                                           ; $4954: $1f
    ld h, b                                       ; $4955: $60
    nop                                           ; $4956: $00
    ld a, [bc]                                    ; $4957: $0a
    ld a, [bc]                                    ; $4958: $0a
    dec [hl]                                      ; $4959: $35
    dec d                                         ; $495a: $15
    xor d                                         ; $495b: $aa
    jr jr_0a4_498d                                ; $495c: $18 $2f

    ld d, b                                       ; $495e: $50
    ld a, a                                       ; $495f: $7f
    db $10                                        ; $4960: $10
    ld [bc], a                                    ; $4961: $02
    add b                                         ; $4962: $80
    ld [de], a                                    ; $4963: $12
    add b                                         ; $4964: $80
    add b                                         ; $4965: $80
    ld d, b                                       ; $4966: $50
    inc bc                                        ; $4967: $03
    ret nc                                        ; $4968: $d0

    jr z, jr_0a4_49d3                             ; $4969: $28 $68

    sub l                                         ; $496b: $95
    db $fc                                        ; $496c: $fc
    ld [bc], a                                    ; $496d: $02
    or [hl]                                       ; $496e: $b6
    ld [bc], a                                    ; $496f: $02
    add b                                         ; $4970: $80
    rlca                                          ; $4971: $07
    add b                                         ; $4972: $80
    pop de                                        ; $4973: $d1
    ld [hl+], a                                   ; $4974: $22
    ld b, b                                       ; $4975: $40
    nop                                           ; $4976: $00
    sub b                                         ; $4977: $90
    and b                                         ; $4978: $a0
    ld c, b                                       ; $4979: $48
    ldh [rNR14], a                                ; $497a: $e0 $14
    nop                                           ; $497c: $00
    ldh a, [$08]                                  ; $497d: $f0 $08
    dec a                                         ; $497f: $3d
    jp nz, $a05f                                  ; $4980: $c2 $5f $a0

    cpl                                           ; $4983: $2f
    ret nc                                        ; $4984: $d0

    nop                                           ; $4985: $00
    ld d, a                                       ; $4986: $57
    xor b                                         ; $4987: $a8
    dec hl                                        ; $4988: $2b
    call nc, $7a85                                ; $4989: $d4 $85 $7a
    ld [c], a                                     ; $498c: $e2

jr_0a4_498d:
    dec e                                         ; $498d: $1d
    add hl, bc                                    ; $498e: $09
    ld a, a                                       ; $498f: $7f
    add b                                         ; $4990: $80
    cp a                                          ; $4991: $bf
    ld b, b                                       ; $4992: $40
    or $0a                                        ; $4993: $f6 $0a
    push de                                       ; $4995: $d5
    dec hl                                        ; $4996: $2b
    add h                                         ; $4997: $84
    ld [bc], a                                    ; $4998: $02
    ld b, b                                       ; $4999: $40
    add c                                         ; $499a: $81
    halt                                          ; $499b: $76
    ld bc, $5b02                                  ; $499c: $01 $02 $5b
    and h                                         ; $499f: $a4
    add l                                         ; $49a0: $85
    ld a, d                                       ; $49a1: $7a
    ld [hl+], a                                   ; $49a2: $22
    ld bc, $55fd                                  ; $49a3: $01 $fd $55
    cp $28                                        ; $49a6: $fe $28
    rst $38                                       ; $49a8: $ff
    sub l                                         ; $49a9: $95
    ld l, d                                       ; $49aa: $6a
    xor [hl]                                      ; $49ab: $ae
    ld a, [bc]                                    ; $49ac: $0a
    nop                                           ; $49ad: $00
    ld hl, sp+$04                                 ; $49ae: $f8 $04
    ld a, h                                       ; $49b0: $7c
    add d                                         ; $49b1: $82
    xor [hl]                                      ; $49b2: $ae
    ld d, c                                       ; $49b3: $51
    ld a, a                                       ; $49b4: $7f
    add b                                         ; $49b5: $80
    nop                                           ; $49b6: $00
    xor e                                         ; $49b7: $ab
    ld d, h                                       ; $49b8: $54
    ld e, a                                       ; $49b9: $5f
    and b                                         ; $49ba: $a0
    cp $01                                        ; $49bb: $fe $01
    cp a                                          ; $49bd: $bf
    ld b, b                                       ; $49be: $40
    nop                                           ; $49bf: $00
    cpl                                           ; $49c0: $2f
    ret nc                                        ; $49c1: $d0

    ld de, $a4fe                                  ; $49c2: $11 $fe $a4
    rst $18                                       ; $49c5: $df
    dec [hl]                                      ; $49c6: $35
    jp z, $9b00                                   ; $49c7: $ca $00 $9b

    db $e4                                        ; $49ca: $e4
    rra                                           ; $49cb: $1f
    ldh [$9b], a                                  ; $49cc: $e0 $9b
    ld h, h                                       ; $49ce: $64
    push af                                       ; $49cf: $f5
    ld a, [bc]                                    ; $49d0: $0a
    add l                                         ; $49d1: $85
    ld e, [hl]                                    ; $49d2: $5e

jr_0a4_49d3:
    rrca                                          ; $49d3: $0f
    push bc                                       ; $49d4: $c5
    ld a, [hl-]                                   ; $49d5: $3a
    add sp, $17                                   ; $49d6: $e8 $17
    ld c, h                                       ; $49d8: $4c
    rra                                           ; $49d9: $1f
    or $37                                        ; $49da: $f6 $37
    inc b                                         ; $49dc: $04
    add b                                         ; $49dd: $80
    ld c, b                                       ; $49de: $48
    dec bc                                        ; $49df: $0b
    cp l                                          ; $49e0: $bd
    ld b, d                                       ; $49e1: $42
    ld a, d                                       ; $49e2: $7a
    add l                                         ; $49e3: $85
    db $f4                                        ; $49e4: $f4
    dec bc                                        ; $49e5: $0b
    xor c                                         ; $49e6: $a9
    nop                                           ; $49e7: $00
    ld d, a                                       ; $49e8: $57
    jp nz, Jump_0a4_773f                          ; $49e9: $c2 $3f $77

    adc b                                         ; $49ec: $88

jr_0a4_49ed:
    sbc $21                                       ; $49ed: $de $21
    cp l                                          ; $49ef: $bd
    nop                                           ; $49f0: $00
    ld b, d                                       ; $49f1: $42
    ld e, d                                       ; $49f2: $5a
    and l                                         ; $49f3: $a5
    inc l                                         ; $49f4: $2c
    db $d3                                        ; $49f5: $d3
    sbc b                                         ; $49f6: $98
    rst $20                                       ; $49f7: $e7
    stop                                          ; $49f8: $10 $00
    rst $28                                       ; $49fa: $ef
    ld [hl], c                                    ; $49fb: $71
    adc a                                         ; $49fc: $8f
    ld b, b                                       ; $49fd: $40
    ld b, b                                       ; $49fe: $40
    jr nz, jr_0a4_4a21                            ; $49ff: $20 $20

    stop                                          ; $4a01: $10 $00
    ld d, b                                       ; $4a03: $50
    add b                                         ; $4a04: $80
    ld h, b                                       ; $4a05: $60
    ret z                                         ; $4a06: $c8

    jr c, jr_0a4_49ed                             ; $4a07: $38 $e4

    inc e                                         ; $4a09: $1c
    jp nc, $2e00                                  ; $4a0a: $d2 $00 $2e

    and c                                         ; $4a0d: $a1
    ld e, a                                       ; $4a0e: $5f
    swap a                                        ; $4a0f: $cb $37
    pop de                                        ; $4a11: $d1
    cpl                                           ; $4a12: $2f
    or e                                          ; $4a13: $b3
    nop                                           ; $4a14: $00
    ld c, a                                       ; $4a15: $4f
    daa                                           ; $4a16: $27
    rst $18                                       ; $4a17: $df
    ld b, l                                       ; $4a18: $45
    cp a                                          ; $4a19: $bf
    ld bc, $13ff                                  ; $4a1a: $01 $ff $13
    nop                                           ; $4a1d: $00
    rst $28                                       ; $4a1e: $ef
    dec [hl]                                      ; $4a1f: $35
    rst $08                                       ; $4a20: $cf

jr_0a4_4a21:
    rst $20                                       ; $4a21: $e7
    ld hl, sp-$3d                                 ; $4a22: $f8 $c3
    db $fc                                        ; $4a24: $fc
    ld h, c                                       ; $4a25: $61
    nop                                           ; $4a26: $00
    ld a, [hl]                                    ; $4a27: $7e
    jr nc, jr_0a4_4a69                            ; $4a28: $30 $3f

    ld l, b                                       ; $4a2a: $68
    ld a, a                                       ; $4a2b: $7f
    dec [hl]                                      ; $4a2c: $35
    ccf                                           ; $4a2d: $3f
    ld a, [de]                                    ; $4a2e: $1a
    nop                                           ; $4a2f: $00
    rra                                           ; $4a30: $1f
    cpl                                           ; $4a31: $2f
    cpl                                           ; $4a32: $2f
    jp hl                                         ; $4a33: $e9


    ld d, $f0                                     ; $4a34: $16 $f0
    rrca                                          ; $4a36: $0f
    xor d                                         ; $4a37: $aa
    nop                                           ; $4a38: $00
    ld e, a                                       ; $4a39: $5f
    ld b, l                                       ; $4a3a: $45
    cp a                                          ; $4a3b: $bf
    rrca                                          ; $4a3c: $0f
    rst $38                                       ; $4a3d: $ff
    rra                                           ; $4a3e: $1f
    rst $38                                       ; $4a3f: $ff
    xor a                                         ; $4a40: $af
    add a                                         ; $4a41: $87
    cp h                                          ; $4a42: $bc
    inc bc                                        ; $4a43: $03
    rla                                           ; $4a44: $17
    rla                                           ; $4a45: $17
    ld [bc], a                                    ; $4a46: $02
    ld [bc], a                                    ; $4a47: $02
    db $fd                                        ; $4a48: $fd
    nop                                           ; $4a49: $00
    inc b                                         ; $4a4a: $04
    nop                                           ; $4a4b: $00
    xor e                                         ; $4a4c: $ab
    dec de                                        ; $4a4d: $1b
    nop                                           ; $4a4e: $00
    cp $ff                                        ; $4a4f: $fe $ff
    db $fc                                        ; $4a51: $fc
    rst $38                                       ; $4a52: $ff
    ld a, [hl]                                    ; $4a53: $7e
    ld a, a                                       ; $4a54: $7f
    cp a                                          ; $4a55: $bf
    cp a                                          ; $4a56: $bf
    ld [$5757], sp                                ; $4a57: $08 $57 $57
    dec bc                                        ; $4a5a: $0b
    dec bc                                        ; $4a5b: $0b
    inc d                                         ; $4a5c: $14
    ld [$827d], sp                                ; $4a5d: $08 $7d $82
    cp a                                          ; $4a60: $bf
    nop                                           ; $4a61: $00
    ld b, b                                       ; $4a62: $40
    ld d, a                                       ; $4a63: $57
    xor b                                         ; $4a64: $a8
    inc bc                                        ; $4a65: $03
    db $fc                                        ; $4a66: $fc
    and b                                         ; $4a67: $a0
    rst $38                                       ; $4a68: $ff

jr_0a4_4a69:
    push af                                       ; $4a69: $f5
    jr nz, @+$01                                  ; $4a6a: $20 $ff

    cp $ec                                        ; $4a6c: $fe $ec
    dec b                                         ; $4a6e: $05
    inc d                                         ; $4a6f: $14
    rst $38                                       ; $4a70: $ff
    db $eb                                        ; $4a71: $eb
    inc e                                         ; $4a72: $1c
    ret nz                                        ; $4a73: $c0

    jr z, jr_0a4_4ab5                             ; $4a74: $28 $3f

    ld bc, $0713                                  ; $4a76: $01 $13 $07
    dec d                                         ; $4a79: $15
    or $05                                        ; $4a7a: $f6 $05
    nop                                           ; $4a7c: $00
    rst $38                                       ; $4a7d: $ff
    and $02                                       ; $4a7e: $e6 $02
    rra                                           ; $4a80: $1f
    sub h                                         ; $4a81: $94
    ld a, a                                       ; $4a82: $7f
    inc l                                         ; $4a83: $2c
    rst $38                                       ; $4a84: $ff
    ld a, [hl]                                    ; $4a85: $7e
    ld [$fe06], sp                                ; $4a86: $08 $06 $fe
    add b                                         ; $4a89: $80
    inc d                                         ; $4a8a: $14
    ld b, $1f                                     ; $4a8b: $06 $1f
    rst $38                                       ; $4a8d: $ff
    db $e3                                        ; $4a8e: $e3
    rra                                           ; $4a8f: $1f
    rst $08                                       ; $4a90: $cf
    ccf                                           ; $4a91: $3f
    ld e, $00                                     ; $4a92: $1e $00
    cp $bc                                        ; $4a94: $fe $bc
    db $fc                                        ; $4a96: $fc

jr_0a4_4a97:
    ld e, d                                       ; $4a97: $5a
    ld a, [$f4b4]                                 ; $4a98: $fa $b4 $f4
    ld a, b                                       ; $4a9b: $78
    ld [$f0f8], sp                                ; $4a9c: $08 $f8 $f0
    ldh a, [$2a]                                  ; $4a9f: $f0 $2a
    db $dd                                        ; $4aa1: $dd
    rlca                                          ; $4aa2: $07
    add c                                         ; $4aa3: $81
    cp $53                                        ; $4aa4: $fe $53
    ld b, b                                       ; $4aa6: $40
    db $fc                                        ; $4aa7: $fc
    ld l, h                                       ; $4aa8: $6c
    dec c                                         ; $4aa9: $0d
    ld a, a                                       ; $4aaa: $7f
    ld a, a                                       ; $4aab: $7f
    xor a                                         ; $4aac: $af
    xor a                                         ; $4aad: $af
    jr jr_0a4_4a97                                ; $4aae: $18 $e7

    ld b, $71                                     ; $4ab0: $06 $71
    adc a                                         ; $4ab2: $8f
    db $eb                                        ; $4ab3: $eb
    rra                                           ; $4ab4: $1f

jr_0a4_4ab5:
    sub a                                         ; $4ab5: $97
    ret nz                                        ; $4ab6: $c0

    dec b                                         ; $4ab7: $05
    xor [hl]                                      ; $4ab8: $ae
    dec c                                         ; $4ab9: $0d
    cp $30                                        ; $4aba: $fe $30
    cp $af                                        ; $4abc: $fe $af
    ld b, b                                       ; $4abe: $40
    ld b, $39                                     ; $4abf: $06 $39
    ld c, $fd                                     ; $4ac1: $0e $fd
    db $fd                                        ; $4ac3: $fd
    ld a, [$00fa]                                 ; $4ac4: $fa $fa $00
    call nc, $a0d4                                ; $4ac7: $d4 $d4 $a0
    and b                                         ; $4aca: $a0
    ldh [$e0], a                                  ; $4acb: $e0 $e0
    and b                                         ; $4acd: $a0
    and b                                         ; $4ace: $a0
    ld [bc], a                                    ; $4acf: $02
    ld d, b                                       ; $4ad0: $50
    ld d, b                                       ; $4ad1: $50
    and b                                         ; $4ad2: $a0
    and b                                         ; $4ad3: $a0
    ld b, b                                       ; $4ad4: $40
    ld b, b                                       ; $4ad5: $40
    dec sp                                        ; $4ad6: $3b
    inc e                                         ; $4ad7: $1c
    rlca                                          ; $4ad8: $07
    inc b                                         ; $4ad9: $04
    rlca                                          ; $4ada: $07
    ld b, $07                                     ; $4adb: $06 $07
    dec b                                         ; $4add: $05
    ld b, $04                                     ; $4ade: $06 $04
    ld [$0704], sp                                ; $4ae0: $08 $04 $07
    inc b                                         ; $4ae3: $04
    ld b, $05                                     ; $4ae4: $06 $05
    add hl, bc                                    ; $4ae6: $09
    ld c, $f0                                     ; $4ae7: $0e $f0
    ld bc, $3000                                  ; $4ae9: $01 $00 $30
    ldh a, [rP1]                                  ; $4aec: $f0 $00
    ld h, b                                       ; $4aee: $60
    ldh [$a0], a                                  ; $4aef: $e0 $a0
    ldh [rLCDC], a                                ; $4af1: $e0 $40

jr_0a4_4af3:
    ret nz                                        ; $4af3: $c0

    ret nz                                        ; $4af4: $c0

    ret nz                                        ; $4af5: $c0

    nop                                           ; $4af6: $00

Call_0a4_4af7:
    add b                                         ; $4af7: $80
    add b                                         ; $4af8: $80
    nop                                           ; $4af9: $00
    nop                                           ; $4afa: $00
    sub b                                         ; $4afb: $90
    db $10                                        ; $4afc: $10
    add b                                         ; $4afd: $80
    jr nz, jr_0a4_4b00                            ; $4afe: $20 $00

jr_0a4_4b00:
    ret z                                         ; $4b00: $c8

    nop                                           ; $4b01: $00
    and d                                         ; $4b02: $a2

Jump_0a4_4b03:
    ld b, d                                       ; $4b03: $42
    ld hl, sp+$00                                 ; $4b04: $f8 $00
    db $fc                                        ; $4b06: $fc
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    or $08                                        ; $4b09: $f6 $08
    ld bc, $0300                                  ; $4b0b: $01 $00 $03
    nop                                           ; $4b0e: $00
    add hl, bc                                    ; $4b0f: $09
    ld [bc], a                                    ; $4b10: $02
    nop                                           ; $4b11: $00
    rlca                                          ; $4b12: $07
    nop                                           ; $4b13: $00
    dec d                                         ; $4b14: $15
    db $10                                        ; $4b15: $10
    dec bc                                        ; $4b16: $0b
    nop                                           ; $4b17: $00
    rla                                           ; $4b18: $17
    nop                                           ; $4b19: $00
    nop                                           ; $4b1a: $00
    rrca                                          ; $4b1b: $0f
    nop                                           ; $4b1c: $00
    dec e                                         ; $4b1d: $1d
    ld [bc], a                                    ; $4b1e: $02
    cpl                                           ; $4b1f: $2f
    ld [$405f], sp                                ; $4b20: $08 $5f $40
    nop                                           ; $4b23: $00
    cpl                                           ; $4b24: $2f
    nop                                           ; $4b25: $00
    dec de                                        ; $4b26: $1b
    inc b                                         ; $4b27: $04
    scf                                           ; $4b28: $37
    nop                                           ; $4b29: $00
    ld e, a                                       ; $4b2a: $5f
    nop                                           ; $4b2b: $00
    ld b, c                                       ; $4b2c: $41
    ld a, a                                       ; $4b2d: $7f
    ld [hl], b                                    ; $4b2e: $70
    inc bc                                        ; $4b2f: $03
    or b                                          ; $4b30: $b0
    jr nz, jr_0a4_4af3                            ; $4b31: $20 $c0

    nop                                           ; $4b33: $00
    and b                                         ; $4b34: $a0
    ld b, $04                                     ; $4b35: $06 $04
    nop                                           ; $4b37: $00
    add sp, $00                                   ; $4b38: $e8 $00
    ret nc                                        ; $4b3a: $d0

    nop                                           ; $4b3b: $00
    xor h                                         ; $4b3c: $ac
    ld b, h                                       ; $4b3d: $44
    ldh a, [rP1]                                  ; $4b3e: $f0 $00
    nop                                           ; $4b40: $00
    jp c, $f800                                   ; $4b41: $da $00 $f8

    db $10                                        ; $4b44: $10
    or $02                                        ; $4b45: $f6 $02
    cp b                                          ; $4b47: $b8
    ld b, b                                       ; $4b48: $40
    db $10                                        ; $4b49: $10
    db $ec                                        ; $4b4a: $ec
    db $10                                        ; $4b4b: $10
    or $cc                                        ; $4b4c: $f6 $cc

jr_0a4_4b4e:
    rlca                                          ; $4b4e: $07
    ld a, [bc]                                    ; $4b4f: $0a
    dec c                                         ; $4b50: $0d
    inc bc                                        ; $4b51: $03
    inc c                                         ; $4b52: $0c
    nop                                           ; $4b53: $00
    ld b, $09                                     ; $4b54: $06 $09
    rlca                                          ; $4b56: $07
    jr @+$0d                                      ; $4b57: $18 $0b

    inc d                                         ; $4b59: $14
    ld [hl-], a                                   ; $4b5a: $32
    dec l                                         ; $4b5b: $2d
    ld b, $4b                                     ; $4b5c: $06 $4b
    ld a, l                                       ; $4b5e: $7d
    dec b                                         ; $4b5f: $05
    rlca                                          ; $4b60: $07
    add b                                         ; $4b61: $80
    ld bc, $9500                                  ; $4b62: $01 $00 $95
    inc b                                         ; $4b65: $04
    add b                                         ; $4b66: $80
    nop                                           ; $4b67: $00
    ret nz                                        ; $4b68: $c0

    ld b, b                                       ; $4b69: $40
    and b                                         ; $4b6a: $a0
    ld h, b                                       ; $4b6b: $60
    jr nz, jr_0a4_4b4e                            ; $4b6c: $20 $e0

    ret nz                                        ; $4b6e: $c0

    ldh [rP1], a                                  ; $4b6f: $e0 $00
    ld bc, $0b00                                  ; $4b71: $01 $00 $0b
    ld [$0102], sp                                ; $4b74: $08 $02 $01
    rlca                                          ; $4b77: $07
    nop                                           ; $4b78: $00
    inc b                                         ; $4b79: $04
    dec bc                                        ; $4b7a: $0b
    db $10                                        ; $4b7b: $10
    rlca                                          ; $4b7c: $07
    nop                                           ; $4b7d: $00
    dec c                                         ; $4b7e: $0d
    ld l, b                                       ; $4b7f: $68
    nop                                           ; $4b80: $00
    sbc $20                                       ; $4b81: $de $20
    ld b, b                                       ; $4b83: $40
    cp $78                                        ; $4b84: $fe $78
    nop                                           ; $4b86: $00
    add sp, $10                                   ; $4b87: $e8 $10
    db $f4                                        ; $4b89: $f4
    nop                                           ; $4b8a: $00
    ld hl, sp+$00                                 ; $4b8b: $f8 $00
    nop                                           ; $4b8d: $00
    ld a, [c]                                     ; $4b8e: $f2
    ld [bc], a                                    ; $4b8f: $02
    xor b                                         ; $4b90: $a8
    ld b, b                                       ; $4b91: $40
    daa                                           ; $4b92: $27
    jr nz, jr_0a4_4b98                            ; $4b93: $20 $03

    nop                                           ; $4b95: $00
    jr nz, jr_0a4_4bad                            ; $4b96: $20 $15

jr_0a4_4b98:
    ld [de], a                                    ; $4b98: $12
    jr nz, jr_0a4_4b9b                            ; $4b99: $20 $00

jr_0a4_4b9b:
    nop                                           ; $4b9b: $00
    ld b, $21                                     ; $4b9c: $06 $21
    rrca                                          ; $4b9e: $0f

jr_0a4_4b9f:
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    rra                                           ; $4ba1: $1f
    nop                                           ; $4ba2: $00
    ld hl, sp+$07                                 ; $4ba3: $f8 $07
    push hl                                       ; $4ba5: $e5
    ld a, [de]                                    ; $4ba6: $1a
    reti                                          ; $4ba7: $d9


    jr nz, jr_0a4_4baa                            ; $4ba8: $20 $00

jr_0a4_4baa:
    db $e3                                        ; $4baa: $e3
    ld b, b                                       ; $4bab: $40
    and h                                         ; $4bac: $a4

jr_0a4_4bad:
    ret nz                                        ; $4bad: $c0

    ld hl, sp-$80                                 ; $4bae: $f8 $80
    xor b                                         ; $4bb0: $a8
    ret nz                                        ; $4bb1: $c0

    nop                                           ; $4bb2: $00
    db $e4                                        ; $4bb3: $e4
    ret nc                                        ; $4bb4: $d0

    sbc a                                         ; $4bb5: $9f
    ld h, b                                       ; $4bb6: $60
    ld l, a                                       ; $4bb7: $6f
    sub b                                         ; $4bb8: $90
    or e                                          ; $4bb9: $b3
    inc c                                         ; $4bba: $0c
    nop                                           ; $4bbb: $00
    call Call_000_0a02                            ; $4bbc: $cd $02 $0a
    dec b                                         ; $4bbf: $05
    ld [hl], d                                    ; $4bc0: $72
    ld bc, HeaderManufacturerCode                 ; $4bc1: $01 $3f $01
    nop                                           ; $4bc4: $00
    dec b                                         ; $4bc5: $05
    inc bc                                        ; $4bc6: $03
    cp d                                          ; $4bc7: $ba
    push hl                                       ; $4bc8: $e5
    rst $00                                       ; $4bc9: $c7
    ld a, b                                       ; $4bca: $78
    jp hl                                         ; $4bcb: $e9


    ld [hl], $00                                  ; $4bcc: $36 $00
    di                                            ; $4bce: $f3
    ld a, b                                       ; $4bcf: $78
    ld hl, sp+$70                                 ; $4bd0: $f8 $70
    push hl                                       ; $4bd2: $e5
    jr c, jr_0a4_4b9f                             ; $4bd3: $38 $ca

    ld [hl], l                                    ; $4bd5: $75
    nop                                           ; $4bd6: $00
    sub l                                         ; $4bd7: $95
    ld [$039d], a                                 ; $4bd8: $ea $9d $03
    ld l, e                                       ; $4bdb: $6b
    rlca                                          ; $4bdc: $07
    sbc l                                         ; $4bdd: $9d
    inc bc                                        ; $4bde: $03
    nop                                           ; $4bdf: $00
    xor e                                         ; $4be0: $ab
    ld d, [hl]                                    ; $4be1: $56
    ld d, a                                       ; $4be2: $57
    xor [hl]                                      ; $4be3: $ae
    adc e                                         ; $4be4: $8b
    ld a, [hl]                                    ; $4be5: $7e
    ld b, a                                       ; $4be6: $47
    ld a, $00                                     ; $4be7: $3e $00
    ret                                           ; $4be9: $c9


    rlca                                          ; $4bea: $07
    xor d                                         ; $4beb: $aa
    push bc                                       ; $4bec: $c5
    db $e4                                        ; $4bed: $e4
    jp $c1b2                                      ; $4bee: $c3 $b2 $c1


    nop                                           ; $4bf1: $00
    ld [$e575], a                                 ; $4bf2: $ea $75 $e5
    ld a, [hl]                                    ; $4bf5: $7e
    ret c                                         ; $4bf6: $d8

    ld a, a                                       ; $4bf7: $7f
    push af                                       ; $4bf8: $f5
    ccf                                           ; $4bf9: $3f
    nop                                           ; $4bfa: $00
    cp $1f                                        ; $4bfb: $fe $1f
    ld h, a                                       ; $4bfd: $67
    add c                                         ; $4bfe: $81
    xor e                                         ; $4bff: $ab
    ld b, c                                       ; $4c00: $41
    ld e, l                                       ; $4c01: $5d
    and e                                         ; $4c02: $a3
    nop                                           ; $4c03: $00
    cp c                                          ; $4c04: $b9
    rst $00                                       ; $4c05: $c7
    ld l, e                                       ; $4c06: $6b
    sbc [hl]                                      ; $4c07: $9e
    rla                                           ; $4c08: $17
    cp $0f                                        ; $4c09: $fe $0f
    db $fc                                        ; $4c0b: $fc
    inc b                                         ; $4c0c: $04
    ccf                                           ; $4c0d: $3f
    ld hl, sp+$02                                 ; $4c0e: $f8 $02
    inc bc                                        ; $4c10: $03
    inc b                                         ; $4c11: $04
    jr nz, jr_0a4_4c15                            ; $4c12: $20 $01

    ld a, [bc]                                    ; $4c14: $0a

jr_0a4_4c15:
    dec c                                         ; $4c15: $0d
    nop                                           ; $4c16: $00
    dec d                                         ; $4c17: $15
    ld a, [de]                                    ; $4c18: $1a
    ld a, [de]                                    ; $4c19: $1a
    dec d                                         ; $4c1a: $15
    inc sp                                        ; $4c1b: $33
    cpl                                           ; $4c1c: $2f
    ld l, l                                       ; $4c1d: $6d
    ld e, a                                       ; $4c1e: $5f
    ld d, b                                       ; $4c1f: $50
    cp d                                          ; $4c20: $ba
    ld e, $07                                     ; $4c21: $1e $07
    add sp, -$28                                  ; $4c23: $e8 $d8
    rlca                                          ; $4c25: $07
    xor b                                         ; $4c26: $a8
    rst $38                                       ; $4c27: $ff
    or b                                          ; $4c28: $b0
    rst $38                                       ; $4c29: $ff
    nop                                           ; $4c2a: $00
    sbc b                                         ; $4c2b: $98
    rst $38                                       ; $4c2c: $ff
    call nc, $c8bf                                ; $4c2d: $d4 $bf $c8
    cp a                                          ; $4c30: $bf
    xor d                                         ; $4c31: $aa
    rst $18                                       ; $4c32: $df
    nop                                           ; $4c33: $00
    push bc                                       ; $4c34: $c5
    cp a                                          ; $4c35: $bf
    and [hl]                                      ; $4c36: $a6
    rst $18                                       ; $4c37: $df
    db $d3                                        ; $4c38: $d3
    xor a                                         ; $4c39: $af
    cp d                                          ; $4c3a: $ba
    rst $00                                       ; $4c3b: $c7
    nop                                           ; $4c3c: $00
    ld sp, hl                                     ; $4c3d: $f9
    add a                                         ; $4c3e: $87
    cp l                                          ; $4c3f: $bd
    jp $83fc                                      ; $4c40: $c3 $fc $83


    or [hl]                                       ; $4c43: $b6
    rst $08                                       ; $4c44: $cf
    db $10                                        ; $4c45: $10
    or $8f                                        ; $4c46: $f6 $8f
    rst $30                                       ; $4c48: $f7
    ld [bc], a                                    ; $4c49: $02
    ld [hl], b                                    ; $4c4a: $70
    or [hl]                                       ; $4c4b: $b6
    rst $08                                       ; $4c4c: $cf
    ld hl, sp-$31                                 ; $4c4d: $f8 $cf
    nop                                           ; $4c4f: $00
    ret c                                         ; $4c50: $d8

    rst $28                                       ; $4c51: $ef
    or l                                          ; $4c52: $b5
    rst $28                                       ; $4c53: $ef
    db $e4                                        ; $4c54: $e4
    cp a                                          ; $4c55: $bf
    sbc h                                         ; $4c56: $9c
    rst $30                                       ; $4c57: $f7
    ld b, b                                       ; $4c58: $40
    call nc, Call_000_0034                        ; $4c59: $d4 $34 $00
    jp c, $b6af                                   ; $4c5c: $da $af $b6

    rst $08                                       ; $4c5f: $cf
    cp $87                                        ; $4c60: $fe $87
    nop                                           ; $4c62: $00
    cp e                                          ; $4c63: $bb
    rst $00                                       ; $4c64: $c7
    rst $38                                       ; $4c65: $ff
    add e                                         ; $4c66: $83
    db $fd                                        ; $4c67: $fd
    add e                                         ; $4c68: $83
    cp a                                          ; $4c69: $bf
    pop bc                                        ; $4c6a: $c1
    nop                                           ; $4c6b: $00
    sbc $a1                                       ; $4c6c: $de $a1
    cp a                                          ; $4c6e: $bf
    ret nz                                        ; $4c6f: $c0

    rst $18                                       ; $4c70: $df
    ldh [$cf], a                                  ; $4c71: $e0 $cf
    ldh a, [$30]                                  ; $4c73: $f0 $30
    cp a                                          ; $4c75: $bf
    ldh [$d1], a                                  ; $4c76: $e0 $d1
    dec h                                         ; $4c78: $25
    ret c                                         ; $4c79: $d8

    dec b                                         ; $4c7a: $05
    inc bc                                        ; $4c7b: $03
    inc bc                                        ; $4c7c: $03
    dec c                                         ; $4c7d: $0d
    rrca                                          ; $4c7e: $0f
    jr nz, jr_0a4_4cb3                            ; $4c7f: $20 $32

    ccf                                           ; $4c81: $3f
    pop hl                                        ; $4c82: $e1
    dec e                                         ; $4c83: $1d
    rrca                                          ; $4c84: $0f
    rrca                                          ; $4c85: $0f
    ld [hl], h                                    ; $4c86: $74
    ld a, e                                       ; $4c87: $7b
    jp nc, $fd08                                  ; $4c88: $d2 $08 $fd

    ld a, d                                       ; $4c8b: $7a
    rst $38                                       ; $4c8c: $ff
    dec e                                         ; $4c8d: $1d
    nop                                           ; $4c8e: $00
    ld b, $0f                                     ; $4c8f: $06 $0f
    rrca                                          ; $4c91: $0f
    db $fd                                        ; $4c92: $fd
    nop                                           ; $4c93: $00
    cp $3a                                        ; $4c94: $fe $3a
    rst $38                                       ; $4c96: $ff
    add [hl]                                      ; $4c97: $86
    ld a, a                                       ; $4c98: $7f
    ld a, e                                       ; $4c99: $7b
    add a                                         ; $4c9a: $87
    xor l                                         ; $4c9b: $ad
    nop                                           ; $4c9c: $00
    ld d, e                                       ; $4c9d: $53
    ld d, b                                       ; $4c9e: $50
    xor a                                         ; $4c9f: $af
    ld a, a                                       ; $4ca0: $7f
    ld a, a                                       ; $4ca1: $7f
    and h                                         ; $4ca2: $a4
    ei                                            ; $4ca3: $fb
    ld c, e                                       ; $4ca4: $4b
    nop                                           ; $4ca5: $00
    db $f4                                        ; $4ca6: $f4
    and a                                         ; $4ca7: $a7
    ret c                                         ; $4ca8: $d8

    ld b, d                                       ; $4ca9: $42
    cp a                                          ; $4caa: $bf
    dec a                                         ; $4cab: $3d
    jp Jump_000_00db                              ; $4cac: $c3 $db $00


    rst $20                                       ; $4caf: $e7
    ccf                                           ; $4cb0: $3f
    rst $38                                       ; $4cb1: $ff
    rst $28                                       ; $4cb2: $ef

jr_0a4_4cb3:
    ldh a, [$bf]                                  ; $4cb3: $f0 $bf
    ldh a, [$d7]                                  ; $4cb5: $f0 $d7
    nop                                           ; $4cb7: $00
    ld hl, sp-$71                                 ; $4cb8: $f8 $8f
    ld hl, sp-$75                                 ; $4cba: $f8 $8b
    db $fc                                        ; $4cbc: $fc
    add a                                         ; $4cbd: $87
    db $fc                                        ; $4cbe: $fc
    push bc                                       ; $4cbf: $c5
    nop                                           ; $4cc0: $00
    cp [hl]                                       ; $4cc1: $be
    jp $a2be                                      ; $4cc2: $c3 $be $a2


    rst $18                                       ; $4cc5: $df
    jp hl                                         ; $4cc6: $e9


    rst $10                                       ; $4cc7: $d7
    cp c                                          ; $4cc8: $b9
    nop                                           ; $4cc9: $00
    rst $00                                       ; $4cca: $c7
    cp b                                          ; $4ccb: $b8
    rst $20                                       ; $4ccc: $e7
    sbc h                                         ; $4ccd: $9c
    db $e3                                        ; $4cce: $e3
    call z, $ccf3                                 ; $4ccf: $cc $f3 $cc
    db $10                                        ; $4cd2: $10
    ei                                            ; $4cd3: $fb
    and [hl]                                      ; $4cd4: $a6
    ld sp, hl                                     ; $4cd5: $f9
    ld h, b                                       ; $4cd6: $60
    jr c, jr_0a4_4cd9                             ; $4cd7: $38 $00

jr_0a4_4cd9:
    nop                                           ; $4cd9: $00
    dec bc                                        ; $4cda: $0b
    dec bc                                        ; $4cdb: $0b
    ld h, d                                       ; $4cdc: $62
    db $fd                                        ; $4cdd: $fd
    ld b, c                                       ; $4cde: $41
    ld l, $a3                                     ; $4cdf: $2e $a3
    inc de                                        ; $4ce1: $13
    rst $38                                       ; $4ce2: $ff
    rst $38                                       ; $4ce3: $ff
    ld l, c                                       ; $4ce4: $69
    db $10                                        ; $4ce5: $10
    ld b, b                                       ; $4ce6: $40
    ld a, a                                       ; $4ce7: $7f
    nop                                           ; $4ce8: $00
    ld a, a                                       ; $4ce9: $7f
    or a                                          ; $4cea: $b7
    rst $38                                       ; $4ceb: $ff
    ld e, e                                       ; $4cec: $5b
    rst $38                                       ; $4ced: $ff
    and [hl]                                      ; $4cee: $a6
    db $fd                                        ; $4cef: $fd
    db $d3                                        ; $4cf0: $d3
    nop                                           ; $4cf1: $00
    cp h                                          ; $4cf2: $bc
    or e                                          ; $4cf3: $b3
    sbc $c9                                       ; $4cf4: $de $c9
    cp a                                          ; $4cf6: $bf
    cp b                                          ; $4cf7: $b8
    rst $08                                       ; $4cf8: $cf
    call nc, $af00                                ; $4cf9: $d4 $00 $af
    cp h                                          ; $4cfc: $bc
    rst $00                                       ; $4cfd: $c7
    ld a, [$aa87]                                 ; $4cfe: $fa $87 $aa
    rst $38                                       ; $4d01: $ff
    pop de                                        ; $4d02: $d1
    nop                                           ; $4d03: $00
    rst $38                                       ; $4d04: $ff
    ld c, h                                       ; $4d05: $4c
    di                                            ; $4d06: $f3
    xor [hl]                                      ; $4d07: $ae
    ld [hl], c                                    ; $4d08: $71
    sub l                                         ; $4d09: $95
    ld l, d                                       ; $4d0a: $6a
    rst $20                                       ; $4d0b: $e7
    nop                                           ; $4d0c: $00
    ccf                                           ; $4d0d: $3f
    db $fc                                        ; $4d0e: $fc
    rst $38                                       ; $4d0f: $ff
    ld a, [bc]                                    ; $4d10: $0a
    rst $38                                       ; $4d11: $ff
    ld d, h                                       ; $4d12: $54
    ei                                            ; $4d13: $fb
    inc hl                                        ; $4d14: $23
    ld [bc], a                                    ; $4d15: $02
    db $fc                                        ; $4d16: $fc
    rst $08                                       ; $4d17: $cf
    ldh a, [$67]                                  ; $4d18: $f0 $67
    ld hl, sp+$33                                 ; $4d1a: $f8 $33
    cp [hl]                                       ; $4d1c: $be
    ld [bc], a                                    ; $4d1d: $02
    ld l, l                                       ; $4d1e: $6d
    ld a, [bc]                                    ; $4d1f: $0a
    rst $38                                       ; $4d20: $ff
    or [hl]                                       ; $4d21: $b6
    rst $38                                       ; $4d22: $ff
    adc l                                         ; $4d23: $8d
    inc [hl]                                      ; $4d24: $34
    nop                                           ; $4d25: $00
    dec l                                         ; $4d26: $2d
    sbc [hl]                                      ; $4d27: $9e
    nop                                           ; $4d28: $00
    rst $38                                       ; $4d29: $ff
    add hl, bc                                    ; $4d2a: $09
    rst $38                                       ; $4d2b: $ff
    xor h                                         ; $4d2c: $ac
    rst $38                                       ; $4d2d: $ff
    ld e, l                                       ; $4d2e: $5d
    stop                                          ; $4d2f: $10 $00
    cp [hl]                                       ; $4d31: $be
    jp $18e0                                      ; $4d32: $c3 $e0 $18


    ld [hl+], a                                   ; $4d35: $22
    xor a                                         ; $4d36: $af
    ret nc                                        ; $4d37: $d0

    ldh [$08], a                                  ; $4d38: $e0 $08
    or a                                          ; $4d3a: $b7
    add sp, $04                                   ; $4d3b: $e8 $04
    ld bc, $0c60                                  ; $4d3d: $01 $60 $0c
    add e                                         ; $4d40: $83
    ld bc, $0eb0                                  ; $4d41: $01 $b0 $0e
    ld c, $19                                     ; $4d44: $0e $19
    rra                                           ; $4d46: $1f
    add hl, hl                                    ; $4d47: $29

jr_0a4_4d48:
    nop                                           ; $4d48: $00
    ld hl, $1441                                  ; $4d49: $21 $41 $14
    ld b, b                                       ; $4d4c: $40
    inc bc                                        ; $4d4d: $03
    xor b                                         ; $4d4e: $a8
    ld [bc], a                                    ; $4d4f: $02
    dec b                                         ; $4d50: $05
    jr z, @+$41                                   ; $4d51: $28 $3f

    ld [hl], b                                    ; $4d53: $70
    ld e, a                                       ; $4d54: $5f
    sub b                                         ; $4d55: $90
    nop                                           ; $4d56: $00
    rst $38                                       ; $4d57: $ff
    or b                                          ; $4d58: $b0
    rst $18                                       ; $4d59: $df
    ld d, b                                       ; $4d5a: $50
    cp a                                          ; $4d5b: $bf
    and b                                         ; $4d5c: $a0

jr_0a4_4d5d:
    ld a, a                                       ; $4d5d: $7f
    ld h, b                                       ; $4d5e: $60
    add b                                         ; $4d5f: $80
    inc b                                         ; $4d60: $04
    nop                                           ; $4d61: $00
    add b                                         ; $4d62: $80
    add b                                         ; $4d63: $80
    ld b, b                                       ; $4d64: $40
    ret nz                                        ; $4d65: $c0

    jr nz, jr_0a4_4d48                            ; $4d66: $20 $e0

    jr nz, jr_0a4_4d6a                            ; $4d68: $20 $00

jr_0a4_4d6a:
    ldh [rNR10], a                                ; $4d6a: $e0 $10
    ldh a, [$08]                                  ; $4d6c: $f0 $08
    ld hl, sp+$08                                 ; $4d6e: $f8 $08
    ld hl, sp+$04                                 ; $4d70: $f8 $04
    nop                                           ; $4d72: $00
    db $fc                                        ; $4d73: $fc
    dec c                                         ; $4d74: $0d
    ld a, [bc]                                    ; $4d75: $0a
    ld [de], a                                    ; $4d76: $12
    dec e                                         ; $4d77: $1d

jr_0a4_4d78:
    rla                                           ; $4d78: $17
    jr jr_0a4_4da9                                ; $4d79: $18 $2e

    nop                                           ; $4d7b: $00
    ld sp, $625d                                  ; $4d7c: $31 $5d $62
    xor [hl]                                      ; $4d7f: $ae
    pop de                                        ; $4d80: $d1
    call c, $bba3                                 ; $4d81: $dc $a3 $bb
    nop                                           ; $4d84: $00
    ld b, l                                       ; $4d85: $45
    ld b, b                                       ; $4d86: $40
    rst $38                                       ; $4d87: $ff
    ret nz                                        ; $4d88: $c0

    ld a, a                                       ; $4d89: $7f
    ld b, b                                       ; $4d8a: $40
    rst $38                                       ; $4d8b: $ff
    ld b, b                                       ; $4d8c: $40
    rst $20                                       ; $4d8d: $e7
    or e                                          ; $4d8e: $b3
    dec b                                         ; $4d8f: $05
    ld [bc], a                                    ; $4d90: $02
    ld [$04d5], sp                                ; $4d91: $08 $d5 $04
    cp $02                                        ; $4d94: $fe $02
    scf                                           ; $4d96: $37
    rrca                                          ; $4d97: $0f
    ld [bc], a                                    ; $4d98: $02
    jr c, @+$04                                   ; $4d99: $38 $02

    daa                                           ; $4d9b: $27
    jr nz, jr_0a4_4dde                            ; $4d9c: $20 $40

    ret nz                                        ; $4d9e: $c0

    ld c, b                                       ; $4d9f: $48
    ld [$f010], sp                                ; $4da0: $08 $10 $f0
    ld a, l                                       ; $4da3: $7d
    add e                                         ; $4da4: $83
    ei                                            ; $4da5: $fb
    nop                                           ; $4da6: $00
    dec b                                         ; $4da7: $05
    ld d, l                                       ; $4da8: $55

jr_0a4_4da9:
    xor e                                         ; $4da9: $ab
    and a                                         ; $4daa: $a7
    ld e, a                                       ; $4dab: $5f
    ld e, d                                       ; $4dac: $5a
    cp a                                          ; $4dad: $bf
    ld [hl], a                                    ; $4dae: $77
    inc b                                         ; $4daf: $04
    cp $ad                                        ; $4db0: $fe $ad
    cp $57                                        ; $4db2: $fe $57
    db $fc                                        ; $4db4: $fc
    ld a, [hl+]                                   ; $4db5: $2a
    jr z, jr_0a4_4d78                             ; $4db6: $28 $c0

    rst $38                                       ; $4db8: $ff
    inc bc                                        ; $4db9: $03
    cp b                                          ; $4dba: $b8
    ld a, a                                       ; $4dbb: $7f
    or $0f                                        ; $4dbc: $f6 $0f
    db $fd                                        ; $4dbe: $fd
    inc bc                                        ; $4dbf: $03
    ld a, [hl-]                                   ; $4dc0: $3a
    ld b, b                                       ; $4dc1: $40
    ld l, l                                       ; $4dc2: $6d
    rlca                                          ; $4dc3: $07
    inc h                                         ; $4dc4: $24
    add b                                         ; $4dc5: $80
    rst $38                                       ; $4dc6: $ff
    ld a, b                                       ; $4dc7: $78
    ld [$fc04], sp                                ; $4dc8: $08 $04 $fc
    ld d, [hl]                                    ; $4dcb: $56
    jr c, jr_0a4_4d5d                             ; $4dcc: $38 $8f

    db $fc                                        ; $4dce: $fc
    nop                                           ; $4dcf: $00
    dec de                                        ; $4dd0: $1b
    db $fc                                        ; $4dd1: $fc
    dec bc                                        ; $4dd2: $0b
    db $fc                                        ; $4dd3: $fc
    rrca                                          ; $4dd4: $0f
    ld hl, sp+$1f                                 ; $4dd5: $f8 $1f
    ld hl, sp+$03                                 ; $4dd7: $f8 $03
    scf                                           ; $4dd9: $37
    ld hl, sp+$5f                                 ; $4dda: $f8 $5f
    ldh a, [$3f]                                  ; $4ddc: $f0 $3f

jr_0a4_4dde:
    ldh a, [$2f]                                  ; $4dde: $f0 $2f
    ld d, b                                       ; $4de0: $50
    sbc [hl]                                      ; $4de1: $9e
    rlca                                          ; $4de2: $07
    inc bc                                        ; $4de3: $03
    ldh a, [$7f]                                  ; $4de4: $f0 $7f
    db $ec                                        ; $4de6: $ec
    rra                                           ; $4de7: $1f
    ei                                            ; $4de8: $fb
    rlca                                          ; $4de9: $07
    ld a, a                                       ; $4dea: $7f
    ld b, b                                       ; $4deb: $40
    ld e, [hl]                                    ; $4dec: $5e
    jr nz, jr_0a4_4e1f                            ; $4ded: $20 $30

    ld hl, sp+$3f                                 ; $4def: $f8 $3f
    ld e, [hl]                                    ; $4df1: $5e
    ld [$076e], sp                                ; $4df2: $08 $6e $07

Jump_0a4_4df5:
    ldh a, [$af]                                  ; $4df5: $f0 $af
    ldh a, [$7f]                                  ; $4df7: $f0 $7f
    nop                                           ; $4df9: $00
    ldh [$bf], a                                  ; $4dfa: $e0 $bf
    ldh [$5f], a                                  ; $4dfc: $e0 $5f
    ldh [$df], a                                  ; $4dfe: $e0 $df
    ldh [$7f], a                                  ; $4e00: $e0 $7f
    db $10                                        ; $4e02: $10
    ret nz                                        ; $4e03: $c0

    cp h                                          ; $4e04: $bc
    jp Jump_0a4_48ab                              ; $4e05: $c3 $ab $48


    rst $20                                       ; $4e08: $e7

jr_0a4_4e09:
    rra                                           ; $4e09: $1f
    ld hl, sp-$01                                 ; $4e0a: $f8 $ff
    adc [hl]                                      ; $4e0c: $8e
    cp e                                          ; $4e0d: $bb
    jr z, jr_0a4_4e09                             ; $4e0e: $28 $f9

    rlca                                          ; $4e10: $07
    ld a, $83                                     ; $4e11: $3e $83
    dec b                                         ; $4e13: $05
    or e                                          ; $4e14: $b3
    ld bc, $07f2                                  ; $4e15: $01 $f2 $07
    cp $2f                                        ; $4e18: $fe $2f
    ld bc, $69cf                                  ; $4e1a: $01 $cf $69
    db $10                                        ; $4e1d: $10
    rrca                                          ; $4e1e: $0f

jr_0a4_4e1f:
    inc b                                         ; $4e1f: $04
    inc b                                         ; $4e20: $04
    ldh [rOBP1], a                                ; $4e21: $e0 $49
    ld e, h                                       ; $4e23: $5c
    dec bc                                        ; $4e24: $0b
    ld e, $39                                     ; $4e25: $1e $39
    ld bc, $fc04                                  ; $4e27: $01 $04 $fc
    add h                                         ; $4e2a: $84
    db $fc                                        ; $4e2b: $fc
    ld a, [c]                                     ; $4e2c: $f2
    ld a, [hl]                                    ; $4e2d: $7e
    db $ed                                        ; $4e2e: $ed
    ld a, [hl]                                    ; $4e2f: $7e
    nop                                           ; $4e30: $00
    db $10                                        ; $4e31: $10
    ld a, a                                       ; $4e32: $7f
    rst $38                                       ; $4e33: $ff
    add d                                         ; $4e34: $82
    ld b, $01                                     ; $4e35: $06 $01
    ld a, h                                       ; $4e37: $7c
    db $fc                                        ; $4e38: $fc
    ld d, b                                       ; $4e39: $50
    ldh a, [rNR41]                                ; $4e3a: $f0 $20
    or b                                          ; $4e3c: $b0
    ldh a, [rIE]                                  ; $4e3d: $f0 $ff
    rlca                                          ; $4e3f: $07
    ret nz                                        ; $4e40: $c0

    ret nz                                        ; $4e41: $c0

    or b                                          ; $4e42: $b0
    ldh a, [$88]                                  ; $4e43: $f0 $88
    nop                                           ; $4e45: $00
    ld sp, hl                                     ; $4e46: $f9

jr_0a4_4e47:
    add l                                         ; $4e47: $85
    xor l                                         ; $4e48: $ad
    db $d3                                        ; $4e49: $d3
    or [hl]                                       ; $4e4a: $b6
    ret                                           ; $4e4b: $c9


    ld a, d                                       ; $4e4c: $7a
    ld b, l                                       ; $4e4d: $45
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    inc bc                                        ; $4e50: $03
    ld b, e                                       ; $4e51: $43
    ld c, l                                       ; $4e52: $4d
    set 2, l                                      ; $4e53: $cb $d5
    push de                                       ; $4e55: $d5
    db $eb                                        ; $4e56: $eb
    nop                                           ; $4e57: $00
    xor l                                         ; $4e58: $ad
    db $d3                                        ; $4e59: $d3
    cp [hl]                                       ; $4e5a: $be
    jp nz, $e69a                                  ; $4e5b: $c2 $9a $e6

    and h                                         ; $4e5e: $a4
    call c, $9f16                                 ; $4e5f: $dc $16 $9f
    rst $38                                       ; $4e62: $ff
    ldh [$ef], a                                  ; $4e63: $e0 $ef
    ld b, $9f                                     ; $4e65: $06 $9f
    ld b, h                                       ; $4e67: $44
    inc d                                         ; $4e68: $14
    ld c, c                                       ; $4e69: $49
    inc c                                         ; $4e6a: $0c
    nop                                           ; $4e6b: $00
    scf                                           ; $4e6c: $37
    rst $38                                       ; $4e6d: $ff
    rlca                                          ; $4e6e: $07
    inc c                                         ; $4e6f: $0c
    jr nc, jr_0a4_4ecb                            ; $4e70: $30 $59

    inc c                                         ; $4e72: $0c
    ccf                                           ; $4e73: $3f
    ld c, $50                                     ; $4e74: $0e $50
    ld l, d                                       ; $4e76: $6a
    inc d                                         ; $4e77: $14
    inc b                                         ; $4e78: $04
    jr nz, jr_0a4_4e80                            ; $4e79: $20 $05

    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    ei                                            ; $4e7d: $fb
    rst $38                                       ; $4e7e: $ff
    ld b, c                                       ; $4e7f: $41

jr_0a4_4e80:
    jr c, jr_0a4_4ea2                             ; $4e80: $38 $20

    db $f4                                        ; $4e82: $f4
    inc sp                                        ; $4e83: $33
    rlca                                          ; $4e84: $07
    ld d, l                                       ; $4e85: $55
    rlca                                          ; $4e86: $07
    ldh [rDIV], a                                 ; $4e87: $e0 $04
    push de                                       ; $4e89: $d5
    jr nz, @+$12                                  ; $4e8a: $20 $10

    and b                                         ; $4e8c: $a0
    cp b                                          ; $4e8d: $b8
    nop                                           ; $4e8e: $00
    ccf                                           ; $4e8f: $3f
    ldh a, [rDIV]                                 ; $4e90: $f0 $04
    ld d, h                                       ; $4e92: $54
    xor b                                         ; $4e93: $a8
    call $e807                                    ; $4e94: $cd $07 $e8
    cp b                                          ; $4e97: $b8
    jr nz, @-$54                                  ; $4e98: $20 $aa

    and h                                         ; $4e9a: $a4
    ld bc, $ff00                                  ; $4e9b: $01 $00 $ff
    ld d, h                                       ; $4e9e: $54
    inc bc                                        ; $4e9f: $03
    cp e                                          ; $4ea0: $bb
    rlca                                          ; $4ea1: $07

jr_0a4_4ea2:
    ld a, l                                       ; $4ea2: $7d
    ld h, b                                       ; $4ea3: $60
    inc bc                                        ; $4ea4: $03
    ld d, c                                       ; $4ea5: $51
    and d                                         ; $4ea6: $a2
    ld de, $ff1f                                  ; $4ea7: $11 $1f $ff
    ld h, e                                       ; $4eaa: $63
    ld a, [$1504]                                 ; $4eab: $fa $04 $15
    ld l, $08                                     ; $4eae: $2e $08
    ld [hl], l                                    ; $4eb0: $75
    rst $38                                       ; $4eb1: $ff
    jr z, jr_0a4_4e47                             ; $4eb2: $28 $93

    ld d, $2e                                     ; $4eb4: $16 $2e
    ld c, b                                       ; $4eb6: $48
    ld de, $ff15                                  ; $4eb7: $11 $15 $ff
    xor e                                         ; $4eba: $ab
    and $04                                       ; $4ebb: $e6 $04
    ld [$50ff], a                                 ; $4ebd: $ea $ff $50
    inc h                                         ; $4ec0: $24
    db $10                                        ; $4ec1: $10
    ld b, h                                       ; $4ec2: $44
    ld a, [hl+]                                   ; $4ec3: $2a
    ld a, $05                                     ; $4ec4: $3e $05
    cp $ff                                        ; $4ec6: $fe $ff
    ld d, h                                       ; $4ec8: $54
    and $11                                       ; $4ec9: $e6 $11

jr_0a4_4ecb:
    ld a, [bc]                                    ; $4ecb: $0a
    rst $38                                       ; $4ecc: $ff
    ld b, c                                       ; $4ecd: $41
    ld d, a                                       ; $4ece: $57
    ld [hl-], a                                   ; $4ecf: $32
    dec b                                         ; $4ed0: $05
    di                                            ; $4ed1: $f3
    db $fc                                        ; $4ed2: $fc
    ld a, a                                       ; $4ed3: $7f
    add b                                         ; $4ed4: $80
    ld d, l                                       ; $4ed5: $55
    add [hl]                                      ; $4ed6: $86
    dec b                                         ; $4ed7: $05
    or $01                                        ; $4ed8: $f6 $01
    dec c                                         ; $4eda: $0d
    add $10                                       ; $4edb: $c6 $10
    rlc b                                         ; $4edd: $cb $00
    ld d, $0d                                     ; $4edf: $16 $0d
    ld hl, sp-$3a                                 ; $4ee1: $f8 $c6
    ld [$0005], sp                                ; $4ee3: $08 $05 $00
    ld hl, sp+$00                                 ; $4ee6: $f8 $00
    rlca                                          ; $4ee8: $07
    nop                                           ; $4ee9: $00
    rst $38                                       ; $4eea: $ff
    ei                                            ; $4eeb: $fb
    db $fc                                        ; $4eec: $fc
    rst $18                                       ; $4eed: $df
    ld hl, sp+$0b                                 ; $4eee: $f8 $0b
    ld bc, $3ffc                                  ; $4ef0: $01 $fc $3f
    ret c                                         ; $4ef3: $d8

    db $eb                                        ; $4ef4: $eb
    inc e                                         ; $4ef5: $1c
    rst $18                                       ; $4ef6: $df
    jr c, @+$0a                                   ; $4ef7: $38 $08

    ld [$14c2], sp                                ; $4ef9: $08 $c2 $14
    add hl, bc                                    ; $4efc: $09
    inc b                                         ; $4efd: $04
    jr c, @-$56                                   ; $4efe: $38 $a8

    ld hl, sp-$28                                 ; $4f00: $f8 $d8
    ld hl, sp+$04                                 ; $4f02: $f8 $04
    ld [$0064], sp                                ; $4f04: $08 $64 $00
    db $fc                                        ; $4f07: $fc
    or h                                          ; $4f08: $b4
    db $fc                                        ; $4f09: $fc
    ld l, h                                       ; $4f0a: $6c
    db $fc                                        ; $4f0b: $fc
    inc [hl]                                      ; $4f0c: $34
    db $fc                                        ; $4f0d: $fc
    ld e, d                                       ; $4f0e: $5a
    nop                                           ; $4f0f: $00
    cp $2e                                        ; $4f10: $fe $2e
    cp $1a                                        ; $4f12: $fe $1a
    cp $5e                                        ; $4f14: $fe $5e

jr_0a4_4f16:
    cp $bf                                        ; $4f16: $fe $bf
    sub h                                         ; $4f18: $94
    ld l, [hl]                                    ; $4f19: $6e
    dec b                                         ; $4f1a: $05
    sbc a                                         ; $4f1b: $9f
    pop hl                                        ; $4f1c: $e1
    or b                                          ; $4f1d: $b0
    ld bc, $0401                                  ; $4f1e: $01 $01 $04
    ld l, b                                       ; $4f21: $68
    ld e, l                                       ; $4f22: $5d
    ld h, d                                       ; $4f23: $62
    add b                                         ; $4f24: $80
    adc h                                         ; $4f25: $8c
    rrca                                          ; $4f26: $0f
    ld de, $7e1e                                  ; $4f27: $11 $1e $7e
    ld a, a                                       ; $4f2a: $7f
    ccf                                           ; $4f2b: $3f
    ccf                                           ; $4f2c: $3f
    rra                                           ; $4f2d: $1f
    nop                                           ; $4f2e: $00
    rra                                           ; $4f2f: $1f
    ld bc, $0e0f                                  ; $4f30: $01 $0f $0e
    ld de, $2619                                  ; $4f33: $11 $19 $26
    scf                                           ; $4f36: $37
    nop                                           ; $4f37: $00
    ld c, b                                       ; $4f38: $48
    ld l, $51                                     ; $4f39: $2e $51
    ei                                            ; $4f3b: $fb
    add a                                         ; $4f3c: $87
    db $ec                                        ; $4f3d: $ec
    sbc h                                         ; $4f3e: $9c
    or b                                          ; $4f3f: $b0
    nop                                           ; $4f40: $00
    ldh a, [$c4]                                  ; $4f41: $f0 $c4
    call nz, $f848                                ; $4f43: $c4 $48 $f8
    ld [hl], b                                    ; $4f46: $70
    ldh a, [rP1]                                  ; $4f47: $f0 $00
    nop                                           ; $4f49: $00
    sbc [hl]                                      ; $4f4a: $9e
    ld d, [hl]                                    ; $4f4b: $56
    ld [$d62a], a                                 ; $4f4c: $ea $2a $d6
    call nc, Call_0a4_68ac                        ; $4f4f: $d4 $ac $68
    inc h                                         ; $4f52: $24
    sbc b                                         ; $4f53: $98
    ccf                                           ; $4f54: $3f
    and d                                         ; $4f55: $a2
    dec b                                         ; $4f56: $05
    ld a, b                                       ; $4f57: $78
    ld hl, sp+$6a                                 ; $4f58: $f8 $6a
    dec c                                         ; $4f5a: $0d
    ret z                                         ; $4f5b: $c8

    ret z                                         ; $4f5c: $c8

    add a                                         ; $4f5d: $87
    inc b                                         ; $4f5e: $04
    ld [$1010], sp                                ; $4f5f: $08 $10 $10
    ldh [$9f], a                                  ; $4f62: $e0 $9f
    xor b                                         ; $4f64: $a8

jr_0a4_4f65:
    jr @+$0a                                      ; $4f65: $18 $08

    jr z, @-$56                                   ; $4f67: $28 $a8

    jr z, @-$1b                                   ; $4f69: $28 $e3

    or b                                          ; $4f6b: $b0
    jr z, jr_0a4_4f16                             ; $4f6c: $28 $a8

    jr z, @-$4e                                   ; $4f6e: $28 $b0

    ld [$ff09], sp                                ; $4f70: $08 $09 $ff
    ld a, $10                                     ; $4f73: $3e $10
    ld [hl-], a                                   ; $4f75: $32
    inc b                                         ; $4f76: $04
    ld a, [de]                                    ; $4f77: $1a
    jr nz, jr_0a4_4f81                            ; $4f78: $20 $07

    ld hl, sp+$40                                 ; $4f7a: $f8 $40
    db $10                                        ; $4f7c: $10
    rst $38                                       ; $4f7d: $ff
    rst $20                                       ; $4f7e: $e7
    ld hl, sp-$41                                 ; $4f7f: $f8 $bf

jr_0a4_4f81:
    ret nz                                        ; $4f81: $c0

    jr nz, @+$01                                  ; $4f82: $20 $ff

    add b                                         ; $4f84: $80
    inc b                                         ; $4f85: $04
    ld [$ff07], sp                                ; $4f86: $08 $07 $ff
    ld sp, hl                                     ; $4f89: $f9
    cp $3f                                        ; $4f8a: $fe $3f
    ld b, b                                       ; $4f8c: $40
    ret nz                                        ; $4f8d: $c0

    pop af                                        ; $4f8e: $f1
    ld a, [hl-]                                   ; $4f8f: $3a
    ret z                                         ; $4f90: $c8

    rst $38                                       ; $4f91: $ff
    db $fc                                        ; $4f92: $fc
    rrca                                          ; $4f93: $0f
    add sp, $1f                                   ; $4f94: $e8 $1f
    add b                                         ; $4f96: $80
    inc b                                         ; $4f97: $04
    jr c, @+$11                                   ; $4f98: $38 $0f

    ldh a, [$2f]                                  ; $4f9a: $f0 $2f
    ret nc                                        ; $4f9c: $d0

    scf                                           ; $4f9d: $37
    ret                                           ; $4f9e: $c9


    ccf                                           ; $4f9f: $3f

jr_0a4_4fa0:
    dec b                                         ; $4fa0: $05
    ldh [$1f], a                                  ; $4fa1: $e0 $1f
    ldh a, [$3f]                                  ; $4fa3: $f0 $3f
    ret nz                                        ; $4fa5: $c0

    rla                                           ; $4fa6: $17
    nop                                           ; $4fa7: $00
    ldh a, [rNR32]                                ; $4fa8: $f0 $1c
    ld c, b                                       ; $4faa: $48
    nop                                           ; $4fab: $00
    jp hl                                         ; $4fac: $e9


    rra                                           ; $4fad: $1f
    ld a, $ff                                     ; $4fae: $3e $ff
    rrca                                          ; $4fb0: $0f
    ldh a, [$1f]                                  ; $4fb1: $f0 $1f
    rst $20                                       ; $4fb3: $e7
    ldh [$a7], a                                  ; $4fb4: $e0 $a7
    rlca                                          ; $4fb6: $07
    ld e, [hl]                                    ; $4fb7: $5e
    ld [de], a                                    ; $4fb8: $12
    ld d, b                                       ; $4fb9: $50
    add hl, bc                                    ; $4fba: $09
    cp a                                          ; $4fbb: $bf
    ret nz                                        ; $4fbc: $c0

    db $fc                                        ; $4fbd: $fc
    add e                                         ; $4fbe: $83
    sbc a                                         ; $4fbf: $9f
    ld [$f9ff], sp                                ; $4fc0: $08 $ff $f9
    and $99                                       ; $4fc3: $e6 $99
    ld [bc], a                                    ; $4fc5: $02
    jr nz, @-$17                                  ; $4fc6: $20 $e7

    rra                                           ; $4fc8: $1f
    ld sp, hl                                     ; $4fc9: $f9
    db $10                                        ; $4fca: $10
    cp $99                                        ; $4fcb: $fe $99
    ld h, [hl]                                    ; $4fcd: $66

jr_0a4_4fce:
    ld [bc], a                                    ; $4fce: $02
    jr c, jr_0a4_4fa0                             ; $4fcf: $38 $cf

    ld hl, sp-$65                                 ; $4fd1: $f8 $9b
    ld a, h                                       ; $4fd3: $7c
    jr nc, jr_0a4_4f65                            ; $4fd4: $30 $8f

    ld a, b                                       ; $4fd6: $78
    inc b                                         ; $4fd7: $04
    jr c, jr_0a4_4ffe                             ; $4fd8: $38 $24

    add hl, de                                    ; $4fda: $19
    di                                            ; $4fdb: $f3
    rrca                                          ; $4fdc: $0f
    ld a, l                                       ; $4fdd: $7d
    rst $38                                       ; $4fde: $ff
    ld b, b                                       ; $4fdf: $40
    add c                                         ; $4fe0: $81
    xor [hl]                                      ; $4fe1: $ae
    ld [bc], a                                    ; $4fe2: $02
    ld bc, $41ff                                  ; $4fe3: $01 $ff $41
    cp a                                          ; $4fe6: $bf
    ld h, c                                       ; $4fe7: $61
    cp a                                          ; $4fe8: $bf
    add c                                         ; $4fe9: $81
    inc b                                         ; $4fea: $04
    jr jr_0a4_4fce                                ; $4feb: $18 $e1

    ccf                                           ; $4fed: $3f
    pop bc                                        ; $4fee: $c1
    ccf                                           ; $4fef: $3f
    pop bc                                        ; $4ff0: $c1
    ld a, a                                       ; $4ff1: $7f
    ld d, $18                                     ; $4ff2: $16 $18
    ld [hl], h                                    ; $4ff4: $74
    inc bc                                        ; $4ff5: $03
    or $01                                        ; $4ff6: $f6 $01
    ld d, b                                       ; $4ff8: $50
    add hl, de                                    ; $4ff9: $19
    nop                                           ; $4ffa: $00
    dec l                                         ; $4ffb: $2d
    rst $38                                       ; $4ffc: $ff
    ld b, [hl]                                    ; $4ffd: $46

jr_0a4_4ffe:
    inc b                                         ; $4ffe: $04
    sub [hl]                                      ; $4fff: $96
    ld a, a                                       ; $5000: $7f
    ld b, b                                       ; $5001: $40
    call Call_000_2500                            ; $5002: $cd $00 $25
    ld e, a                                       ; $5005: $5f
    ld e, a                                       ; $5006: $5f
    db $f4                                        ; $5007: $f4
    ei                                            ; $5008: $fb
    cpl                                           ; $5009: $2f
    ldh a, [$08]                                  ; $500a: $f0 $08
    ld h, l                                       ; $500c: $65
    sbc [hl]                                      ; $500d: $9e
    ld a, e                                       ; $500e: $7b
    add h                                         ; $500f: $84
    ld e, $28                                     ; $5010: $1e $28
    xor [hl]                                      ; $5012: $ae
    rst $38                                       ; $5013: $ff
    rla                                           ; $5014: $17
    nop                                           ; $5015: $00
    rst $38                                       ; $5016: $ff
    jp nc, $f72f                                  ; $5017: $d2 $2f $f7

    rrca                                          ; $501a: $0f
    ld h, [hl]                                    ; $501b: $66
    sbc a                                         ; $501c: $9f
    ld c, d                                       ; $501d: $4a
    add b                                         ; $501e: $80
    inc e                                         ; $501f: $1c
    rlca                                          ; $5020: $07
    ld d, a                                       ; $5021: $57
    rst $38                                       ; $5022: $ff
    xor e                                         ; $5023: $ab
    rst $18                                       ; $5024: $df
    ld d, l                                       ; $5025: $55
    rst $28                                       ; $5026: $ef
    xor e                                         ; $5027: $ab
    adc d                                         ; $5028: $8a
    or $01                                        ; $5029: $f6 $01
    dec [hl]                                      ; $502b: $35
    adc $af                                       ; $502c: $ce $af
    ld [hl], $02                                  ; $502e: $36 $02
    push de                                       ; $5030: $d5
    ld d, b                                       ; $5031: $50
    ld [bc], a                                    ; $5032: $02
    ld d, l                                       ; $5033: $55
    ld [bc], a                                    ; $5034: $02
    ei                                            ; $5035: $fb
    xor h                                         ; $5036: $ac
    di                                            ; $5037: $f3
    push de                                       ; $5038: $d5
    rst $38                                       ; $5039: $ff
    adc d                                         ; $503a: $8a
    rlca                                          ; $503b: $07
    rlca                                          ; $503c: $07
    xor a                                         ; $503d: $af
    add b                                         ; $503e: $80
    ld c, $02                                     ; $503f: $0e $02
    adc d                                         ; $5041: $8a
    rst $38                                       ; $5042: $ff
    ld d, a                                       ; $5043: $57
    cp a                                          ; $5044: $bf
    xor [hl]                                      ; $5045: $ae
    rst $18                                       ; $5046: $df
    ld d, a                                       ; $5047: $57
    add b                                         ; $5048: $80
    ldh a, [rNR50]                                ; $5049: $f0 $24
    rst $38                                       ; $504b: $ff
    rst $38                                       ; $504c: $ff
    xor l                                         ; $504d: $ad
    di                                            ; $504e: $f3
    rla                                           ; $504f: $17
    ld sp, hl                                     ; $5050: $f9
    cp e                                          ; $5051: $bb
    db $10                                        ; $5052: $10
    rst $00                                       ; $5053: $c7
    dec d                                         ; $5054: $15
    rst $28                                       ; $5055: $ef
    ld [hl], b                                    ; $5056: $70
    dec l                                         ; $5057: $2d
    ret nz                                        ; $5058: $c0

    rst $38                                       ; $5059: $ff
    add hl, sp                                    ; $505a: $39
    add $31                                       ; $505b: $c6 $31
    xor e                                         ; $505d: $ab
    call nc, Call_000_035f                        ; $505e: $d4 $5f $03
    add c                                         ; $5061: $81
    jr c, jr_0a4_5064                             ; $5062: $38 $00

jr_0a4_5064:
    ld c, h                                       ; $5064: $4c
    or e                                          ; $5065: $b3
    db $10                                        ; $5066: $10
    jr c, jr_0a4_506e                             ; $5067: $38 $05

    inc bc                                        ; $5069: $03
    rst $38                                       ; $506a: $ff
    db $f4                                        ; $506b: $f4
    dec bc                                        ; $506c: $0b
    ld c, l                                       ; $506d: $4d

jr_0a4_506e:
    stop                                          ; $506e: $10 $00
    and e                                         ; $5070: $a3
    adc d                                         ; $5071: $8a
    rlca                                          ; $5072: $07
    db $10                                        ; $5073: $10
    xor e                                         ; $5074: $ab
    rst $38                                       ; $5075: $ff
    ld b, l                                       ; $5076: $45
    ld [$5500], sp                                ; $5077: $08 $00 $55
    ei                                            ; $507a: $fb
    adc e                                         ; $507b: $8b
    rst $30                                       ; $507c: $f7
    db $10                                        ; $507d: $10
    ld d, l                                       ; $507e: $55
    rst $38                                       ; $507f: $ff
    and d                                         ; $5080: $a2
    ld a, [bc]                                    ; $5081: $0a
    ld b, $8a                                     ; $5082: $06 $8a
    rst $38                                       ; $5084: $ff
    add d                                         ; $5085: $82
    rst $38                                       ; $5086: $ff
    db $10                                        ; $5087: $10
    xor c                                         ; $5088: $a9
    rst $38                                       ; $5089: $ff
    adc b                                         ; $508a: $88
    call nz, $d602                                ; $508b: $c4 $02 $d6
    rst $38                                       ; $508e: $ff
    dec h                                         ; $508f: $25
    rst $38                                       ; $5090: $ff
    nop                                           ; $5091: $00
    and l                                         ; $5092: $a5
    rst $38                                       ; $5093: $ff
    db $10                                        ; $5094: $10
    rst $38                                       ; $5095: $ff
    add l                                         ; $5096: $85
    rst $38                                       ; $5097: $ff
    ld hl, $55ff                                  ; $5098: $21 $ff $55
    or h                                          ; $509b: $b4
    inc b                                         ; $509c: $04
    nop                                           ; $509d: $00
    or l                                          ; $509e: $b5
    ld a, [hl+]                                   ; $509f: $2a
    nop                                           ; $50a0: $00
    ld h, l                                       ; $50a1: $65
    ld l, $00                                     ; $50a2: $2e $00
    add hl, hl                                    ; $50a4: $29
    jr jr_0a4_50a7                                ; $50a5: $18 $00

jr_0a4_50a7:
    ld d, b                                       ; $50a7: $50
    add hl, bc                                    ; $50a8: $09
    ld [hl], $00                                  ; $50a9: $36 $00
    dec hl                                        ; $50ab: $2b
    add b                                         ; $50ac: $80
    jr nc, jr_0a4_5064                            ; $50ad: $30 $b5

    rst $08                                       ; $50af: $cf
    ei                                            ; $50b0: $fb
    add a                                         ; $50b1: $87
    ld [$c7b9], sp                                ; $50b2: $08 $b9 $c7
    cp e                                          ; $50b5: $bb
    rst $20                                       ; $50b6: $e7
    xor $28                                       ; $50b7: $ee $28
    ld d, a                                       ; $50b9: $57
    db $ec                                        ; $50ba: $ec
    cp e                                          ; $50bb: $bb
    inc b                                         ; $50bc: $04
    add $58                                       ; $50bd: $c6 $58
    rst $20                                       ; $50bf: $e7
    adc l                                         ; $50c0: $8d
    or $96                                        ; $50c1: $f6 $96
    rra                                           ; $50c3: $1f
    add sp, -$18                                  ; $50c4: $e8 $e8
    nop                                           ; $50c6: $00
    cp a                                          ; $50c7: $bf
    ld a, a                                       ; $50c8: $7f
    sub [hl]                                      ; $50c9: $96
    ld a, a                                       ; $50ca: $7f
    ld [$b41f], a                                 ; $50cb: $ea $1f $b4
    ld e, a                                       ; $50ce: $5f
    add c                                         ; $50cf: $81
    db $10                                        ; $50d0: $10
    add hl, sp                                    ; $50d1: $39
    or d                                          ; $50d2: $b2
    rst $08                                       ; $50d3: $cf
    ld a, c                                       ; $50d4: $79
    add a                                         ; $50d5: $87
    ld a, [c]                                     ; $50d6: $f2
    rrca                                          ; $50d7: $0f
    ld b, d                                       ; $50d8: $42
    dec bc                                        ; $50d9: $0b
    inc d                                         ; $50da: $14
    xor a                                         ; $50db: $af
    rst $38                                       ; $50dc: $ff
    rst $10                                       ; $50dd: $d7
    ld a, [$9702]                                 ; $50de: $fa $02 $97
    cp $02                                        ; $50e1: $fe $02
    push de                                       ; $50e3: $d5
    rst $38                                       ; $50e4: $ff
    ld bc, $fcab                                  ; $50e5: $01 $ab $fc
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    cp d                                          ; $50ea: $ba
    rst $38                                       ; $50eb: $ff

jr_0a4_50ec:
    ld d, l                                       ; $50ec: $55
    ldh a, [rNR10]                                ; $50ed: $f0 $10
    nop                                           ; $50ef: $00
    xor d                                         ; $50f0: $aa
    rst $30                                       ; $50f1: $f7
    ld e, l                                       ; $50f2: $5d
    rst $20                                       ; $50f3: $e7
    ld c, [hl]                                    ; $50f4: $4e
    cp a                                          ; $50f5: $bf
    db $dd                                        ; $50f6: $dd
    rst $38                                       ; $50f7: $ff
    ld e, b                                       ; $50f8: $58
    cp a                                          ; $50f9: $bf
    ld a, [hl-]                                   ; $50fa: $3a
    inc bc                                        ; $50fb: $03
    xor [hl]                                      ; $50fc: $ae
    inc d                                         ; $50fd: $14
    nop                                           ; $50fe: $00

jr_0a4_50ff:
    inc b                                         ; $50ff: $04
    ld [$8f74], sp                                ; $5100: $08 $74 $8f
    add hl, bc                                    ; $5103: $09
    ret nz                                        ; $5104: $c0

    rst $38                                       ; $5105: $ff
    rlca                                          ; $5106: $07
    jr nz, @+$12                                  ; $5107: $20 $10

    rst $38                                       ; $5109: $ff
    xor d                                         ; $510a: $aa
    rst $18                                       ; $510b: $df
    ld d, l                                       ; $510c: $55
    cp a                                          ; $510d: $bf
    or a                                          ; $510e: $b7
    ld b, $c8                                     ; $510f: $06 $c8
    db $e3                                        ; $5111: $e3

jr_0a4_5112:
    sbc h                                         ; $5112: $9c
    or a                                          ; $5113: $b7
    ret z                                         ; $5114: $c8

    inc e                                         ; $5115: $1c
    ld a, [de]                                    ; $5116: $1a
    inc c                                         ; $5117: $0c
    ld [$00ff], sp                                ; $5118: $08 $ff $00
    nop                                           ; $511b: $00
    cp a                                          ; $511c: $bf
    ld b, b                                       ; $511d: $40
    dec e                                         ; $511e: $1d
    ld [c], a                                     ; $511f: $e2
    cp b                                          ; $5120: $b8
    ld b, a                                       ; $5121: $47
    db $fd                                        ; $5122: $fd
    jp nz, Jump_000_0b5b                          ; $5123: $c2 $5b $0b

    inc c                                         ; $5126: $0c
    nop                                           ; $5127: $00
    rst $18                                       ; $5128: $df
    ccf                                           ; $5129: $3f
    rst $38                                       ; $512a: $ff
    rra                                           ; $512b: $1f
    inc b                                         ; $512c: $04
    ld c, b                                       ; $512d: $48
    cp $ad                                        ; $512e: $fe $ad
    ld a, [$fc13]                                 ; $5130: $fa $13 $fc
    ld [bc], a                                    ; $5133: $02
    jr nc, @-$54                                  ; $5134: $30 $aa

    cp b                                          ; $5136: $b8
    inc bc                                        ; $5137: $03
    dec c                                         ; $5138: $0d
    inc c                                         ; $5139: $0c
    rlca                                          ; $513a: $07
    adc $11                                       ; $513b: $ce $11
    inc hl                                        ; $513d: $23
    ld bc, $4cff                                  ; $513e: $01 $ff $4c
    jr jr_0a4_5112                                ; $5141: $18 $cf

    ldh a, [$be]                                  ; $5143: $f0 $be
    ldh [rSB], a                                  ; $5145: $e0 $01
    ld h, h                                       ; $5147: $64
    dec c                                         ; $5148: $0d
    add d                                         ; $5149: $82
    ld c, h                                       ; $514a: $4c
    jr z, @+$81                                   ; $514b: $28 $7f

    add b                                         ; $514d: $80
    di                                            ; $514e: $f3
    db $fc                                        ; $514f: $fc
    rrca                                          ; $5150: $0f
    ld [hl], b                                    ; $5151: $70
    dec b                                         ; $5152: $05
    db $d3                                        ; $5153: $d3
    ld [$f83f], sp                                ; $5154: $08 $3f $f8
    rra                                           ; $5157: $1f
    ret nc                                        ; $5158: $d0

    inc b                                         ; $5159: $04
    jr nz, jr_0a4_50ec                            ; $515a: $20 $90

    rst $38                                       ; $515c: $ff
    ld a, h                                       ; $515d: $7c
    cp l                                          ; $515e: $bd
    ld c, d                                       ; $515f: $4a
    nop                                           ; $5160: $00
    inc e                                         ; $5161: $1c
    ld b, d                                       ; $5162: $42
    inc b                                         ; $5163: $04
    ld [bc], a                                    ; $5164: $02
    jr c, jr_0a4_50ff                             ; $5165: $38 $98

    dec c                                         ; $5167: $0d
    ld a, [hl-]                                   ; $5168: $3a
    jr @-$7b                                      ; $5169: $18 $83

    ld b, d                                       ; $516b: $42
    db $10                                        ; $516c: $10
    ld b, b                                       ; $516d: $40
    jr nz, jr_0a4_51e0                            ; $516e: $20 $70

    inc b                                         ; $5170: $04
    ld hl, sp-$01                                 ; $5171: $f8 $ff
    ld a, b                                       ; $5173: $78
    rst $38                                       ; $5174: $ff
    ld [hl], b                                    ; $5175: $70
    rst $38                                       ; $5176: $ff
    ld b, b                                       ; $5177: $40
    ldh a, [$7a]                                  ; $5178: $f0 $7a
    inc b                                         ; $517a: $04
    ldh [rIE], a                                  ; $517b: $e0 $ff
    inc de                                        ; $517d: $13
    rst $38                                       ; $517e: $ff
    ccf                                           ; $517f: $3f
    ldh a, [rNR50]                                ; $5180: $f0 $24
    rla                                           ; $5182: $17
    ld hl, sp+$04                                 ; $5183: $f8 $04
    ld [$f13e], sp                                ; $5185: $08 $3e $f1
    ld [$e708], sp                                ; $5188: $08 $08 $e7
    rst $38                                       ; $518b: $ff
    db $10                                        ; $518c: $10
    sbc a                                         ; $518d: $9f
    ld a, a                                       ; $518e: $7f

jr_0a4_518f:
    db $fc                                        ; $518f: $fc
    jr z, @+$07                                   ; $5190: $28 $05

    ld a, a                                       ; $5192: $7f
    add b                                         ; $5193: $80
    dec sp                                        ; $5194: $3b
    call nz, Call_0a4_7105                        ; $5195: $c4 $05 $71
    adc [hl]                                      ; $5198: $8e
    ei                                            ; $5199: $fb
    inc b                                         ; $519a: $04
    add c                                         ; $519b: $81
    jr c, jr_0a4_519e                             ; $519c: $38 $00

jr_0a4_519e:
    add b                                         ; $519e: $80
    sbc [hl]                                      ; $519f: $9e
    dec b                                         ; $51a0: $05
    ld [$ffbe], sp                                ; $51a1: $08 $be $ff
    ld sp, hl                                     ; $51a4: $f9
    add a                                         ; $51a5: $87
    db $f4                                        ; $51a6: $f4
    ld a, [bc]                                    ; $51a7: $0a
    ld hl, sp-$01                                 ; $51a8: $f8 $ff
    cp h                                          ; $51aa: $bc
    jr nz, @+$01                                  ; $51ab: $20 $ff

    jr jr_0a4_518f                                ; $51ad: $18 $e0

    dec d                                         ; $51af: $15
    ldh a, [rIE]                                  ; $51b0: $f0 $ff
    rst $08                                       ; $51b2: $cf
    ccf                                           ; $51b3: $3f
    cp $47                                        ; $51b4: $fe $47
    ld bc, $483c                                  ; $51b6: $01 $3c $48
    sub a                                         ; $51b9: $97
    ld hl, sp+$7c                                 ; $51ba: $f8 $7c
    ld b, b                                       ; $51bc: $40
    dec d                                         ; $51bd: $15
    inc a                                         ; $51be: $3c
    jr z, @+$09                                   ; $51bf: $28 $07

    ld c, $04                                     ; $51c1: $0e $04
    di                                            ; $51c3: $f3
    rra                                           ; $51c4: $1f
    ret c                                         ; $51c5: $d8

    ccf                                           ; $51c6: $3f
    ldh a, [rDIV]                                 ; $51c7: $f0 $04
    ld b, b                                       ; $51c9: $40
    rst $20                                       ; $51ca: $e7
    ld hl, sp+$74                                 ; $51cb: $f8 $74
    rra                                           ; $51cd: $1f
    ld e, $46                                     ; $51ce: $1e $46
    pop hl                                        ; $51d0: $e1
    inc bc                                        ; $51d1: $03
    or [hl]                                       ; $51d2: $b6
    ld [de], a                                    ; $51d3: $12
    ld sp, hl                                     ; $51d4: $f9
    and $64                                       ; $51d5: $e6 $64
    rst $20                                       ; $51d7: $e7
    rra                                           ; $51d8: $1f
    add c                                         ; $51d9: $81
    db $fc                                        ; $51da: $fc
    dec bc                                        ; $51db: $0b
    db $dd                                        ; $51dc: $dd
    inc hl                                        ; $51dd: $23
    adc a                                         ; $51de: $8f
    ld [hl], c                                    ; $51df: $71

jr_0a4_51e0:
    db $dd                                        ; $51e0: $dd
    inc hl                                        ; $51e1: $23
    inc b                                         ; $51e2: $04
    inc e                                         ; $51e3: $1c
    adc d                                         ; $51e4: $8a
    inc c                                         ; $51e5: $0c
    jr c, jr_0a4_5227                             ; $51e6: $38 $3f

    pop bc                                        ; $51e8: $c1
    ld sp, hl                                     ; $51e9: $f9
    inc h                                         ; $51ea: $24
    dec b                                         ; $51eb: $05
    rrca                                          ; $51ec: $0f
    ld a, [de]                                    ; $51ed: $1a
    dec b                                         ; $51ee: $05
    ld sp, hl                                     ; $51ef: $f9
    nop                                           ; $51f0: $00
    rst $38                                       ; $51f1: $ff
    pop hl                                        ; $51f2: $e1
    rst $38                                       ; $51f3: $ff
    ld de, $3a1e                                  ; $51f4: $11 $1e $3a
    cp l                                          ; $51f7: $bd
    ld de, $1e00                                  ; $51f8: $11 $00 $1e
    dec [hl]                                      ; $51fb: $35
    ld a, $58                                     ; $51fc: $3e $58
    ld e, a                                       ; $51fe: $5f
    ld a, [hl-]                                   ; $51ff: $3a
    dec a                                         ; $5200: $3d
    dec d                                         ; $5201: $15
    ld [$ba1e], sp                                ; $5202: $08 $1e $ba
    cp l                                          ; $5205: $bd
    ld a, a                                       ; $5206: $7f
    xor [hl]                                      ; $5207: $ae
    ld bc, $ff54                                  ; $5208: $01 $54 $ff
    cp c                                          ; $520b: $b9
    nop                                           ; $520c: $00
    ld a, [hl]                                    ; $520d: $7e
    rst $30                                       ; $520e: $f7
    ld a, b                                       ; $520f: $78
    ld h, $f9                                     ; $5210: $26 $f9
    jp hl                                         ; $5212: $e9


    rst $38                                       ; $5213: $ff
    ld a, [c]                                     ; $5214: $f2
    add b                                         ; $5215: $80
    adc h                                         ; $5216: $8c
    inc b                                         ; $5217: $04
    and [hl]                                      ; $5218: $a6
    ld sp, hl                                     ; $5219: $f9
    ld e, a                                       ; $521a: $5f
    ldh [$3a], a                                  ; $521b: $e0 $3a
    push bc                                       ; $521d: $c5
    ld [hl], l                                    ; $521e: $75
    nop                                           ; $521f: $00
    adc d                                         ; $5220: $8a
    jr z, @-$27                                   ; $5221: $28 $d7

    ld [de], a                                    ; $5223: $12
    rst $28                                       ; $5224: $ef
    dec h                                         ; $5225: $25
    rst $18                                       ; $5226: $df

jr_0a4_5227:
    rla                                           ; $5227: $17
    add b                                         ; $5228: $80
    jr z, jr_0a4_522d                             ; $5229: $28 $02

    ld d, d                                       ; $522b: $52
    cp a                                          ; $522c: $bf

jr_0a4_522d:
    and c                                         ; $522d: $a1
    ld e, a                                       ; $522e: $5f
    ld d, e                                       ; $522f: $53
    xor a                                         ; $5230: $af
    dec b                                         ; $5231: $05
    jr nz, @+$01                                  ; $5232: $20 $ff

    inc hl                                        ; $5234: $23
    ret c                                         ; $5235: $d8

    ld bc, $1ae0                                  ; $5236: $01 $e0 $1a
    sbc c                                         ; $5239: $99
    stop                                          ; $523a: $10 $00
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    adc e                                         ; $523e: $8b
    rst $38                                       ; $523f: $ff
    di                                            ; $5240: $f3
    rst $08                                       ; $5241: $cf
    sbc c                                         ; $5242: $99
    rst $20                                       ; $5243: $e7
    nop                                           ; $5244: $00
    di                                            ; $5245: $f3
    rst $08                                       ; $5246: $cf
    reti                                          ; $5247: $d9


    rst $20                                       ; $5248: $e7
    ld d, d                                       ; $5249: $52
    ld l, [hl]                                    ; $524a: $6e
    dec a                                         ; $524b: $3d
    dec a                                         ; $524c: $3d
    nop                                           ; $524d: $00
    ld l, c                                       ; $524e: $69
    ld a, [hl]                                    ; $524f: $7e
    inc [hl]                                      ; $5250: $34
    ccf                                           ; $5251: $3f
    dec de                                        ; $5252: $1b
    rra                                           ; $5253: $1f
    ld e, $1f                                     ; $5254: $1e $1f
    nop                                           ; $5256: $00
    dec a                                         ; $5257: $3d
    ccf                                           ; $5258: $3f
    ld l, d                                       ; $5259: $6a
    ld a, a                                       ; $525a: $7f
    push de                                       ; $525b: $d5
    rst $38                                       ; $525c: $ff
    xor d                                         ; $525d: $aa
    rst $38                                       ; $525e: $ff
    nop                                           ; $525f: $00
    ld e, a                                       ; $5260: $5f
    and b                                         ; $5261: $a0
    ccf                                           ; $5262: $3f
    ret nz                                        ; $5263: $c0

    ld a, [bc]                                    ; $5264: $0a
    push af                                       ; $5265: $f5
    add h                                         ; $5266: $84
    ei                                            ; $5267: $fb
    nop                                           ; $5268: $00
    ld e, $e1                                     ; $5269: $1e $e1
    cpl                                           ; $526b: $2f
    ret nc                                        ; $526c: $d0

    ld d, a                                       ; $526d: $57
    xor b                                         ; $526e: $a8
    xor a                                         ; $526f: $af
    ld d, b                                       ; $5270: $50
    nop                                           ; $5271: $00
    ld e, d                                       ; $5272: $5a
    xor [hl]                                      ; $5273: $ae
    rlca                                          ; $5274: $07
    rst $38                                       ; $5275: $ff
    ld d, [hl]                                    ; $5276: $56
    cp $bc                                        ; $5277: $fe $bc
    db $fc                                        ; $5279: $fc
    nop                                           ; $527a: $00
    cp h                                          ; $527b: $bc
    ld a, h                                       ; $527c: $7c
    inc d                                         ; $527d: $14
    db $fc                                        ; $527e: $fc
    xor d                                         ; $527f: $aa
    ld a, [hl]                                    ; $5280: $7e
    ld d, l                                       ; $5281: $55
    cp a                                          ; $5282: $bf
    nop                                           ; $5283: $00
    ld [$0008], sp                                ; $5284: $08 $08 $00
    ld [$0909], sp                                ; $5287: $08 $09 $09
    inc de                                        ; $528a: $13
    dec de                                        ; $528b: $1b
    nop                                           ; $528c: $00
    rrca                                          ; $528d: $0f
    rla                                           ; $528e: $17
    scf                                           ; $528f: $37
    ccf                                           ; $5290: $3f
    ld l, $37                                     ; $5291: $2e $37
    ld bc, $003f                                  ; $5293: $01 $3f $00
    ldh a, [rIE]                                  ; $5296: $f0 $ff
    ld a, [$f1fd]                                 ; $5298: $fa $fd $f1
    cp $fc                                        ; $529b: $fe $fc
    rst $38                                       ; $529d: $ff
    nop                                           ; $529e: $00
    add sp, -$01                                  ; $529f: $e8 $ff
    ld d, h                                       ; $52a1: $54
    ei                                            ; $52a2: $fb
    xor e                                         ; $52a3: $ab
    db $f4                                        ; $52a4: $f4
    ld b, a                                       ; $52a5: $47
    ld hl, sp+$00                                 ; $52a6: $f8 $00
    ld a, a                                       ; $52a8: $7f
    add b                                         ; $52a9: $80
    rst $38                                       ; $52aa: $ff
    nop                                           ; $52ab: $00
    ld a, e                                       ; $52ac: $7b
    add h                                         ; $52ad: $84
    or l                                          ; $52ae: $b5
    ld c, d                                       ; $52af: $4a
    nop                                           ; $52b0: $00
    ld e, b                                       ; $52b1: $58
    and a                                         ; $52b2: $a7
    and c                                         ; $52b3: $a1
    ld e, a                                       ; $52b4: $5f
    ldh a, [rIF]                                  ; $52b5: $f0 $0f
    db $fd                                        ; $52b7: $fd
    ld [bc], a                                    ; $52b8: $02
    nop                                           ; $52b9: $00
    and d                                         ; $52ba: $a2
    ld e, a                                       ; $52bb: $5f
    push de                                       ; $52bc: $d5
    dec hl                                        ; $52bd: $2b
    ld [$4015], a                                 ; $52be: $ea $15 $40
    cp a                                          ; $52c1: $bf
    nop                                           ; $52c2: $00
    ld a, [bc]                                    ; $52c3: $0a
    rst $38                                       ; $52c4: $ff
    ld e, a                                       ; $52c5: $5f
    rst $38                                       ; $52c6: $ff
    rlca                                          ; $52c7: $07
    rst $38                                       ; $52c8: $ff
    ld d, d                                       ; $52c9: $52
    xor a                                         ; $52ca: $af
    nop                                           ; $52cb: $00
    ld l, $37                                     ; $52cc: $2e $37
    dec bc                                        ; $52ce: $0b
    scf                                           ; $52cf: $37
    dec l                                         ; $52d0: $2d
    scf                                           ; $52d1: $37
    ld c, e                                       ; $52d2: $4b
    ld [hl], a                                    ; $52d3: $77
    nop                                           ; $52d4: $00
    ld l, l                                       ; $52d5: $6d
    ld [hl], e                                    ; $52d6: $73
    ret c                                         ; $52d7: $d8

    rst $20                                       ; $52d8: $e7
    db $dd                                        ; $52d9: $dd
    db $e3                                        ; $52da: $e3
    cp [hl]                                       ; $52db: $be
    pop bc                                        ; $52dc: $c1
    nop                                           ; $52dd: $00
    xor e                                         ; $52de: $ab
    call nc, $fa85                                ; $52df: $d4 $85 $fa
    ld a, [c]                                     ; $52e2: $f2
    db $fd                                        ; $52e3: $fd
    ld b, c                                       ; $52e4: $41
    cp $20                                        ; $52e5: $fe $20
    rla                                           ; $52e7: $17
    add sp, $3a                                   ; $52e8: $e8 $3a
    ld [$d4ab], sp                                ; $52ea: $08 $ab $d4
    cp $01                                        ; $52ed: $fe $01
    rst $38                                       ; $52ef: $ff
    ld b, d                                       ; $52f0: $42
    nop                                           ; $52f1: $00
    ld [bc], a                                    ; $52f2: $02
    ld [$a15e], sp                                ; $52f3: $08 $5e $a1
    push af                                       ; $52f6: $f5
    ld a, [bc]                                    ; $52f7: $0a
    ld a, [bc]                                    ; $52f8: $0a
    ld [$00a9], sp                                ; $52f9: $08 $a9 $00
    ld d, a                                       ; $52fc: $57
    ld a, [c]                                     ; $52fd: $f2
    rrca                                          ; $52fe: $0f
    push hl                                       ; $52ff: $e5
    rra                                           ; $5300: $1f
    add a                                         ; $5301: $87
    ld a, a                                       ; $5302: $7f
    and d                                         ; $5303: $a2
    nop                                           ; $5304: $00
    ld e, a                                       ; $5305: $5f
    ld d, c                                       ; $5306: $51
    xor a                                         ; $5307: $af
    ld a, [$fd05]                                 ; $5308: $fa $05 $fd
    ld [bc], a                                    ; $530b: $02
    db $db                                        ; $530c: $db
    nop                                           ; $530d: $00
    db $e4                                        ; $530e: $e4
    sbc h                                         ; $530f: $9c
    db $e3                                        ; $5310: $e3
    ld c, c                                       ; $5311: $49
    rst $30                                       ; $5312: $f7
    sbc d                                         ; $5313: $9a
    rst $20                                       ; $5314: $e7
    dec a                                         ; $5315: $3d
    nop                                           ; $5316: $00
    jp Jump_0a4_43bc                              ; $5317: $c3 $bc $43


    ld c, $f1                                     ; $531a: $0e $f1
    ld e, a                                       ; $531c: $5f
    ldh [$15], a                                  ; $531d: $e0 $15
    nop                                           ; $531f: $00
    ld [$fe61], a                                 ; $5320: $ea $61 $fe
    jr nc, @+$01                                  ; $5323: $30 $ff

    ld [$fdff], a                                 ; $5325: $ea $ff $fd
    nop                                           ; $5328: $00
    rst $38                                       ; $5329: $ff
    ld a, a                                       ; $532a: $7f
    rst $38                                       ; $532b: $ff
    or e                                          ; $532c: $b3
    ld [hl], e                                    ; $532d: $73
    ld d, h                                       ; $532e: $54
    or h                                          ; $532f: $b4
    xor a                                         ; $5330: $af
    db $10                                        ; $5331: $10
    ld d, b                                       ; $5332: $50
    ld d, l                                       ; $5333: $55
    xor d                                         ; $5334: $aa
    ld b, c                                       ; $5335: $41
    ld [$ff4a], sp                                ; $5336: $08 $4a $ff
    and l                                         ; $5339: $a5
    rst $38                                       ; $533a: $ff
    adc b                                         ; $533b: $88
    ld bc, $a808                                  ; $533c: $01 $08 $a8
    ld d, a                                       ; $533f: $57
    ld b, c                                       ; $5340: $41
    ld a, h                                       ; $5341: $7c
    nop                                           ; $5342: $00
    ld d, a                                       ; $5343: $57
    rst $38                                       ; $5344: $ff
    cp l                                          ; $5345: $bd
    nop                                           ; $5346: $00
    db $fd                                        ; $5347: $fd
    ld a, h                                       ; $5348: $7c
    db $fc                                        ; $5349: $fc
    cp b                                          ; $534a: $b8
    cp b                                          ; $534b: $b8
    ld b, b                                       ; $534c: $40
    ld b, b                                       ; $534d: $40
    nop                                           ; $534e: $00
    add b                                         ; $534f: $80
    ld bc, $8060                                  ; $5350: $01 $60 $80
    add b                                         ; $5353: $80
    ld h, b                                       ; $5354: $60
    ldh [$30], a                                  ; $5355: $e0 $30
    ldh a, [$60]                                  ; $5357: $f0 $60
    nop                                           ; $5359: $00
    ldh [$c0], a                                  ; $535a: $e0 $c0
    ret nz                                        ; $535c: $c0

    add b                                         ; $535d: $80
    add b                                         ; $535e: $80
    ret nz                                        ; $535f: $c0

    ret nz                                        ; $5360: $c0

    and b                                         ; $5361: $a0
    ld [$00e0], sp                                ; $5362: $08 $e0 $00
    nop                                           ; $5365: $00
    ld bc, $0001                                  ; $5366: $01 $01 $00
    ld [bc], a                                    ; $5369: $02
    inc bc                                        ; $536a: $03
    ld [bc], a                                    ; $536b: $02
    nop                                           ; $536c: $00
    inc bc                                        ; $536d: $03
    inc b                                         ; $536e: $04
    rlca                                          ; $536f: $07
    ld c, $0f                                     ; $5370: $0e $0f
    dec b                                         ; $5372: $05
    rlca                                          ; $5373: $07
    ld d, b                                       ; $5374: $50
    nop                                           ; $5375: $00
    ldh a, [$a8]                                  ; $5376: $f0 $a8
    ld hl, sp-$2c                                 ; $5378: $f8 $d4

jr_0a4_537a:
    db $fc                                        ; $537a: $fc
    ld a, [$fcfa]                                 ; $537b: $fa $fa $fc
    nop                                           ; $537e: $00
    db $fc                                        ; $537f: $fc
    ld e, b                                       ; $5380: $58
    ld hl, sp+$2c                                 ; $5381: $f8 $2c
    db $fc                                        ; $5383: $fc
    ld e, h                                       ; $5384: $5c
    db $fc                                        ; $5385: $fc
    ld [bc], a                                    ; $5386: $02
    jr nz, @+$05                                  ; $5387: $20 $03

    rlca                                          ; $5389: $07
    ld bc, $0500                                  ; $538a: $01 $00 $05
    rlca                                          ; $538d: $07
    ld a, [bc]                                    ; $538e: $0a
    rrca                                          ; $538f: $0f
    inc c                                         ; $5390: $0c
    nop                                           ; $5391: $00
    rrca                                          ; $5392: $0f
    ld e, c                                       ; $5393: $59
    ld e, a                                       ; $5394: $5f
    or d                                          ; $5395: $b2
    cp l                                          ; $5396: $bd
    xor h                                         ; $5397: $ac
    di                                            ; $5398: $f3
    ld c, c                                       ; $5399: $49
    nop                                           ; $539a: $00
    rst $30                                       ; $539b: $f7
    ldh [rIE], a                                  ; $539c: $e0 $ff
    reti                                          ; $539e: $d9


    rst $20                                       ; $539f: $e7
    xor h                                         ; $53a0: $ac
    db $d3                                        ; $53a1: $d3
    ld e, $00                                     ; $53a2: $1e $00
    pop hl                                        ; $53a4: $e1
    dec a                                         ; $53a5: $3d
    jp nz, Jump_0a4_41be                          ; $53a6: $c2 $be $41

    cp b                                          ; $53a9: $b8
    ld hl, sp+$70                                 ; $53aa: $f8 $70
    nop                                           ; $53ac: $00
    ldh a, [$e0]                                  ; $53ad: $f0 $e0
    ldh [$d0], a                                  ; $53af: $e0 $d0
    ret nc                                        ; $53b1: $d0

    ldh [$e0], a                                  ; $53b2: $e0 $e0
    ld d, b                                       ; $53b4: $50

jr_0a4_53b5:
    nop                                           ; $53b5: $00
    ldh a, [$28]                                  ; $53b6: $f0 $28
    ld hl, sp-$4c                                 ; $53b8: $f8 $b4
    ld e, h                                       ; $53ba: $5c
    jr z, jr_0a4_53b5                             ; $53bb: $28 $f8

    ld d, h                                       ; $53bd: $54
    ld bc, $e8f4                                  ; $53be: $01 $f4 $e8
    add sp, -$30                                  ; $53c1: $e8 $d0
    ret nc                                        ; $53c3: $d0

    and b                                         ; $53c4: $a0
    and b                                         ; $53c5: $a0
    ld a, d                                       ; $53c6: $7a
    jr c, jr_0a4_53c9                             ; $53c7: $38 $00

jr_0a4_53c9:
    ld bc, $0301                                  ; $53c9: $01 $01 $03
    inc bc                                        ; $53cc: $03
    rrca                                          ; $53cd: $0f
    rrca                                          ; $53ce: $0f
    rla                                           ; $53cf: $17
    rla                                           ; $53d0: $17
    nop                                           ; $53d1: $00
    ld [bc], a                                    ; $53d2: $02
    inc bc                                        ; $53d3: $03
    dec b                                         ; $53d4: $05
    rlca                                          ; $53d5: $07
    ld b, $07                                     ; $53d6: $06 $07
    rrca                                          ; $53d8: $0f
    rrca                                          ; $53d9: $0f
    ld bc, $1f1f                                  ; $53da: $01 $1f $1f
    ld a, l                                       ; $53dd: $7d
    ld a, a                                       ; $53de: $7f
    ld e, $1f                                     ; $53df: $1e $1f
    inc [hl]                                      ; $53e1: $34
    add d                                         ; $53e2: $82
    ld bc, $fc60                                  ; $53e3: $01 $60 $fc
    or h                                          ; $53e6: $b4
    nop                                           ; $53e7: $00
    and b                                         ; $53e8: $a0
    ld c, c                                       ; $53e9: $49
    inc a                                         ; $53ea: $3c
    inc a                                         ; $53eb: $3c
    cp [hl]                                       ; $53ec: $be
    cp a                                          ; $53ed: $bf
    ld e, a                                       ; $53ee: $5f
    ld bc, $075f                                  ; $53ef: $01 $5f $07
    rlca                                          ; $53f2: $07
    ld c, $0e                                     ; $53f3: $0e $0e
    inc b                                         ; $53f5: $04
    inc b                                         ; $53f6: $04
    cp d                                          ; $53f7: $ba
    jr jr_0a4_537a                                ; $53f8: $18 $80

    ld d, b                                       ; $53fa: $50
    ld e, c                                       ; $53fb: $59
    ld d, e                                       ; $53fc: $53
    xor a                                         ; $53fd: $af
    xor [hl]                                      ; $53fe: $ae
    or [hl]                                       ; $53ff: $b6
    ld c, d                                       ; $5400: $4a
    or $2c                                        ; $5401: $f6 $2c
    inc b                                         ; $5403: $04
    or $4a                                        ; $5404: $f6 $4a
    or $ed                                        ; $5406: $f6 $ed
    di                                            ; $5408: $f3
    ld d, b                                       ; $5409: $50
    adc c                                         ; $540a: $89
    dec hl                                        ; $540b: $2b
    call nc, $a914                                ; $540c: $d4 $14 $a9
    ld d, a                                       ; $540f: $57
    di                                            ; $5410: $f3
    ld b, b                                       ; $5411: $40
    ld bc, $4086                                  ; $5412: $01 $86 $40
    ld bc, $af54                                  ; $5415: $01 $54 $af
    dec b                                         ; $5418: $05
    cp $0f                                        ; $5419: $fe $0f
    db $fd                                        ; $541b: $fd
    rlca                                          ; $541c: $07
    sub l                                         ; $541d: $95
    jr nc, jr_0a4_5421                            ; $541e: $30 $01

    ret nc                                        ; $5420: $d0

jr_0a4_5421:
    jr nc, jr_0a4_5434                            ; $5421: $30 $11

    nop                                           ; $5423: $00
    ccf                                           ; $5424: $3f
    ccf                                           ; $5425: $3f
    inc de                                        ; $5426: $13
    inc de                                        ; $5427: $13
    inc b                                         ; $5428: $04
    inc b                                         ; $5429: $04
    xor d                                         ; $542a: $aa
    ld d, a                                       ; $542b: $57
    nop                                           ; $542c: $00
    ld b, a                                       ; $542d: $47
    cp a                                          ; $542e: $bf
    rrca                                          ; $542f: $0f
    rst $38                                       ; $5430: $ff
    ld d, l                                       ; $5431: $55
    rst $38                                       ; $5432: $ff
    cp d                                          ; $5433: $ba

jr_0a4_5434:
    rst $38                                       ; $5434: $ff
    ld [bc], a                                    ; $5435: $02
    ld a, h                                       ; $5436: $7c
    rst $38                                       ; $5437: $ff
    ld sp, hl                                     ; $5438: $f9
    rst $38                                       ; $5439: $ff
    ld a, [c]                                     ; $543a: $f2
    db $fd                                        ; $543b: $fd
    ldh [$09], a                                  ; $543c: $e0 $09
    ld [$0800], sp                                ; $543e: $08 $00 $08
    db $10                                        ; $5441: $10
    jr jr_0a4_544c                                ; $5442: $18 $08

    db $10                                        ; $5444: $10
    inc [hl]                                      ; $5445: $34
    inc a                                         ; $5446: $3c
    inc l                                         ; $5447: $2c
    nop                                           ; $5448: $00
    inc [hl]                                      ; $5449: $34
    nop                                           ; $544a: $00
    inc a                                         ; $544b: $3c

jr_0a4_544c:
    ld l, $36                                     ; $544c: $2e $36
    ld a, [bc]                                    ; $544e: $0a
    ld [hl], $2c                                  ; $544f: $36 $2c
    jr jr_0a4_5489                                ; $5451: $18 $36

    ld c, d                                       ; $5453: $4a
    halt                                          ; $5454: $76
    or b                                          ; $5455: $b0
    add hl, hl                                    ; $5456: $29
    ld a, $69                                     ; $5457: $3e $69
    cp l                                          ; $5459: $bd
    ld b, d                                       ; $545a: $42
    rst $30                                       ; $545b: $f7
    nop                                           ; $545c: $00
    ld [$40bf], sp                                ; $545d: $08 $bf $40
    rst $38                                       ; $5460: $ff
    nop                                           ; $5461: $00
    db $db                                        ; $5462: $db
    inc h                                         ; $5463: $24
    rst $38                                       ; $5464: $ff
    ld b, b                                       ; $5465: $40
    nop                                           ; $5466: $00
    ld [$fb08], sp                                ; $5467: $08 $08 $fb
    inc b                                         ; $546a: $04
    rst $28                                       ; $546b: $ef
    db $10                                        ; $546c: $10
    ld a, l                                       ; $546d: $7d
    add d                                         ; $546e: $82
    add b                                         ; $546f: $80
    call nz, $dd09                                ; $5470: $c4 $09 $dd
    ld [hl+], a                                   ; $5473: $22
    or [hl]                                       ; $5474: $b6
    ld c, c                                       ; $5475: $49
    rst $38                                       ; $5476: $ff
    nop                                           ; $5477: $00
    rst $28                                       ; $5478: $ef
    ld bc, $be10                                  ; $5479: $01 $10 $be
    ld b, c                                       ; $547c: $41
    rst $38                                       ; $547d: $ff
    nop                                           ; $547e: $00
    rst $30                                       ; $547f: $f7
    ld [$09d6], sp                                ; $5480: $08 $d6 $09
    inc bc                                        ; $5483: $03
    rst $18                                       ; $5484: $df
    jr nz, @-$03                                  ; $5485: $20 $fb

    inc b                                         ; $5487: $04
    cp e                                          ; $5488: $bb

jr_0a4_5489:
    ld b, h                                       ; $5489: $44
    ldh [$09], a                                  ; $548a: $e0 $09
    ld l, $08                                     ; $548c: $2e $08
    add b                                         ; $548e: $80
    jr nc, jr_0a4_5499                            ; $548f: $30 $08

    db $fd                                        ; $5491: $fd
    ld [bc], a                                    ; $5492: $02
    rst $30                                       ; $5493: $f7
    ld [$807f], sp                                ; $5494: $08 $7f $80
    rst $28                                       ; $5497: $ef
    nop                                           ; $5498: $00

jr_0a4_5499:
    db $10                                        ; $5499: $10
    db $fd                                        ; $549a: $fd
    ld [bc], a                                    ; $549b: $02
    ei                                            ; $549c: $fb
    inc b                                         ; $549d: $04
    ld l, a                                       ; $549e: $6f
    sub b                                         ; $549f: $90
    db $fd                                        ; $54a0: $fd
    ld h, b                                       ; $54a1: $60
    ld [bc], a                                    ; $54a2: $02
    ld a, [hl+]                                   ; $54a3: $2a
    ld [$181c], sp                                ; $54a4: $08 $1c $18
    cp l                                          ; $54a7: $bd
    ld b, d                                       ; $54a8: $42
    rst $28                                       ; $54a9: $ef
    db $10                                        ; $54aa: $10
    rst $38                                       ; $54ab: $ff
    stop                                          ; $54ac: $10 $00
    ld a, l                                       ; $54ae: $7d
    add d                                         ; $54af: $82
    or b                                          ; $54b0: $b0
    ld bc, $c0c0                                  ; $54b1: $01 $c0 $c0
    or b                                          ; $54b4: $b0
    ldh a, [rP1]                                  ; $54b5: $f0 $00
    adc b                                         ; $54b7: $88
    ld sp, hl                                     ; $54b8: $f9
    add l                                         ; $54b9: $85
    xor l                                         ; $54ba: $ad
    db $d3                                        ; $54bb: $d3
    or [hl]                                       ; $54bc: $b6
    ret                                           ; $54bd: $c9


    ld a, d                                       ; $54be: $7a
    nop                                           ; $54bf: $00
    ld b, l                                       ; $54c0: $45

jr_0a4_54c1:
    ld e, l                                       ; $54c1: $5d
    ld h, d                                       ; $54c2: $62
    ld c, l                                       ; $54c3: $4d
    ld [hl], d                                    ; $54c4: $72
    daa                                           ; $54c5: $27
    jr c, jr_0a4_54d9                             ; $54c6: $38 $11

    nop                                           ; $54c8: $00
    ld e, $7e                                     ; $54c9: $1e $7e
    ld a, a                                       ; $54cb: $7f
    ccf                                           ; $54cc: $3f
    ccf                                           ; $54cd: $3f
    rra                                           ; $54ce: $1f
    rra                                           ; $54cf: $1f
    ld bc, $0f00                                  ; $54d0: $01 $00 $0f
    nop                                           ; $54d3: $00
    inc bc                                        ; $54d4: $03
    ld b, e                                       ; $54d5: $43
    ld c, l                                       ; $54d6: $4d
    set 2, l                                      ; $54d7: $cb $d5

jr_0a4_54d9:
    push de                                       ; $54d9: $d5

jr_0a4_54da:
    nop                                           ; $54da: $00
    db $eb                                        ; $54db: $eb
    xor l                                         ; $54dc: $ad
    db $d3                                        ; $54dd: $d3
    cp [hl]                                       ; $54de: $be
    jp nz, $e69a                                  ; $54df: $c2 $9a $e6

    and h                                         ; $54e2: $a4
    jr nz, jr_0a4_54c1                            ; $54e3: $20 $dc

    ld c, b                                       ; $54e5: $48
    add b                                         ; $54e6: $80
    ld bc, $9e00                                  ; $54e7: $01 $00 $9e
    ld d, [hl]                                    ; $54ea: $56
    ld [$002a], a                                 ; $54eb: $ea $2a $00
    sub $d4                                       ; $54ee: $d6 $d4
    xor h                                         ; $54f0: $ac
    ld l, b                                       ; $54f1: $68
    sbc b                                         ; $54f2: $98
    ccf                                           ; $54f3: $3f
    rst $38                                       ; $54f4: $ff
    nop                                           ; $54f5: $00
    ld [$4080], sp                                ; $54f6: $08 $80 $40
    ret nz                                        ; $54f9: $c0

    jr nz, jr_0a4_54da                            ; $54fa: $20 $de

    ld bc, $c0c0                                  ; $54fc: $01 $c0 $c0
    ld h, b                                       ; $54ff: $60
    nop                                           ; $5500: $00
    ldh [$a0], a                                  ; $5501: $e0 $a0
    ld h, b                                       ; $5503: $60
    ld d, b                                       ; $5504: $50
    or b                                          ; $5505: $b0
    ld c, $11                                     ; $5506: $0e $11
    add hl, de                                    ; $5508: $19
    nop                                           ; $5509: $00
    ld h, $37                                     ; $550a: $26 $37
    ld c, b                                       ; $550c: $48
    ld l, $51                                     ; $550d: $2e $51
    ei                                            ; $550f: $fb
    add a                                         ; $5510: $87
    db $ec                                        ; $5511: $ec
    nop                                           ; $5512: $00
    sbc h                                         ; $5513: $9c
    or b                                          ; $5514: $b0
    ldh a, [$c4]                                  ; $5515: $f0 $c4
    call nz, Call_0a4_4af7                        ; $5517: $c4 $f7 $4a
    rst $38                                       ; $551a: $ff
    xor b                                         ; $551b: $a8
    add b                                         ; $551c: $80
    ld [$8022], sp                                ; $551d: $08 $22 $80
    nop                                           ; $5520: $00
    sub c                                         ; $5521: $91
    ld a, d                                       ; $5522: $7a
    ld [bc], a                                    ; $5523: $02
    ld [$08f7], sp                                ; $5524: $08 $f7 $08
    nop                                           ; $5527: $00
    rst $18                                       ; $5528: $df
    ld hl, $02ff                                  ; $5529: $21 $ff $02

jr_0a4_552c:
    rst $38                                       ; $552c: $ff
    jr nz, jr_0a4_552c                            ; $552d: $20 $fd

    ld [bc], a                                    ; $552f: $02
    ld [bc], a                                    ; $5530: $02
    rst $28                                       ; $5531: $ef
    ld de, $20ff                                  ; $5532: $11 $ff $20
    ld a, l                                       ; $5535: $7d
    sub d                                         ; $5536: $92
    or b                                          ; $5537: $b0
    db $10                                        ; $5538: $10
    ld [$fb40], sp                                ; $5539: $08 $40 $fb
    or [hl]                                       ; $553c: $b6
    ld [$bf04], sp                                ; $553d: $08 $04 $bf
    ld c, b                                       ; $5540: $48
    db $fd                                        ; $5541: $fd
    ld [bc], a                                    ; $5542: $02
    cp $09                                        ; $5543: $fe $09
    cp $78                                        ; $5545: $fe $78
    ld hl, sp+$40                                 ; $5547: $f8 $40
    ld c, a                                       ; $5549: $4f
    nop                                           ; $554a: $00
    ret z                                         ; $554b: $c8

    ret z                                         ; $554c: $c8

    inc b                                         ; $554d: $04
    ld [$1005], sp                                ; $554e: $08 $05 $10
    db $10                                        ; $5551: $10
    cp l                                          ; $5552: $bd
    ld b, d                                       ; $5553: $42
    rst $38                                       ; $5554: $ff
    nop                                           ; $5555: $00
    add hl, de                                    ; $5556: $19

jr_0a4_5557:
    dec h                                         ; $5557: $25
    cp b                                          ; $5558: $b8
    ld [bc], a                                    ; $5559: $02
    jr nz, @+$22                                  ; $555a: $20 $20

    rst $38                                       ; $555c: $ff
    db $e3                                        ; $555d: $e3
    add hl, sp                                    ; $555e: $39
    ld [bc], a                                    ; $555f: $02
    ld bc, $0704                                  ; $5560: $01 $04 $07
    jr z, jr_0a4_5565                             ; $5563: $28 $00

jr_0a4_5565:
    rra                                           ; $5565: $1f
    ld h, b                                       ; $5566: $60
    ld [bc], a                                    ; $5567: $02
    ld [bc], a                                    ; $5568: $02
    inc b                                         ; $5569: $04
    dec b                                         ; $556a: $05
    add hl, bc                                    ; $556b: $09
    ld a, [bc]                                    ; $556c: $0a
    nop                                           ; $556d: $00
    inc b                                         ; $556e: $04
    rlca                                          ; $556f: $07
    add hl, de                                    ; $5570: $19
    ld e, $0c                                     ; $5571: $1e $0c
    rrca                                          ; $5573: $0f
    ld a, [de]                                    ; $5574: $1a
    rra                                           ; $5575: $1f
    ld [bc], a                                    ; $5576: $02
    dec e                                         ; $5577: $1d
    rra                                           ; $5578: $1f
    dec a                                         ; $5579: $3d
    jp nz, $a05f                                  ; $557a: $c2 $5f $a0

    ld e, d                                       ; $557d: $5a
    dec bc                                        ; $557e: $0b
    dec hl                                        ; $557f: $2b
    nop                                           ; $5580: $00
    call nc, $7a85                                ; $5581: $d4 $85 $7a
    ld [c], a                                     ; $5584: $e2
    dec e                                         ; $5585: $1d
    ld a, a                                       ; $5586: $7f
    add b                                         ; $5587: $80
    ld c, $80                                     ; $5588: $0e $80
    cp $01                                        ; $558a: $fe $01
    ld [hl], $3f                                  ; $558c: $36 $3f
    inc hl                                        ; $558e: $23
    ccf                                           ; $558f: $3f
    ld l, c                                       ; $5590: $69
    ld [hl], a                                    ; $5591: $77
    ld h, b                                       ; $5592: $60
    nop                                           ; $5593: $00
    ld a, a                                       ; $5594: $7f
    jp z, Jump_0a4_4df5                           ; $5595: $ca $f5 $4d

    ld [hl], d                                    ; $5598: $72
    cpl                                           ; $5599: $2f
    ret nc                                        ; $559a: $d0

    ld de, $fe00                                  ; $559b: $11 $00 $fe
    and h                                         ; $559e: $a4
    rst $18                                       ; $559f: $df
    dec [hl]                                      ; $55a0: $35
    jp z, $e49b                                   ; $55a1: $ca $9b $e4

    rra                                           ; $55a4: $1f
    inc b                                         ; $55a5: $04
    ldh [$9b], a                                  ; $55a6: $e0 $9b
    ld h, h                                       ; $55a8: $64
    push af                                       ; $55a9: $f5
    ld a, [bc]                                    ; $55aa: $0a
    ld d, b                                       ; $55ab: $50
    ld hl, $ff20                                  ; $55ac: $21 $20 $ff
    ld b, b                                       ; $55af: $40
    ld de, $1950                                  ; $55b0: $11 $50 $19
    rst $20                                       ; $55b3: $e7
    ld hl, sp-$3d                                 ; $55b4: $f8 $c3
    db $fc                                        ; $55b6: $fc
    ld h, c                                       ; $55b7: $61
    ld a, [hl]                                    ; $55b8: $7e
    nop                                           ; $55b9: $00
    jr nc, jr_0a4_55fb                            ; $55ba: $30 $3f

    ld l, b                                       ; $55bc: $68
    ld a, a                                       ; $55bd: $7f
    dec [hl]                                      ; $55be: $35
    ccf                                           ; $55bf: $3f
    ld a, [de]                                    ; $55c0: $1a
    rra                                           ; $55c1: $1f
    nop                                           ; $55c2: $00
    cpl                                           ; $55c3: $2f
    cpl                                           ; $55c4: $2f
    jp hl                                         ; $55c5: $e9


    ld d, $f0                                     ; $55c6: $16 $f0
    rrca                                          ; $55c8: $0f
    xor d                                         ; $55c9: $aa
    ld e, a                                       ; $55ca: $5f
    ld b, c                                       ; $55cb: $41
    ld b, l                                       ; $55cc: $45
    call nz, Call_000_1f01                        ; $55cd: $c4 $01 $1f
    rst $38                                       ; $55d0: $ff
    xor a                                         ; $55d1: $af
    rst $38                                       ; $55d2: $ff
    ld [hl], l                                    ; $55d3: $75
    add c                                         ; $55d4: $81
    jr nc, jr_0a4_5557                            ; $55d5: $30 $80

    add sp, $0a                                   ; $55d7: $e8 $0a
    ld [bc], a                                    ; $55d9: $02
    ld [bc], a                                    ; $55da: $02
    dec b                                         ; $55db: $05
    dec b                                         ; $55dc: $05
    ld c, a                                       ; $55dd: $4f
    ld b, h                                       ; $55de: $44
    rla                                           ; $55df: $17
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    dec hl                                        ; $55e2: $2b
    nop                                           ; $55e3: $00
    inc bc                                        ; $55e4: $03
    ld de, $4047                                  ; $55e5: $11 $47 $40
    dec bc                                        ; $55e8: $0b
    ld bc, $1580                                  ; $55e9: $01 $80 $15
    stop                                          ; $55ec: $10 $00
    nop                                           ; $55ee: $00
    cp $81                                        ; $55ef: $fe $81
    ld e, b                                       ; $55f1: $58
    add hl, bc                                    ; $55f2: $09
    ld [bc], a                                    ; $55f3: $02
    rst $30                                       ; $55f4: $f7
    ld [$21fe], sp                                ; $55f5: $08 $fe $21
    rst $38                                       ; $55f8: $ff
    add d                                         ; $55f9: $82
    sub [hl]                                      ; $55fa: $96

jr_0a4_55fb:
    add hl, bc                                    ; $55fb: $09
    cp a                                          ; $55fc: $bf
    nop                                           ; $55fd: $00
    ld b, b                                       ; $55fe: $40
    ld a, [$ed05]                                 ; $55ff: $fa $05 $ed
    ld [de], a                                    ; $5602: $12
    ld sp, hl                                     ; $5603: $f9
    ld b, $56                                     ; $5604: $06 $56
    ld b, b                                       ; $5606: $40
    xor c                                         ; $5607: $a9

jr_0a4_5608:
    ld [$bb08], sp                                ; $5608: $08 $08 $bb
    ld b, h                                       ; $560b: $44
    ld [$fd50], a                                 ; $560c: $ea $50 $fd
    ld bc, $d800                                  ; $560f: $01 $00 $d8
    jr nz, jr_0a4_5608                            ; $5612: $20 $f4

    ld bc, $00f8                                  ; $5614: $01 $f8 $00
    db $f4                                        ; $5617: $f4
    nop                                           ; $5618: $00
    db $10                                        ; $5619: $10
    or c                                          ; $561a: $b1
    ld b, b                                       ; $561b: $40
    add sp, -$4a                                  ; $561c: $e8 $b6
    ld de, $05fe                                  ; $561e: $11 $fe $05
    ld [hl], a                                    ; $5621: $77

Call_0a4_5622:
    adc b                                         ; $5622: $88
    jr nz, @+$01                                  ; $5623: $20 $ff

    nop                                           ; $5625: $00
    sbc [hl]                                      ; $5626: $9e
    ld bc, $bb10                                  ; $5627: $01 $10 $bb
    ld b, h                                       ; $562a: $44
    cp $00                                        ; $562b: $fe $00
    nop                                           ; $562d: $00
    jp c, $fc24                                   ; $562e: $da $24 $fc

    nop                                           ; $5631: $00
    add sp, $10                                   ; $5632: $e8 $10
    ld a, [$0400]                                 ; $5634: $fa $00 $04
    db $fc                                        ; $5637: $fc
    db $10                                        ; $5638: $10
    cp d                                          ; $5639: $ba
    ld b, d                                       ; $563a: $42
    ld hl, sp-$54                                 ; $563b: $f8 $ac
    inc de                                        ; $563d: $13
    db $dd                                        ; $563e: $dd
    ld [hl+], a                                   ; $563f: $22
    jp $09f8                                      ; $5640: $c3 $f8 $09


    ret z                                         ; $5643: $c8

    add hl, bc                                    ; $5644: $09
    rst $38                                       ; $5645: $ff
    inc b                                         ; $5646: $04
    rst $38                                       ; $5647: $ff
    ld [hl+], a                                   ; $5648: $22
    cp b                                          ; $5649: $b8
    ld bc, $0404                                  ; $564a: $01 $04 $04
    jr z, @-$21                                   ; $564d: $28 $dd

    ld [hl+], a                                   ; $564f: $22
    sbc $01                                       ; $5650: $de $01
    ld [de], a                                    ; $5652: $12
    call z, $fd0b                                 ; $5653: $cc $0b $fd
    ld [de], a                                    ; $5656: $12
    ld a, a                                       ; $5657: $7f
    ld [$f780], sp                                ; $5658: $08 $80 $f7
    ld [$24fd], sp                                ; $565b: $08 $fd $24
    nop                                           ; $565e: $00
    cp a                                          ; $565f: $bf
    ld b, b                                       ; $5660: $40
    rst $30                                       ; $5661: $f7
    nop                                           ; $5662: $00
    ld [$a45b], sp                                ; $5663: $08 $5b $a4
    or a                                          ; $5666: $b7
    ld c, b                                       ; $5667: $48
    db $dd                                        ; $5668: $dd
    ld [hl+], a                                   ; $5669: $22
    ld c, e                                       ; $566a: $4b
    nop                                           ; $566b: $00
    or h                                          ; $566c: $b4
    or a                                          ; $566d: $b7
    ld c, b                                       ; $566e: $48
    ld l, [hl]                                    ; $566f: $6e
    sub c                                         ; $5670: $91
    dec sp                                        ; $5671: $3b
    call nz, $777f                                ; $5672: $c4 $7f $77
    add b                                         ; $5675: $80
    db $f4                                        ; $5676: $f4
    ld bc, $0136                                  ; $5677: $01 $36 $01
    ld l, h                                       ; $567a: $6c
    ld bc, $5c00                                  ; $567b: $01 $00 $5c
    nop                                           ; $567e: $00
    db $fc                                        ; $567f: $fc
    inc bc                                        ; $5680: $03
    ld a, b                                       ; $5681: $78
    ld bc, $4687                                  ; $5682: $01 $87 $46
    nop                                           ; $5685: $00
    rst $10                                       ; $5686: $d7
    jr z, @+$01                                   ; $5687: $28 $ff

    add b                                         ; $5689: $80
    ld c, d                                       ; $568a: $4a
    ld a, [bc]                                    ; $568b: $0a
    halt                                          ; $568c: $76
    ld [$025e], sp                                ; $568d: $08 $5e $02
    sbc d                                         ; $5690: $9a
    ld a, [bc]                                    ; $5691: $0a
    ld [bc], a                                    ; $5692: $02
    ld e, e                                       ; $5693: $5b
    and h                                         ; $5694: $a4
    ld b, h                                       ; $5695: $44
    ld [bc], a                                    ; $5696: $02
    inc d                                         ; $5697: $14
    nop                                           ; $5698: $00
    ld a, a                                       ; $5699: $7f
    ld e, h                                       ; $569a: $5c
    ld [bc], a                                    ; $569b: $02
    db $ed                                        ; $569c: $ed
    ld [hl], d                                    ; $569d: $72
    ld d, d                                       ; $569e: $52
    xor d                                         ; $569f: $aa
    add hl, bc                                    ; $56a0: $09
    ld a, d                                       ; $56a1: $7a
    ld a, [bc]                                    ; $56a2: $0a
    inc l                                         ; $56a3: $2c
    inc c                                         ; $56a4: $0c
    ld l, a                                       ; $56a5: $6f
    sub b                                         ; $56a6: $90
    or b                                          ; $56a7: $b0
    ld bc, $4010                                  ; $56a8: $01 $10 $40
    rst $18                                       ; $56ab: $df
    ld a, h                                       ; $56ac: $7c
    ld bc, $02fd                                  ; $56ad: $01 $fd $02
    rst $18                                       ; $56b0: $df
    jr nz, jr_0a4_5732                            ; $56b1: $20 $7f

    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    ccf                                           ; $56b5: $3f
    nop                                           ; $56b6: $00
    ld e, l                                       ; $56b7: $5d
    ld [bc], a                                    ; $56b8: $02
    ccf                                           ; $56b9: $3f
    nop                                           ; $56ba: $00
    ld c, a                                       ; $56bb: $4f
    sub b                                         ; $56bc: $90
    dec b                                         ; $56bd: $05
    dec sp                                        ; $56be: $3b
    inc b                                         ; $56bf: $04
    rra                                           ; $56c0: $1f
    nop                                           ; $56c1: $00
    ld c, a                                       ; $56c2: $4f
    ld [hl], d                                    ; $56c3: $72
    nop                                           ; $56c4: $00
    cp $80                                        ; $56c5: $fe $80
    ld [bc], a                                    ; $56c7: $02
    inc l                                         ; $56c8: $2c
    ld a, [hl]                                    ; $56c9: $7e
    add l                                         ; $56ca: $85
    add h                                         ; $56cb: $84
    ld a, [bc]                                    ; $56cc: $0a
    cp a                                          ; $56cd: $bf
    adc d                                         ; $56ce: $8a
    ld [bc], a                                    ; $56cf: $02
    ld c, a                                       ; $56d0: $4f
    ld [bc], a                                    ; $56d1: $02
    ld [$00a0], sp                                ; $56d2: $08 $a0 $00
    nop                                           ; $56d5: $00
    pop bc                                        ; $56d6: $c1
    ld bc, $02d0                                  ; $56d7: $01 $d0 $02
    add sp, $08                                   ; $56da: $e8 $08
    ldh a, [rNR52]                                ; $56dc: $f0 $26
    nop                                           ; $56de: $00
    xor b                                         ; $56df: $a8
    or d                                          ; $56e0: $b2

jr_0a4_56e1:
    ld [de], a                                    ; $56e1: $12
    sbc $21                                       ; $56e2: $de $21
    ld l, [hl]                                    ; $56e4: $6e
    ld [$0478], sp                                ; $56e5: $08 $78 $04
    ld b, b                                       ; $56e8: $40
    jr nz, jr_0a4_56e1                            ; $56e9: $20 $f6

    add hl, bc                                    ; $56eb: $09
    jp nz, $dd0a                                  ; $56ec: $c2 $0a $dd

    ld h, [hl]                                    ; $56ef: $66
    and $32                                       ; $56f0: $e6 $32
    pop af                                        ; $56f2: $f1
    nop                                           ; $56f3: $00
    ld a, [de]                                    ; $56f4: $1a
    and l                                         ; $56f5: $a5
    ret nz                                        ; $56f6: $c0

    ret nc                                        ; $56f7: $d0

    ld a, b                                       ; $56f8: $78
    ld a, [$ef1d]                                 ; $56f9: $fa $1d $ef
    nop                                           ; $56fc: $00
    db $10                                        ; $56fd: $10
    rst $08                                       ; $56fe: $cf
    db $10                                        ; $56ff: $10

Call_0a4_5700:
    sbc c                                         ; $5700: $99
    ld [hl], $b3                                  ; $5701: $36 $b3
    inc h                                         ; $5703: $24
    rlca                                          ; $5704: $07
    nop                                           ; $5705: $00
    ld l, $4c                                     ; $5706: $2e $4c
    dec e                                         ; $5708: $1d
    dec bc                                        ; $5709: $0b
    rlca                                          ; $570a: $07
    xor a                                         ; $570b: $af
    ld e, h                                       ; $570c: $5c
    ld a, a                                       ; $570d: $7f
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    ld l, a                                       ; $5710: $6f
    db $10                                        ; $5711: $10

jr_0a4_5712:
    dec e                                         ; $5712: $1d
    ld [bc], a                                    ; $5713: $02
    ld c, a                                       ; $5714: $4f
    nop                                           ; $5715: $00
    rla                                           ; $5716: $17
    ld [$4b02], sp                                ; $5717: $08 $02 $4b
    ld b, b                                       ; $571a: $40
    dec b                                         ; $571b: $05
    ld d, b                                       ; $571c: $50
    ld bc, $02fd                                  ; $571d: $01 $fd $02
    rst $10                                       ; $5720: $d7
    nop                                           ; $5721: $00
    jr z, jr_0a4_5712                             ; $5722: $28 $ee

    ld de, $aa55                                  ; $5724: $11 $55 $aa
    or h                                          ; $5727: $b4
    ld c, e                                       ; $5728: $4b
    xor d                                         ; $5729: $aa
    nop                                           ; $572a: $00
    ld d, l                                       ; $572b: $55
    push de                                       ; $572c: $d5
    ld a, [hl+]                                   ; $572d: $2a
    xor e                                         ; $572e: $ab
    ld d, h                                       ; $572f: $54
    rst $30                                       ; $5730: $f7
    ld a, [bc]                                    ; $5731: $0a

jr_0a4_5732:
    xor a                                         ; $5732: $af
    ld h, h                                       ; $5733: $64
    ld d, b                                       ; $5734: $50
    call nz, $0604                                ; $5735: $c4 $04 $06
    inc bc                                        ; $5738: $03
    db $fd                                        ; $5739: $fd
    ld b, d                                       ; $573a: $42
    ld hl, sp+$02                                 ; $573b: $f8 $02
    ld a, [bc]                                    ; $573d: $0a
    nop                                           ; $573e: $00
    inc c                                         ; $573f: $0c
    db $10                                        ; $5740: $10
    sub l                                         ; $5741: $95
    add b                                         ; $5742: $80
    dec hl                                        ; $5743: $2b
    inc [hl]                                      ; $5744: $34
    nop                                           ; $5745: $00
    cp $1a                                        ; $5746: $fe $1a
    rst $38                                       ; $5748: $ff
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    ld a, a                                       ; $574b: $7f
    nop                                           ; $574c: $00

jr_0a4_574d:
    cpl                                           ; $574d: $2f
    ld [de], a                                    ; $574e: $12
    ccf                                           ; $574f: $3f
    nop                                           ; $5750: $00
    ld e, e                                       ; $5751: $5b
    inc b                                         ; $5752: $04
    nop                                           ; $5753: $00
    cpl                                           ; $5754: $2f
    nop                                           ; $5755: $00
    inc bc                                        ; $5756: $03
    jr nz, @+$0b                                  ; $5757: $20 $09

    nop                                           ; $5759: $00
    ld [de], a                                    ; $575a: $12
    stop                                          ; $575b: $10 $00
    db $10                                        ; $575d: $10
    stop                                          ; $575e: $10 $00
    ld [$0000], sp                                ; $5760: $08 $00 $00
    dec b                                         ; $5763: $05
    ld b, h                                       ; $5764: $44
    ld bc, $000a                                  ; $5765: $01 $0a $00
    daa                                           ; $5768: $27
    nop                                           ; $5769: $00
    ld e, [hl]                                    ; $576a: $5e
    ld bc, $9f7f                                  ; $576b: $01 $7f $9f
    inc b                                         ; $576e: $04
    ld [de], a                                    ; $576f: $12
    jp z, $a402                                   ; $5770: $ca $02 $a4

    ld d, b                                       ; $5773: $50
    inc bc                                        ; $5774: $03
    rst $28                                       ; $5775: $ef
    inc d                                         ; $5776: $14
    ld e, $0b                                     ; $5777: $1e $0b
    rst $38                                       ; $5779: $ff
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    ld b, d                                       ; $577c: $42
    ld d, b                                       ; $577d: $50
    add b                                         ; $577e: $80
    nop                                           ; $577f: $00
    ld d, h                                       ; $5780: $54
    nop                                           ; $5781: $00
    jp hl                                         ; $5782: $e9


    ld [bc], a                                    ; $5783: $02
    nop                                           ; $5784: $00
    ld a, [hl]                                    ; $5785: $7e
    add b                                         ; $5786: $80

jr_0a4_5787:
    rst $18                                       ; $5787: $df
    jr nz, jr_0a4_5787                            ; $5788: $20 $fd

    ld e, b                                       ; $578a: $58
    inc bc                                        ; $578b: $03
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    inc b                                         ; $578e: $04
    adc b                                         ; $578f: $88
    adc b                                         ; $5790: $88
    jr nz, jr_0a4_5793                            ; $5791: $20 $00

jr_0a4_5793:
    ld b, d                                       ; $5793: $42
    ld [de], a                                    ; $5794: $12
    and h                                         ; $5795: $a4
    inc bc                                        ; $5796: $03
    nop                                           ; $5797: $00
    jp z, $fc80                                   ; $5798: $ca $80 $fc

    nop                                           ; $579b: $00
    cp $58                                        ; $579c: $fe $58
    ld [$017e], sp                                ; $579e: $08 $7e $01
    sbc b                                         ; $57a1: $98
    inc l                                         ; $57a2: $2c

jr_0a4_57a3:
    dec bc                                        ; $57a3: $0b
    ld a, [$2805]                                 ; $57a4: $fa $05 $28
    add hl, bc                                    ; $57a7: $09
    ld c, $01                                     ; $57a8: $0e $01
    nop                                           ; $57aa: $00
    or l                                          ; $57ab: $b5
    ld c, d                                       ; $57ac: $4a
    nop                                           ; $57ad: $00
    db $fd                                        ; $57ae: $fd
    ld [bc], a                                    ; $57af: $02
    reti                                          ; $57b0: $d9


    ld h, $af                                     ; $57b1: $26 $af
    ld d, b                                       ; $57b3: $50
    push af                                       ; $57b4: $f5
    ld a, [bc]                                    ; $57b5: $0a
    jr nz, jr_0a4_57a3                            ; $57b6: $20 $eb

    inc d                                         ; $57b8: $14
    jr nz, jr_0a4_57c4                            ; $57b9: $20 $09

    cp l                                          ; $57bb: $bd
    ld b, d                                       ; $57bc: $42
    ld d, a                                       ; $57bd: $57
    xor b                                         ; $57be: $a8
    sbc a                                         ; $57bf: $9f
    ld bc, $4a60                                  ; $57c0: $01 $60 $4a
    or l                                          ; $57c3: $b5

jr_0a4_57c4:
    ld [hl], l                                    ; $57c4: $75
    adc d                                         ; $57c5: $8a
    rst $18                                       ; $57c6: $df
    jr nz, jr_0a4_574d                            ; $57c7: $20 $84

    inc bc                                        ; $57c9: $03
    jr jr_0a4_57d1                                ; $57ca: $18 $05

    rst $18                                       ; $57cc: $df
    jr nz, jr_0a4_581b                            ; $57cd: $20 $4c

    add hl, bc                                    ; $57cf: $09
    and [hl]                                      ; $57d0: $a6

jr_0a4_57d1:
    ld [$906f], sp                                ; $57d1: $08 $6f $90
    nop                                           ; $57d4: $00
    nop                                           ; $57d5: $00
    ld a, [bc]                                    ; $57d6: $0a
    ld a, [bc]                                    ; $57d7: $0a
    dec [hl]                                      ; $57d8: $35
    dec d                                         ; $57d9: $15
    xor d                                         ; $57da: $aa
    cpl                                           ; $57db: $2f
    ld d, b                                       ; $57dc: $50
    ld a, a                                       ; $57dd: $7f
    ldh [rNR10], a                                ; $57de: $e0 $10
    nop                                           ; $57e0: $00
    ld [hl], d                                    ; $57e1: $72
    dec bc                                        ; $57e2: $0b
    ld de, $5005                                  ; $57e3: $11 $05 $50
    ret nc                                        ; $57e6: $d0

    jr z, jr_0a4_5851                             ; $57e7: $28 $68

    sub l                                         ; $57e9: $95
    jr c, @-$02                                   ; $57ea: $38 $fc

    ld [bc], a                                    ; $57ec: $02
    ld d, $01                                     ; $57ed: $16 $01
    or d                                          ; $57ef: $b2
    inc bc                                        ; $57f0: $03
    jr nc, jr_0a4_5818                            ; $57f1: $30 $25

    ld b, b                                       ; $57f3: $40
    nop                                           ; $57f4: $00
    sub b                                         ; $57f5: $90
    ld b, $a0                                     ; $57f6: $06 $a0
    ld c, b                                       ; $57f8: $48
    ldh [rNR14], a                                ; $57f9: $e0 $14
    ldh a, [$ec]                                  ; $57fb: $f0 $ec
    inc bc                                        ; $57fd: $03
    and d                                         ; $57fe: $a2
    dec c                                         ; $57ff: $0d
    push de                                       ; $5800: $d5
    ld d, b                                       ; $5801: $50
    dec hl                                        ; $5802: $2b
    ld d, h                                       ; $5803: $54
    ld bc, $d681                                  ; $5804: $01 $81 $d6
    ld bc, $5b02                                  ; $5807: $01 $02 $5b
    and h                                         ; $580a: $a4
    add l                                         ; $580b: $85
    nop                                           ; $580c: $00
    ld a, d                                       ; $580d: $7a
    ld [hl+], a                                   ; $580e: $22
    db $fd                                        ; $580f: $fd
    ld d, l                                       ; $5810: $55
    cp $28                                        ; $5811: $fe $28
    rst $38                                       ; $5813: $ff
    sub l                                         ; $5814: $95
    ld b, b                                       ; $5815: $40
    ld l, d                                       ; $5816: $6a
    ld l, [hl]                                    ; $5817: $6e

jr_0a4_5818:
    ld [$04f8], sp                                ; $5818: $08 $f8 $04

jr_0a4_581b:
    ld a, h                                       ; $581b: $7c
    add d                                         ; $581c: $82
    xor [hl]                                      ; $581d: $ae
    ld d, c                                       ; $581e: $51
    nop                                           ; $581f: $00

Call_0a4_5820:
    ld a, a                                       ; $5820: $7f
    add b                                         ; $5821: $80
    xor e                                         ; $5822: $ab
    ld d, h                                       ; $5823: $54
    ld e, a                                       ; $5824: $5f
    and b                                         ; $5825: $a0
    cp $01                                        ; $5826: $fe $01
    nop                                           ; $5828: $00
    cp a                                          ; $5829: $bf
    ld b, b                                       ; $582a: $40
    ld b, b                                       ; $582b: $40
    ld b, b                                       ; $582c: $40
    jr nz, jr_0a4_584f                            ; $582d: $20 $20

    db $10                                        ; $582f: $10
    ld d, b                                       ; $5830: $50
    nop                                           ; $5831: $00
    add b                                         ; $5832: $80
    ld h, b                                       ; $5833: $60
    ret z                                         ; $5834: $c8

    jr c, jr_0a4_581b                             ; $5835: $38 $e4

    inc e                                         ; $5837: $1c
    jp nc, Jump_000_212e                          ; $5838: $d2 $2e $21

    and c                                         ; $583b: $a1
    ld e, a                                       ; $583c: $5f
    ld [de], a                                    ; $583d: $12
    inc c                                         ; $583e: $0c
    push bc                                       ; $583f: $c5
    ld a, [hl-]                                   ; $5840: $3a
    add sp, $17                                   ; $5841: $e8 $17
    db $ec                                        ; $5843: $ec
    dec bc                                        ; $5844: $0b
    jr nz, @+$01                                  ; $5845: $20 $ff

    nop                                           ; $5847: $00
    ld [hl], b                                    ; $5848: $70
    add hl, bc                                    ; $5849: $09
    rst $28                                       ; $584a: $ef
    db $10                                        ; $584b: $10
    cp $01                                        ; $584c: $fe $01
    cp l                                          ; $584e: $bd

jr_0a4_584f:
    nop                                           ; $584f: $00
    ld b, d                                       ; $5850: $42

jr_0a4_5851:
    ld a, d                                       ; $5851: $7a
    add l                                         ; $5852: $85
    db $f4                                        ; $5853: $f4
    dec bc                                        ; $5854: $0b
    xor c                                         ; $5855: $a9
    ld d, a                                       ; $5856: $57
    jp nz, Jump_000_3f00                          ; $5857: $c2 $00 $3f

    ld [hl], a                                    ; $585a: $77
    adc b                                         ; $585b: $88
    sbc $21                                       ; $585c: $de $21
    cp l                                          ; $585e: $bd
    ld b, d                                       ; $585f: $42
    ld e, d                                       ; $5860: $5a
    nop                                           ; $5861: $00
    and l                                         ; $5862: $a5
    inc l                                         ; $5863: $2c
    db $d3                                        ; $5864: $d3
    sbc b                                         ; $5865: $98
    rst $20                                       ; $5866: $e7
    db $10                                        ; $5867: $10
    rst $28                                       ; $5868: $ef
    ld [hl], c                                    ; $5869: $71
    nop                                           ; $586a: $00
    adc a                                         ; $586b: $8f
    swap a                                        ; $586c: $cb $37
    pop de                                        ; $586e: $d1
    cpl                                           ; $586f: $2f
    or e                                          ; $5870: $b3
    ld c, a                                       ; $5871: $4f
    daa                                           ; $5872: $27
    nop                                           ; $5873: $00
    rst $18                                       ; $5874: $df
    ld b, l                                       ; $5875: $45
    cp a                                          ; $5876: $bf
    ld bc, $13ff                                  ; $5877: $01 $ff $13
    rst $28                                       ; $587a: $ef
    dec [hl]                                      ; $587b: $35
    nop                                           ; $587c: $00
    rst $08                                       ; $587d: $cf
    ld a, l                                       ; $587e: $7d
    add d                                         ; $587f: $82
    cp a                                          ; $5880: $bf
    ld b, b                                       ; $5881: $40
    ld d, a                                       ; $5882: $57
    xor b                                         ; $5883: $a8
    inc bc                                        ; $5884: $03
    ld [bc], a                                    ; $5885: $02
    db $fc                                        ; $5886: $fc
    and b                                         ; $5887: $a0
    rst $38                                       ; $5888: $ff
    push af                                       ; $5889: $f5
    rst $38                                       ; $588a: $ff
    cp $54                                        ; $588b: $fe $54
    ld b, $14                                     ; $588d: $06 $14
    ld [bc], a                                    ; $588f: $02
    rst $38                                       ; $5890: $ff
    db $eb                                        ; $5891: $eb
    inc e                                         ; $5892: $1c
    ret nz                                        ; $5893: $c0

    ccf                                           ; $5894: $3f
    ld bc, $03b3                                  ; $5895: $01 $b3 $03
    dec d                                         ; $5898: $15
    jr nz, @+$01                                  ; $5899: $20 $ff

    and b                                         ; $589b: $a0
    dec sp                                        ; $589c: $3b
    ld b, $e6                                     ; $589d: $06 $e6
    rra                                           ; $589f: $1f
    sub h                                         ; $58a0: $94
    ld a, a                                       ; $58a1: $7f
    inc l                                         ; $58a2: $2c
    ld [hl+], a                                   ; $58a3: $22
    rst $38                                       ; $58a4: $ff
    ld a, [hl]                                    ; $58a5: $7e
    db $fc                                        ; $58a6: $fc
    dec b                                         ; $58a7: $05
    cp $ff                                        ; $58a8: $fe $ff
    cp a                                          ; $58aa: $bf
    inc d                                         ; $58ab: $14
    inc bc                                        ; $58ac: $03
    db $e3                                        ; $58ad: $e3
    ld [$cf1f], sp                                ; $58ae: $08 $1f $cf
    ccf                                           ; $58b1: $3f
    ld e, $c0                                     ; $58b2: $1e $c0
    ld b, $5a                                     ; $58b4: $06 $5a
    ld a, [$02b4]                                 ; $58b6: $fa $b4 $02
    db $f4                                        ; $58b9: $f4
    ld a, b                                       ; $58ba: $78
    ld hl, sp-$10                                 ; $58bb: $f8 $f0
    ldh a, [$ef]                                  ; $58bd: $f0 $ef
    ld a, [hl+]                                   ; $58bf: $2a
    ld [bc], a                                    ; $58c0: $02
    add hl, bc                                    ; $58c1: $09
    nop                                           ; $58c2: $00
    and [hl]                                      ; $58c3: $a6
    db $e3                                        ; $58c4: $e3
    ld b, h                                       ; $58c5: $44
    dec hl                                        ; $58c6: $2b
    and $84                                       ; $58c7: $e6 $84
    dec l                                         ; $58c9: $2d
    add e                                         ; $58ca: $83
    inc b                                         ; $58cb: $04
    rst $28                                       ; $58cc: $ef
    rst $08                                       ; $58cd: $cf
    ld a, h                                       ; $58ce: $7c
    rst $38                                       ; $58cf: $ff
    nop                                           ; $58d0: $00
    ld [hl], d                                    ; $58d1: $72
    ld c, $dc                                     ; $58d2: $0e $dc
    ld [hl+], a                                   ; $58d4: $22
    nop                                           ; $58d5: $00
    db $ec                                        ; $58d6: $ec
    ld [hl-], a                                   ; $58d7: $32
    push hl                                       ; $58d8: $e5
    ld [hl-], a                                   ; $58d9: $32
    jp hl                                         ; $58da: $e9


    ld [de], a                                    ; $58db: $12
    or c                                          ; $58dc: $b1
    ret c                                         ; $58dd: $d8

    add b                                         ; $58de: $80
    ld a, [hl]                                    ; $58df: $7e
    ld c, $7f                                     ; $58e0: $0e $7f
    add b                                         ; $58e2: $80
    ld [hl], a                                    ; $58e3: $77
    adc h                                         ; $58e4: $8c
    ld c, a                                       ; $58e5: $4f
    xor b                                         ; $58e6: $a8
    rrca                                          ; $58e7: $0f
    nop                                           ; $58e8: $00
    ld e, b                                       ; $58e9: $58
    inc a                                         ; $58ea: $3c
    inc de                                        ; $58eb: $13
    add hl, de                                    ; $58ec: $19
    inc sp                                        ; $58ed: $33
    call $e468                                    ; $58ee: $cd $68 $e4
    nop                                           ; $58f1: $00
    jr nc, jr_0a4_593c                            ; $58f2: $30 $48

    or b                                          ; $58f4: $b0
    ld b, b                                       ; $58f5: $40
    add b                                         ; $58f6: $80
    sub h                                         ; $58f7: $94
    ldh [$ea], a                                  ; $58f8: $e0 $ea
    nop                                           ; $58fa: $00
    ld [hl], b                                    ; $58fb: $70
    ld sp, hl                                     ; $58fc: $f9
    ld a, $a2                                     ; $58fd: $3e $a2
    ld e, l                                       ; $58ff: $5d
    inc de                                        ; $5900: $13
    ld h, $41                                     ; $5901: $26 $41
    nop                                           ; $5903: $00
    ld c, $17                                     ; $5904: $0e $17
    ld bc, $030d                                  ; $5906: $01 $0d $03
    ld d, e                                       ; $5909: $53
    ld c, $ab                                     ; $590a: $0e $ab
    ld b, $1e                                     ; $590c: $06 $1e
    ld d, a                                       ; $590e: $57
    cp h                                          ; $590f: $bc
    and l                                         ; $5910: $a5
    ld e, d                                       ; $5911: $5a
    call c, $b004                                 ; $5912: $dc $04 $b0
    ld b, $77                                     ; $5915: $06 $77
    and d                                         ; $5917: $a2
    ldh [rDIV], a                                 ; $5918: $e0 $04
    ei                                            ; $591a: $fb
    jr c, jr_0a4_591d                             ; $591b: $38 $00

jr_0a4_591d:
    rst $18                                       ; $591d: $df
    nop                                           ; $591e: $00
    rst $28                                       ; $591f: $ef
    ld c, $13                                     ; $5920: $0e $13
    rst $38                                       ; $5922: $ff
    dec c                                         ; $5923: $0d
    nop                                           ; $5924: $00
    ld d, a                                       ; $5925: $57
    adc b                                         ; $5926: $88
    rst $28                                       ; $5927: $ef
    inc b                                         ; $5928: $04
    dec c                                         ; $5929: $0d
    call z, $fb06                                 ; $592a: $cc $06 $fb
    ret nc                                        ; $592d: $d0

    ld b, $56                                     ; $592e: $06 $56
    ld e, e                                       ; $5930: $5b
    ldh a, [rNR14]                                ; $5931: $f0 $14
    rst $28                                       ; $5933: $ef
    sub $04                                       ; $5934: $d6 $04
    push af                                       ; $5936: $f5
    db $e4                                        ; $5937: $e4
    inc b                                         ; $5938: $04
    ld a, [c]                                     ; $5939: $f2
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00

jr_0a4_593c:
    rlca                                          ; $593c: $07
    cp e                                          ; $593d: $bb
    inc b                                         ; $593e: $04
    rst $18                                       ; $593f: $df
    nop                                           ; $5940: $00
    or $16                                        ; $5941: $f6 $16
    dec b                                         ; $5943: $05
    ld h, $08                                     ; $5944: $26 $08
    ld a, $08                                     ; $5946: $3e $08

Call_0a4_5948:
    ld c, c                                       ; $5948: $49
    cp e                                          ; $5949: $bb
    xor d                                         ; $594a: $aa
    ld a, [bc]                                    ; $594b: $0a
    nop                                           ; $594c: $00
    xor l                                         ; $594d: $ad
    and d                                         ; $594e: $a2
    inc bc                                        ; $594f: $03
    add b                                         ; $5950: $80
    add b                                         ; $5951: $80
    add h                                         ; $5952: $84
    ld b, $01                                     ; $5953: $06 $01
    ld de, $0040                                  ; $5955: $11 $40 $00
    xor d                                         ; $5958: $aa
    nop                                           ; $5959: $00
    cp h                                          ; $595a: $bc
    ld b, b                                       ; $595b: $40
    inc b                                         ; $595c: $04
    dec c                                         ; $595d: $0d
    sbc l                                         ; $595e: $9d
    ld b, b                                       ; $595f: $40
    dec c                                         ; $5960: $0d
    cp $09                                        ; $5961: $fe $09
    ld e, b                                       ; $5963: $58
    rrca                                          ; $5964: $0f
    ld b, [hl]                                    ; $5965: $46
    dec b                                         ; $5966: $05
    sub b                                         ; $5967: $90
    add hl, bc                                    ; $5968: $09
    ld [bc], a                                    ; $5969: $02
    add h                                         ; $596a: $84
    rlca                                          ; $596b: $07
    ld [bc], a                                    ; $596c: $02
    jr nz, jr_0a4_596f                            ; $596d: $20 $00

jr_0a4_596f:
    inc b                                         ; $596f: $04
    add hl, hl                                    ; $5970: $29
    nop                                           ; $5971: $00
    ld e, a                                       ; $5972: $5f
    ld e, b                                       ; $5973: $58
    dec b                                         ; $5974: $05
    nop                                           ; $5975: $00
    ld de, $2000                                  ; $5976: $11 $00 $20
    jr nz, jr_0a4_59bd                            ; $5979: $20 $42

    ld a, [bc]                                    ; $597b: $0a
    or d                                          ; $597c: $b2
    db $10                                        ; $597d: $10
    ld d, l                                       ; $597e: $55
    inc h                                         ; $597f: $24
    ld [bc], a                                    ; $5980: $02
    ret nz                                        ; $5981: $c0

    db $10                                        ; $5982: $10
    ld [$01ac], sp                                ; $5983: $08 $ac $01
    nop                                           ; $5986: $00
    ld b, b                                       ; $5987: $40
    ld b, h                                       ; $5988: $44
    db $10                                        ; $5989: $10
    db $10                                        ; $598a: $10
    ld c, d                                       ; $598b: $4a
    ld a, [hl+]                                   ; $598c: $2a
    nop                                           ; $598d: $00
    or l                                          ; $598e: $b5
    ld [hl], d                                    ; $598f: $72
    dec b                                         ; $5990: $05
    or $4e                                        ; $5991: $f6 $4e
    rlca                                          ; $5993: $07
    ld a, e                                       ; $5994: $7b
    ld d, d                                       ; $5995: $52
    rla                                           ; $5996: $17
    rst $28                                       ; $5997: $ef
    cp e                                          ; $5998: $bb
    xor d                                         ; $5999: $aa
    nop                                           ; $599a: $00
    rst $18                                       ; $599b: $df
    ld e, h                                       ; $599c: $5c
    rlca                                          ; $599d: $07
    or b                                          ; $599e: $b0
    db $10                                        ; $599f: $10
    sbc b                                         ; $59a0: $98
    db $10                                        ; $59a1: $10
    ld a, a                                       ; $59a2: $7f
    stop                                          ; $59a3: $10 $00
    or b                                          ; $59a5: $b0
    nop                                           ; $59a6: $00
    cp d                                          ; $59a7: $ba
    ld [hl], b                                    ; $59a8: $70
    rla                                           ; $59a9: $17
    ld d, a                                       ; $59aa: $57
    adc d                                         ; $59ab: $8a
    db $10                                        ; $59ac: $10
    or b                                          ; $59ad: $b0
    jr nc, @+$34                                  ; $59ae: $30 $32

    jr nz, jr_0a4_596f                            ; $59b0: $20 $bd

    and h                                         ; $59b2: $a4
    db $10                                        ; $59b3: $10
    ld a, e                                       ; $59b4: $7b
    rst $08                                       ; $59b5: $cf
    inc e                                         ; $59b6: $1c
    dec bc                                        ; $59b7: $0b
    ld b, b                                       ; $59b8: $40
    jr jr_0a4_59db                                ; $59b9: $18 $20

    push af                                       ; $59bb: $f5
    ret z                                         ; $59bc: $c8

jr_0a4_59bd:
    db $10                                        ; $59bd: $10
    ret nz                                        ; $59be: $c0

    nop                                           ; $59bf: $00
    ld c, h                                       ; $59c0: $4c
    nop                                           ; $59c1: $00
    ld e, h                                       ; $59c2: $5c
    ld [$c0d8], sp                                ; $59c3: $08 $d8 $c0
    db $10                                        ; $59c6: $10
    or d                                          ; $59c7: $b2
    rlca                                          ; $59c8: $07
    cp e                                          ; $59c9: $bb
    ld [$c001], sp                                ; $59ca: $08 $01 $c0
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    db $ed                                        ; $59cf: $ed
    db $d3                                        ; $59d0: $d3
    nop                                           ; $59d1: $00
    xor c                                         ; $59d2: $a9
    rst $30                                       ; $59d3: $f7
    di                                            ; $59d4: $f3
    rst $38                                       ; $59d5: $ff
    rst $18                                       ; $59d6: $df
    rst $38                                       ; $59d7: $ff
    and c                                         ; $59d8: $a1
    rst $38                                       ; $59d9: $ff
    nop                                           ; $59da: $00

jr_0a4_59db:
    ei                                            ; $59db: $fb
    rst $00                                       ; $59dc: $c7
    cp l                                          ; $59dd: $bd
    jp $e799                                      ; $59de: $c3 $99 $e7


    call Call_000_04f3                            ; $59e1: $cd $f3 $04

jr_0a4_59e4:
    add e                                         ; $59e4: $83
    rst $38                                       ; $59e5: $ff
    push de                                       ; $59e6: $d5
    rst $38                                       ; $59e7: $ff
    xor e                                         ; $59e8: $ab
    ld [de], a                                    ; $59e9: $12
    nop                                           ; $59ea: $00
    db $fd                                        ; $59eb: $fd
    rst $38                                       ; $59ec: $ff
    nop                                           ; $59ed: $00
    jp $b1ff                                      ; $59ee: $c3 $ff $b1


    rst $08                                       ; $59f1: $cf
    cp l                                          ; $59f2: $bd
    jp $c3bd                                      ; $59f3: $c3 $bd $c3


    dec b                                         ; $59f6: $05
    adc c                                         ; $59f7: $89
    rst $30                                       ; $59f8: $f7
    add c                                         ; $59f9: $81
    rst $38                                       ; $59fa: $ff
    push bc                                       ; $59fb: $c5
    inc d                                         ; $59fc: $14
    nop                                           ; $59fd: $00
    db $dd                                        ; $59fe: $dd
    and d                                         ; $59ff: $a2

Jump_0a4_5a00:
    rla                                           ; $5a00: $17
    adc c                                         ; $5a01: $89
    dec b                                         ; $5a02: $05
    jr jr_0a4_59e4                                ; $5a03: $18 $df

    db $eb                                        ; $5a05: $eb
    xor c                                         ; $5a06: $a9
    jr nz, jr_0a4_5a09                            ; $5a07: $20 $00

jr_0a4_5a09:
    cp l                                          ; $5a09: $bd
    db $eb                                        ; $5a0a: $eb
    jr nz, jr_0a4_5a3c                            ; $5a0b: $20 $2f

    ld d, b                                       ; $5a0d: $50
    inc bc                                        ; $5a0e: $03

jr_0a4_5a0f:
    ld l, b                                       ; $5a0f: $68
    rlca                                          ; $5a10: $07
    rrca                                          ; $5a11: $0f
    ld bc, $a300                                  ; $5a12: $01 $00 $a3
    rst $38                                       ; $5a15: $ff
    adc a                                         ; $5a16: $8f
    ei                                            ; $5a17: $fb
    db $10                                        ; $5a18: $10
    cp c                                          ; $5a19: $b9
    rst $28                                       ; $5a1a: $ef
    add e                                         ; $5a1b: $83
    jr nz, @+$32                                  ; $5a1c: $20 $30

    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    db $d3                                        ; $5a20: $d3
    rst $38                                       ; $5a21: $ff
    nop                                           ; $5a22: $00
    xor c                                         ; $5a23: $a9
    rst $38                                       ; $5a24: $ff
    pop bc                                        ; $5a25: $c1
    rst $38                                       ; $5a26: $ff
    add l                                         ; $5a27: $85
    rst $38                                       ; $5a28: $ff
    xor e                                         ; $5a29: $ab
    rst $10                                       ; $5a2a: $d7
    nop                                           ; $5a2b: $00
    db $dd                                        ; $5a2c: $dd
    and e                                         ; $5a2d: $a3
    cp a                                          ; $5a2e: $bf
    pop bc                                        ; $5a2f: $c1
    db $fd                                        ; $5a30: $fd
    add e                                         ; $5a31: $83
    cp a                                          ; $5a32: $bf
    pop bc                                        ; $5a33: $c1
    ld bc, $8bf5                                  ; $5a34: $01 $f5 $8b
    and c                                         ; $5a37: $a1
    rst $18                                       ; $5a38: $df
    adc e                                         ; $5a39: $8b
    rst $38                                       ; $5a3a: $ff
    rst $10                                       ; $5a3b: $d7

jr_0a4_5a3c:
    ldh a, [rTAC]                                 ; $5a3c: $f0 $07
    ld h, b                                       ; $5a3e: $60
    cp e                                          ; $5a3f: $bb
    nop                                           ; $5a40: $00
    ld b, l                                       ; $5a41: $45
    ret z                                         ; $5a42: $c8

    rrca                                          ; $5a43: $0f
    inc bc                                        ; $5a44: $03
    inc bc                                        ; $5a45: $03
    rra                                           ; $5a46: $1f
    rra                                           ; $5a47: $1f
    ccf                                           ; $5a48: $3f
    dec a                                         ; $5a49: $3d
    ccf                                           ; $5a4a: $3f
    ld a, a                                       ; $5a4b: $7f
    ld bc, $6b00                                  ; $5a4c: $01 $00 $6b
    jr z, jr_0a4_5a0f                             ; $5a4f: $28 $be

    rrca                                          ; $5a51: $0f
    ld [hl], d                                    ; $5a52: $72
    rrca                                          ; $5a53: $0f
    ccf                                           ; $5a54: $3f
    ld bc, $0800                                  ; $5a55: $01 $00 $08
    ld a, a                                       ; $5a58: $7f
    ld a, [hl]                                    ; $5a59: $7e
    or a                                          ; $5a5a: $b7

jr_0a4_5a5b:
    ld hl, sp-$7d                                 ; $5a5b: $f8 $83
    jr nz, jr_0a4_5a5b                            ; $5a5d: $20 $fc

    rst $28                                       ; $5a5f: $ef
    ldh a, [rNR41]                                ; $5a60: $f0 $20
    cp a                                          ; $5a62: $bf
    ret nz                                        ; $5a63: $c0

    and h                                         ; $5a64: $a4
    ld d, $e0                                     ; $5a65: $16 $e0
    cp $bf                                        ; $5a67: $fe $bf
    cp c                                          ; $5a69: $b9
    rst $00                                       ; $5a6a: $c7
    nop                                           ; $5a6b: $00
    rst $38                                       ; $5a6c: $ff
    add b                                         ; $5a6d: $80
    xor a                                         ; $5a6e: $af
    ret nc                                        ; $5a6f: $d0

    xor $91                                       ; $5a70: $ee $91
    cp [hl]                                       ; $5a72: $be
    pop bc                                        ; $5a73: $c1
    add c                                         ; $5a74: $81
    jp z, $7f0c                                   ; $5a75: $ca $0c $7f

    add b                                         ; $5a78: $80
    di                                            ; $5a79: $f3
    db $fc                                        ; $5a7a: $fc
    rst $08                                       ; $5a7b: $cf
    ccf                                           ; $5a7c: $3f
    sbc h                                         ; $5a7d: $9c
    inc c                                         ; $5a7e: $0c
    ld [$10ef], sp                                ; $5a7f: $08 $ef $10
    xor $11                                       ; $5a82: $ee $11
    jr jr_0a4_5a9e                                ; $5a84: $18 $18

    rst $08                                       ; $5a86: $cf
    ldh a, [$fe]                                  ; $5a87: $f0 $fe
    add $bc                                       ; $5a89: $c6 $bc
    jr nz, jr_0a4_5aa5                            ; $5a8b: $20 $18

    jr z, jr_0a4_5b0d                             ; $5a8d: $28 $7e

    add c                                         ; $5a8f: $81
    di                                            ; $5a90: $f3
    cp l                                          ; $5a91: $bd
    rrca                                          ; $5a92: $0f
    db $ec                                        ; $5a93: $ec
    nop                                           ; $5a94: $00
    and c                                         ; $5a95: $a1
    add b                                         ; $5a96: $80
    sbc [hl]                                      ; $5a97: $9e
    nop                                           ; $5a98: $00
    sub l                                         ; $5a99: $95
    db $eb                                        ; $5a9a: $eb
    xor a                                         ; $5a9b: $af
    pop de                                        ; $5a9c: $d1
    rst $18                                       ; $5a9d: $df

jr_0a4_5a9e:
    and c                                         ; $5a9e: $a1
    cp a                                          ; $5a9f: $bf
    nop                                           ; $5aa0: $00
    pop bc                                        ; $5aa1: $c1
    rst $38                                       ; $5aa2: $ff
    add c                                         ; $5aa3: $81
    cp l                                          ; $5aa4: $bd

jr_0a4_5aa5:
    jp $ef95                                      ; $5aa5: $c3 $95 $ef


    db $d3                                        ; $5aa8: $d3
    and b                                         ; $5aa9: $a0
    adc d                                         ; $5aaa: $8a
    ld [bc], a                                    ; $5aab: $02
    rst $38                                       ; $5aac: $ff
    inc b                                         ; $5aad: $04
    ld bc, $ffc1                                  ; $5aae: $01 $c1 $ff
    sbc c                                         ; $5ab1: $99
    rst $20                                       ; $5ab2: $e7
    cp l                                          ; $5ab3: $bd
    ld b, l                                       ; $5ab4: $45
    jp Jump_000_18b4                              ; $5ab5: $c3 $b4 $18


    sub l                                         ; $5ab8: $95
    db $eb                                        ; $5ab9: $eb
    add c                                         ; $5aba: $81
    db $10                                        ; $5abb: $10
    ld bc, $b6a9                                  ; $5abc: $01 $a9 $b6
    stop                                          ; $5abf: $10 $00
    db $f4                                        ; $5ac1: $f4
    rst $38                                       ; $5ac2: $ff
    sub $f9                                       ; $5ac3: $d6 $f9
    rst $28                                       ; $5ac5: $ef
    ldh a, [$a7]                                  ; $5ac6: $f0 $a7
    ld hl, sp+$14                                 ; $5ac8: $f8 $14
    db $d3                                        ; $5aca: $d3
    db $fc                                        ; $5acb: $fc
    xor l                                         ; $5acc: $ad
    ld b, c                                       ; $5acd: $41
    ld d, $80                                     ; $5ace: $16 $80
    or h                                          ; $5ad0: $b4

jr_0a4_5ad1:
    ld b, $a0                                     ; $5ad1: $06 $a0
    ld h, b                                       ; $5ad3: $60
    inc b                                         ; $5ad4: $04
    sub b                                         ; $5ad5: $90
    ld [hl], b                                    ; $5ad6: $70
    jr z, jr_0a4_5ad1                             ; $5ad7: $28 $f8

    ld a, [hl]                                    ; $5ad9: $7e
    ld h, a                                       ; $5ada: $67
    nop                                           ; $5adb: $00
    cp $fb                                        ; $5adc: $fe $fb
    ld [bc], a                                    ; $5ade: $02
    cp $f9                                        ; $5adf: $fe $f9
    ei                                            ; $5ae1: $fb
    db $fc                                        ; $5ae2: $fc
    db $fd                                        ; $5ae3: $fd
    cp $72                                        ; $5ae4: $fe $72
    nop                                           ; $5ae6: $00
    db $fc                                        ; $5ae7: $fc
    ld bc, $f9fe                                  ; $5ae8: $01 $fe $f9
    ld e, a                                       ; $5aeb: $5f

Jump_0a4_5aec:
    cp a                                          ; $5aec: $bf
    rst $38                                       ; $5aed: $ff
    rrca                                          ; $5aee: $0f
    rst $30                                       ; $5aef: $f7
    db $ed                                        ; $5af0: $ed
    dec b                                         ; $5af1: $05
    nop                                           ; $5af2: $00
    rst $28                                       ; $5af3: $ef
    rra                                           ; $5af4: $1f
    rst $30                                       ; $5af5: $f7
    rrca                                          ; $5af6: $0f
    ei                                            ; $5af7: $fb
    rlca                                          ; $5af8: $07
    ld a, a                                       ; $5af9: $7f
    add e                                         ; $5afa: $83
    ret z                                         ; $5afb: $c8

    dec b                                         ; $5afc: $05
    inc bc                                        ; $5afd: $03
    ld b, [hl]                                    ; $5afe: $46

Jump_0a4_5aff:
    ld de, $ffbf                                  ; $5aff: $11 $bf $ff
    or [hl]                                       ; $5b02: $b6
    jr @+$01                                      ; $5b03: $18 $ff

    inc bc                                        ; $5b05: $03
    cp e                                          ; $5b06: $bb
    rra                                           ; $5b07: $1f
    rst $00                                       ; $5b08: $c7
    rst $28                                       ; $5b09: $ef
    sbc a                                         ; $5b0a: $9f
    ld e, c                                       ; $5b0b: $59
    add hl, de                                    ; $5b0c: $19

jr_0a4_5b0d:
    or [hl]                                       ; $5b0d: $b6
    ld [$18c6], sp                                ; $5b0e: $08 $c6 $18
    adc $28                                       ; $5b11: $ce $28
    jr nz, jr_0a4_5b15                            ; $5b13: $20 $00

jr_0a4_5b15:
    ldh [$c6], a                                  ; $5b15: $e0 $c6
    db $10                                        ; $5b17: $10
    adc $28                                       ; $5b18: $ce $28
    jr nz, @+$1a                                  ; $5b1a: $20 $18

    rst $08                                       ; $5b1c: $cf
    ldh a, [$be]                                  ; $5b1d: $f0 $be
    rst $38                                       ; $5b1f: $ff
    rst $18                                       ; $5b20: $df
    ld bc, $efbe                                  ; $5b21: $01 $be $ef
    sbc a                                         ; $5b24: $9f
    rst $30                                       ; $5b25: $f7
    rst $08                                       ; $5b26: $cf
    ei                                            ; $5b27: $fb
    rst $20                                       ; $5b28: $e7
    adc $30                                       ; $5b29: $ce $30
    inc d                                         ; $5b2b: $14
    ld a, h                                       ; $5b2c: $7c
    rst $18                                       ; $5b2d: $df
    ccf                                           ; $5b2e: $3f
    ld [de], a                                    ; $5b2f: $12
    ld [$bcf6], sp                                ; $5b30: $08 $f6 $bc
    ld bc, $fff5                                  ; $5b33: $01 $f5 $ff

jr_0a4_5b36:
    ld d, b                                       ; $5b36: $50
    cp d                                          ; $5b37: $ba
    call nz, $ba01                                ; $5b38: $c4 $01 $ba
    or b                                          ; $5b3b: $b0
    ld bc, $ffae                                  ; $5b3c: $01 $ae $ff
    jp hl                                         ; $5b3f: $e9


    rst $38                                       ; $5b40: $ff
    nop                                           ; $5b41: $00
    call nc, $affb                                ; $5b42: $d4 $fb $af
    ret nc                                        ; $5b45: $d0

    rst $20                                       ; $5b46: $e7
    ld hl, sp+$5a                                 ; $5b47: $f8 $5a
    rst $38                                       ; $5b49: $ff
    dec b                                         ; $5b4a: $05
    db $ed                                        ; $5b4b: $ed
    rst $38                                       ; $5b4c: $ff
    ld d, a                                       ; $5b4d: $57
    rst $38                                       ; $5b4e: $ff
    db $eb                                        ; $5b4f: $eb
    pop af                                        ; $5b50: $f1
    ld b, $c0                                     ; $5b51: $06 $c0
    ld h, b                                       ; $5b53: $60
    rlca                                          ; $5b54: $07
    nop                                           ; $5b55: $00
    sub b                                         ; $5b56: $90
    ld [hl], b                                    ; $5b57: $70
    ld a, h                                       ; $5b58: $7c
    db $fc                                        ; $5b59: $fc
    ld a, [$a9fe]                                 ; $5b5a: $fa $fe $a9
    rst $30                                       ; $5b5d: $f7
    jr nz, jr_0a4_5b36                            ; $5b5e: $20 $d6

    jp hl                                         ; $5b60: $e9


    add b                                         ; $5b61: $80
    ld c, [hl]                                    ; $5b62: $4e
    add b                                         ; $5b63: $80
    add b                                         ; $5b64: $80
    ld h, b                                       ; $5b65: $60
    ldh [$df], a                                  ; $5b66: $e0 $df
    add d                                         ; $5b68: $82
    add sp, $11                                   ; $5b69: $e8 $11
    cp d                                          ; $5b6b: $ba
    rst $38                                       ; $5b6c: $ff
    call nc, $aaff                                ; $5b6d: $d4 $ff $aa
    ld [bc], a                                    ; $5b70: $02
    ld [bc], a                                    ; $5b71: $02
    xor $2a                                       ; $5b72: $ee $2a
    rst $38                                       ; $5b74: $ff
    ld [hl], c                                    ; $5b75: $71
    inc c                                         ; $5b76: $0c
    ld [bc], a                                    ; $5b77: $02
    ld [hl], l                                    ; $5b78: $75
    sbc d                                         ; $5b79: $9a
    inc bc                                        ; $5b7a: $03
    ld [hl], a                                    ; $5b7b: $77
    inc a                                         ; $5b7c: $3c
    nop                                           ; $5b7d: $00
    ld d, l                                       ; $5b7e: $55
    nop                                           ; $5b7f: $00
    rst $38                                       ; $5b80: $ff
    ldh [rIE], a                                  ; $5b81: $e0 $ff
    ld l, a                                       ; $5b83: $6f
    ldh a, [$b9]                                  ; $5b84: $f0 $b9
    cp $56                                        ; $5b86: $fe $56
    add b                                         ; $5b88: $80
    jr nz, jr_0a4_5b8d                            ; $5b89: $20 $02

    ld b, c                                       ; $5b8b: $41
    rst $38                                       ; $5b8c: $ff

jr_0a4_5b8d:
    xor d                                         ; $5b8d: $aa
    db $fd                                        ; $5b8e: $fd
    push bc                                       ; $5b8f: $c5
    cp $a8                                        ; $5b90: $fe $a8
    nop                                           ; $5b92: $00
    rst $38                                       ; $5b93: $ff
    sbc b                                         ; $5b94: $98
    ld a, b                                       ; $5b95: $78
    adc $3e                                       ; $5b96: $ce $3e
    ld a, l                                       ; $5b98: $7d
    rst $38                                       ; $5b99: $ff
    ld [$ff02], a                                 ; $5b9a: $ea $02 $ff
    ld d, l                                       ; $5b9d: $55
    ld a, [$fcb3]                                 ; $5b9e: $fa $b3 $fc
    ld e, h                                       ; $5ba1: $5c
    ret nc                                        ; $5ba2: $d0

    ld bc, $80d7                                  ; $5ba3: $01 $d7 $80
    jr c, jr_0a4_5ba8                             ; $5ba6: $38 $00

jr_0a4_5ba8:
    push de                                       ; $5ba8: $d5
    rst $38                                       ; $5ba9: $ff
    ld l, d                                       ; $5baa: $6a
    ld a, a                                       ; $5bab: $7f
    ld d, l                                       ; $5bac: $55
    ld a, a                                       ; $5bad: $7f
    cpl                                           ; $5bae: $2f
    nop                                           ; $5baf: $00
    ccf                                           ; $5bb0: $3f
    dec d                                         ; $5bb1: $15
    rra                                           ; $5bb2: $1f
    ld c, $0f                                     ; $5bb3: $0e $0f
    rst $10                                       ; $5bb5: $d7

jr_0a4_5bb6:
    ld hl, sp-$55                                 ; $5bb6: $f8 $ab
    jr z, jr_0a4_5bb6                             ; $5bb8: $28 $fc

    pop de                                        ; $5bba: $d1
    jr z, jr_0a4_5bbd                             ; $5bbb: $28 $00

jr_0a4_5bbd:
    ld [hl], l                                    ; $5bbd: $75
    sub h                                         ; $5bbe: $94
    nop                                           ; $5bbf: $00
    ld e, l                                       ; $5bc0: $5d
    rst $38                                       ; $5bc1: $ff
    xor d                                         ; $5bc2: $aa
    ld [bc], a                                    ; $5bc3: $02
    rst $18                                       ; $5bc4: $df
    ld [hl], l                                    ; $5bc5: $75
    rst $38                                       ; $5bc6: $ff
    xor [hl]                                      ; $5bc7: $ae
    ld a, a                                       ; $5bc8: $7f
    ld e, a                                       ; $5bc9: $5f
    and b                                         ; $5bca: $a0
    nop                                           ; $5bcb: $00
    ld [hl], l                                    ; $5bcc: $75
    ld d, h                                       ; $5bcd: $54
    rst $38                                       ; $5bce: $ff
    inc d                                         ; $5bcf: $14
    ld [$02b8], sp                                ; $5bd0: $08 $b8 $02
    rlca                                          ; $5bd3: $07
    xor d                                         ; $5bd4: $aa
    ld h, h                                       ; $5bd5: $64
    nop                                           ; $5bd6: $00
    ld [$00ff], a                                 ; $5bd7: $ea $ff $00
    ld [hl], l                                    ; $5bda: $75
    cp $ba                                        ; $5bdb: $fe $ba
    db $fd                                        ; $5bdd: $fd
    ld d, l                                       ; $5bde: $55
    cp a                                          ; $5bdf: $bf
    adc d                                         ; $5be0: $8a
    ld a, a                                       ; $5be1: $7f
    ld [$0303], sp                                ; $5be2: $08 $03 $03
    ld bc, $1401                                  ; $5be5: $01 $01 $14
    ld c, a                                       ; $5be8: $4f
    ld d, l                                       ; $5be9: $55
    rst $28                                       ; $5bea: $ef
    xor e                                         ; $5beb: $ab
    nop                                           ; $5bec: $00
    rst $30                                       ; $5bed: $f7
    rst $10                                       ; $5bee: $d7
    rst $38                                       ; $5bef: $ff
    ld l, [hl]                                    ; $5bf0: $6e
    ld a, a                                       ; $5bf1: $7f
    dec e                                         ; $5bf2: $1d
    rra                                           ; $5bf3: $1f
    ld b, $02                                     ; $5bf4: $06 $02
    rlca                                          ; $5bf6: $07
    inc bc                                        ; $5bf7: $03
    inc bc                                        ; $5bf8: $03
    nop                                           ; $5bf9: $00
    nop                                           ; $5bfa: $00
    ld [hl], l                                    ; $5bfb: $75
    ld l, h                                       ; $5bfc: $6c
    nop                                           ; $5bfd: $00
    ld e, l                                       ; $5bfe: $5d
    xor d                                         ; $5bff: $aa
    ret c                                         ; $5c00: $d8

    nop                                           ; $5c01: $00
    ld d, a                                       ; $5c02: $57
    and b                                         ; $5c03: $a0
    nop                                           ; $5c04: $00
    ld d, l                                       ; $5c05: $55
    ret nc                                        ; $5c06: $d0

    nop                                           ; $5c07: $00
    rla                                           ; $5c08: $17

jr_0a4_5c09:
    ld b, [hl]                                    ; $5c09: $46
    rlca                                          ; $5c0a: $07
    ld d, l                                       ; $5c0b: $55
    ldh a, [$ac]                                  ; $5c0c: $f0 $ac
    nop                                           ; $5c0e: $00
    jr jr_0a4_5c19                                ; $5c0f: $18 $08

    ldh a, [$08]                                  ; $5c11: $f0 $08
    pop de                                        ; $5c13: $d1
    rra                                           ; $5c14: $1f
    ret nz                                        ; $5c15: $c0

    ret nz                                        ; $5c16: $c0

    jr nc, jr_0a4_5c09                            ; $5c17: $30 $f0

jr_0a4_5c19:
    ld b, $cc                                     ; $5c19: $06 $cc
    inc a                                         ; $5c1b: $3c
    rst $28                                       ; $5c1c: $ef
    rra                                           ; $5c1d: $1f
    ld d, $60                                     ; $5c1e: $16 $60
    ld d, a                                       ; $5c20: $57
    db $fc                                        ; $5c21: $fc
    ld [$00fd], sp                                ; $5c22: $08 $fd $00
    rst $38                                       ; $5c25: $ff
    cp c                                          ; $5c26: $b9
    cp $5c                                        ; $5c27: $fe $5c
    rst $38                                       ; $5c29: $ff
    xor e                                         ; $5c2a: $ab
    ld a, a                                       ; $5c2b: $7f
    sbc l                                         ; $5c2c: $9d

jr_0a4_5c2d:
    ld b, b                                       ; $5c2d: $40

Call_0a4_5c2e:
    ld a, a                                       ; $5c2e: $7f
    ld b, h                                       ; $5c2f: $44
    ld [$ffbb], sp                                ; $5c30: $08 $bb $ff
    jr c, jr_0a4_5c2d                             ; $5c33: $38 $f8

    call nz, $013c                                ; $5c35: $c4 $3c $01
    di                                            ; $5c38: $f3
    rrca                                          ; $5c39: $0f
    add hl, hl                                    ; $5c3a: $29
    rst $10                                       ; $5c3b: $d7
    rst $00                                       ; $5c3c: $c7
    rst $38                                       ; $5c3d: $ff
    cp [hl]                                       ; $5c3e: $be
    sbc [hl]                                      ; $5c3f: $9e
    inc b                                         ; $5c40: $04
    ld b, b                                       ; $5c41: $40
    xor e                                         ; $5c42: $ab
    ret nc                                        ; $5c43: $d0

    ld hl, $f0f0                                  ; $5c44: $21 $f0 $f0
    sbc $fe                                       ; $5c47: $de $fe
    and l                                         ; $5c49: $a5
    rst $38                                       ; $5c4a: $ff
    ld [$e45b], sp                                ; $5c4b: $08 $5b $e4
    rst $20                                       ; $5c4e: $e7
    ld hl, sp+$3c                                 ; $5c4f: $f8 $3c
    ld c, b                                       ; $5c51: $48
    jr c, @-$06                                   ; $5c52: $38 $f8

    rst $08                                       ; $5c54: $cf
    jr nz, jr_0a4_5c96                            ; $5c55: $20 $3f

    ld [hl], l                                    ; $5c57: $75
    ld b, h                                       ; $5c58: $44
    ld bc, $ffd5                                  ; $5c59: $01 $d5 $ff
    db $e3                                        ; $5c5c: $e3
    rst $38                                       ; $5c5d: $ff
    ld e, l                                       ; $5c5e: $5d
    ld [$eaf3], sp                                ; $5c5f: $08 $f3 $ea
    rst $30                                       ; $5c62: $f7
    ld [hl], l                                    ; $5c63: $75
    jr z, jr_0a4_5c69                             ; $5c64: $28 $03

    ld d, l                                       ; $5c66: $55
    rst $28                                       ; $5c67: $ef
    cp e                                          ; $5c68: $bb

jr_0a4_5c69:
    ld l, b                                       ; $5c69: $68
    rst $08                                       ; $5c6a: $cf
    and h                                         ; $5c6b: $a4
    nop                                           ; $5c6c: $00
    ld l, $03                                     ; $5c6d: $2e $03
    xor e                                         ; $5c6f: $ab
    jr c, jr_0a4_5c75                             ; $5c70: $38 $03

    db $eb                                        ; $5c72: $eb
    rst $38                                       ; $5c73: $ff
    ld a, c                                       ; $5c74: $79

jr_0a4_5c75:
    inc [hl]                                      ; $5c75: $34
    cp $bf                                        ; $5c76: $fe $bf
    add sp, $08                                   ; $5c78: $e8 $08
    and h                                         ; $5c7a: $a4
    db $10                                        ; $5c7b: $10
    rlca                                          ; $5c7c: $07
    ld c, b                                       ; $5c7d: $48
    inc bc                                        ; $5c7e: $03
    and $1f                                       ; $5c7f: $e6 $1f
    ld b, $5d                                     ; $5c81: $06 $5d
    cp $fa                                        ; $5c83: $fe $fa
    rst $38                                       ; $5c85: $ff
    cp l                                          ; $5c86: $bd
    ld a, [$9404]                                 ; $5c87: $fa $04 $94
    add hl, de                                    ; $5c8a: $19
    db $fd                                        ; $5c8b: $fd
    inc b                                         ; $5c8c: $04
    di                                            ; $5c8d: $f3
    cp $f9                                        ; $5c8e: $fe $f9
    cp a                                          ; $5c90: $bf
    db $fc                                        ; $5c91: $fc
    cp [hl]                                       ; $5c92: $be
    add hl, hl                                    ; $5c93: $29
    db $fd                                        ; $5c94: $fd
    di                                            ; $5c95: $f3

jr_0a4_5c96:
    add c                                         ; $5c96: $81
    inc b                                         ; $5c97: $04
    ld [$f97e], sp                                ; $5c98: $08 $7e $f9
    cp a                                          ; $5c9b: $bf
    ld a, h                                       ; $5c9c: $7c
    rst $18                                       ; $5c9d: $df
    ld a, $d0                                     ; $5c9e: $3e $d0
    add hl, de                                    ; $5ca0: $19
    nop                                           ; $5ca1: $00
    cp [hl]                                       ; $5ca2: $be
    ld sp, hl                                     ; $5ca3: $f9
    rst $18                                       ; $5ca4: $df
    cp h                                          ; $5ca5: $bc
    rst $28                                       ; $5ca6: $ef
    sbc [hl]                                      ; $5ca7: $9e
    cp a                                          ; $5ca8: $bf
    rst $38                                       ; $5ca9: $ff
    nop                                           ; $5caa: $00
    ld sp, hl                                     ; $5cab: $f9
    add a                                         ; $5cac: $87
    cp a                                          ; $5cad: $bf
    ret nz                                        ; $5cae: $c0

    rst $28                                       ; $5caf: $ef
    sub b                                         ; $5cb0: $90
    xor [hl]                                      ; $5cb1: $ae
    pop de                                        ; $5cb2: $d1
    and [hl]                                      ; $5cb3: $a6
    ld e, $30                                     ; $5cb4: $1e $30
    rst $18                                       ; $5cb6: $df
    call nc, $fe1a                                ; $5cb7: $d4 $1a $fe
    add c                                         ; $5cba: $81
    jr @+$1a                                      ; $5cbb: $18 $18

    ld [$ee18], sp                                ; $5cbd: $08 $18 $ee
    ld b, b                                       ; $5cc0: $40
    sub c                                         ; $5cc1: $91
    ld e, $5a                                     ; $5cc2: $1e $5a
    rst $38                                       ; $5cc4: $ff
    nop                                           ; $5cc5: $00
    ld [hl], b                                    ; $5cc6: $70
    ldh a, [$2f]                                  ; $5cc7: $f0 $2f
    rst $38                                       ; $5cc9: $ff
    inc b                                         ; $5cca: $04
    ld [$7517], a                                 ; $5ccb: $ea $17 $75
    adc e                                         ; $5cce: $8b
    set 2, b                                      ; $5ccf: $cb $d0
    nop                                           ; $5cd1: $00
    ld d, a                                       ; $5cd2: $57
    rst $38                                       ; $5cd3: $ff
    jr nz, jr_0a4_5d21                            ; $5cd4: $20 $4b

    cp a                                          ; $5cd6: $bf
    db $10                                        ; $5cd7: $10
    ld c, $f8                                     ; $5cd8: $0e $f8
    ld hl, sp-$39                                 ; $5cda: $f8 $c7
    rst $38                                       ; $5cdc: $ff
    inc a                                         ; $5cdd: $3c
    add hl, bc                                    ; $5cde: $09
    jp $a55a                                      ; $5cdf: $c3 $5a $a5


    ld a, [c]                                     ; $5ce2: $f2
    inc l                                         ; $5ce3: $2c
    ld bc, $81fe                                  ; $5ce4: $01 $fe $81
    inc c                                         ; $5ce7: $0c
    dec sp                                        ; $5ce8: $3b
    add sp, -$54                                  ; $5ce9: $e8 $ac
    ld a, [bc]                                    ; $5ceb: $0a
    inc c                                         ; $5cec: $0c
    ld c, e                                       ; $5ced: $4b
    xor h                                         ; $5cee: $ac
    ld a, [bc]                                    ; $5cef: $0a
    jr nc, jr_0a4_5cf3                            ; $5cf0: $30 $01

    and b                                         ; $5cf2: $a0

jr_0a4_5cf3:
    ld [hl], b                                    ; $5cf3: $70
    ld [hl], b                                    ; $5cf4: $70
    ld hl, sp+$07                                 ; $5cf5: $f8 $07
    ld hl, sp-$0c                                 ; $5cf7: $f8 $f4
    db $fc                                        ; $5cf9: $fc
    db $f4                                        ; $5cfa: $f4
    db $fc                                        ; $5cfb: $fc
    add sp, $0b                                   ; $5cfc: $e8 $0b
    sub d                                         ; $5cfe: $92
    dec de                                        ; $5cff: $1b
    xor d                                         ; $5d00: $aa
    dec de                                        ; $5d01: $1b
    nop                                           ; $5d02: $00
    cp $fa                                        ; $5d03: $fe $fa
    ld sp, hl                                     ; $5d05: $f9
    rst $38                                       ; $5d06: $ff
    db $fd                                        ; $5d07: $fd
    ei                                            ; $5d08: $fb
    ld a, [$f0fd]                                 ; $5d09: $fa $fd $f0
    ldh a, [rSC]                                  ; $5d0c: $f0 $02
    inc b                                         ; $5d0e: $04
    ld [$23d0], sp                                ; $5d0f: $08 $d0 $23
    ld [de], a                                    ; $5d12: $12
    dec de                                        ; $5d13: $1b
    ld h, b                                       ; $5d14: $60
    and b                                         ; $5d15: $a0
    or b                                          ; $5d16: $b0
    ld d, b                                       ; $5d17: $50
    ret c                                         ; $5d18: $d8

    jp z, $813b                                   ; $5d19: $ca $3b $81

    dec hl                                        ; $5d1c: $2b
    cp $03                                        ; $5d1d: $fe $03
    dec hl                                        ; $5d1f: $2b
    ld c, [hl]                                    ; $5d20: $4e

jr_0a4_5d21:
    inc d                                         ; $5d21: $14
    ld c, b                                       ; $5d22: $48
    cp b                                          ; $5d23: $b8
    add sp, $00                                   ; $5d24: $e8 $00
    jr jr_0a4_5d9c                                ; $5d26: $18 $74

    adc h                                         ; $5d28: $8c
    cp d                                          ; $5d29: $ba
    ld b, [hl]                                    ; $5d2a: $46
    ld [hl], l                                    ; $5d2b: $75
    adc e                                         ; $5d2c: $8b
    dec sp                                        ; $5d2d: $3b
    inc b                                         ; $5d2e: $04
    push bc                                       ; $5d2f: $c5
    db $dd                                        ; $5d30: $dd
    and d                                         ; $5d31: $a2
    cp [hl]                                       ; $5d32: $be
    pop bc                                        ; $5d33: $c1
    sub b                                         ; $5d34: $90

jr_0a4_5d35:
    ld e, d                                       ; $5d35: $5a
    ld b, b                                       ; $5d36: $40
    ret nz                                        ; $5d37: $c0

    ret z                                         ; $5d38: $c8

    ld a, $68                                     ; $5d39: $3e $68
    add e                                         ; $5d3b: $83
    inc l                                         ; $5d3c: $2c
    db $fd                                        ; $5d3d: $fd
    cp $02                                        ; $5d3e: $fe $02
    inc e                                         ; $5d40: $1c
    rst $18                                       ; $5d41: $df
    and b                                         ; $5d42: $a0
    xor d                                         ; $5d43: $aa
    nop                                           ; $5d44: $00
    push de                                       ; $5d45: $d5
    push hl                                       ; $5d46: $e5
    ld a, [$fd7a]                                 ; $5d47: $fa $7a $fd
    cp $7f                                        ; $5d4a: $fe $7f
    cp a                                          ; $5d4c: $bf
    nop                                           ; $5d4d: $00
    ld a, a                                       ; $5d4e: $7f
    rst $38                                       ; $5d4f: $ff
    ccf                                           ; $5d50: $3f
    rst $38                                       ; $5d51: $ff
    ccf                                           ; $5d52: $3f
    jr nz, jr_0a4_5d35                            ; $5d53: $20 $e0

    and b                                         ; $5d55: $a0
    nop                                           ; $5d56: $00
    ld h, b                                       ; $5d57: $60
    ld d, b                                       ; $5d58: $50
    or b                                          ; $5d59: $b0
    xor b                                         ; $5d5a: $a8
    ld e, b                                       ; $5d5b: $58
    ld e, b                                       ; $5d5c: $58
    xor b                                         ; $5d5d: $a8
    call z, $f400                                 ; $5d5e: $cc $00 $f4
    or $fa                                        ; $5d61: $f6 $fa
    db $fd                                        ; $5d63: $fd
    rst $38                                       ; $5d64: $ff
    rst $30                                       ; $5d65: $f7
    ld hl, sp-$21                                 ; $5d66: $f8 $df
    ld h, c                                       ; $5d68: $61
    ldh [$ba], a                                  ; $5d69: $e0 $ba
    ld c, $04                                     ; $5d6b: $0e $04
    xor b                                         ; $5d6d: $a8
    rst $18                                       ; $5d6e: $df
    ccf                                           ; $5d6f: $3f
    rst $18                                       ; $5d70: $df
    ccf                                           ; $5d71: $3f
    ld [hl], a                                    ; $5d72: $77
    ld b, $9d                                     ; $5d73: $06 $9d
    and b                                         ; $5d75: $a0
    inc bc                                        ; $5d76: $03
    rst $38                                       ; $5d77: $ff
    rrca                                          ; $5d78: $0f
    xor d                                         ; $5d79: $aa

jr_0a4_5d7a:
    inc de                                        ; $5d7a: $13
    and e                                         ; $5d7b: $a3

jr_0a4_5d7c:
    db $10                                        ; $5d7c: $10
    ld [bc], a                                    ; $5d7d: $02
    ld [$01fc], sp                                ; $5d7e: $08 $fc $01
    nop                                           ; $5d81: $00

jr_0a4_5d82:
    jr nz, jr_0a4_5d7c                            ; $5d82: $20 $f8

    ld hl, sp+$3c                                 ; $5d84: $f8 $3c
    jr @-$5f                                      ; $5d86: $18 $9f

    ldh [$7c], a                                  ; $5d88: $e0 $7c
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    ld l, h                                       ; $5d8c: $6c
    rra                                           ; $5d8d: $1f
    ld a, [hl+]                                   ; $5d8e: $2a
    db $10                                        ; $5d8f: $10
    ld c, h                                       ; $5d90: $4c
    jr nc, jr_0a4_5d7a                            ; $5d91: $30 $e7

    adc h                                         ; $5d93: $8c
    inc d                                         ; $5d94: $14
    call c, $0703                                 ; $5d95: $dc $03 $07
    rst $38                                       ; $5d98: $ff
    jr nz, @+$09                                  ; $5d99: $20 $07

    ei                                            ; $5d9b: $fb

jr_0a4_5d9c:
    ld [bc], a                                    ; $5d9c: $02
    nop                                           ; $5d9d: $00

jr_0a4_5d9e:
    rst $38                                       ; $5d9e: $ff
    inc bc                                        ; $5d9f: $03
    dec a                                         ; $5da0: $3d
    jp Jump_000_08f9                              ; $5da1: $c3 $f9 $08


    rst $38                                       ; $5da4: $ff
    ld hl, sp-$08                                 ; $5da5: $f8 $f8
    add sp, $03                                   ; $5da7: $e8 $03
    nop                                           ; $5da9: $00
    ret c                                         ; $5daa: $d8

    add sp, -$08                                  ; $5dab: $e8 $f8
    ld bc, $b8c8                                  ; $5dad: $01 $c8 $b8
    ret z                                         ; $5db0: $c8

    ld hl, sp-$78                                 ; $5db1: $f8 $88
    ld a, b                                       ; $5db3: $78
    adc b                                         ; $5db4: $88
    ld e, [hl]                                    ; $5db5: $5e
    ld [$04e0], sp                                ; $5db6: $08 $e0 $04
    jr z, @-$17                                   ; $5db9: $28 $e7

    inc hl                                        ; $5dbb: $23
    ld de, $f851                                  ; $5dbc: $11 $51 $f8
    ld [$18e8], sp                                ; $5dbf: $08 $e8 $18
    ld hl, sp+$00                                 ; $5dc2: $f8 $00
    jr jr_0a4_5d9e                                ; $5dc4: $18 $d8

    jr c, @-$06                                   ; $5dc6: $38 $f8

    jr c, jr_0a4_5d82                             ; $5dc8: $38 $b8

    ld a, b                                       ; $5dca: $78
    ld hl, sp+$00                                 ; $5dcb: $f8 $00
    ld a, b                                       ; $5dcd: $78
    ld a, b                                       ; $5dce: $78
    ld hl, sp-$0d                                 ; $5dcf: $f8 $f3
    rst $38                                       ; $5dd1: $ff
    rst $38                                       ; $5dd2: $ff
    ldh a, [$f7]                                  ; $5dd3: $f0 $f7
    inc b                                         ; $5dd5: $04
    ld hl, sp-$02                                 ; $5dd6: $f8 $fe
    pop af                                        ; $5dd8: $f1
    or $f9                                        ; $5dd9: $f6 $f9
    ld [$ff18], sp                                ; $5ddb: $08 $18 $ff
    rst $38                                       ; $5dde: $ff
    inc c                                         ; $5ddf: $0c
    sbc a                                         ; $5de0: $9f
    ld a, a                                       ; $5de1: $7f
    db $fc                                        ; $5de2: $fc
    inc bc                                        ; $5de3: $03
    ld b, $3c                                     ; $5de4: $06 $3c
    add e                                         ; $5de6: $83
    dec e                                         ; $5de7: $1d
    rst $20                                       ; $5de8: $e7
    rra                                           ; $5de9: $1f
    nop                                           ; $5dea: $00
    db $fd                                        ; $5deb: $fd
    inc bc                                        ; $5dec: $03
    rst $38                                       ; $5ded: $ff
    ld bc, $13ed                                  ; $5dee: $01 $ed $13
    rst $28                                       ; $5df1: $ef
    ld de, $f83f                                  ; $5df2: $11 $3f $f8

jr_0a4_5df5:
    ld hl, sp-$58                                 ; $5df5: $f8 $a8
    ld [$0c6d], sp                                ; $5df7: $08 $6d $0c
    inc d                                         ; $5dfa: $14
    ld bc, $0117                                  ; $5dfb: $01 $17 $01
    jr c, jr_0a4_5e28                             ; $5dfe: $38 $28

    ld b, b                                       ; $5e00: $40
    jr @+$32                                      ; $5e01: $18 $30

    ld a, h                                       ; $5e03: $7c
    rst $38                                       ; $5e04: $ff
    jr z, jr_0a4_5e2f                             ; $5e05: $28 $28

    jr nc, jr_0a4_5e31                            ; $5e07: $30 $28

    ld sp, hl                                     ; $5e09: $f9
    rst $38                                       ; $5e0a: $ff
    ei                                            ; $5e0b: $fb
    db $fd                                        ; $5e0c: $fd
    nop                                           ; $5e0d: $00
    push af                                       ; $5e0e: $f5
    ei                                            ; $5e0f: $fb
    ei                                            ; $5e10: $fb
    push af                                       ; $5e11: $f5
    db $ed                                        ; $5e12: $ed
    di                                            ; $5e13: $f3
    rst $38                                       ; $5e14: $ff
    pop hl                                        ; $5e15: $e1
    jr nc, jr_0a4_5df5                            ; $5e16: $30 $dd

    db $e3                                        ; $5e18: $e3
    sbc c                                         ; $5e19: $99
    dec b                                         ; $5e1a: $05
    sub $00                                       ; $5e1b: $d6 $00
    cp $1d                                        ; $5e1d: $fe $1d
    db $db                                        ; $5e1f: $db
    inc a                                         ; $5e20: $3c
    ld [hl+], a                                   ; $5e21: $22
    db $fd                                        ; $5e22: $fd
    ld e, $08                                     ; $5e23: $1e $08

jr_0a4_5e25:
    nop                                           ; $5e25: $00
    rra                                           ; $5e26: $1f
    rst $18                                       ; $5e27: $df

jr_0a4_5e28:
    ld a, $d6                                     ; $5e28: $3e $d6
    ld [$107f], sp                                ; $5e2a: $08 $7f $10
    rst $38                                       ; $5e2d: $ff
    rst $00                                       ; $5e2e: $c7

jr_0a4_5e2f:
    jr c, jr_0a4_5e25                             ; $5e2f: $38 $f4

jr_0a4_5e31:
    ld [$00ff], sp                                ; $5e31: $08 $ff $00
    cp a                                          ; $5e34: $bf
    ld a, a                                       ; $5e35: $7f
    rlca                                          ; $5e36: $07
    db $fd                                        ; $5e37: $fd
    inc bc                                        ; $5e38: $03
    ccf                                           ; $5e39: $3f
    pop bc                                        ; $5e3a: $c1
    ld sp, hl                                     ; $5e3b: $f9
    ld [de], a                                    ; $5e3c: $12
    nop                                           ; $5e3d: $00
    ld e, [hl]                                    ; $5e3e: $5e
    inc b                                         ; $5e3f: $04
    ld [hl+], a                                   ; $5e40: $22
    ld bc, $6f20                                  ; $5e41: $01 $20 $6f
    sbc a                                         ; $5e44: $9f
    jp nz, $7b0d                                  ; $5e45: $c2 $0d $7b

    add l                                         ; $5e48: $85
    db $fd                                        ; $5e49: $fd
    inc bc                                        ; $5e4a: $03
    ei                                            ; $5e4b: $fb
    jr nc, jr_0a4_5e55                            ; $5e4c: $30 $07

    di                                            ; $5e4e: $f3
    ld a, [$da00]                                 ; $5e4f: $fa $00 $da
    inc c                                         ; $5e52: $0c
    sbc $3d                                       ; $5e53: $de $3d

jr_0a4_5e55:
    ei                                            ; $5e55: $fb
    inc e                                         ; $5e56: $1c
    nop                                           ; $5e57: $00
    db $dd                                        ; $5e58: $dd
    ld a, $ff                                     ; $5e59: $3e $ff
    rra                                           ; $5e5b: $1f
    sbc [hl]                                      ; $5e5c: $9e
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    ld e, $37                                     ; $5e5f: $1e $37
    di                                            ; $5e61: $f3
    sbc a                                         ; $5e62: $9f
    adc c                                         ; $5e63: $89
    ld bc, $483e                                  ; $5e64: $01 $3e $48
    cp $5e                                        ; $5e67: $fe $5e
    ld bc, $403e                                  ; $5e69: $01 $3e $40
    ld l, h                                       ; $5e6c: $6c
    ld bc, $0f6d                                  ; $5e6d: $01 $6d $0f
    ld l, d                                       ; $5e70: $6a
    ld bc, $094a                                  ; $5e71: $01 $4a $09
    ccf                                           ; $5e74: $3f
    or b                                          ; $5e75: $b0
    ld bc, $0de7                                  ; $5e76: $01 $e7 $0d
    ret nc                                        ; $5e79: $d0

    xor $08                                       ; $5e7a: $ee $08
    nop                                           ; $5e7c: $00
    halt                                          ; $5e7d: $76
    ld sp, hl                                     ; $5e7e: $f9
    cp a                                          ; $5e7f: $bf
    ld [hl], b                                    ; $5e80: $70
    rst $10                                       ; $5e81: $d7

jr_0a4_5e82:
    jr c, jr_0a4_5e82                             ; $5e82: $38 $fe

    sub c                                         ; $5e84: $91
    ld a, $f6                                     ; $5e85: $3e $f6
    reti                                          ; $5e87: $d9


    xor $58                                       ; $5e88: $ee $58
    ld d, b                                       ; $5e8a: $50
    rlca                                          ; $5e8b: $07
    xor $50                                       ; $5e8c: $ee $50
    or $00                                        ; $5e8e: $f6 $00
    add h                                         ; $5e90: $84
    ld b, [hl]                                    ; $5e91: $46
    db $fd                                        ; $5e92: $fd
    ret nz                                        ; $5e93: $c0

    ld a, [c]                                     ; $5e94: $f2
    ld [$012e], sp                                ; $5e95: $08 $2e $01
    ld a, [hl]                                    ; $5e98: $7e
    pop af                                        ; $5e99: $f1
    or [hl]                                       ; $5e9a: $b6
    ld a, c                                       ; $5e9b: $79
    rst $18                                       ; $5e9c: $df
    jr nc, jr_0a4_5edd                            ; $5e9d: $30 $3e

    rst $30                                       ; $5e9f: $f7
    sbc b                                         ; $5ea0: $98
    and h                                         ; $5ea1: $a4
    add hl, bc                                    ; $5ea2: $09
    ld c, $5b                                     ; $5ea3: $0e $5b
    and h                                         ; $5ea5: $a4
    ld bc, $50fe                                  ; $5ea6: $01 $fe $50
    cp b                                          ; $5ea9: $b8
    nop                                           ; $5eaa: $00
    db $fd                                        ; $5eab: $fd
    nop                                           ; $5eac: $00
    db $fd                                        ; $5ead: $fd
    ei                                            ; $5eae: $fb
    di                                            ; $5eaf: $f3
    db $fd                                        ; $5eb0: $fd
    db $fd                                        ; $5eb1: $fd
    di                                            ; $5eb2: $f3
    db $eb                                        ; $5eb3: $eb
    push af                                       ; $5eb4: $f5
    nop                                           ; $5eb5: $00
    db $fd                                        ; $5eb6: $fd
    db $e3                                        ; $5eb7: $e3
    rst $18                                       ; $5eb8: $df
    pop hl                                        ; $5eb9: $e1
    db $fd                                        ; $5eba: $fd
    jp Jump_000_3ddb                              ; $5ebb: $c3 $db $3d


    inc h                                         ; $5ebe: $24
    rst $38                                       ; $5ebf: $ff
    add hl, de                                    ; $5ec0: $19
    and h                                         ; $5ec1: $a4
    add hl, sp                                    ; $5ec2: $39
    ei                                            ; $5ec3: $fb
    dec e                                         ; $5ec4: $1d
    jp c, $ef06                                   ; $5ec5: $da $06 $ef

    cp $20                                        ; $5ec8: $fe $20
    rst $08                                       ; $5eca: $cf
    rst $38                                       ; $5ecb: $ff
    ld c, a                                       ; $5ecc: $4f
    ld [bc], a                                    ; $5ecd: $02
    ei                                            ; $5ece: $fb
    dec a                                         ; $5ecf: $3d
    rst $38                                       ; $5ed0: $ff
    ld sp, hl                                     ; $5ed1: $f9
    rst $38                                       ; $5ed2: $ff
    ld b, c                                       ; $5ed3: $41
    rst $38                                       ; $5ed4: $ff
    cp $08                                        ; $5ed5: $fe $08
    rst $38                                       ; $5ed7: $ff
    ld a, a                                       ; $5ed8: $7f
    rst $30                                       ; $5ed9: $f7
    ld a, e                                       ; $5eda: $7b
    rst $38                                       ; $5edb: $ff
    sbc c                                         ; $5edc: $99

jr_0a4_5edd:
    ld bc, $df09                                  ; $5edd: $01 $09 $df
    rst $28                                       ; $5ee0: $ef
    rst $38                                       ; $5ee1: $ff
    rst $08                                       ; $5ee2: $cf
    nop                                           ; $5ee3: $00
    add hl, de                                    ; $5ee4: $19
    push af                                       ; $5ee5: $f5
    dec bc                                        ; $5ee6: $0b
    nop                                           ; $5ee7: $00
    add hl, bc                                    ; $5ee8: $09
    inc bc                                        ; $5ee9: $03
    rst $28                                       ; $5eea: $ef
    rla                                           ; $5eeb: $17
    rst $38                                       ; $5eec: $ff
    rrca                                          ; $5eed: $0f
    rst $18                                       ; $5eee: $df
    add hl, sp                                    ; $5eef: $39
    call c, $bc39                                 ; $5ef0: $dc $39 $bc
    add hl, bc                                    ; $5ef3: $09
    or c                                          ; $5ef4: $b1
    ld a, $58                                     ; $5ef5: $3e $58
    sbc a                                         ; $5ef7: $9f
    ret z                                         ; $5ef8: $c8

    ld c, $3e                                     ; $5ef9: $0e $3e
    ld b, b                                       ; $5efb: $40
    rst $38                                       ; $5efc: $ff
    rst $38                                       ; $5efd: $ff
    rst $28                                       ; $5efe: $ef
    db $fc                                        ; $5eff: $fc
    ld c, b                                       ; $5f00: $48
    add b                                         ; $5f01: $80
    ld d, b                                       ; $5f02: $50
    rlca                                          ; $5f03: $07
    db $10                                        ; $5f04: $10
    rra                                           ; $5f05: $1f
    ld a, [hl-]                                   ; $5f06: $3a
    dec a                                         ; $5f07: $3d
    ld de, $9a1e                                  ; $5f08: $11 $1e $9a
    nop                                           ; $5f0b: $00
    sbc l                                         ; $5f0c: $9d
    ld de, $351e                                  ; $5f0d: $11 $1e $35
    ld a, $18                                     ; $5f10: $3e $18
    ld e, a                                       ; $5f12: $5f
    ld sp, $3f02                                  ; $5f13: $31 $02 $3f
    sub [hl]                                      ; $5f16: $96
    jp hl                                         ; $5f17: $e9


    pop bc                                        ; $5f18: $c1
    cp $a0                                        ; $5f19: $fe $a0
    ld a, [hl]                                    ; $5f1b: $7e
    dec b                                         ; $5f1c: $05
    ld [$2080], a                                 ; $5f1d: $ea $80 $20
    rlca                                          ; $5f20: $07
    xor b                                         ; $5f21: $a8
    rst $38                                       ; $5f22: $ff
    pop bc                                        ; $5f23: $c1
    cp $c9                                        ; $5f24: $fe $c9
    ccf                                           ; $5f26: $3f
    sub b                                         ; $5f27: $90
    ld a, [bc]                                    ; $5f28: $0a
    ld a, a                                       ; $5f29: $7f
    dec b                                         ; $5f2a: $05
    rst $38                                       ; $5f2b: $ff
    dec hl                                        ; $5f2c: $2b
    add b                                         ; $5f2d: $80
    dec b                                         ; $5f2e: $05
    db $dd                                        ; $5f2f: $dd
    ld b, $00                                     ; $5f30: $06 $00
    ld b, l                                       ; $5f32: $45
    nop                                           ; $5f33: $00
    cp a                                          ; $5f34: $bf
    dec d                                         ; $5f35: $15
    rra                                           ; $5f36: $1f
    add hl, sp                                    ; $5f37: $39
    ccf                                           ; $5f38: $3f
    ld d, $1f                                     ; $5f39: $16 $1f
    ld a, [de]                                    ; $5f3b: $1a
    nop                                           ; $5f3c: $00
    rra                                           ; $5f3d: $1f
    dec e                                         ; $5f3e: $1d
    ld e, $99                                     ; $5f3f: $1e $99
    sbc [hl]                                      ; $5f41: $9e
    ld [de], a                                    ; $5f42: $12
    dec e                                         ; $5f43: $1d
    ld e, c                                       ; $5f44: $59
    nop                                           ; $5f45: $00
    ld e, [hl]                                    ; $5f46: $5e
    adc d                                         ; $5f47: $8a
    push af                                       ; $5f48: $f5
    ld d, a                                       ; $5f49: $57
    add sp, -$76                                  ; $5f4a: $e8 $8a
    push af                                       ; $5f4c: $f5
    ld c, c                                       ; $5f4d: $49
    nop                                           ; $5f4e: $00
    cp $92                                        ; $5f4f: $fe $92
    rst $38                                       ; $5f51: $ff
    ret z                                         ; $5f52: $c8

    rst $30                                       ; $5f53: $f7
    sub l                                         ; $5f54: $95
    ld [$001f], a                                 ; $5f55: $ea $1f $00
    ldh [$ab], a                                  ; $5f58: $e0 $ab
    ld e, a                                       ; $5f5a: $5f
    push af                                       ; $5f5b: $f5
    rrca                                          ; $5f5c: $0f

jr_0a4_5f5d:
    db $e3                                        ; $5f5d: $e3
    rra                                           ; $5f5e: $1f
    ld [hl], l                                    ; $5f5f: $75
    nop                                           ; $5f60: $00
    adc a                                         ; $5f61: $8f
    or d                                          ; $5f62: $b2
    ld c, a                                       ; $5f63: $4f
    add hl, hl                                    ; $5f64: $29
    rst $10                                       ; $5f65: $d7
    ld de, $abef                                  ; $5f66: $11 $ef $ab
    nop                                           ; $5f69: $00
    ld a, a                                       ; $5f6a: $7f
    pop bc                                        ; $5f6b: $c1
    cp $92                                        ; $5f6c: $fe $92
    db $fd                                        ; $5f6e: $fd
    pop bc                                        ; $5f6f: $c1
    cp $83                                        ; $5f70: $fe $83
    nop                                           ; $5f72: $00
    db $fc                                        ; $5f73: $fc
    pop bc                                        ; $5f74: $c1
    cp $82                                        ; $5f75: $fe $82
    db $fd                                        ; $5f77: $fd
    pop de                                        ; $5f78: $d1
    xor $83                                       ; $5f79: $ee $83
    nop                                           ; $5f7b: $00
    db $fc                                        ; $5f7c: $fc
    ld [hl], l                                    ; $5f7d: $75
    xor a                                         ; $5f7e: $af
    cp [hl]                                       ; $5f7f: $be
    ld b, l                                       ; $5f80: $45
    push af                                       ; $5f81: $f5
    ld c, $ee                                     ; $5f82: $0e $ee
    nop                                           ; $5f84: $00
    ld d, a                                       ; $5f85: $57
    call $cd3f                                    ; $5f86: $cd $3f $cd
    scf                                           ; $5f89: $37
    sbc a                                         ; $5f8a: $9f
    ld l, a                                       ; $5f8b: $6f
    ld a, l                                       ; $5f8c: $7d
    nop                                           ; $5f8d: $00
    sbc a                                         ; $5f8e: $9f
    ld d, l                                       ; $5f8f: $55
    ei                                            ; $5f90: $fb
    xor c                                         ; $5f91: $a9
    cp $75                                        ; $5f92: $fe $75
    rst $38                                       ; $5f94: $ff
    ld a, [$f290]                                 ; $5f95: $fa $90 $f2
    ld c, $7f                                     ; $5f98: $0e $7f
    rst $10                                       ; $5f9a: $d7
    ld hl, sp+$16                                 ; $5f9b: $f8 $16
    ld e, a                                       ; $5f9d: $5f
    rst $38                                       ; $5f9e: $ff
    dec bc                                        ; $5f9f: $0b
    rst $38                                       ; $5fa0: $ff
    ld d, b                                       ; $5fa1: $50
    and b                                         ; $5fa2: $a0
    db $ec                                        ; $5fa3: $ec
    dec b                                         ; $5fa4: $05
    ei                                            ; $5fa5: $fb
    xor $17                                       ; $5fa6: $ee $17
    adc $3f                                       ; $5fa8: $ce $3f
    cp c                                          ; $5faa: $b9
    rst $18                                       ; $5fab: $df
    nop                                           ; $5fac: $00
    sub $3d                                       ; $5fad: $d6 $3d
    ld a, e                                       ; $5faf: $7b
    cp h                                          ; $5fb0: $bc
    pop af                                        ; $5fb1: $f1
    ld e, $da                                     ; $5fb2: $1e $da
    dec a                                         ; $5fb4: $3d
    inc b                                         ; $5fb5: $04
    db $f4                                        ; $5fb6: $f4
    ld e, a                                       ; $5fb7: $5f
    ld a, d                                       ; $5fb8: $7a
    cp a                                          ; $5fb9: $bf
    rst $30                                       ; $5fba: $f7
    ld h, $05                                     ; $5fbb: $26 $05
    cp l                                          ; $5fbd: $bd
    rst $38                                       ; $5fbe: $ff
    nop                                           ; $5fbf: $00
    ld l, a                                       ; $5fc0: $6f
    rst $38                                       ; $5fc1: $ff
    cp a                                          ; $5fc2: $bf
    ld a, a                                       ; $5fc3: $7f
    rst $18                                       ; $5fc4: $df
    ccf                                           ; $5fc5: $3f
    ld l, a                                       ; $5fc6: $6f
    sbc a                                         ; $5fc7: $9f
    jr z, jr_0a4_5f5d                             ; $5fc8: $28 $93

    rst $28                                       ; $5fca: $ef
    ld a, [hl+]                                   ; $5fcb: $2a
    rrca                                          ; $5fcc: $0f
    rst $38                                       ; $5fcd: $ff
    ld e, d                                       ; $5fce: $5a
    ld b, $a0                                     ; $5fcf: $06 $a0
    rst $18                                       ; $5fd1: $df
    call nc, $fb00                                ; $5fd2: $d4 $00 $fb
    ld [$fdfd], a                                 ; $5fd5: $ea $fd $fd
    rst $38                                       ; $5fd8: $ff
    push de                                       ; $5fd9: $d5
    ccf                                           ; $5fda: $3f
    ld a, [$1f00]                                 ; $5fdb: $fa $00 $1f
    ld [hl], l                                    ; $5fde: $75
    cp e                                          ; $5fdf: $bb
    sbc d                                         ; $5fe0: $9a
    ld a, l                                       ; $5fe1: $7d
    db $ed                                        ; $5fe2: $ed
    rra                                           ; $5fe3: $1f
    jp z, Jump_000_3f00                           ; $5fe4: $ca $00 $3f

    xor l                                         ; $5fe7: $ad
    ld e, a                                       ; $5fe8: $5f
    ret c                                         ; $5fe9: $d8

    cpl                                           ; $5fea: $2f
    ld b, h                                       ; $5feb: $44
    ei                                            ; $5fec: $fb
    xor b                                         ; $5fed: $a8
    add b                                         ; $5fee: $80
    ld h, h                                       ; $5fef: $64
    rlca                                          ; $5ff0: $07
    ld a, [$bf7f]                                 ; $5ff1: $fa $7f $bf
    rst $38                                       ; $5ff4: $ff
    rst $18                                       ; $5ff5: $df
    ld a, a                                       ; $5ff6: $7f
    rst $30                                       ; $5ff7: $f7
    inc l                                         ; $5ff8: $2c
    rst $38                                       ; $5ff9: $ff
    rst $18                                       ; $5ffa: $df
    ld a, [$7f0e]                                 ; $5ffb: $fa $0e $7f
    ld h, b                                       ; $5ffe: $60
    jr jr_0a4_6069                                ; $5fff: $18 $68

    ld a, [bc]                                    ; $6001: $0a
    rst $38                                       ; $6002: $ff
    rst $38                                       ; $6003: $ff
    nop                                           ; $6004: $00
    db $ed                                        ; $6005: $ed
    sbc [hl]                                      ; $6006: $9e
    jp hl                                         ; $6007: $e9


    ld e, $ac                                     ; $6008: $1e $ac
    ld e, a                                       ; $600a: $5f
    ld [hl], l                                    ; $600b: $75
    xor a                                         ; $600c: $af
    nop                                           ; $600d: $00
    xor $1f                                       ; $600e: $ee $1f
    ld d, a                                       ; $6010: $57
    xor a                                         ; $6011: $af
    rst $28                                       ; $6012: $ef
    sbc e                                         ; $6013: $9b
    sub $2f                                       ; $6014: $d6 $2f
    ld b, b                                       ; $6016: $40
    ld a, a                                       ; $6017: $7f
    ldh a, [rSC]                                  ; $6018: $f0 $02
    ld h, a                                       ; $601a: $67
    sbc a                                         ; $601b: $9f
    dec d                                         ; $601c: $15
    db $eb                                        ; $601d: $eb
    add c                                         ; $601e: $81
    cp $40                                        ; $601f: $fe $40
    ld d, h                                       ; $6021: $54
    ld d, [hl]                                    ; $6022: $56
    ld b, $fd                                     ; $6023: $06 $fd
    rst $38                                       ; $6025: $ff
    ld c, e                                       ; $6026: $4b
    rst $38                                       ; $6027: $ff
    and h                                         ; $6028: $a4
    ei                                            ; $6029: $fb
    ld de, $fef1                                  ; $602a: $11 $f1 $fe
    db $fd                                        ; $602d: $fd
    db $db                                        ; $602e: $db
    inc bc                                        ; $602f: $03
    daa                                           ; $6030: $27
    rst $18                                       ; $6031: $df
    add b                                         ; $6032: $80
    add d                                         ; $6033: $82
    ld b, $00                                     ; $6034: $06 $00
    rst $18                                       ; $6036: $df
    scf                                           ; $6037: $37
    ei                                            ; $6038: $fb
    adc a                                         ; $6039: $8f
    xor a                                         ; $603a: $af
    ld e, l                                       ; $603b: $5d
    ld l, a                                       ; $603c: $6f
    sub a                                         ; $603d: $97
    nop                                           ; $603e: $00
    db $fd                                        ; $603f: $fd
    ld c, a                                       ; $6040: $4f
    and a                                         ; $6041: $a7
    ld e, l                                       ; $6042: $5d
    or $2f                                        ; $6043: $f6 $2f
    xor a                                         ; $6045: $af
    rst $18                                       ; $6046: $df
    or e                                          ; $6047: $b3
    ld b, h                                       ; $6048: $44
    ld a, [bc]                                    ; $6049: $0a
    rst $28                                       ; $604a: $ef
    or b                                          ; $604b: $b0
    rlca                                          ; $604c: $07
    ld b, $08                                     ; $604d: $06 $08
    cp l                                          ; $604f: $bd
    ld a, a                                       ; $6050: $7f
    ld h, b                                       ; $6051: $60
    ld [$0c71], sp                                ; $6052: $08 $71 $0c
    db $10                                        ; $6055: $10
    jp z, $f4ff                                   ; $6056: $ca $ff $f4

    adc [hl]                                      ; $6059: $8e
    db $10                                        ; $605a: $10
    ei                                            ; $605b: $fb
    rst $38                                       ; $605c: $ff
    ld a, l                                       ; $605d: $7d
    adc a                                         ; $605e: $8f
    nop                                           ; $605f: $00
    cp e                                          ; $6060: $bb
    ld e, a                                       ; $6061: $5f
    db $fc                                        ; $6062: $fc
    rrca                                          ; $6063: $0f
    xor c                                         ; $6064: $a9
    sbc $dd                                       ; $6065: $de $dd
    ld a, $01                                     ; $6067: $3e $01

jr_0a4_6069:
    ld [$ad1f], a                                 ; $6069: $ea $1f $ad
    ld e, a                                       ; $606c: $5f
    cp $0f                                        ; $606d: $fe $0f
    db $fd                                        ; $606f: $fd
    sbc $02                                       ; $6070: $de $02
    ld l, b                                       ; $6072: $68
    xor [hl]                                      ; $6073: $ae
    call nz, $c008                                ; $6074: $c4 $08 $c0
    db $10                                        ; $6077: $10
    sub a                                         ; $6078: $97
    ret nz                                        ; $6079: $c0

    nop                                           ; $607a: $00
    ld [hl], l                                    ; $607b: $75
    rst $38                                       ; $607c: $ff
    adc e                                         ; $607d: $8b
    ld [bc], a                                    ; $607e: $02
    rst $38                                       ; $607f: $ff
    ld d, c                                       ; $6080: $51
    xor $ea                                       ; $6081: $ee $ea
    db $fd                                        ; $6083: $fd
    push af                                       ; $6084: $f5
    sbc b                                         ; $6085: $98
    rra                                           ; $6086: $1f
    ret nz                                        ; $6087: $c0

    inc h                                         ; $6088: $24
    db $fc                                        ; $6089: $fc
    add e                                         ; $608a: $83
    xor b                                         ; $608b: $a8
    ld c, e                                       ; $608c: $4b
    rst $20                                       ; $608d: $e7
    rra                                           ; $608e: $1f
    or c                                          ; $608f: $b1
    ld l, e                                       ; $6090: $6b
    ei                                            ; $6091: $fb
    db $fc                                        ; $6092: $fc
    call z, $9804                                 ; $6093: $cc $04 $98
    dec l                                         ; $6096: $2d
    ld [bc], a                                    ; $6097: $02
    ld hl, sp-$31                                 ; $6098: $f8 $cf
    ld [hl-], a                                   ; $609a: $32
    ld [bc], a                                    ; $609b: $02
    ldh a, [$3c]                                  ; $609c: $f0 $3c
    di                                            ; $609e: $f3
    db $fc                                        ; $609f: $fc
    jr nz, @+$81                                  ; $60a0: $20 $7f

    add b                                         ; $60a2: $80
    xor h                                         ; $60a3: $ac
    ld a, [hl-]                                   ; $60a4: $3a
    sbc l                                         ; $60a5: $9d
    db $e3                                        ; $60a6: $e3
    rst $38                                       ; $60a7: $ff
    ld bc, $00f5                                  ; $60a8: $01 $f5 $00
    dec bc                                        ; $60ab: $0b
    rst $30                                       ; $60ac: $f7
    ld [$8877], sp                                ; $60ad: $08 $77 $88
    ld a, [hl]                                    ; $60b0: $7e
    add c                                         ; $60b1: $81
    rst $08                                       ; $60b2: $cf
    jp nz, Jump_000_0316                          ; $60b3: $c2 $16 $03

    db $f4                                        ; $60b6: $f4
    rra                                           ; $60b7: $1f
    ld a, a                                       ; $60b8: $7f
    add c                                         ; $60b9: $81
    di                                            ; $60ba: $f3
    rrca                                          ; $60bb: $0f
    inc hl                                        ; $60bc: $23
    ld c, l                                       ; $60bd: $4d
    rla                                           ; $60be: $17
    nop                                           ; $60bf: $00
    rra                                           ; $60c0: $1f
    ld a, [hl-]                                   ; $60c1: $3a
    cp a                                          ; $60c2: $bf
    dec d                                         ; $60c3: $15
    ld e, $3b                                     ; $60c4: $1e $3b
    inc a                                         ; $60c6: $3c
    ld h, [hl]                                    ; $60c7: $66
    nop                                           ; $60c8: $00
    ld a, c                                       ; $60c9: $79
    add c                                         ; $60ca: $81
    rst $38                                       ; $60cb: $ff
    jp c, $e727                                   ; $60cc: $da $27 $e7

    rra                                           ; $60cf: $1f
    sbc a                                         ; $60d0: $9f
    jr nz, jr_0a4_6152                            ; $60d1: $20 $7f

    db $fd                                        ; $60d3: $fd
    ld d, [hl]                                    ; $60d4: $56
    rlca                                          ; $60d5: $07
    ld d, h                                       ; $60d6: $54
    rst $38                                       ; $60d7: $ff
    cp e                                          ; $60d8: $bb
    cp $74                                        ; $60d9: $fe $74
    nop                                           ; $60db: $00
    rst $38                                       ; $60dc: $ff
    pop hl                                        ; $60dd: $e1
    cp $d4                                        ; $60de: $fe $d4

jr_0a4_60e0:
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    inc b                                         ; $60e2: $04
    cp [hl]                                       ; $60e3: $be
    ld bc, $ff41                                  ; $60e4: $01 $41 $ff
    jr nz, jr_0a4_60e0                            ; $60e7: $20 $f7

    ld [$11ef], sp                                ; $60e9: $08 $ef $11
    sub $04                                       ; $60ec: $d6 $04
    nop                                           ; $60ee: $00
    db $10                                        ; $60ef: $10
    ei                                            ; $60f0: $fb
    inc b                                         ; $60f1: $04
    rla                                           ; $60f2: $17
    rla                                           ; $60f3: $17
    ld [bc], a                                    ; $60f4: $02
    ld [bc], a                                    ; $60f5: $02
    ld bc, $0160                                  ; $60f6: $01 $60 $01
    inc b                                         ; $60f9: $04
    ld [$1fca], sp                                ; $60fa: $08 $ca $1f
    cp $ff                                        ; $60fd: $fe $ff
    db $fc                                        ; $60ff: $fc
    rst $38                                       ; $6100: $ff
    ld a, [hl]                                    ; $6101: $7e
    ld bc, $bf7f                                  ; $6102: $01 $7f $bf
    cp a                                          ; $6105: $bf
    ld d, a                                       ; $6106: $57
    ld d, a                                       ; $6107: $57
    dec bc                                        ; $6108: $0b
    dec bc                                        ; $6109: $0b
    ld c, d                                       ; $610a: $4a
    rrca                                          ; $610b: $0f
    ld b, d                                       ; $610c: $42
    ld a, [hl+]                                   ; $610d: $2a
    db $fd                                        ; $610e: $fd
    inc b                                         ; $610f: $04
    add c                                         ; $6110: $81
    cp $53                                        ; $6111: $fe $53
    db $fc                                        ; $6113: $fc
    ld c, h                                       ; $6114: $4c
    add hl, bc                                    ; $6115: $09
    ld a, a                                       ; $6116: $7f
    nop                                           ; $6117: $00
    ld a, a                                       ; $6118: $7f
    xor a                                         ; $6119: $af
    xor a                                         ; $611a: $af
    jr @-$17                                      ; $611b: $18 $e7

    ld [hl], c                                    ; $611d: $71
    adc a                                         ; $611e: $8f
    db $eb                                        ; $611f: $eb
    ld sp, $971f                                  ; $6120: $31 $1f $97
    sub b                                         ; $6123: $90
    ld bc, $0d99                                  ; $6124: $01 $99 $0d
    cp $fe                                        ; $6127: $fe $fe
    xor a                                         ; $6129: $af
    or $06                                        ; $612a: $f6 $06
    add b                                         ; $612c: $80
    ld d, b                                       ; $612d: $50
    dec d                                         ; $612e: $15
    db $fd                                        ; $612f: $fd
    ld a, [$d4fa]                                 ; $6130: $fa $fa $d4
    call nc, $a0a0                                ; $6133: $d4 $a0 $a0
    nop                                           ; $6136: $00
    ldh [$e0], a                                  ; $6137: $e0 $e0
    and b                                         ; $6139: $a0
    and b                                         ; $613a: $a0
    ld d, b                                       ; $613b: $50
    ld d, b                                       ; $613c: $50
    and b                                         ; $613d: $a0
    and b                                         ; $613e: $a0
    jr nz, jr_0a4_6181                            ; $613f: $20 $40

    ld b, b                                       ; $6141: $40
    add [hl]                                      ; $6142: $86
    rra                                           ; $6143: $1f
    rlca                                          ; $6144: $07
    rlca                                          ; $6145: $07
    ld b, $07                                     ; $6146: $06 $07
    dec b                                         ; $6148: $05

jr_0a4_6149:
    ld b, b                                       ; $6149: $40
    ld b, $04                                     ; $614a: $06 $04
    ld [$0704], sp                                ; $614c: $08 $04 $07
    ld b, $05                                     ; $614f: $06 $05
    add hl, bc                                    ; $6151: $09

jr_0a4_6152:
    ld c, $40                                     ; $6152: $0e $40
    ldh a, [rSB]                                  ; $6154: $f0 $01
    nop                                           ; $6156: $00
    jr nc, jr_0a4_6149                            ; $6157: $30 $f0

    ld h, b                                       ; $6159: $60
    ldh [$a0], a                                  ; $615a: $e0 $a0
    ldh [rP1], a                                  ; $615c: $e0 $00
    ld b, b                                       ; $615e: $40
    ret nz                                        ; $615f: $c0

    ret nz                                        ; $6160: $c0

    ret nz                                        ; $6161: $c0

    add b                                         ; $6162: $80

jr_0a4_6163:
    add b                                         ; $6163: $80
    ld a, [bc]                                    ; $6164: $0a
    dec c                                         ; $6165: $0d
    nop                                           ; $6166: $00
    inc bc                                        ; $6167: $03
    inc c                                         ; $6168: $0c
    ld b, $09                                     ; $6169: $06 $09
    rlca                                          ; $616b: $07
    jr @+$0d                                      ; $616c: $18 $0b

    inc d                                         ; $616e: $14
    ld bc, $2d32                                  ; $616f: $01 $32 $2d
    ld c, e                                       ; $6172: $4b
    ld a, l                                       ; $6173: $7d
    dec b                                         ; $6174: $05
    rlca                                          ; $6175: $07
    add b                                         ; $6176: $80
    ld bc, $4000                                  ; $6177: $01 $00 $40
    nop                                           ; $617a: $00
    ld [bc], a                                    ; $617b: $02
    nop                                           ; $617c: $00
    ret nz                                        ; $617d: $c0

    ld b, b                                       ; $617e: $40
    and b                                         ; $617f: $a0
    ld h, b                                       ; $6180: $60

jr_0a4_6181:
    jr nz, jr_0a4_6163                            ; $6181: $20 $e0

    nop                                           ; $6183: $00
    ret nz                                        ; $6184: $c0

    ldh [$35], a                                  ; $6185: $e0 $35
    ccf                                           ; $6187: $3f
    dec de                                        ; $6188: $1b
    rra                                           ; $6189: $1f
    rlca                                          ; $618a: $07
    rlca                                          ; $618b: $07
    ret nz                                        ; $618c: $c0

    call nc, $ac3f                                ; $618d: $d4 $3f $ac
    rrca                                          ; $6190: $0f
    ld e, l                                       ; $6191: $5d
    rst $20                                       ; $6192: $e7
    xor h                                         ; $6193: $ac
    di                                            ; $6194: $f3
    ld d, c                                       ; $6195: $51
    ld a, a                                       ; $6196: $7f
    ld bc, $3f3a                                  ; $6197: $01 $3a $3f
    dec c                                         ; $619a: $0d
    rrca                                          ; $619b: $0f
    inc bc                                        ; $619c: $03
    inc bc                                        ; $619d: $03
    ld [hl], a                                    ; $619e: $77
    ld a, b                                       ; $619f: $78
    rlca                                          ; $61a0: $07
    ld d, l                                       ; $61a1: $55
    dec e                                         ; $61a2: $1d
    ld h, [hl]                                    ; $61a3: $66
    ld [bc], a                                    ; $61a4: $02
    ld d, l                                       ; $61a5: $55
    sub [hl]                                      ; $61a6: $96
    ld de, $c8ba                                  ; $61a7: $11 $ba $c8
    rlca                                          ; $61aa: $07
    cp [hl]                                       ; $61ab: $be
    ldh [rTAC], a                                 ; $61ac: $e0 $07
    dec b                                         ; $61ae: $05
    cp d                                          ; $61af: $ba
    rst $38                                       ; $61b0: $ff
    ld d, l                                       ; $61b1: $55
    cp $ba                                        ; $61b2: $fe $ba
    ret nc                                        ; $61b4: $d0

    rlca                                          ; $61b5: $07
    xor $54                                       ; $61b6: $ee $54
    rla                                           ; $61b8: $17
    call nc, Call_000_09b2                        ; $61b9: $d4 $b2 $09
    jr nz, jr_0a4_61be                            ; $61bc: $20 $00

jr_0a4_61be:
    ld a, a                                       ; $61be: $7f
    inc a                                         ; $61bf: $3c
    db $10                                        ; $61c0: $10
    cp $5c                                        ; $61c1: $fe $5c
    rrca                                          ; $61c3: $0f
    ld l, $ff                                     ; $61c4: $2e $ff
    nop                                           ; $61c6: $00
    ld d, a                                       ; $61c7: $57
    cp a                                          ; $61c8: $bf
    rst $28                                       ; $61c9: $ef
    sbc a                                         ; $61ca: $9f
    dec [hl]                                      ; $61cb: $35
    rst $08                                       ; $61cc: $cf
    ld a, d                                       ; $61cd: $7a
    adc a                                         ; $61ce: $8f
    dec [hl]                                      ; $61cf: $35

jr_0a4_61d0:
    push de                                       ; $61d0: $d5
    rst $38                                       ; $61d1: $ff
    ld c, b                                       ; $61d2: $48
    jr @-$16                                      ; $61d3: $18 $e8

    cpl                                           ; $61d5: $2f
    ld d, a                                       ; $61d6: $57
    call nz, $5707                                ; $61d7: $c4 $07 $57
    ld a, h                                       ; $61da: $7c
    rlca                                          ; $61db: $07
    nop                                           ; $61dc: $00

jr_0a4_61dd:
    push de                                       ; $61dd: $d5
    rst $38                                       ; $61de: $ff
    ld a, $3f                                     ; $61df: $3e $3f
    rrca                                          ; $61e1: $0f
    rrca                                          ; $61e2: $0f
    ld bc, $4001                                  ; $61e3: $01 $01 $40
    rst $30                                       ; $61e6: $f7
    and h                                         ; $61e7: $a4

jr_0a4_61e8:
    rrca                                          ; $61e8: $0f
    rst $38                                       ; $61e9: $ff
    and d                                         ; $61ea: $a2
    rst $18                                       ; $61eb: $df
    ld e, l                                       ; $61ec: $5d
    rst $20                                       ; $61ed: $e7
    xor d                                         ; $61ee: $aa
    ld a, [hl+]                                   ; $61ef: $2a
    rst $30                                       ; $61f0: $f7
    ld d, c                                       ; $61f1: $51
    ld d, [hl]                                    ; $61f2: $56
    inc bc                                        ; $61f3: $03
    dec b                                         ; $61f4: $05
    sbc h                                         ; $61f5: $9c
    rlca                                          ; $61f6: $07
    push de                                       ; $61f7: $d5
    ld [hl-], a                                   ; $61f8: $32
    ld [bc], a                                    ; $61f9: $02
    db $dd                                        ; $61fa: $dd
    and c                                         ; $61fb: $a1
    sub b                                         ; $61fc: $90
    rlca                                          ; $61fd: $07
    ld e, h                                       ; $61fe: $5c
    sub h                                         ; $61ff: $94
    rlca                                          ; $6200: $07
    dec a                                         ; $6201: $3d
    ccf                                           ; $6202: $3f
    rlca                                          ; $6203: $07
    rlca                                          ; $6204: $07
    ld [hl], h                                    ; $6205: $74
    ld c, [hl]                                    ; $6206: $4e
    add h                                         ; $6207: $84
    ld a, b                                       ; $6208: $78
    ld [$fff5], sp                                ; $6209: $08 $f5 $ff
    ld e, $1f                                     ; $620c: $1e $1f
    ld d, d                                       ; $620e: $52
    jr z, jr_0a4_61e8                             ; $620f: $28 $d7

    ccf                                           ; $6211: $3f
    ld d, d                                       ; $6212: $52
    xor [hl]                                      ; $6213: $ae
    add b                                         ; $6214: $80
    inc bc                                        ; $6215: $03
    xor d                                         ; $6216: $aa
    db $10                                        ; $6217: $10
    inc bc                                        ; $6218: $03
    ld [$4cff], a                                 ; $6219: $ea $ff $4c
    jr jr_0a4_61d0                                ; $621c: $18 $b2

    nop                                           ; $621e: $00
    rst $08                                       ; $621f: $cf
    ld a, l                                       ; $6220: $7d
    add a                                         ; $6221: $87
    ld h, d                                       ; $6222: $62
    sbc a                                         ; $6223: $9f
    dec b                                         ; $6224: $05
    rst $38                                       ; $6225: $ff
    ld [$ff21], sp                                ; $6226: $08 $21 $ff
    ld d, c                                       ; $6229: $51
    add sp, $07                                   ; $622a: $e8 $07
    cp $f9                                        ; $622c: $fe $f9
    ei                                            ; $622e: $fb
    db $fc                                        ; $622f: $fc
    ld hl, sp+$0e                                 ; $6230: $f8 $0e
    inc c                                         ; $6232: $0c

jr_0a4_6233:
    rst $38                                       ; $6233: $ff
    db $fc                                        ; $6234: $fc
    cp $f9                                        ; $6235: $fe $f9
    reti                                          ; $6237: $d9


    ld c, $12                                     ; $6238: $0e $12
    dec c                                         ; $623a: $0d
    rst $28                                       ; $623b: $ef
    rra                                           ; $623c: $1f
    nop                                           ; $623d: $00
    rst $30                                       ; $623e: $f7
    rrca                                          ; $623f: $0f
    ei                                            ; $6240: $fb
    rlca                                          ; $6241: $07
    ld a, a                                       ; $6242: $7f
    add e                                         ; $6243: $83
    rst $38                                       ; $6244: $ff
    inc bc                                        ; $6245: $03
    dec b                                         ; $6246: $05
    cp e                                          ; $6247: $bb
    rst $00                                       ; $6248: $c7
    push bc                                       ; $6249: $c5
    rst $38                                       ; $624a: $ff
    and e                                         ; $624b: $a3
    call nz, Call_0a4_7710                        ; $624c: $c4 $10 $77
    sbc b                                         ; $624f: $98
    db $10                                        ; $6250: $10
    jr jr_0a4_61dd                                ; $6251: $18 $8a

    ld a, a                                       ; $6253: $7f
    push af                                       ; $6254: $f5
    ld l, h                                       ; $6255: $6c
    inc bc                                        ; $6256: $03
    and h                                         ; $6257: $a4
    ld [$ff55], sp                                ; $6258: $08 $55 $ff
    sub d                                         ; $625b: $92
    inc c                                         ; $625c: $0c
    rst $28                                       ; $625d: $ef
    ld e, c                                       ; $625e: $59
    rst $20                                       ; $625f: $e7
    xor [hl]                                      ; $6260: $ae
    rst $28                                       ; $6261: $ef
    dec b                                         ; $6262: $05
    ld [de], a                                    ; $6263: $12
    inc bc                                        ; $6264: $03
    rst $38                                       ; $6265: $ff
    cp c                                          ; $6266: $b9
    nop                                           ; $6267: $00

jr_0a4_6268:
    rst $00                                       ; $6268: $c7
    rst $38                                       ; $6269: $ff
    add b                                         ; $626a: $80
    xor a                                         ; $626b: $af
    ret nc                                        ; $626c: $d0

    xor $91                                       ; $626d: $ee $91
    cp [hl]                                       ; $626f: $be
    jr nc, jr_0a4_6233                            ; $6270: $30 $c1

    rst $28                                       ; $6272: $ef
    dec h                                         ; $6273: $25
    ld h, $ee                                     ; $6274: $26 $ee
    rra                                           ; $6276: $1f

jr_0a4_6277:
    rst $28                                       ; $6277: $ef
    db $10                                        ; $6278: $10
    rst $30                                       ; $6279: $f7
    rra                                           ; $627a: $1f
    db $10                                        ; $627b: $10
    ld c, a                                       ; $627c: $4f
    cp a                                          ; $627d: $bf
    ld b, a                                       ; $627e: $47
    call nc, $d500                                ; $627f: $d4 $00 $d5
    rst $38                                       ; $6282: $ff
    ccf                                           ; $6283: $3f
    ccf                                           ; $6284: $3f
    adc l                                         ; $6285: $8d
    db $e4                                        ; $6286: $e4
    add hl, bc                                    ; $6287: $09
    ld de, $a2ff                                  ; $6288: $11 $ff $a2
    ld d, b                                       ; $628b: $50
    inc bc                                        ; $628c: $03
    inc b                                         ; $628d: $04
    ld [$a8ea], sp                                ; $628e: $08 $ea $a8
    nop                                           ; $6291: $00
    jr c, jr_0a4_62a3                             ; $6292: $38 $0f

    rrca                                          ; $6294: $0f
    jr c, jr_0a4_62bf                             ; $6295: $38 $28

    ld b, b                                       ; $6297: $40
    jr z, jr_0a4_629a                             ; $6298: $28 $00

jr_0a4_629a:
    ld e, l                                       ; $629a: $5d
    rst $28                                       ; $629b: $ef
    db $10                                        ; $629c: $10
    rst $08                                       ; $629d: $cf
    nop                                           ; $629e: $00
    ldh a, [$be]                                  ; $629f: $f0 $be
    rst $38                                       ; $62a1: $ff
    rst $18                                       ; $62a2: $df

jr_0a4_62a3:
    cp [hl]                                       ; $62a3: $be
    rst $28                                       ; $62a4: $ef
    sbc a                                         ; $62a5: $9f
    rst $30                                       ; $62a6: $f7
    ld bc, $fbcf                                  ; $62a7: $01 $cf $fb
    rst $20                                       ; $62aa: $e7
    db $fd                                        ; $62ab: $fd
    di                                            ; $62ac: $f3
    cp $f9                                        ; $62ad: $fe $f9
    xor $17                                       ; $62af: $ee $17
    ld h, h                                       ; $62b1: $64
    ld a, h                                       ; $62b2: $7c
    adc $05                                       ; $62b3: $ce $05
    ld [de], a                                    ; $62b5: $12
    jr nz, jr_0a4_6277                            ; $62b6: $20 $bf

    db $fc                                        ; $62b8: $fc
    ld e, $38                                     ; $62b9: $1e $38
    cp [hl]                                       ; $62bb: $be
    ld sp, hl                                     ; $62bc: $f9
    nop                                           ; $62bd: $00
    rst $18                                       ; $62be: $df

jr_0a4_62bf:
    cp h                                          ; $62bf: $bc
    ld a, [hl]                                    ; $62c0: $7e
    ld sp, hl                                     ; $62c1: $f9
    cp a                                          ; $62c2: $bf
    ld a, h                                       ; $62c3: $7c
    rst $18                                       ; $62c4: $df
    ld a, $87                                     ; $62c5: $3e $87
    jr nc, jr_0a4_62f1                            ; $62c7: $30 $28

    ld a, [hl]                                    ; $62c9: $7e
    ld sp, hl                                     ; $62ca: $f9
    rst $28                                       ; $62cb: $ef
    sbc $78                                       ; $62cc: $de $78
    jr jr_0a4_6268                                ; $62ce: $18 $98

    cpl                                           ; $62d0: $2f
    ld e, $08                                     ; $62d1: $1e $08
    ld a, h                                       ; $62d3: $7c
    rst $38                                       ; $62d4: $ff
    ld a, b                                       ; $62d5: $78
    nop                                           ; $62d6: $00
    xor b                                         ; $62d7: $a8
    cpl                                           ; $62d8: $2f
    xor h                                         ; $62d9: $ac
    ld c, [hl]                                    ; $62da: $4e
    or h                                          ; $62db: $b4
    ld c, $be                                     ; $62dc: $0e $be
    ld e, l                                       ; $62de: $5d
    xor $11                                       ; $62df: $ee $11
    and a                                         ; $62e1: $a7
    cp [hl]                                       ; $62e2: $be
    ld h, l                                       ; $62e3: $65
    ld bc, $3dbc                                  ; $62e4: $01 $bc $3d
    rst $38                                       ; $62e7: $ff
    db $fd                                        ; $62e8: $fd
    adc h                                         ; $62e9: $8c
    ld c, $ac                                     ; $62ea: $0e $ac
    ld c, [hl]                                    ; $62ec: $4e
    adc h                                         ; $62ed: $8c
    ld d, $a7                                     ; $62ee: $16 $a7
    cp [hl]                                       ; $62f0: $be

jr_0a4_62f1:
    ld e, l                                       ; $62f1: $5d
    rst $38                                       ; $62f2: $ff
    cp [hl]                                       ; $62f3: $be
    ld e, l                                       ; $62f4: $5d
    ccf                                           ; $62f5: $3f
    pop bc                                        ; $62f6: $c1
    cp h                                          ; $62f7: $bc
    ld c, [hl]                                    ; $62f8: $4e
    adc h                                         ; $62f9: $8c
    ld c, $bc                                     ; $62fa: $0e $bc
    ld c, [hl]                                    ; $62fc: $4e
    jp c, Jump_000_0e8c                           ; $62fd: $da $8c $0e

    ld a, [hl]                                    ; $6300: $7e
    ld e, [hl]                                    ; $6301: $5e
    ld a, a                                       ; $6302: $7f
    jp Jump_0a4_7e05                              ; $6303: $c3 $05 $7e


    ld d, [hl]                                    ; $6306: $56
    rst $38                                       ; $6307: $ff
    cp h                                          ; $6308: $bc
    ld c, $ff                                     ; $6309: $0e $ff
    rst $38                                       ; $630b: $ff
    cp [hl]                                       ; $630c: $be
    ld b, $bc                                     ; $630d: $06 $bc
    ld d, $8c                                     ; $630f: $16 $8c
    ld b, $bc                                     ; $6311: $06 $bc
    ld c, [hl]                                    ; $6313: $4e
    adc h                                         ; $6314: $8c
    ld c, $bc                                     ; $6315: $0e $bc
    ld c, [hl]                                    ; $6317: $4e
    ld a, d                                       ; $6318: $7a
    rrca                                          ; $6319: $0f
    ld a, $58                                     ; $631a: $3e $58
    ret nc                                        ; $631c: $d0

    ld a, [c]                                     ; $631d: $f2
    rlca                                          ; $631e: $07
    ret nz                                        ; $631f: $c0

    ld h, l                                       ; $6320: $65
    nop                                           ; $6321: $00
    sub d                                         ; $6322: $92
    rlca                                          ; $6323: $07
    ret                                           ; $6324: $c9


    rst $30                                       ; $6325: $f7
    cp [hl]                                       ; $6326: $be
    pop bc                                        ; $6327: $c1
    rla                                           ; $6328: $17
    ld c, h                                       ; $6329: $4c
    di                                            ; $632a: $f3
    add c                                         ; $632b: $81
    xor d                                         ; $632c: $aa
    ld [bc], a                                    ; $632d: $02
    ld d, a                                       ; $632e: $57
    stop                                          ; $632f: $10 $00
    ld [de], a                                    ; $6331: $12
    ld [$0ac2], sp                                ; $6332: $08 $c2 $0a
    jr @+$77                                      ; $6335: $18 $75

    cp $fa                                        ; $6337: $fe $fa
    jr nz, jr_0a4_634b                            ; $6339: $20 $10

    ld [hl+], a                                   ; $633b: $22
    ld [$d729], sp                                ; $633c: $08 $29 $d7
    ei                                            ; $633f: $fb
    inc c                                         ; $6340: $0c
    rlca                                          ; $6341: $07
    or $0f                                        ; $6342: $f6 $0f
    sub a                                         ; $6344: $97
    ld e, h                                       ; $6345: $5c
    dec b                                         ; $6346: $05
    and h                                         ; $6347: $a4
    inc de                                        ; $6348: $13
    cp $e9                                        ; $6349: $fe $e9

jr_0a4_634b:
    inc bc                                        ; $634b: $03
    rst $30                                       ; $634c: $f7
    ld e, a                                       ; $634d: $5f
    and c                                         ; $634e: $a1
    sbc l                                         ; $634f: $9d
    db $e3                                        ; $6350: $e3
    ld b, e                                       ; $6351: $43
    ld d, d                                       ; $6352: $52
    ld [bc], a                                    ; $6353: $02
    ld e, d                                       ; $6354: $5a
    ld [bc], a                                    ; $6355: $02
    nop                                           ; $6356: $00
    rst $28                                       ; $6357: $ef
    xor d                                         ; $6358: $aa
    rst $38                                       ; $6359: $ff
    ld e, h                                       ; $635a: $5c
    db $e3                                        ; $635b: $e3
    adc b                                         ; $635c: $88
    rst $30                                       ; $635d: $f7
    ld b, c                                       ; $635e: $41
    or l                                          ; $635f: $b5
    sbc d                                         ; $6360: $9a
    ld [de], a                                    ; $6361: $12
    ld a, [$0490]                                 ; $6362: $fa $90 $04
    cp $1a                                        ; $6365: $fe $1a
    ld d, l                                       ; $6367: $55
    sub [hl]                                      ; $6368: $96
    dec b                                         ; $6369: $05
    db $fd                                        ; $636a: $fd
    ld a, d                                       ; $636b: $7a
    ld [de], a                                    ; $636c: $12
    ld bc, $7faa                                  ; $636d: $01 $aa $7f
    rst $10                                       ; $6370: $d7
    ld a, a                                       ; $6371: $7f
    adc d                                         ; $6372: $8a
    ld a, a                                       ; $6373: $7f
    ld d, a                                       ; $6374: $57
    ld a, [hl-]                                   ; $6375: $3a
    inc bc                                        ; $6376: $03
    add b                                         ; $6377: $80
    sbc $0a                                       ; $6378: $de $0a
    ld l, c                                       ; $637a: $69
    rst $10                                       ; $637b: $d7
    or l                                          ; $637c: $b5
    bit 3, e                                      ; $637d: $cb $5b
    and l                                         ; $637f: $a5

jr_0a4_6380:
    xor l                                         ; $6380: $ad
    inc c                                         ; $6381: $0c
    db $d3                                        ; $6382: $d3
    dec b                                         ; $6383: $05
    ei                                            ; $6384: $fb
    and e                                         ; $6385: $a3
    sub [hl]                                      ; $6386: $96
    ld [de], a                                    ; $6387: $12
    inc h                                         ; $6388: $24
    jr nz, jr_0a4_6380                            ; $6389: $20 $f5

    ld e, [hl]                                    ; $638b: $5e
    dec b                                         ; $638c: $05
    pop hl                                        ; $638d: $e1
    cp [hl]                                       ; $638e: $be
    pop hl                                        ; $638f: $e1
    reti                                          ; $6390: $d9


    rst $20                                       ; $6391: $e7
    ld b, d                                       ; $6392: $42
    dec bc                                        ; $6393: $0b
    ld [$0430], a                                 ; $6394: $ea $30 $04
    ld e, b                                       ; $6397: $58
    cp b                                          ; $6398: $b8
    ld b, d                                       ; $6399: $42
    inc de                                        ; $639a: $13
    ld e, l                                       ; $639b: $5d
    ret c                                         ; $639c: $d8

    dec b                                         ; $639d: $05
    jr c, jr_0a4_63b0                             ; $639e: $38 $10

    cp a                                          ; $63a0: $bf
    srl a                                         ; $63a1: $cb $3f
    ld d, $a7                                     ; $63a3: $16 $a7
    ld e, a                                       ; $63a5: $5f
    xor e                                         ; $63a6: $ab
    ld b, d                                       ; $63a7: $42
    inc bc                                        ; $63a8: $03
    xor e                                         ; $63a9: $ab
    ld e, b                                       ; $63aa: $58
    ld b, $12                                     ; $63ab: $06 $12
    dec bc                                        ; $63ad: $0b
    cp e                                          ; $63ae: $bb
    sbc d                                         ; $63af: $9a

jr_0a4_63b0:
    adc $1a                                       ; $63b0: $ce $1a
    ei                                            ; $63b2: $fb
    add d                                         ; $63b3: $82
    ld e, $0b                                     ; $63b4: $1e $0b
    and d                                         ; $63b6: $a2
    dec b                                         ; $63b7: $05
    xor d                                         ; $63b8: $aa
    ld h, b                                       ; $63b9: $60
    ld b, $ea                                     ; $63ba: $06 $ea
    or l                                          ; $63bc: $b5
    ld l, l                                       ; $63bd: $6d
    rlca                                          ; $63be: $07
    cp d                                          ; $63bf: $ba
    inc b                                         ; $63c0: $04
    db $10                                        ; $63c1: $10
    ld a, [de]                                    ; $63c2: $1a
    dec bc                                        ; $63c3: $0b
    ld d, l                                       ; $63c4: $55
    sbc d                                         ; $63c5: $9a
    inc bc                                        ; $63c6: $03
    rst $38                                       ; $63c7: $ff
    ld a, h                                       ; $63c8: $7c
    inc b                                         ; $63c9: $04
    add l                                         ; $63ca: $85
    or d                                          ; $63cb: $b2

jr_0a4_63cc:
    inc bc                                        ; $63cc: $03
    rst $18                                       ; $63cd: $df
    push af                                       ; $63ce: $f5
    rrca                                          ; $63cf: $0f
    dec hl                                        ; $63d0: $2b
    db $e4                                        ; $63d1: $e4
    dec b                                         ; $63d2: $05
    xor a                                         ; $63d3: $af
    adc l                                         ; $63d4: $8d
    rlca                                          ; $63d5: $07
    inc b                                         ; $63d6: $04
    xor a                                         ; $63d7: $af
    pop af                                        ; $63d8: $f1
    push de                                       ; $63d9: $d5
    ei                                            ; $63da: $fb
    xor e                                         ; $63db: $ab
    ld a, [$ab02]                                 ; $63dc: $fa $02 $ab
    rst $30                                       ; $63df: $f7
    ldh [$4c], a                                  ; $63e0: $e0 $4c
    ld [$18e0], sp                                ; $63e2: $08 $e0 $18
    ld a, d                                       ; $63e5: $7a
    inc c                                         ; $63e6: $0c
    ret nz                                        ; $63e7: $c0

    rst $38                                       ; $63e8: $ff
    add hl, sp                                    ; $63e9: $39
    add $ab                                       ; $63ea: $c6 $ab
    ret nz                                        ; $63ec: $c0

    sbc a                                         ; $63ed: $9f
    inc b                                         ; $63ee: $04
    add [hl]                                      ; $63ef: $86
    inc c                                         ; $63f0: $0c
    ld a, a                                       ; $63f1: $7f
    ld a, a                                       ; $63f2: $7f
    rst $08                                       ; $63f3: $cf
    rst $38                                       ; $63f4: $ff
    or [hl]                                       ; $63f5: $b6
    rst $08                                       ; $63f6: $cf
    db $10                                        ; $63f7: $10
    ld [$979f], a                                 ; $63f8: $ea $9f $97
    ld d, [hl]                                    ; $63fb: $56
    ld b, $a2                                     ; $63fc: $06 $a2
    rst $38                                       ; $63fe: $ff
    xor h                                         ; $63ff: $ac
    ei                                            ; $6400: $fb
    nop                                           ; $6401: $00
    sbc [hl]                                      ; $6402: $9e
    db $eb                                        ; $6403: $eb
    sub d                                         ; $6404: $92
    rst $28                                       ; $6405: $ef
    xor c                                         ; $6406: $a9
    rst $38                                       ; $6407: $ff
    sbc b                                         ; $6408: $98

Jump_0a4_6409:
    rst $28                                       ; $6409: $ef
    db $10                                        ; $640a: $10
    xor [hl]                                      ; $640b: $ae
    ei                                            ; $640c: $fb
    sub $d6                                       ; $640d: $d6 $d6
    ld b, $ae                                     ; $640f: $06 $ae
    rst $38                                       ; $6411: $ff
    sub l                                         ; $6412: $95
    rst $38                                       ; $6413: $ff
    inc d                                         ; $6414: $14
    xor $bf                                       ; $6415: $ee $bf
    sub l                                         ; $6417: $95
    add [hl]                                      ; $6418: $86
    dec b                                         ; $6419: $05
    db $dd                                        ; $641a: $dd
    inc c                                         ; $641b: $0c
    inc b                                         ; $641c: $04
    and d                                         ; $641d: $a2
    rst $38                                       ; $641e: $ff
    nop                                           ; $641f: $00
    adc [hl]                                      ; $6420: $8e
    ei                                            ; $6421: $fb
    cp b                                          ; $6422: $b8
    rst $28                                       ; $6423: $ef
    add d                                         ; $6424: $82
    rst $38                                       ; $6425: $ff
    sbc $eb                                       ; $6426: $de $eb
    ld bc, $ffa8                                  ; $6428: $01 $a8 $ff
    jp nz, $bcff                                  ; $642b: $c2 $ff $bc

    db $eb                                        ; $642e: $eb
    db $dd                                        ; $642f: $dd
    ld a, b                                       ; $6430: $78
    ld b, $40                                     ; $6431: $06 $40
    rst $18                                       ; $6433: $df
    inc e                                         ; $6434: $1c
    jr nz, jr_0a4_63cc                            ; $6435: $20 $95

    rst $38                                       ; $6437: $ff
    ld [$86bf], a                                 ; $6438: $ea $bf $86
    ei                                            ; $643b: $fb
    ld bc, $ef9a                                  ; $643c: $01 $9a $ef
    and h                                         ; $643f: $a4
    ei                                            ; $6440: $fb
    jp c, $beef                                   ; $6441: $da $ef $be

    ld b, h                                       ; $6444: $44
    nop                                           ; $6445: $00
    ld d, [hl]                                    ; $6446: $56
    and b                                         ; $6447: $a0
    db $fd                                        ; $6448: $fd
    rlca                                          ; $6449: $07
    sbc h                                         ; $644a: $9c
    ld b, b                                       ; $644b: $40
    inc b                                         ; $644c: $04
    sbc l                                         ; $644d: $9d
    ld b, h                                       ; $644e: $44
    inc b                                         ; $644f: $04
    add $08                                       ; $6450: $c6 $08
    rst $10                                       ; $6452: $d7
    add b                                         ; $6453: $80
    ld h, b                                       ; $6454: $60
    ld sp, $ef17                                  ; $6455: $31 $17 $ef
    ld a, d                                       ; $6458: $7a
    add l                                         ; $6459: $85
    cp c                                          ; $645a: $b9
    rst $00                                       ; $645b: $c7
    ld b, d                                       ; $645c: $42
    add b                                         ; $645d: $80
    ld a, [bc]                                    ; $645e: $0a
    ld b, $55                                     ; $645f: $06 $55
    rst $38                                       ; $6461: $ff
    sub [hl]                                      ; $6462: $96
    db $eb                                        ; $6463: $eb
    dec l                                         ; $6464: $2d
    db $d3                                        ; $6465: $d3
    jp c, $a502                                   ; $6466: $da $02 $a5

    dec [hl]                                      ; $6469: $35
    res 4, b                                      ; $646a: $cb $a0
    rst $18                                       ; $646c: $df
    ld b, l                                       ; $646d: $45
    cp b                                          ; $646e: $b8
    inc de                                        ; $646f: $13
    db $eb                                        ; $6470: $eb
    ldh [rSCY], a                                 ; $6471: $e0 $42
    add hl, bc                                    ; $6473: $09
    ld d, h                                       ; $6474: $54
    inc b                                         ; $6475: $04
    inc e                                         ; $6476: $1c
    ld [$dfaa], sp                                ; $6477: $08 $aa $df
    ld [hl], l                                    ; $647a: $75
    adc a                                         ; $647b: $8f
    xor e                                         ; $647c: $ab
    ld a, [bc]                                    ; $647d: $0a
    rst $18                                       ; $647e: $df
    ld d, l                                       ; $647f: $55
    rst $38                                       ; $6480: $ff
    adc d                                         ; $6481: $8a
    halt                                          ; $6482: $76
    ld de, $02d5                                  ; $6483: $11 $d5 $02
    dec c                                         ; $6486: $0d
    pop af                                        ; $6487: $f1
    nop                                           ; $6488: $00
    halt                                          ; $6489: $76
    ld sp, hl                                     ; $648a: $f9
    cp a                                          ; $648b: $bf
    ld [hl], b                                    ; $648c: $70
    rst $10                                       ; $648d: $d7

jr_0a4_648e:
    jr c, jr_0a4_648e                             ; $648e: $38 $fe

    sub c                                         ; $6490: $91
    ld [hl-], a                                   ; $6491: $32
    or $d9                                        ; $6492: $f6 $d9
    add $0a                                       ; $6494: $c6 $0a
    xor [hl]                                      ; $6496: $ae
    ld e, d                                       ; $6497: $5a
    db $ed                                        ; $6498: $ed
    inc de                                        ; $6499: $13
    and l                                         ; $649a: $a5
    rrca                                          ; $649b: $0f
    cp $a8                                        ; $649c: $fe $a8
    ld bc, $fc00                                  ; $649e: $01 $00 $fc
    ld bc, $f800                                  ; $64a1: $01 $00 $f8
    ld bc, $7e00                                  ; $64a4: $01 $00 $7e
    pop af                                        ; $64a7: $f1
    or [hl]                                       ; $64a8: $b6
    ld bc, $df79                                  ; $64a9: $01 $79 $df
    jr nc, @-$07                                  ; $64ac: $30 $f7

    sbc b                                         ; $64ae: $98
    ld a, h                                       ; $64af: $7c
    ld a, a                                       ; $64b0: $7f
    ld [hl], h                                    ; $64b1: $74
    inc e                                         ; $64b2: $1c
    add a                                         ; $64b3: $87
    xor [hl]                                      ; $64b4: $ae
    ld c, d                                       ; $64b5: $4a
    rra                                           ; $64b6: $1f
    rra                                           ; $64b7: $1f
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    xor [hl]                                      ; $64ba: $ae
    ld e, d                                       ; $64bb: $5a
    add hl, de                                    ; $64bc: $19
    inc bc                                        ; $64bd: $03
    ld sp, $7305                                  ; $64be: $31 $05 $73
    ldh [rSB], a                                  ; $64c1: $e0 $01
    nop                                           ; $64c3: $00
    dec l                                         ; $64c4: $2d
    dec b                                         ; $64c5: $05
    ld l, $05                                     ; $64c6: $2e $05
    add b                                         ; $64c8: $80
    add b                                         ; $64c9: $80
    ld e, h                                       ; $64ca: $5c
    ld c, [hl]                                    ; $64cb: $4e
    dec bc                                        ; $64cc: $0b
    ld l, b                                       ; $64cd: $68
    dec bc                                        ; $64ce: $0b
    ld sp, hl                                     ; $64cf: $f9
    cp $3f                                        ; $64d0: $fe $3f
    ret nz                                        ; $64d2: $c0

    ld c, h                                       ; $64d3: $4c
    ld d, [hl]                                    ; $64d4: $56
    dec bc                                        ; $64d5: $0b
    cp b                                          ; $64d6: $b8
    ld [bc], a                                    ; $64d7: $02
    ld c, h                                       ; $64d8: $4c
    ld c, [hl]                                    ; $64d9: $4e
    jr jr_0a4_64dc                                ; $64da: $18 $00

jr_0a4_64dc:
    rst $30                                       ; $64dc: $f7
    ld [$074e], sp                                ; $64dd: $08 $4e $07
    db $e3                                        ; $64e0: $e3
    dec b                                         ; $64e1: $05
    ld [hl], h                                    ; $64e2: $74
    rst $38                                       ; $64e3: $ff
    xor e                                         ; $64e4: $ab
    nop                                           ; $64e5: $00
    db $fd                                        ; $64e6: $fd
    ld [hl], h                                    ; $64e7: $74
    rst $38                                       ; $64e8: $ff
    xor h                                         ; $64e9: $ac
    rst $38                                       ; $64ea: $ff
    ld d, c                                       ; $64eb: $51
    cp $e8                                        ; $64ec: $fe $e8
    nop                                           ; $64ee: $00
    rst $38                                       ; $64ef: $ff
    jp nc, $a9fd                                  ; $64f0: $d2 $fd $a9

    cp $42                                        ; $64f3: $fe $42
    db $fd                                        ; $64f5: $fd
    cp c                                          ; $64f6: $b9
    ld a, [bc]                                    ; $64f7: $0a
    and $55                                       ; $64f8: $e6 $55
    xor $88                                       ; $64fa: $ee $88
    sub d                                         ; $64fc: $92
    inc b                                         ; $64fd: $04
    or l                                          ; $64fe: $b5
    ld a, [c]                                     ; $64ff: $f2
    ld [bc], a                                    ; $6500: $02
    ld d, $00                                     ; $6501: $16 $00
    rra                                           ; $6503: $1f
    ld a, [de]                                    ; $6504: $1a
    rra                                           ; $6505: $1f
    dec e                                         ; $6506: $1d
    ld e, $99                                     ; $6507: $1e $99
    sbc [hl]                                      ; $6509: $9e
    ld [de], a                                    ; $650a: $12
    nop                                           ; $650b: $00
    dec e                                         ; $650c: $1d
    ld e, c                                       ; $650d: $59
    ld e, [hl]                                    ; $650e: $5e
    rst $38                                       ; $650f: $ff
    nop                                           ; $6510: $00
    db $e3                                        ; $6511: $e3
    inc e                                         ; $6512: $1c
    push af                                       ; $6513: $f5
    nop                                           ; $6514: $00
    ld [de], a                                    ; $6515: $12
    ld a, [$f411]                                 ; $6516: $fa $11 $f4
    add hl, de                                    ; $6519: $19
    db $fc                                        ; $651a: $fc
    add hl, de                                    ; $651b: $19
    add $10                                       ; $651c: $c6 $10
    dec a                                         ; $651e: $3d
    ret z                                         ; $651f: $c8

    daa                                           ; $6520: $27
    ld [hl], $06                                  ; $6521: $36 $06
    nop                                           ; $6523: $00
    pop af                                        ; $6524: $f1
    ld c, $cb                                     ; $6525: $0e $cb
    nop                                           ; $6527: $00
    ld [hl-], a                                   ; $6528: $32
    and a                                         ; $6529: $a7
    ld b, d                                       ; $652a: $42
    rst $08                                       ; $652b: $cf
    add h                                         ; $652c: $84
    sbc a                                         ; $652d: $9f
    adc b                                         ; $652e: $88
    xor a                                         ; $652f: $af
    nop                                           ; $6530: $00
    sbc b                                         ; $6531: $98
    ld a, [c]                                     ; $6532: $f2
    ld hl, $10f9                                  ; $6533: $21 $f9 $10
    cp $0c                                        ; $6536: $fe $0c
    di                                            ; $6538: $f3
    nop                                           ; $6539: $00
    rrca                                          ; $653a: $0f
    add sp, $11                                   ; $653b: $e8 $11
    rst $10                                       ; $653d: $d7
    ld hl, $47aa                                  ; $653e: $21 $aa $47
    sbc l                                         ; $6541: $9d
    nop                                           ; $6542: $00
    ld c, [hl]                                    ; $6543: $4e
    rst $18                                       ; $6544: $df
    or b                                          ; $6545: $b0
    ld a, a                                       ; $6546: $7f
    ldh [rSCX], a                                 ; $6547: $e0 $43
    db $fc                                        ; $6549: $fc
    ld sp, $c200                                  ; $654a: $31 $00 $c2
    adc $81                                       ; $654d: $ce $81
    rst $08                                       ; $654f: $cf
    cp $3f                                        ; $6550: $fe $3f
    ldh a, [$73]                                  ; $6552: $f0 $73
    nop                                           ; $6554: $00
    ld c, h                                       ; $6555: $4c
    db $f4                                        ; $6556: $f4
    ld a, b                                       ; $6557: $78
    ld [$db11], a                                 ; $6558: $ea $11 $db
    daa                                           ; $655b: $27
    rst $38                                       ; $655c: $ff
    ld b, b                                       ; $655d: $40
    inc a                                         ; $655e: $3c
    ld l, [hl]                                    ; $655f: $6e
    ld b, $02                                     ; $6560: $06 $02
    rst $38                                       ; $6562: $ff
    db $10                                        ; $6563: $10
    rst $38                                       ; $6564: $ff
    nop                                           ; $6565: $00
    push de                                       ; $6566: $d5
    nop                                           ; $6567: $00
    ld h, d                                       ; $6568: $62
    ld [$f4f1], a                                 ; $6569: $ea $f1 $f4
    reti                                          ; $656c: $d9


    cp $cf                                        ; $656d: $fe $cf
    rst $38                                       ; $656f: $ff
    ld b, d                                       ; $6570: $42
    ret nz                                        ; $6571: $c0

jr_0a4_6572:
    ld [bc], a                                    ; $6572: $02
    nop                                           ; $6573: $00
    ret nc                                        ; $6574: $d0

    rst $38                                       ; $6575: $ff
    nop                                           ; $6576: $00
    jr nz, @+$03                                  ; $6577: $20 $01

    ld [$0030], sp                                ; $6579: $08 $30 $00
    nop                                           ; $657c: $00
    jr c, jr_0a4_658f                             ; $657d: $38 $10

    jr @+$12                                      ; $657f: $18 $10

    inc e                                         ; $6581: $1c
    nop                                           ; $6582: $00
    inc e                                         ; $6583: $1c
    nop                                           ; $6584: $00
    sub b                                         ; $6585: $90
    sbc [hl]                                      ; $6586: $9e
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    inc b                                         ; $6589: $04
    inc b                                         ; $658a: $04
    add h                                         ; $658b: $84
    adc h                                         ; $658c: $8c
    add b                                         ; $658d: $80
    ld [bc], a                                    ; $658e: $02

jr_0a4_658f:
    ld [$8ca0], sp                                ; $658f: $08 $a0 $8c
    add h                                         ; $6592: $84
    db $fc                                        ; $6593: $fc
    jr nz, jr_0a4_6572                            ; $6594: $20 $dc

    ld c, b                                       ; $6596: $48
    nop                                           ; $6597: $00
    sbc $a4                                       ; $6598: $de $a4
    ld a, [$f98e]                                 ; $659a: $fa $8e $f9
    ld b, h                                       ; $659d: $44
    ld a, e                                       ; $659e: $7b
    ld c, d                                       ; $659f: $4a
    nop                                           ; $65a0: $00
    ld [hl], l                                    ; $65a1: $75
    ld h, d                                       ; $65a2: $62
    ld e, l                                       ; $65a3: $5d
    ld [hl-], a                                   ; $65a4: $32
    dec l                                         ; $65a5: $2d
    jp hl                                         ; $65a6: $e9


    or $84                                        ; $65a7: $f6 $84
    nop                                           ; $65a9: $00
    ld hl, sp+$24                                 ; $65aa: $f8 $24
    ret c                                         ; $65ac: $d8

    add b                                         ; $65ad: $80
    db $fc                                        ; $65ae: $fc
    dec h                                         ; $65af: $25
    reti                                          ; $65b0: $d9


    xor c                                         ; $65b1: $a9
    nop                                           ; $65b2: $00
    push de                                       ; $65b3: $d5
    daa                                           ; $65b4: $27
    rst $18                                       ; $65b5: $df
    ld c, c                                       ; $65b6: $49
    or a                                          ; $65b7: $b7
    dec h                                         ; $65b8: $25
    rst $18                                       ; $65b9: $df
    dec sp                                        ; $65ba: $3b
    nop                                           ; $65bb: $00
    db $e4                                        ; $65bc: $e4
    adc l                                         ; $65bd: $8d
    ld a, [c]                                     ; $65be: $f2
    push de                                       ; $65bf: $d5
    ld [$724d], a                                 ; $65c0: $ea $4d $72
    daa                                           ; $65c3: $27
    nop                                           ; $65c4: $00
    jr c, jr_0a4_65f2                             ; $65c5: $38 $2b

    inc [hl]                                      ; $65c7: $34
    dec d                                         ; $65c8: $15

jr_0a4_65c9:
    ld a, [de]                                    ; $65c9: $1a
    ld c, d                                       ; $65ca: $4a
    ld c, l                                       ; $65cb: $4d
    ld c, l                                       ; $65cc: $4d
    nop                                           ; $65cd: $00
    or a                                          ; $65ce: $b7
    pop de                                        ; $65cf: $d1
    cpl                                           ; $65d0: $2f
    ld c, c                                       ; $65d1: $49
    cp a                                          ; $65d2: $bf
    db $d3                                        ; $65d3: $d3
    cpl                                           ; $65d4: $2f
    ld a, e                                       ; $65d5: $7b
    nop                                           ; $65d6: $00
    adc a                                         ; $65d7: $8f
    and $1e                                       ; $65d8: $e6 $1e
    sub $2e                                       ; $65da: $d6 $2e
    dec hl                                        ; $65dc: $2b
    db $db                                        ; $65dd: $db
    ld hl, sp+$00                                 ; $65de: $f8 $00
    rlca                                          ; $65e0: $07
    push hl                                       ; $65e1: $e5
    ld a, [de]                                    ; $65e2: $1a
    reti                                          ; $65e3: $d9


    jr nz, jr_0a4_65c9                            ; $65e4: $20 $e3

    ld b, b                                       ; $65e6: $40
    and h                                         ; $65e7: $a4
    nop                                           ; $65e8: $00
    ret nz                                        ; $65e9: $c0

    ld hl, sp-$80                                 ; $65ea: $f8 $80
    xor b                                         ; $65ec: $a8
    ret nz                                        ; $65ed: $c0

    db $e4                                        ; $65ee: $e4
    ret nc                                        ; $65ef: $d0

    sbc a                                         ; $65f0: $9f
    nop                                           ; $65f1: $00

jr_0a4_65f2:
    ld h, b                                       ; $65f2: $60
    ld l, a                                       ; $65f3: $6f
    sub b                                         ; $65f4: $90
    or e                                          ; $65f5: $b3
    inc c                                         ; $65f6: $0c
    call Call_000_0a02                            ; $65f7: $cd $02 $0a
    nop                                           ; $65fa: $00
    dec b                                         ; $65fb: $05
    ld [hl], d                                    ; $65fc: $72
    ld bc, HeaderManufacturerCode                 ; $65fd: $01 $3f $01
    dec b                                         ; $6600: $05
    inc bc                                        ; $6601: $03
    cp d                                          ; $6602: $ba
    nop                                           ; $6603: $00
    push hl                                       ; $6604: $e5
    rst $00                                       ; $6605: $c7
    ld a, b                                       ; $6606: $78
    jp hl                                         ; $6607: $e9


    ld [hl], $f3                                  ; $6608: $36 $f3
    ld a, b                                       ; $660a: $78
    ld hl, sp+$00                                 ; $660b: $f8 $00
    ld [hl], b                                    ; $660d: $70
    push hl                                       ; $660e: $e5
    jr c, @-$34                                   ; $660f: $38 $ca

    ld [hl], l                                    ; $6611: $75
    sub l                                         ; $6612: $95
    ld [$009d], a                                 ; $6613: $ea $9d $00
    inc bc                                        ; $6616: $03
    ld l, e                                       ; $6617: $6b
    rlca                                          ; $6618: $07
    sbc l                                         ; $6619: $9d
    inc bc                                        ; $661a: $03
    xor e                                         ; $661b: $ab
    ld d, [hl]                                    ; $661c: $56
    ld d, a                                       ; $661d: $57
    nop                                           ; $661e: $00
    xor [hl]                                      ; $661f: $ae
    adc e                                         ; $6620: $8b
    ld a, [hl]                                    ; $6621: $7e
    ld b, a                                       ; $6622: $47
    ld a, $c9                                     ; $6623: $3e $c9
    rlca                                          ; $6625: $07
    xor d                                         ; $6626: $aa
    nop                                           ; $6627: $00
    push bc                                       ; $6628: $c5
    db $e4                                        ; $6629: $e4
    jp $c1b2                                      ; $662a: $c3 $b2 $c1


    ld [$e575], a                                 ; $662d: $ea $75 $e5
    ld [$d87e], sp                                ; $6630: $08 $7e $d8
    ld a, a                                       ; $6633: $7f
    push af                                       ; $6634: $f5
    ld h, $04                                     ; $6635: $26 $04
    ld h, a                                       ; $6637: $67
    add c                                         ; $6638: $81
    xor e                                         ; $6639: $ab
    nop                                           ; $663a: $00
    ld b, c                                       ; $663b: $41
    ld e, l                                       ; $663c: $5d
    and e                                         ; $663d: $a3
    cp c                                          ; $663e: $b9
    rst $00                                       ; $663f: $c7
    ld l, e                                       ; $6640: $6b
    sbc [hl]                                      ; $6641: $9e
    rla                                           ; $6642: $17
    nop                                           ; $6643: $00
    cp $0f                                        ; $6644: $fe $0f
    db $fc                                        ; $6646: $fc
    ccf                                           ; $6647: $3f
    ld hl, sp+$00                                 ; $6648: $f8 $00
    jr nz, jr_0a4_664e                            ; $664a: $20 $02

    nop                                           ; $664c: $00
    ld [hl+], a                                   ; $664d: $22

jr_0a4_664e:
    sub h                                         ; $664e: $94
    or [hl]                                       ; $664f: $b6
    db $ec                                        ; $6650: $ec
    ld e, b                                       ; $6651: $58
    ld a, b                                       ; $6652: $78
    db $10                                        ; $6653: $10
    jr nz, jr_0a4_6657                            ; $6654: $20 $01

    db $10                                        ; $6656: $10

jr_0a4_6657:
    ld e, b                                       ; $6657: $58
    ld a, b                                       ; $6658: $78
    xor h                                         ; $6659: $ac
    call nc, RST_00                               ; $665a: $d4 $00 $00
    ld c, d                                       ; $665d: $4a
    rlca                                          ; $665e: $07
    add b                                         ; $665f: $80
    ldh a, [rLY]                                  ; $6660: $f0 $44
    sub [hl]                                      ; $6662: $96
    ld a, d                                       ; $6663: $7a
    inc hl                                        ; $6664: $23
    sub l                                         ; $6665: $95
    db $10                                        ; $6666: $10
    ld sp, $0020                                  ; $6667: $31 $20 $00
    db $10                                        ; $666a: $10
    jr nc, jr_0a4_667d                            ; $666b: $30 $10

    rst $28                                       ; $666d: $ef
    rst $18                                       ; $666e: $df
    cp $01                                        ; $666f: $fe $01
    jr nc, jr_0a4_66b7                            ; $6671: $30 $44

    ld e, d                                       ; $6673: $5a
    ld l, h                                       ; $6674: $6c
    rlca                                          ; $6675: $07
    inc bc                                        ; $6676: $03
    nop                                           ; $6677: $00
    ld [bc], a                                    ; $6678: $02
    and $1b                                       ; $6679: $e6 $1b
    ld a, c                                       ; $667b: $79
    add [hl]                                      ; $667c: $86

jr_0a4_667d:
    inc b                                         ; $667d: $04
    jr nc, jr_0a4_6691                            ; $667e: $30 $11

    ld hl, $de13                                  ; $6680: $21 $13 $de
    dec b                                         ; $6683: $05
    inc b                                         ; $6684: $04
    ld [de], a                                    ; $6685: $12
    inc sp                                        ; $6686: $33
    nop                                           ; $6687: $00

jr_0a4_6688:
    and [hl]                                      ; $6688: $a6
    sub h                                         ; $6689: $94
    sub h                                         ; $668a: $94
    jr nc, jr_0a4_66af                            ; $668b: $30 $22

    sub [hl]                                      ; $668d: $96
    jr nc, @+$14                                  ; $668e: $30 $12

    nop                                           ; $6690: $00

jr_0a4_6691:
    ld [hl+], a                                   ; $6691: $22
    inc de                                        ; $6692: $13
    db $dd                                        ; $6693: $dd
    rst $38                                       ; $6694: $ff
    ld sp, hl                                     ; $6695: $f9
    ld b, $11                                     ; $6696: $06 $11
    inc sp                                        ; $6698: $33
    ld a, [bc]                                    ; $6699: $0a
    ld hl, $1010                                  ; $669a: $21 $10 $10
    jr nc, jr_0a4_66d5                            ; $669d: $30 $36

    nop                                           ; $669f: $00
    ld de, $5810                                  ; $66a0: $11 $10 $58
    stop                                          ; $66a3: $10 $00
    ld sp, $96a4                                  ; $66a5: $31 $a4 $96
    ld a, b                                       ; $66a8: $78
    call c, Call_0a4_5820                         ; $66a9: $dc $20 $58
    jr nc, jr_0a4_6688                            ; $66ac: $30 $da

    ld l, [hl]                                    ; $66ae: $6e

jr_0a4_66af:
    nop                                           ; $66af: $00
    inc b                                         ; $66b0: $04
    jr nz, jr_0a4_66c4                            ; $66b1: $20 $11

    inc c                                         ; $66b3: $0c
    jr z, jr_0a4_66d6                             ; $66b4: $28 $20

    db $10                                        ; $66b6: $10

jr_0a4_66b7:
    jr nc, @+$12                                  ; $66b7: $30 $10

jr_0a4_66b9:
    ld [$7e00], sp                                ; $66b9: $08 $00 $7e
    jr nc, jr_0a4_66de                            ; $66bc: $30 $20

    ld b, b                                       ; $66be: $40
    ld c, b                                       ; $66bf: $48
    jr jr_0a4_66ca                                ; $66c0: $18 $08

    ld h, b                                       ; $66c2: $60
    inc l                                         ; $66c3: $2c

jr_0a4_66c4:
    jr @+$2a                                      ; $66c4: $18 $28

    ld e, b                                       ; $66c6: $58
    ld d, h                                       ; $66c7: $54
    jr jr_0a4_66b9                                ; $66c8: $18 $ef

jr_0a4_66ca:
    jr @-$1f                                      ; $66ca: $18 $df

    sub a                                         ; $66cc: $97
    ld a, b                                       ; $66cd: $78
    ld c, h                                       ; $66ce: $4c
    ld [$2808], sp                                ; $66cf: $08 $08 $28
    rst $08                                       ; $66d2: $cf
    rst $38                                       ; $66d3: $ff
    sub a                                         ; $66d4: $97

jr_0a4_66d5:
    db $10                                        ; $66d5: $10

jr_0a4_66d6:
    ld a, b                                       ; $66d6: $78
    nop                                           ; $66d7: $00
    jr nc, jr_0a4_66e2                            ; $66d8: $30 $08

    jr c, jr_0a4_66ed                             ; $66da: $38 $11

    rra                                           ; $66dc: $1f
    ld a, [de]                                    ; $66dd: $1a

jr_0a4_66de:
    dec e                                         ; $66de: $1d
    ld [bc], a                                    ; $66df: $02
    dec d                                         ; $66e0: $15
    ld e, [hl]                                    ; $66e1: $5e

jr_0a4_66e2:
    jr jr_0a4_6703                                ; $66e2: $18 $1f

    ld de, $b41e                                  ; $66e4: $11 $1e $b4
    ld b, $00                                     ; $66e7: $06 $00
    nop                                           ; $66e9: $00
    inc e                                         ; $66ea: $1c
    rra                                           ; $66eb: $1f
    rrca                                          ; $66ec: $0f

jr_0a4_66ed:
    ldh a, [$95]                                  ; $66ed: $f0 $95
    ld [$ffd0], a                                 ; $66ef: $ea $d0 $ff
    nop                                           ; $66f2: $00
    ld l, d                                       ; $66f3: $6a
    rst $38                                       ; $66f4: $ff
    add e                                         ; $66f5: $83
    db $fc                                        ; $66f6: $fc
    push bc                                       ; $66f7: $c5
    ld a, [$ffa8]                                 ; $66f8: $fa $a8 $ff
    nop                                           ; $66fb: $00
    call nc, $d7ff                                ; $66fc: $d4 $ff $d7
    ccf                                           ; $66ff: $3f
    ld l, l                                       ; $6700: $6d
    sbc a                                         ; $6701: $9f
    ld [hl-], a                                   ; $6702: $32

jr_0a4_6703:
    rst $08                                       ; $6703: $cf
    nop                                           ; $6704: $00
    ld bc, $d3ff                                  ; $6705: $01 $ff $d3
    ccf                                           ; $6708: $3f
    push hl                                       ; $6709: $e5
    rra                                           ; $670a: $1f
    or d                                          ; $670b: $b2
    ld c, a                                       ; $670c: $4f
    nop                                           ; $670d: $00
    ld h, l                                       ; $670e: $65
    sbc a                                         ; $670f: $9f
    ld [hl-], a                                   ; $6710: $32
    dec a                                         ; $6711: $3d
    db $fd                                        ; $6712: $fd
    cp $fa                                        ; $6713: $fe $fa
    dec b                                         ; $6715: $05
    nop                                           ; $6716: $00
    add hl, de                                    ; $6717: $19
    rra                                           ; $6718: $1f
    dec d                                         ; $6719: $15
    rra                                           ; $671a: $1f
    add hl, de                                    ; $671b: $19
    ccf                                           ; $671c: $3f
    ld e, $1f                                     ; $671d: $1e $1f
    db $10                                        ; $671f: $10
    sbc d                                         ; $6720: $9a
    sbc a                                         ; $6721: $9f
    ld a, [$073c]                                 ; $6722: $fa $3c $07
    db $f4                                        ; $6725: $f4
    rst $38                                       ; $6726: $ff
    xor b                                         ; $6727: $a8
    rst $38                                       ; $6728: $ff
    nop                                           ; $6729: $00
    pop bc                                        ; $672a: $c1
    cp $8a                                        ; $672b: $fe $8a
    push af                                       ; $672d: $f5
    rst $10                                       ; $672e: $d7
    add sp, -$71                                  ; $672f: $e8 $8f
    ldh a, [rLCDC]                                ; $6731: $f0 $40
    adc e                                         ; $6733: $8b
    ld d, b                                       ; $6734: $50
    inc b                                         ; $6735: $04
    dec hl                                        ; $6736: $2b

jr_0a4_6737:
    rst $38                                       ; $6737: $ff
    sub l                                         ; $6738: $95
    ld a, a                                       ; $6739: $7f
    ld b, e                                       ; $673a: $43
    cp a                                          ; $673b: $bf
    nop                                           ; $673c: $00
    ld sp, hl                                     ; $673d: $f9
    rlca                                          ; $673e: $07
    db $fd                                        ; $673f: $fd
    inc bc                                        ; $6740: $03
    ld sp, hl                                     ; $6741: $f9
    rlca                                          ; $6742: $07
    ld a, [c]                                     ; $6743: $f2
    db $fd                                        ; $6744: $fd
    nop                                           ; $6745: $00
    ld sp, hl                                     ; $6746: $f9
    ld c, $32                                     ; $6747: $0e $32

jr_0a4_6749:
    ld a, l                                       ; $6749: $7d
    add hl, de                                    ; $674a: $19
    rra                                           ; $674b: $1f
    push af                                       ; $674c: $f5
    rst $38                                       ; $674d: $ff
    jr nz, jr_0a4_6749                            ; $674e: $20 $f9

    rrca                                          ; $6750: $0f
    jr nc, jr_0a4_675b                            ; $6751: $30 $08

    ld hl, sp-$01                                 ; $6753: $f8 $ff
    and [hl]                                      ; $6755: $a6
    ld sp, hl                                     ; $6756: $f9
    ld e, a                                       ; $6757: $5f
    nop                                           ; $6758: $00
    ldh [$3a], a                                  ; $6759: $e0 $3a

jr_0a4_675b:
    push bc                                       ; $675b: $c5
    ld [hl], l                                    ; $675c: $75
    adc d                                         ; $675d: $8a
    jr z, jr_0a4_6737                             ; $675e: $28 $d7

    ld [de], a                                    ; $6760: $12
    nop                                           ; $6761: $00
    rst $28                                       ; $6762: $ef
    dec h                                         ; $6763: $25
    rst $18                                       ; $6764: $df
    rla                                           ; $6765: $17
    rst $38                                       ; $6766: $ff
    add hl, bc                                    ; $6767: $09
    rst $38                                       ; $6768: $ff
    ld d, d                                       ; $6769: $52
    nop                                           ; $676a: $00
    cp a                                          ; $676b: $bf
    and c                                         ; $676c: $a1
    ld e, a                                       ; $676d: $5f
    ld d, e                                       ; $676e: $53
    xor a                                         ; $676f: $af
    dec b                                         ; $6770: $05
    rst $38                                       ; $6771: $ff
    inc hl                                        ; $6772: $23
    add b                                         ; $6773: $80
    sub $07                                       ; $6774: $d6 $07
    ret nz                                        ; $6776: $c0

    inc d                                         ; $6777: $14
    add sp, $0f                                   ; $6778: $e8 $0f
    ld b, b                                       ; $677a: $40
    nop                                           ; $677b: $00
    ld bc, $1000                                  ; $677c: $01 $00 $10
    jr jr_0a4_67a9                                ; $677f: $18 $28

    inc [hl]                                      ; $6781: $34
    ld d, h                                       ; $6782: $54
    ld l, d                                       ; $6783: $6a
    ld [bc], a                                    ; $6784: $02
    ld d, h                                       ; $6785: $54
    ld l, d                                       ; $6786: $6a
    halt                                          ; $6787: $76
    ld c, b                                       ; $6788: $48
    ld e, h                                       ; $6789: $5c
    ld h, e                                       ; $678a: $63
    db $10                                        ; $678b: $10
    ld h, b                                       ; $678c: $60
    db $e3                                        ; $678d: $e3
    nop                                           ; $678e: $00
    dec a                                         ; $678f: $3d
    ld [hl], d                                    ; $6790: $72
    dec a                                         ; $6791: $3d
    ld [hl], d                                    ; $6792: $72
    inc [hl]                                      ; $6793: $34
    ld a, e                                       ; $6794: $7b
    ld d, l                                       ; $6795: $55
    dec sp                                        ; $6796: $3b
    nop                                           ; $6797: $00
    ld e, [hl]                                    ; $6798: $5e
    jr nc, jr_0a4_67ef                            ; $6799: $30 $54

    ld a, [hl-]                                   ; $679b: $3a
    ld a, h                                       ; $679c: $7c
    ld [hl-], a                                   ; $679d: $32
    inc a                                         ; $679e: $3c
    ld [hl], d                                    ; $679f: $72
    nop                                           ; $67a0: $00
    sbc l                                         ; $67a1: $9d
    ld h, d                                       ; $67a2: $62
    db $dd                                        ; $67a3: $dd
    ld [hl+], a                                   ; $67a4: $22
    ld d, h                                       ; $67a5: $54
    xor e                                         ; $67a6: $ab
    push de                                       ; $67a7: $d5
    db $eb                                        ; $67a8: $eb

jr_0a4_67a9:
    nop                                           ; $67a9: $00
    ld e, [hl]                                    ; $67aa: $5e
    ld h, b                                       ; $67ab: $60
    ld d, h                                       ; $67ac: $54
    ld l, d                                       ; $67ad: $6a
    ld e, h                                       ; $67ae: $5c
    ld h, d                                       ; $67af: $62
    ld l, h                                       ; $67b0: $6c
    ld d, d                                       ; $67b1: $52
    ld [$7030], sp                                ; $67b2: $08 $30 $70
    jr nc, jr_0a4_6827                            ; $67b5: $30 $70

    inc bc                                        ; $67b7: $03
    nop                                           ; $67b8: $00
    jr nc, jr_0a4_680b                            ; $67b9: $30 $50

    jr nc, jr_0a4_67dd                            ; $67bb: $30 $20

    db $10                                        ; $67bd: $10
    ld [hl], b                                    ; $67be: $70
    inc b                                         ; $67bf: $04
    ld [$00ff], sp                                ; $67c0: $08 $ff $00
    cp $01                                        ; $67c3: $fe $01
    rst $38                                       ; $67c5: $ff
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    call c, $ec22                                 ; $67c8: $dc $22 $ec
    ld [hl-], a                                   ; $67cb: $32
    push hl                                       ; $67cc: $e5
    ld [hl-], a                                   ; $67cd: $32
    jp hl                                         ; $67ce: $e9


    nop                                           ; $67cf: $00
    ld [de], a                                    ; $67d0: $12
    or c                                          ; $67d1: $b1
    ret c                                         ; $67d2: $d8

    rst $38                                       ; $67d3: $ff
    nop                                           ; $67d4: $00
    rst $38                                       ; $67d5: $ff
    nop                                           ; $67d6: $00
    ld a, a                                       ; $67d7: $7f
    nop                                           ; $67d8: $00
    add b                                         ; $67d9: $80
    ld [hl], a                                    ; $67da: $77
    adc h                                         ; $67db: $8c
    ld c, a                                       ; $67dc: $4f

jr_0a4_67dd:
    xor b                                         ; $67dd: $a8
    rrca                                          ; $67de: $0f
    ld e, b                                       ; $67df: $58
    inc a                                         ; $67e0: $3c
    jr jr_0a4_67f6                                ; $67e1: $18 $13

    add hl, de                                    ; $67e3: $19
    inc sp                                        ; $67e4: $33
    db $10                                        ; $67e5: $10
    ld [$4804], sp                                ; $67e6: $08 $04 $48
    call $e468                                    ; $67e9: $cd $68 $e4
    nop                                           ; $67ec: $00
    jr nc, jr_0a4_6837                            ; $67ed: $30 $48

jr_0a4_67ef:
    or b                                          ; $67ef: $b0
    ld b, b                                       ; $67f0: $40
    add b                                         ; $67f1: $80
    sub h                                         ; $67f2: $94
    ldh [$ea], a                                  ; $67f3: $e0 $ea
    nop                                           ; $67f5: $00

jr_0a4_67f6:
    ld [hl], b                                    ; $67f6: $70
    ld sp, hl                                     ; $67f7: $f9
    ld a, $a2                                     ; $67f8: $3e $a2
    ld e, l                                       ; $67fa: $5d
    inc de                                        ; $67fb: $13
    ld h, $41                                     ; $67fc: $26 $41
    nop                                           ; $67fe: $00
    ld c, $17                                     ; $67ff: $0e $17
    ld bc, $030d                                  ; $6801: $01 $0d $03
    ld d, e                                       ; $6804: $53
    ld c, $ab                                     ; $6805: $0e $ab
    nop                                           ; $6807: $00
    ld e, $57                                     ; $6808: $1e $57
    cp h                                          ; $680a: $bc

jr_0a4_680b:
    and l                                         ; $680b: $a5
    ld e, d                                       ; $680c: $5a
    ei                                            ; $680d: $fb
    inc b                                         ; $680e: $04
    rst $28                                       ; $680f: $ef
    db $10                                        ; $6810: $10
    db $10                                        ; $6811: $10
    ld a, l                                       ; $6812: $7d
    add d                                         ; $6813: $82
    ld b, [hl]                                    ; $6814: $46
    ld [$22dd], sp                                ; $6815: $08 $dd $22
    or [hl]                                       ; $6818: $b6
    ld c, c                                       ; $6819: $49
    nop                                           ; $681a: $00
    rst $38                                       ; $681b: $ff
    nop                                           ; $681c: $00
    rst $30                                       ; $681d: $f7
    ld [$807f], sp                                ; $681e: $08 $7f $80
    rst $28                                       ; $6821: $ef
    stop                                          ; $6822: $10 $00
    db $fd                                        ; $6824: $fd
    ld [bc], a                                    ; $6825: $02
    ei                                            ; $6826: $fb

jr_0a4_6827:
    inc b                                         ; $6827: $04
    ld l, a                                       ; $6828: $6f
    sub b                                         ; $6829: $90
    db $fd                                        ; $682a: $fd
    ld [bc], a                                    ; $682b: $02
    sub b                                         ; $682c: $90
    db $10                                        ; $682d: $10
    ld [$24db], sp                                ; $682e: $08 $db $24
    ld h, h                                       ; $6831: $64
    ld [$42bd], sp                                ; $6832: $08 $bd $42
    rst $28                                       ; $6835: $ef
    db $10                                        ; $6836: $10

jr_0a4_6837:
    ld bc, $00ff                                  ; $6837: $01 $ff $00
    ld a, l                                       ; $683a: $7d
    add d                                         ; $683b: $82
    rst $30                                       ; $683c: $f7
    ld c, d                                       ; $683d: $4a
    rst $38                                       ; $683e: $ff
    jr nz, @+$0a                                  ; $683f: $20 $08

    ld d, b                                       ; $6841: $50
    ld [hl+], a                                   ; $6842: $22
    jr nz, jr_0a4_6845                            ; $6843: $20 $00

jr_0a4_6845:
    sub c                                         ; $6845: $91
    ld a, h                                       ; $6846: $7c
    nop                                           ; $6847: $00
    ld [$08f7], sp                                ; $6848: $08 $f7 $08
    rst $18                                       ; $684b: $df
    nop                                           ; $684c: $00
    ld hl, $02ff                                  ; $684d: $21 $ff $02

jr_0a4_6850:
    rst $38                                       ; $6850: $ff
    jr nz, jr_0a4_6850                            ; $6851: $20 $fd

    ld [bc], a                                    ; $6853: $02
    rst $28                                       ; $6854: $ef
    nop                                           ; $6855: $00
    ld de, $20ff                                  ; $6856: $11 $ff $20
    ld a, l                                       ; $6859: $7d
    sub d                                         ; $685a: $92
    rst $38                                       ; $685b: $ff
    nop                                           ; $685c: $00
    ei                                            ; $685d: $fb
    nop                                           ; $685e: $00
    inc b                                         ; $685f: $04
    db $dd                                        ; $6860: $dd
    ld h, [hl]                                    ; $6861: $66
    and $32                                       ; $6862: $e6 $32
    pop af                                        ; $6864: $f1
    ld a, [de]                                    ; $6865: $1a
    and l                                         ; $6866: $a5
    nop                                           ; $6867: $00
    ret nz                                        ; $6868: $c0

    ret nc                                        ; $6869: $d0

    ld a, b                                       ; $686a: $78
    ld a, [$ef1d]                                 ; $686b: $fa $1d $ef
    db $10                                        ; $686e: $10
    rst $08                                       ; $686f: $cf
    nop                                           ; $6870: $00
    db $10                                        ; $6871: $10
    sbc c                                         ; $6872: $99
    ld [hl], $b3                                  ; $6873: $36 $b3
    inc h                                         ; $6875: $24
    rlca                                          ; $6876: $07
    ld l, $4c                                     ; $6877: $2e $4c
    nop                                           ; $6879: $00
    dec e                                         ; $687a: $1d
    dec bc                                        ; $687b: $0b
    rlca                                          ; $687c: $07
    xor a                                         ; $687d: $af
    ld e, h                                       ; $687e: $5c
    ld bc, $0200                                  ; $687f: $01 $00 $02
    dec bc                                        ; $6882: $0b
    ld bc, $0017                                  ; $6883: $01 $17 $00
    ld a, [bc]                                    ; $6886: $0a
    rla                                           ; $6887: $17
    ld bc, $1b02                                  ; $6888: $01 $02 $1b
    add hl, bc                                    ; $688b: $09
    inc b                                         ; $688c: $04
    db $10                                        ; $688d: $10
    add b                                         ; $688e: $80
    jr nz, jr_0a4_68ba                            ; $688f: $20 $29

    ld [hl], a                                    ; $6891: $77
    ld c, c                                       ; $6892: $49
    ld e, l                                       ; $6893: $5d
    db $e3                                        ; $6894: $e3
    dec a                                         ; $6895: $3d
    ld b, d                                       ; $6896: $42
    ccf                                           ; $6897: $3f
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    scf                                           ; $689a: $37
    add hl, bc                                    ; $689b: $09
    ld e, a                                       ; $689c: $5f
    nop                                           ; $689d: $00
    dec a                                         ; $689e: $3d
    ld [bc], a                                    ; $689f: $02
    rra                                           ; $68a0: $1f
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    dec [hl]                                      ; $68a3: $35
    ld [$001e], sp                                ; $68a4: $08 $1e $00
    sbc $20                                       ; $68a7: $de $20
    db $fc                                        ; $68a9: $fc
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00

Call_0a4_68ac:
    ret c                                         ; $68ac: $d8

    inc h                                         ; $68ad: $24
    ld hl, sp+$00                                 ; $68ae: $f8 $00
    ld [hl], b                                    ; $68b0: $70
    add h                                         ; $68b1: $84
    ld b, b                                       ; $68b2: $40
    inc b                                         ; $68b3: $04
    ld [$1082], sp                                ; $68b4: $08 $82 $10
    db $10                                        ; $68b7: $10
    jr nz, jr_0a4_68ef                            ; $68b8: $20 $35

jr_0a4_68ba:
    jr z, jr_0a4_68c0                             ; $68ba: $28 $04

    ld b, $00                                     ; $68bc: $06 $00
    ld a, [bc]                                    ; $68be: $0a
    dec c                                         ; $68bf: $0d

jr_0a4_68c0:
    ld c, $09                                     ; $68c0: $0e $09
    ld l, $39                                     ; $68c2: $2e $39
    sbc h                                         ; $68c4: $9c
    ld h, d                                       ; $68c5: $62
    nop                                           ; $68c6: $00
    call c, Call_0a4_5622                         ; $68c7: $dc $22 $56
    xor b                                         ; $68ca: $a8
    push de                                       ; $68cb: $d5
    db $eb                                        ; $68cc: $eb
    ld e, a                                       ; $68cd: $5f
    ld h, c                                       ; $68ce: $61
    nop                                           ; $68cf: $00
    ld d, h                                       ; $68d0: $54
    ld l, d                                       ; $68d1: $6a
    ld e, [hl]                                    ; $68d2: $5e
    ld h, b                                       ; $68d3: $60

jr_0a4_68d4:
    ld l, h                                       ; $68d4: $6c
    ld d, d                                       ; $68d5: $52
    ld a, [hl-]                                   ; $68d6: $3a
    inc d                                         ; $68d7: $14
    nop                                           ; $68d8: $00
    inc [hl]                                      ; $68d9: $34
    ld [$005e], sp                                ; $68da: $08 $5e $00
    inc a                                         ; $68dd: $3c
    nop                                           ; $68de: $00
    ld [hl], $08                                  ; $68df: $36 $08
    inc b                                         ; $68e1: $04
    ld e, h                                       ; $68e2: $5c
    nop                                           ; $68e3: $00
    cp h                                          ; $68e4: $bc
    ld [$647a], sp                                ; $68e5: $08 $7a $64
    db $10                                        ; $68e8: $10
    ld bc, $0001                                  ; $68e9: $01 $01 $00
    ld [bc], a                                    ; $68ec: $02
    inc bc                                        ; $68ed: $03
    inc bc                                        ; $68ee: $03

jr_0a4_68ef:
    ld [bc], a                                    ; $68ef: $02
    ld a, [bc]                                    ; $68f0: $0a
    rrca                                          ; $68f1: $0f
    dec d                                         ; $68f2: $15
    dec de                                        ; $68f3: $1b
    nop                                           ; $68f4: $00
    inc d                                         ; $68f5: $14
    dec de                                        ; $68f6: $1b
    ld d, a                                       ; $68f7: $57
    ld l, h                                       ; $68f8: $6c
    ld d, e                                       ; $68f9: $53

jr_0a4_68fa:
    ld l, h                                       ; $68fa: $6c
    halt                                          ; $68fb: $76
    call $ba00                                    ; $68fc: $cd $00 $ba
    ld h, l                                       ; $68ff: $65

jr_0a4_6900:
    or [hl]                                       ; $6900: $b6
    ld c, l                                       ; $6901: $4d
    cp [hl]                                       ; $6902: $be
    ld h, c                                       ; $6903: $61
    call nc, Call_000_002e                        ; $6904: $d4 $2e $00
    cp b                                          ; $6907: $b8
    ld h, b                                       ; $6908: $60
    ld e, b                                       ; $6909: $58
    jr nz, jr_0a4_6900                            ; $690a: $20 $f4

    jr z, @-$06                                   ; $690c: $28 $f8

    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    ldh a, [rP1]                                  ; $6910: $f0 $00
    or h                                          ; $6912: $b4
    ld b, b                                       ; $6913: $40
    ldh a, [$08]                                  ; $6914: $f0 $08
    ldh a, [rDIV]                                 ; $6916: $f0 $04
    nop                                           ; $6918: $00
    db $fc                                        ; $6919: $fc
    ld [bc], a                                    ; $691a: $02
    rra                                           ; $691b: $1f
    ld de, $121d                                  ; $691c: $11 $1d $12
    dec e                                         ; $691f: $1d
    inc de                                        ; $6920: $13
    nop                                           ; $6921: $00
    ld d, $19                                     ; $6922: $16 $19
    dec d                                         ; $6924: $15
    dec de                                        ; $6925: $1b
    ld d, $18                                     ; $6926: $16 $18
    inc d                                         ; $6928: $14
    ld a, [de]                                    ; $6929: $1a
    nop                                           ; $692a: $00
    db $10                                        ; $692b: $10
    inc e                                         ; $692c: $1c
    sub b                                         ; $692d: $90
    ld l, b                                       ; $692e: $68
    ldh [$30], a                                  ; $692f: $e0 $30
    ret nz                                        ; $6931: $c0

    nop                                           ; $6932: $00
    ld [$4080], sp                                ; $6933: $08 $80 $40
    nop                                           ; $6936: $00
    add b                                         ; $6937: $80
    xor a                                         ; $6938: $af
    jr jr_0a4_68fa                                ; $6939: $18 $bf

    ld b, b                                       ; $693b: $40
    cp $02                                        ; $693c: $fe $02

jr_0a4_693e:
    ld bc, $0055                                  ; $693e: $01 $55 $00
    xor d                                         ; $6941: $aa
    nop                                           ; $6942: $00
    db $10                                        ; $6943: $10
    cp [hl]                                       ; $6944: $be
    jr nz, jr_0a4_693e                            ; $6945: $20 $f7

    nop                                           ; $6947: $00
    ld [$827d], sp                                ; $6948: $08 $7d $82
    ld d, l                                       ; $694b: $55
    add b                                         ; $694c: $80
    ld [hl+], a                                   ; $694d: $22
    nop                                           ; $694e: $00
    ld de, $ce80                                  ; $694f: $11 $80 $ce
    jr nz, jr_0a4_68d4                            ; $6952: $20 $80

    nop                                           ; $6954: $00
    add sp, $00                                   ; $6955: $e8 $00
    ld d, h                                       ; $6957: $54
    nop                                           ; $6958: $00
    xor c                                         ; $6959: $a9
    cp b                                          ; $695a: $b8
    rst $30                                       ; $695b: $f7
    ld bc, $e008                                  ; $695c: $01 $08 $e0
    jr nc, jr_0a4_696a                            ; $695f: $30 $09

    ld c, b                                       ; $6961: $48
    ld [hl], b                                    ; $6962: $70
    ld hl, $ff20                                  ; $6963: $21 $20 $ff
    ld de, $7098                                  ; $6966: $11 $98 $70
    add hl, de                                    ; $6969: $19

jr_0a4_696a:
    cp e                                          ; $696a: $bb
    ld b, h                                       ; $696b: $44
    jp nz, Jump_0a4_6409                          ; $696c: $c2 $09 $64

    add hl, de                                    ; $696f: $19
    cp a                                          ; $6970: $bf
    ld b, b                                       ; $6971: $40
    db $fd                                        ; $6972: $fd
    ld bc, $bd02                                  ; $6973: $01 $02 $bd
    ld b, d                                       ; $6976: $42
    rst $30                                       ; $6977: $f7
    ld [$40bf], sp                                ; $6978: $08 $bf $40
    ld [de], a                                    ; $697b: $12
    jr @-$14                                      ; $697c: $18 $ea

    ld [$5008], sp                                ; $697e: $08 $08 $50
    ld bc, $01e2                                  ; $6981: $01 $e2 $01
    ld e, e                                       ; $6984: $5b
    add h                                         ; $6985: $84
    ld de, $86ef                                  ; $6986: $11 $ef $86
    ld bc, $80f5                                  ; $6989: $01 $f5 $80
    sub h                                         ; $698c: $94
    ld bc, $10ef                                  ; $698d: $01 $ef $10
    cp $00                                        ; $6990: $fe $00
    cp e                                          ; $6992: $bb
    inc b                                         ; $6993: $04
    rst $18                                       ; $6994: $df
    ld de, $f600                                  ; $6995: $11 $00 $f6
    ld [$0814], sp                                ; $6998: $08 $14 $08
    rst $38                                       ; $699b: $ff
    nop                                           ; $699c: $00
    ld [hl], a                                    ; $699d: $77
    ld [$0100], sp                                ; $699e: $08 $00 $01
    cp e                                          ; $69a1: $bb
    ld b, b                                       ; $69a2: $40
    rst $30                                       ; $69a3: $f7
    ld [$00fe], sp                                ; $69a4: $08 $fe $00
    xor l                                         ; $69a7: $ad
    and h                                         ; $69a8: $a4
    ld bc, $f762                                  ; $69a9: $01 $62 $f7
    ld [de], a                                    ; $69ac: $12
    ld [$1038], sp                                ; $69ad: $08 $38 $10
    ld a, a                                       ; $69b0: $7f
    nop                                           ; $69b1: $00
    rst $18                                       ; $69b2: $df
    inc [hl]                                      ; $69b3: $34
    nop                                           ; $69b4: $00
    db $dd                                        ; $69b5: $dd
    xor c                                         ; $69b6: $a9
    ld [de], a                                    ; $69b7: $12
    ld [de], a                                    ; $69b8: $12
    ld d, a                                       ; $69b9: $57
    ld a, [hl+]                                   ; $69ba: $2a
    db $10                                        ; $69bb: $10
    db $dd                                        ; $69bc: $dd
    inc [hl]                                      ; $69bd: $34

jr_0a4_69be:
    db $10                                        ; $69be: $10
    ld a, e                                       ; $69bf: $7b
    inc b                                         ; $69c0: $04
    ld c, [hl]                                    ; $69c1: $4e
    jr jr_0a4_69cb                                ; $69c2: $18 $07

    rst $30                                       ; $69c4: $f7
    nop                                           ; $69c5: $00
    rst $18                                       ; $69c6: $df
    jr nz, jr_0a4_69be                            ; $69c7: $20 $f5

    ld e, b                                       ; $69c9: $58
    db $10                                        ; $69ca: $10

jr_0a4_69cb:
    ld d, b                                       ; $69cb: $50
    nop                                           ; $69cc: $00
    inc l                                         ; $69cd: $2c
    nop                                           ; $69ce: $00
    ld l, [hl]                                    ; $69cf: $6e
    or $64                                        ; $69d0: $f6 $64
    db $10                                        ; $69d2: $10
    ld a, $18                                     ; $69d3: $3e $18
    cp e                                          ; $69d5: $bb
    ld c, b                                       ; $69d6: $48
    nop                                           ; $69d7: $00
    ld d, b                                       ; $69d8: $50
    nop                                           ; $69d9: $00
    inc d                                         ; $69da: $14
    db $10                                        ; $69db: $10
    ld a, e                                       ; $69dc: $7b
    db $fd                                        ; $69dd: $fd
    ld d, h                                       ; $69de: $54
    ld [de], a                                    ; $69df: $12
    jr nc, jr_0a4_69f2                            ; $69e0: $30 $10

    ld l, [hl]                                    ; $69e2: $6e
    ld [bc], a                                    ; $69e3: $02
    ld h, b                                       ; $69e4: $60
    db $10                                        ; $69e5: $10
    ld a, d                                       ; $69e6: $7a
    nop                                           ; $69e7: $00
    ld h, b                                       ; $69e8: $60
    nop                                           ; $69e9: $00

jr_0a4_69ea:
    add b                                         ; $69ea: $80
    ld h, b                                       ; $69eb: $60
    db $10                                        ; $69ec: $10
    ld e, c                                       ; $69ed: $59
    ld [hl+], a                                   ; $69ee: $22
    ld h, b                                       ; $69ef: $60
    db $10                                        ; $69f0: $10
    adc b                                         ; $69f1: $88

jr_0a4_69f2:
    ld h, b                                       ; $69f2: $60
    jr jr_0a4_69ea                                ; $69f3: $18 $f5

    ld e, b                                       ; $69f5: $58
    ld bc, $0501                                  ; $69f6: $01 $01 $05
    ld e, c                                       ; $69f9: $59
    jr nz, @-$29                                  ; $69fa: $20 $d5

    rst $38                                       ; $69fc: $ff
    adc h                                         ; $69fd: $8c
    add hl, bc                                    ; $69fe: $09
    dec b                                         ; $69ff: $05
    ld b, $06                                     ; $6a00: $06 $06
    dec b                                         ; $6a02: $05
    dec c                                         ; $6a03: $0d
    ld bc, $1a0a                                  ; $6a04: $01 $0a $1a
    rla                                           ; $6a07: $17
    dec d                                         ; $6a08: $15
    dec hl                                        ; $6a09: $2b
    and $d9                                       ; $6a0a: $e6 $d9
    dec h                                         ; $6a0c: $25
    add hl, sp                                    ; $6a0d: $39
    nop                                           ; $6a0e: $00
    ld [bc], a                                    ; $6a0f: $02
    inc bc                                        ; $6a10: $03
    rrca                                          ; $6a11: $0f
    rrca                                          ; $6a12: $0f
    ld e, $1f                                     ; $6a13: $1e $1f
    inc bc                                        ; $6a15: $03
    inc bc                                        ; $6a16: $03
    nop                                           ; $6a17: $00
    dec bc                                        ; $6a18: $0b
    rrca                                          ; $6a19: $0f
    rra                                           ; $6a1a: $1f
    rra                                           ; $6a1b: $1f

jr_0a4_6a1c:
    ld a, [hl]                                    ; $6a1c: $7e
    ld a, a                                       ; $6a1d: $7f
    cp h                                          ; $6a1e: $bc
    rst $38                                       ; $6a1f: $ff
    ld bc, $ffe8                                  ; $6a20: $01 $e8 $ff
    call nc, $a8fb                                ; $6a23: $d4 $fb $a8
    rst $30                                       ; $6a26: $f7
    rst $38                                       ; $6a27: $ff
    ld bc, $0000                                  ; $6a28: $01 $00 $00
    ld d, a                                       ; $6a2b: $57
    cp $ae                                        ; $6a2c: $fe $ae
    db $fd                                        ; $6a2e: $fd
    ld e, h                                       ; $6a2f: $5c
    ei                                            ; $6a30: $fb
    cp c                                          ; $6a31: $b9
    or $00                                        ; $6a32: $f6 $00
    ld [hl], h                                    ; $6a34: $74
    rst $28                                       ; $6a35: $ef
    pop af                                        ; $6a36: $f1
    adc $cb                                       ; $6a37: $ce $cb
    or l                                          ; $6a39: $b5
    and c                                         ; $6a3a: $a1
    ld e, a                                       ; $6a3b: $5f
    nop                                           ; $6a3c: $00
    or a                                          ; $6a3d: $b7
    jp z, $ef55                                   ; $6a3e: $ca $55 $ef

    xor a                                         ; $6a41: $af
    db $dd                                        ; $6a42: $dd
    sbc [hl]                                      ; $6a43: $9e
    ld a, e                                       ; $6a44: $7b
    ld [$7bae], sp                                ; $6a45: $08 $ae $7b
    ld e, c                                       ; $6a48: $59
    or [hl]                                       ; $6a49: $b6
    ld d, b                                       ; $6a4a: $50
    jr jr_0a4_6a52                                ; $6a4b: $18 $05

    ld c, $1b                                     ; $6a4d: $0e $1b
    nop                                           ; $6a4f: $00
    inc d                                         ; $6a50: $14
    dec e                                         ; $6a51: $1d

jr_0a4_6a52:
    ld h, $77                                     ; $6a52: $26 $77
    ld c, h                                       ; $6a54: $4c
    ei                                            ; $6a55: $fb
    xor h                                         ; $6a56: $ac
    add b                                         ; $6a57: $80
    nop                                           ; $6a58: $00
    add b                                         ; $6a59: $80
    ld b, b                                       ; $6a5a: $40
    ret nz                                        ; $6a5b: $c0

    and b                                         ; $6a5c: $a0
    ld h, b                                       ; $6a5d: $60
    sub b                                         ; $6a5e: $90
    ld [hl], b                                    ; $6a5f: $70
    ret c                                         ; $6a60: $d8

    nop                                           ; $6a61: $00
    jr z, jr_0a4_6a1c                             ; $6a62: $28 $b8

    ld h, h                                       ; $6a64: $64
    xor $32                                       ; $6a65: $ee $32
    rst $18                                       ; $6a67: $df
    dec [hl]                                      ; $6a68: $35
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    ld bc, $0203                                  ; $6a6b: $01 $03 $02
    ld b, $05                                     ; $6a6e: $06 $05
    rlca                                          ; $6a70: $07
    add hl, bc                                    ; $6a71: $09
    dec c                                         ; $6a72: $0d
    nop                                           ; $6a73: $00
    inc de                                        ; $6a74: $13
    ccf                                           ; $6a75: $3f
    ld [hl+], a                                   ; $6a76: $22

jr_0a4_6a77:
    ld a, l                                       ; $6a77: $7d
    ld b, [hl]                                    ; $6a78: $46
    rst $30                                       ; $6a79: $f7
    adc h                                         ; $6a7a: $8c
    ei                                            ; $6a7b: $fb
    nop                                           ; $6a7c: $00
    ld c, h                                       ; $6a7d: $4c
    rst $30                                       ; $6a7e: $f7
    adc b                                         ; $6a7f: $88
    db $eb                                        ; $6a80: $eb

jr_0a4_6a81:
    sbc h                                         ; $6a81: $9c
    rst $30                                       ; $6a82: $f7
    ld [$08ef], sp                                ; $6a83: $08 $ef $08
    jr jr_0a4_6a77                                ; $6a86: $18 $ef

    jr jr_0a4_6a81                                ; $6a88: $18 $f7

    ld [bc], a                                    ; $6a8a: $02
    nop                                           ; $6a8b: $00
    rst $08                                       ; $6a8c: $cf
    ld [hl-], a                                   ; $6a8d: $32
    rst $38                                       ; $6a8e: $ff
    ld b, $11                                     ; $6a8f: $06 $11
    rst $10                                       ; $6a91: $d7
    add hl, sp                                    ; $6a92: $39
    rst $38                                       ; $6a93: $ff
    db $10                                        ; $6a94: $10
    inc c                                         ; $6a95: $0c
    ld [$0814], sp                                ; $6a96: $08 $14 $08
    ld e, [hl]                                    ; $6a99: $5e
    nop                                           ; $6a9a: $00
    xor c                                         ; $6a9b: $a9
    xor l                                         ; $6a9c: $ad
    ld e, d                                       ; $6a9d: $5a
    ld e, d                                       ; $6a9e: $5a
    or l                                          ; $6a9f: $b5
    xor c                                         ; $6aa0: $a9
    ld a, [hl]                                    ; $6aa1: $7e
    cp e                                          ; $6aa2: $bb
    nop                                           ; $6aa3: $00
    ld l, h                                       ; $6aa4: $6c
    pop de                                        ; $6aa5: $d1
    ld a, [hl]                                    ; $6aa6: $7e
    ld [hl], h                                    ; $6aa7: $74
    set 5, [hl]                                   ; $6aa8: $cb $ee
    sub c                                         ; $6aaa: $91
    rst $38                                       ; $6aab: $ff

jr_0a4_6aac:
    nop                                           ; $6aac: $00
    db $10                                        ; $6aad: $10
    ld [hl], a                                    ; $6aae: $77
    sbc b                                         ; $6aaf: $98
    cp a                                          ; $6ab0: $bf
    ld d, b                                       ; $6ab1: $50
    ld e, l                                       ; $6ab2: $5d
    or d                                          ; $6ab3: $b2
    jr nc, jr_0a4_6ab6                            ; $6ab4: $30 $00

jr_0a4_6ab6:
    rst $28                                       ; $6ab6: $ef
    and c                                         ; $6ab7: $a1
    ld a, [hl]                                    ; $6ab8: $7e
    ld a, a                                       ; $6ab9: $7f
    and b                                         ; $6aba: $a0
    jr nc, jr_0a4_6aac                            ; $6abb: $30 $ef

    rst $38                                       ; $6abd: $ff
    nop                                           ; $6abe: $00
    ld [$19ee], sp                                ; $6abf: $08 $ee $19
    db $fd                                        ; $6ac2: $fd
    ld a, [bc]                                    ; $6ac3: $0a
    cp d                                          ; $6ac4: $ba
    ld c, l                                       ; $6ac5: $4d
    inc c                                         ; $6ac6: $0c
    nop                                           ; $6ac7: $00
    rst $30                                       ; $6ac8: $f7
    dec b                                         ; $6ac9: $05
    cp $0e                                        ; $6aca: $fe $0e
    push af                                       ; $6acc: $f5
    db $fc                                        ; $6acd: $fc
    rlca                                          ; $6ace: $07
    sub [hl]                                      ; $6acf: $96
    nop                                           ; $6ad0: $00
    ld l, c                                       ; $6ad1: $69
    add c                                         ; $6ad2: $81
    ld a, [hl]                                    ; $6ad3: $7e
    ld d, b                                       ; $6ad4: $50
    xor a                                         ; $6ad5: $af
    cp h                                          ; $6ad6: $bc
    jp $0056                                      ; $6ad7: $c3 $56 $00


    jp hl                                         ; $6ada: $e9


    and e                                         ; $6adb: $a3
    db $fc                                        ; $6adc: $fc
    adc b                                         ; $6add: $88
    ld a, a                                       ; $6ade: $7f
    ld h, d                                       ; $6adf: $62
    sbc a                                         ; $6ae0: $9f
    and c                                         ; $6ae1: $a1
    nop                                           ; $6ae2: $00
    ld a, [hl]                                    ; $6ae3: $7e
    ld a, [c]                                     ; $6ae4: $f2
    cpl                                           ; $6ae5: $2f
    ld h, l                                       ; $6ae6: $65
    rst $18                                       ; $6ae7: $df
    ld h, d                                       ; $6ae8: $62
    db $dd                                        ; $6ae9: $dd
    adc $00                                       ; $6aea: $ce $00
    ld [hl], c                                    ; $6aec: $71
    db $e3                                        ; $6aed: $e3
    ld e, h                                       ; $6aee: $5c
    ldh [$5f], a                                  ; $6aef: $e0 $5f
    ld d, [hl]                                    ; $6af1: $56
    rst $38                                       ; $6af2: $ff
    add l                                         ; $6af3: $85
    nop                                           ; $6af4: $00
    ld a, [hl]                                    ; $6af5: $7e
    rrca                                          ; $6af6: $0f
    db $f4                                        ; $6af7: $f4
    ld b, [hl]                                    ; $6af8: $46
    ei                                            ; $6af9: $fb
    ld d, $fb                                     ; $6afa: $16 $fb
    ld a, e                                       ; $6afc: $7b
    ld bc, $f786                                  ; $6afd: $01 $86 $f7
    ld a, [bc]                                    ; $6b00: $0a
    rlca                                          ; $6b01: $07
    ld a, [$ff2a]                                 ; $6b02: $fa $2a $ff
    db $10                                        ; $6b05: $10
    inc c                                         ; $6b06: $0c
    nop                                           ; $6b07: $00
    inc bc                                        ; $6b08: $03
    inc bc                                        ; $6b09: $03
    ld b, $07                                     ; $6b0a: $06 $07
    rra                                           ; $6b0c: $1f
    rra                                           ; $6b0d: $1f
    inc a                                         ; $6b0e: $3c
    ccf                                           ; $6b0f: $3f
    ld [$fee9], sp                                ; $6b10: $08 $e9 $fe
    jp nc, $2afd                                  ; $6b13: $d2 $fd $2a

    add hl, sp                                    ; $6b16: $39
    rlca                                          ; $6b17: $07
    rlca                                          ; $6b18: $07
    dec bc                                        ; $6b19: $0b
    nop                                           ; $6b1a: $00
    rrca                                          ; $6b1b: $0f
    scf                                           ; $6b1c: $37
    ccf                                           ; $6b1d: $3f
    rlca                                          ; $6b1e: $07
    rlca                                          ; $6b1f: $07
    ld a, [bc]                                    ; $6b20: $0a
    rrca                                          ; $6b21: $0f
    inc l                                         ; $6b22: $2c
    nop                                           ; $6b23: $00
    ccf                                           ; $6b24: $3f
    cp d                                          ; $6b25: $ba
    rst $38                                       ; $6b26: $ff
    ld [hl], h                                    ; $6b27: $74
    rst $38                                       ; $6b28: $ff
    xor l                                         ; $6b29: $ad
    rst $38                                       ; $6b2a: $ff
    ld a, a                                       ; $6b2b: $7f
    add b                                         ; $6b2c: $80
    db $fd                                        ; $6b2d: $fd
    nop                                           ; $6b2e: $00
    xor b                                         ; $6b2f: $a8
    rst $30                                       ; $6b30: $f7
    ld b, c                                       ; $6b31: $41
    rst $38                                       ; $6b32: $ff
    dec hl                                        ; $6b33: $2b
    rst $18                                       ; $6b34: $df
    ld d, a                                       ; $6b35: $57
    dec c                                         ; $6b36: $0d
    rst $38                                       ; $6b37: $ff
    xor [hl]                                      ; $6b38: $ae
    rst $38                                       ; $6b39: $ff
    db $fc                                        ; $6b3a: $fc
    dec bc                                        ; $6b3b: $0b
    add hl, bc                                    ; $6b3c: $09
    ld b, b                                       ; $6b3d: $40
    nop                                           ; $6b3e: $00
    ld bc, $00d2                                  ; $6b3f: $01 $d2 $00
    ret nc                                        ; $6b42: $d0

    ret nc                                        ; $6b43: $d0

    ld a, [bc]                                    ; $6b44: $0a
    ld [bc], a                                    ; $6b45: $02
    jr jr_0a4_6bc7                                ; $6b46: $18 $7f

    dec h                                         ; $6b48: $25
    ld [$a2a4], sp                                ; $6b49: $08 $a4 $a2
    ld e, a                                       ; $6b4c: $5f
    add e                                         ; $6b4d: $83
    ld bc, $967f                                  ; $6b4e: $01 $7f $96
    ld l, a                                       ; $6b51: $6f
    daa                                           ; $6b52: $27
    rst $18                                       ; $6b53: $df
    and e                                         ; $6b54: $a3
    ld e, a                                       ; $6b55: $5f
    jr nc, jr_0a4_6b61                            ; $6b56: $30 $09

    nop                                           ; $6b58: $00
    db $ed                                        ; $6b59: $ed
    ld [de], a                                    ; $6b5a: $12
    ld [hl], c                                    ; $6b5b: $71
    adc a                                         ; $6b5c: $8f
    dec sp                                        ; $6b5d: $3b
    rst $00                                       ; $6b5e: $c7
    inc sp                                        ; $6b5f: $33
    rst $08                                       ; $6b60: $cf

jr_0a4_6b61:
    ld [$e71b], sp                                ; $6b61: $08 $1b $e7
    ld de, $40ef                                  ; $6b64: $11 $ef $40
    add hl, bc                                    ; $6b67: $09
    dec d                                         ; $6b68: $15
    ld [$000f], a                                 ; $6b69: $ea $0f $00
    rst $38                                       ; $6b6c: $ff
    rst $00                                       ; $6b6d: $c7
    rst $38                                       ; $6b6e: $ff
    dec de                                        ; $6b6f: $1b
    rst $28                                       ; $6b70: $ef
    rst $00                                       ; $6b71: $c7
    rst $38                                       ; $6b72: $ff
    sub e                                         ; $6b73: $93
    ld h, b                                       ; $6b74: $60
    rst $28                                       ; $6b75: $ef
    jr c, jr_0a4_6ba0                             ; $6b76: $38 $28

    ld [$ff30], sp                                ; $6b78: $08 $30 $ff
    xor e                                         ; $6b7b: $ab
    ld d, a                                       ; $6b7c: $57
    ld de, $00ff                                  ; $6b7d: $11 $ff $00
    adc e                                         ; $6b80: $8b
    ld [hl], a                                    ; $6b81: $77
    ld bc, $a7ff                                  ; $6b82: $01 $ff $a7
    ld a, e                                       ; $6b85: $7b
    add hl, bc                                    ; $6b86: $09
    rst $30                                       ; $6b87: $f7
    nop                                           ; $6b88: $00
    inc l                                         ; $6b89: $2c
    db $d3                                        ; $6b8a: $d3
    or c                                          ; $6b8b: $b1
    rst $08                                       ; $6b8c: $cf
    add hl, hl                                    ; $6b8d: $29
    rst $18                                       ; $6b8e: $df
    sub c                                         ; $6b8f: $91
    rst $28                                       ; $6b90: $ef
    nop                                           ; $6b91: $00
    dec l                                         ; $6b92: $2d
    db $db                                        ; $6b93: $db
    add hl, de                                    ; $6b94: $19
    rst $38                                       ; $6b95: $ff
    add hl, bc                                    ; $6b96: $09
    rst $38                                       ; $6b97: $ff
    sbc d                                         ; $6b98: $9a
    ld a, l                                       ; $6b99: $7d
    nop                                           ; $6b9a: $00
    add hl, de                                    ; $6b9b: $19
    rst $38                                       ; $6b9c: $ff
    sub [hl]                                      ; $6b9d: $96
    rst $28                                       ; $6b9e: $ef
    or d                                          ; $6b9f: $b2

jr_0a4_6ba0:
    rst $08                                       ; $6ba0: $cf
    sub d                                         ; $6ba1: $92
    rst $28                                       ; $6ba2: $ef
    nop                                           ; $6ba3: $00
    ld a, [de]                                    ; $6ba4: $1a
    rst $20                                       ; $6ba5: $e7
    ld a, [de]                                    ; $6ba6: $1a
    rst $20                                       ; $6ba7: $e7
    ld a, b                                       ; $6ba8: $78
    and a                                         ; $6ba9: $a7
    ld a, [hl+]                                   ; $6baa: $2a
    rst $30                                       ; $6bab: $f7
    nop                                           ; $6bac: $00
    and d                                         ; $6bad: $a2
    ld a, a                                       ; $6bae: $7f
    ld a, l                                       ; $6baf: $7d
    ld a, a                                       ; $6bb0: $7f
    ld [$51ff], a                                 ; $6bb1: $ea $ff $51
    cp $00                                        ; $6bb4: $fe $00
    and d                                         ; $6bb6: $a2
    db $fd                                        ; $6bb7: $fd
    ld hl, $cade                                  ; $6bb8: $21 $de $ca
    dec [hl]                                      ; $6bbb: $35
    sub l                                         ; $6bbc: $95
    ld l, d                                       ; $6bbd: $6a
    nop                                           ; $6bbe: $00
    ld [$43f7], sp                                ; $6bbf: $08 $f7 $43
    db $fd                                        ; $6bc2: $fd
    inc hl                                        ; $6bc3: $23
    sbc $4e                                       ; $6bc4: $de $4e
    or l                                          ; $6bc6: $b5

jr_0a4_6bc7:
    nop                                           ; $6bc7: $00
    inc l                                         ; $6bc8: $2c
    db $db                                        ; $6bc9: $db
    ld e, d                                       ; $6bca: $5a
    or l                                          ; $6bcb: $b5
    inc a                                         ; $6bcc: $3c
    di                                            ; $6bcd: $f3
    ld [hl], d                                    ; $6bce: $72
    db $ed                                        ; $6bcf: $ed
    nop                                           ; $6bd0: $00
    and $d9                                       ; $6bd1: $e6 $d9
    jp c, $90a7                                   ; $6bd3: $da $a7 $90

    ld l, a                                       ; $6bd6: $6f
    ld c, c                                       ; $6bd7: $49
    or $00                                        ; $6bd8: $f6 $00
    ld [hl-], a                                   ; $6bda: $32
    db $ed                                        ; $6bdb: $ed
    adc c                                         ; $6bdc: $89
    or $a5                                        ; $6bdd: $f6 $a5
    ld e, a                                       ; $6bdf: $5f
    or c                                          ; $6be0: $b1
    rst $08                                       ; $6be1: $cf
    nop                                           ; $6be2: $00
    rla                                           ; $6be3: $17
    xor $a4                                       ; $6be4: $ee $a4
    ld a, a                                       ; $6be6: $7f
    ld a, d                                       ; $6be7: $7a
    rst $28                                       ; $6be8: $ef
    db $ec                                        ; $6be9: $ec
    rst $18                                       ; $6bea: $df
    nop                                           ; $6beb: $00
    halt                                          ; $6bec: $76
    rst $08                                       ; $6bed: $cf
    reti                                          ; $6bee: $d9


    and a                                         ; $6bef: $a7
    ld c, d                                       ; $6bf0: $4a
    push af                                       ; $6bf1: $f5
    push hl                                       ; $6bf2: $e5
    ld a, d                                       ; $6bf3: $7a
    nop                                           ; $6bf4: $00
    sub d                                         ; $6bf5: $92
    ld a, l                                       ; $6bf6: $7d
    and l                                         ; $6bf7: $a5
    ei                                            ; $6bf8: $fb
    ld b, e                                       ; $6bf9: $43
    rst $38                                       ; $6bfa: $ff
    rst $10                                       ; $6bfb: $d7
    cp $00                                        ; $6bfc: $fe $00
    ld l, $fd                                     ; $6bfe: $2e $fd
    ld e, l                                       ; $6c00: $5d
    ld a, [$f6b9]                                 ; $6c01: $fa $b9 $f6
    push af                                       ; $6c04: $f5
    xor $00                                       ; $6c05: $ee $00
    jp hl                                         ; $6c07: $e9


    sbc $c6                                       ; $6c08: $de $c6
    cp c                                          ; $6c0a: $b9
    sub [hl]                                      ; $6c0b: $96
    ld a, c                                       ; $6c0c: $79
    inc h                                         ; $6c0d: $24
    ei                                            ; $6c0e: $fb
    nop                                           ; $6c0f: $00
    sub h                                         ; $6c10: $94
    ld a, e                                       ; $6c11: $7b
    add h                                         ; $6c12: $84
    ld a, e                                       ; $6c13: $7b
    ld [de], a                                    ; $6c14: $12
    db $fd                                        ; $6c15: $fd
    and h                                         ; $6c16: $a4
    ld e, e                                       ; $6c17: $5b
    nop                                           ; $6c18: $00
    ld [bc], a                                    ; $6c19: $02
    db $fd                                        ; $6c1a: $fd
    xor e                                         ; $6c1b: $ab
    sub $57                                       ; $6c1c: $d6 $57
    db $ed                                        ; $6c1e: $ed
    dec c                                         ; $6c1f: $0d
    ei                                            ; $6c20: $fb
    nop                                           ; $6c21: $00
    xor [hl]                                      ; $6c22: $ae
    ld a, e                                       ; $6c23: $7b

jr_0a4_6c24:
    ld e, [hl]                                    ; $6c24: $5e
    or c                                          ; $6c25: $b1
    and l                                         ; $6c26: $a5
    ld a, [$ed72]                                 ; $6c27: $fa $72 $ed
    nop                                           ; $6c2a: $00
    jp z, Jump_0a4_5aff                           ; $6c2b: $ca $ff $5a

    xor a                                         ; $6c2e: $af
    ld l, c                                       ; $6c2f: $69
    sub a                                         ; $6c30: $97
    inc [hl]                                      ; $6c31: $34
    rlc b                                         ; $6c32: $cb $00
    adc d                                         ; $6c34: $8a
    push af                                       ; $6c35: $f5
    ld de, $48fe                                  ; $6c36: $11 $fe $48
    cp a                                          ; $6c39: $bf
    add l                                         ; $6c3a: $85
    ld a, a                                       ; $6c3b: $7f
    nop                                           ; $6c3c: $00
    ldh [$1f], a                                  ; $6c3d: $e0 $1f
    pop de                                        ; $6c3f: $d1
    cp [hl]                                       ; $6c40: $be
    xor e                                         ; $6c41: $ab
    ld a, h                                       ; $6c42: $7c
    or c                                          ; $6c43: $b1
    ld a, [hl]                                    ; $6c44: $7e
    nop                                           ; $6c45: $00
    di                                            ; $6c46: $f3
    ld a, [hl]                                    ; $6c47: $7e
    ld sp, hl                                     ; $6c48: $f9
    ld a, [hl]                                    ; $6c49: $7e
    jr nc, @+$01                                  ; $6c4a: $30 $ff

    cp c                                          ; $6c4c: $b9
    ld a, [hl]                                    ; $6c4d: $7e
    nop                                           ; $6c4e: $00
    inc [hl]                                      ; $6c4f: $34
    rst $38                                       ; $6c50: $ff
    and b                                         ; $6c51: $a0
    ld e, a                                       ; $6c52: $5f
    jr c, jr_0a4_6c24                             ; $6c53: $38 $cf

    inc d                                         ; $6c55: $14
    rst $28                                       ; $6c56: $ef
    nop                                           ; $6c57: $00
    ld d, c                                       ; $6c58: $51
    rst $28                                       ; $6c59: $ef
    sbc e                                         ; $6c5a: $9b
    and $3b                                       ; $6c5b: $e6 $3b
    add $37                                       ; $6c5d: $c6 $37
    call z, Call_000_1c00                         ; $6c5f: $cc $00 $1c
    db $eb                                        ; $6c62: $eb
    ld [hl], l                                    ; $6c63: $75
    sbc $d8                                       ; $6c64: $de $d8
    cp a                                          ; $6c66: $bf
    jr nc, @+$01                                  ; $6c67: $30 $ff

    nop                                           ; $6c69: $00
    xor c                                         ; $6c6a: $a9
    ld e, [hl]                                    ; $6c6b: $5e
    ld d, d                                       ; $6c6c: $52
    db $ed                                        ; $6c6d: $ed
    ld [$80f7], sp                                ; $6c6e: $08 $f7 $80
    ld a, a                                       ; $6c71: $7f
    nop                                           ; $6c72: $00
    ld d, d                                       ; $6c73: $52
    xor l                                         ; $6c74: $ad
    adc $31                                       ; $6c75: $ce $31
    or e                                          ; $6c77: $b3
    ld c, h                                       ; $6c78: $4c
    dec b                                         ; $6c79: $05
    ld a, [$2200]                                 ; $6c7a: $fa $00 $22
    db $dd                                        ; $6c7d: $dd
    rrca                                          ; $6c7e: $0f
    ldh a, [$81]                                  ; $6c7f: $f0 $81
    ld a, [hl]                                    ; $6c81: $7e
    ld [de], a                                    ; $6c82: $12
    db $ed                                        ; $6c83: $ed
    nop                                           ; $6c84: $00
    add e                                         ; $6c85: $83
    ld a, h                                       ; $6c86: $7c
    xor c                                         ; $6c87: $a9
    ld a, a                                       ; $6c88: $7f
    inc [hl]                                      ; $6c89: $34
    rst $38                                       ; $6c8a: $ff
    ld hl, sp+$7f                                 ; $6c8b: $f8 $7f
    nop                                           ; $6c8d: $00
    pop af                                        ; $6c8e: $f1
    ld a, a                                       ; $6c8f: $7f
    ld a, [c]                                     ; $6c90: $f2
    ld a, l                                       ; $6c91: $7d
    push af                                       ; $6c92: $f5
    ld a, [hl]                                    ; $6c93: $7e
    ldh [$7f], a                                  ; $6c94: $e0 $7f
    nop                                           ; $6c96: $00
    ld [$487d], a                                 ; $6c97: $ea $7d $48
    cp a                                          ; $6c9a: $bf
    add hl, hl                                    ; $6c9b: $29
    or $ba                                        ; $6c9c: $f6 $ba
    rst $30                                       ; $6c9e: $f7

jr_0a4_6c9f:
    nop                                           ; $6c9f: $00
    ld [hl], c                                    ; $6ca0: $71
    rst $28                                       ; $6ca1: $ef
    and b                                         ; $6ca2: $a0
    rst $18                                       ; $6ca3: $df
    ld c, h                                       ; $6ca4: $4c
    di                                            ; $6ca5: $f3
    ld b, a                                       ; $6ca6: $47
    cp b                                          ; $6ca7: $b8
    nop                                           ; $6ca8: $00
    db $d3                                        ; $6ca9: $d3
    xor h                                         ; $6caa: $ac
    rla                                           ; $6cab: $17
    add sp, $0f                                   ; $6cac: $e8 $0f
    ldh a, [$03]                                  ; $6cae: $f0 $03
    db $fc                                        ; $6cb0: $fc
    nop                                           ; $6cb1: $00
    ld h, l                                       ; $6cb2: $65
    sbc d                                         ; $6cb3: $9a
    ld [hl-], a                                   ; $6cb4: $32
    call $ee11                                    ; $6cb5: $cd $11 $ee
    nop                                           ; $6cb8: $00
    rst $38                                       ; $6cb9: $ff
    inc b                                         ; $6cba: $04
    add b                                         ; $6cbb: $80
    ld a, a                                       ; $6cbc: $7f
    inc d                                         ; $6cbd: $14
    ei                                            ; $6cbe: $fb
    jr z, @-$09                                   ; $6cbf: $28 $f5

    ld [bc], a                                    ; $6cc1: $02
    ld c, c                                       ; $6cc2: $49
    rst $30                                       ; $6cc3: $f7
    nop                                           ; $6cc4: $00
    inc bc                                        ; $6cc5: $03
    db $fc                                        ; $6cc6: $fc
    sub b                                         ; $6cc7: $90
    ld a, a                                       ; $6cc8: $7f
    ld a, [bc]                                    ; $6cc9: $0a
    rst $38                                       ; $6cca: $ff
    ld b, b                                       ; $6ccb: $40
    cp a                                          ; $6ccc: $bf
    nop                                           ; $6ccd: $00
    jr nc, jr_0a4_6c9f                            ; $6cce: $30 $cf

    ld b, $f9                                     ; $6cd0: $06 $f9
    and c                                         ; $6cd2: $a1
    ld e, [hl]                                    ; $6cd3: $5e
    ld e, b                                       ; $6cd4: $58
    and a                                         ; $6cd5: $a7
    nop                                           ; $6cd6: $00
    ld c, [hl]                                    ; $6cd7: $4e
    pop af                                        ; $6cd8: $f1
    and e                                         ; $6cd9: $a3
    db $fc                                        ; $6cda: $fc
    ld b, b                                       ; $6cdb: $40
    cp a                                          ; $6cdc: $bf
    xor e                                         ; $6cdd: $ab
    ld e, a                                       ; $6cde: $5f
    nop                                           ; $6cdf: $00
    ld l, b                                       ; $6ce0: $68
    rst $18                                       ; $6ce1: $df
    rst $30                                       ; $6ce2: $f7
    adc b                                         ; $6ce3: $88
    inc e                                         ; $6ce4: $1c
    db $e3                                        ; $6ce5: $e3
    ret nz                                        ; $6ce6: $c0

    cp a                                          ; $6ce7: $bf
    nop                                           ; $6ce8: $00
    add b                                         ; $6ce9: $80
    rst $38                                       ; $6cea: $ff
    push bc                                       ; $6ceb: $c5
    cp d                                          ; $6cec: $ba
    ret nz                                        ; $6ced: $c0

    cp a                                          ; $6cee: $bf
    and b                                         ; $6cef: $a0
    ld a, a                                       ; $6cf0: $7f
    nop                                           ; $6cf1: $00
    ld e, $fb                                     ; $6cf2: $1e $fb
    jp $003d                                      ; $6cf4: $c3 $3d $00


    rst $38                                       ; $6cf7: $ff
    inc bc                                        ; $6cf8: $03
    db $fd                                        ; $6cf9: $fd
    nop                                           ; $6cfa: $00
    dec a                                         ; $6cfb: $3d
    jp $857b                                      ; $6cfc: $c3 $7b $85


    inc bc                                        ; $6cff: $03
    db $fd                                        ; $6d00: $fd
    ld bc, $04fe                                  ; $6d01: $01 $fe $04
    push de                                       ; $6d04: $d5
    cpl                                           ; $6d05: $2f
    inc hl                                        ; $6d06: $23
    rst $18                                       ; $6d07: $df
    add hl, bc                                    ; $6d08: $09
    and [hl]                                      ; $6d09: $a6
    nop                                           ; $6d0a: $00
    push de                                       ; $6d0b: $d5
    dec hl                                        ; $6d0c: $2b
    nop                                           ; $6d0d: $00
    cp c                                          ; $6d0e: $b9
    ld b, a                                       ; $6d0f: $47
    rla                                           ; $6d10: $17
    ld [$fea3], a                                 ; $6d11: $ea $a3 $fe
    ld d, h                                       ; $6d14: $54
    rst $38                                       ; $6d15: $ff
    nop                                           ; $6d16: $00
    xor $7f                                       ; $6d17: $ee $7f
    add b                                         ; $6d19: $80
    ld a, a                                       ; $6d1a: $7f
    db $fc                                        ; $6d1b: $fc
    inc bc                                        ; $6d1c: $03
    ld a, a                                       ; $6d1d: $7f
    add b                                         ; $6d1e: $80
    nop                                           ; $6d1f: $00
    or d                                          ; $6d20: $b2
    ld c, l                                       ; $6d21: $4d
    jr nz, @-$1f                                  ; $6d22: $20 $df

    dec b                                         ; $6d24: $05
    rst $38                                       ; $6d25: $ff
    ld a, [hl-]                                   ; $6d26: $3a
    rst $38                                       ; $6d27: $ff
    db $10                                        ; $6d28: $10
    add l                                         ; $6d29: $85
    cp $01                                        ; $6d2a: $fe $01
    ld [bc], a                                    ; $6d2c: $02
    nop                                           ; $6d2d: $00
    ret nc                                        ; $6d2e: $d0

    cpl                                           ; $6d2f: $2f
    xor c                                         ; $6d30: $a9
    ld d, [hl]                                    ; $6d31: $56
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    rst $38                                       ; $6d34: $ff
    ld b, l                                       ; $6d35: $45
    rst $38                                       ; $6d36: $ff
    ld d, h                                       ; $6d37: $54
    rst $38                                       ; $6d38: $ff
    rrca                                          ; $6d39: $0f
    cp $00                                        ; $6d3a: $fe $00
    add $3f                                       ; $6d3c: $c6 $3f
    di                                            ; $6d3e: $f3
    ld c, $5a                                     ; $6d3f: $0e $5a
    and l                                         ; $6d41: $a5
    ld l, $d5                                     ; $6d42: $2e $d5
    nop                                           ; $6d44: $00
    inc b                                         ; $6d45: $04
    rst $38                                       ; $6d46: $ff
    ld d, [hl]                                    ; $6d47: $56
    db $fd                                        ; $6d48: $fd
    ld l, e                                       ; $6d49: $6b
    rst $38                                       ; $6d4a: $ff
    ld a, h                                       ; $6d4b: $7c
    rst $38                                       ; $6d4c: $ff
    inc b                                         ; $6d4d: $04
    cpl                                           ; $6d4e: $2f
    rst $38                                       ; $6d4f: $ff
    ld b, b                                       ; $6d50: $40
    rst $38                                       ; $6d51: $ff
    add hl, bc                                    ; $6d52: $09
    sbc l                                         ; $6d53: $9d
    dec bc                                        ; $6d54: $0b
    rst $38                                       ; $6d55: $ff
    ld c, b                                       ; $6d56: $48
    inc b                                         ; $6d57: $04
    or a                                          ; $6d58: $b7
    and [hl]                                      ; $6d59: $a6
    ld sp, hl                                     ; $6d5a: $f9
    ld a, $c1                                     ; $6d5b: $3e $c1
    db $e3                                        ; $6d5d: $e3
    dec c                                         ; $6d5e: $0d
    ld [hl], d                                    ; $6d5f: $72
    adc l                                         ; $6d60: $8d
    nop                                           ; $6d61: $00
    dec h                                         ; $6d62: $25
    jp c, $ff00                                   ; $6d63: $da $00 $ff

    dec d                                         ; $6d66: $15
    rst $38                                       ; $6d67: $ff

jr_0a4_6d68:
    adc [hl]                                      ; $6d68: $8e
    ld a, l                                       ; $6d69: $7d
    nop                                           ; $6d6a: $00
    ld h, l                                       ; $6d6b: $65
    sbc [hl]                                      ; $6d6c: $9e
    dec c                                         ; $6d6d: $0d
    ld a, [$ff01]                                 ; $6d6e: $fa $01 $ff
    rrca                                          ; $6d71: $0f
    ei                                            ; $6d72: $fb
    nop                                           ; $6d73: $00
    ld c, l                                       ; $6d74: $4d
    ld a, [$f80f]                                 ; $6d75: $fa $0f $f8
    set 7, h                                      ; $6d78: $cb $fc
    db $fd                                        ; $6d7a: $fd
    inc bc                                        ; $6d7b: $03
    db $10                                        ; $6d7c: $10
    add b                                         ; $6d7d: $80
    ld a, a                                       ; $6d7e: $7f
    nop                                           ; $6d7f: $00
    ld b, [hl]                                    ; $6d80: $46
    nop                                           ; $6d81: $00
    xor e                                         ; $6d82: $ab

jr_0a4_6d83:
    rst $38                                       ; $6d83: $ff
    ret nz                                        ; $6d84: $c0

    ccf                                           ; $6d85: $3f
    inc b                                         ; $6d86: $04
    ccf                                           ; $6d87: $3f
    ret nz                                        ; $6d88: $c0

    rst $18                                       ; $6d89: $df
    jr nz, jr_0a4_6dc6                            ; $6d8a: $20 $3a

    ld hl, $5406                                  ; $6d8c: $21 $06 $54
    xor e                                         ; $6d8f: $ab
    db $10                                        ; $6d90: $10
    ld [$a0f7], sp                                ; $6d91: $08 $f7 $a0
    add hl, hl                                    ; $6d94: $29
    ld b, $e2                                     ; $6d95: $06 $e2
    rra                                           ; $6d97: $1f
    ld sp, hl                                     ; $6d98: $f9
    rlca                                          ; $6d99: $07
    inc b                                         ; $6d9a: $04
    pop af                                        ; $6d9b: $f1
    cp [hl]                                       ; $6d9c: $be
    ld h, $f9                                     ; $6d9d: $26 $f9
    jr nc, jr_0a4_6d68                            ; $6d9f: $30 $c7

jr_0a4_6da1:
    inc bc                                        ; $6da1: $03
    jr nc, jr_0a4_6d83                            ; $6da2: $30 $df

    nop                                           ; $6da4: $00
    ld [hl-], a                                   ; $6da5: $32
    rst $18                                       ; $6da6: $df
    or b                                          ; $6da7: $b0
    rst $18                                       ; $6da8: $df
    ld d, e                                       ; $6da9: $53
    rst $38                                       ; $6daa: $ff
    add l                                         ; $6dab: $85
    ld a, e                                       ; $6dac: $7b
    nop                                           ; $6dad: $00
    and b                                         ; $6dae: $a0
    ld a, a                                       ; $6daf: $7f
    inc d                                         ; $6db0: $14
    db $eb                                        ; $6db1: $eb
    ld hl, $4adf                                  ; $6db2: $21 $df $4a
    or a                                          ; $6db5: $b7
    nop                                           ; $6db6: $00
    ld hl, $4aff                                  ; $6db7: $21 $ff $4a
    or a                                          ; $6dba: $b7
    ld bc, $98ff                                  ; $6dbb: $01 $ff $98
    ld a, a                                       ; $6dbe: $7f
    inc b                                         ; $6dbf: $04
    jr c, jr_0a4_6da1                             ; $6dc0: $38 $df

    ld a, [de]                                    ; $6dc2: $1a
    db $fd                                        ; $6dc3: $fd
    jr z, @+$06                                   ; $6dc4: $28 $04

jr_0a4_6dc6:
    db $10                                        ; $6dc6: $10
    adc b                                         ; $6dc7: $88
    rst $38                                       ; $6dc8: $ff
    ld bc, $dd2a                                  ; $6dc9: $01 $2a $dd
    ld l, e                                       ; $6dcc: $6b
    rst $30                                       ; $6dcd: $f7
    inc hl                                        ; $6dce: $23
    rst $38                                       ; $6dcf: $ff

jr_0a4_6dd0:
    ld l, a                                       ; $6dd0: $6f
    inc b                                         ; $6dd1: $04
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    ld h, a                                       ; $6dd4: $67
    rst $38                                       ; $6dd5: $ff
    ld h, e                                       ; $6dd6: $63
    rst $38                                       ; $6dd7: $ff
    rst $30                                       ; $6dd8: $f7
    rst $28                                       ; $6dd9: $ef
    db $eb                                        ; $6dda: $eb
    rst $30                                       ; $6ddb: $f7
    nop                                           ; $6ddc: $00
    ld b, a                                       ; $6ddd: $47
    cp e                                          ; $6dde: $bb
    ld hl, $01df                                  ; $6ddf: $21 $df $01
    rst $38                                       ; $6de2: $ff
    inc hl                                        ; $6de3: $23
    rst $18                                       ; $6de4: $df
    nop                                           ; $6de5: $00
    sub e                                         ; $6de6: $93
    ld l, a                                       ; $6de7: $6f
    and c                                         ; $6de8: $a1
    ld e, a                                       ; $6de9: $5f
    ld [de], a                                    ; $6dea: $12
    rst $28                                       ; $6deb: $ef
    and c                                         ; $6dec: $a1
    ld e, a                                       ; $6ded: $5f
    nop                                           ; $6dee: $00
    jr nz, jr_0a4_6dd0                            ; $6def: $20 $df

    ld a, [hl+]                                   ; $6df1: $2a
    db $dd                                        ; $6df2: $dd
    ld [hl+], a                                   ; $6df3: $22
    db $dd                                        ; $6df4: $dd
    ld l, e                                       ; $6df5: $6b
    sbc h                                         ; $6df6: $9c
    nop                                           ; $6df7: $00
    ld h, d                                       ; $6df8: $62
    sbc l                                         ; $6df9: $9d
    ld h, e                                       ; $6dfa: $63
    sbc h                                         ; $6dfb: $9c
    ld hl, $49de                                  ; $6dfc: $21 $de $49
    cp [hl]                                       ; $6dff: $be
    nop                                           ; $6e00: $00

Jump_0a4_6e01:
    rst $30                                       ; $6e01: $f7
    rst $28                                       ; $6e02: $ef
    xor e                                         ; $6e03: $ab
    rst $30                                       ; $6e04: $f7

jr_0a4_6e05:
    ld h, a                                       ; $6e05: $67
    rst $38                                       ; $6e06: $ff
    daa                                           ; $6e07: $27
    rst $38                                       ; $6e08: $ff
    nop                                           ; $6e09: $00
    rrca                                          ; $6e0a: $0f
    rst $38                                       ; $6e0b: $ff
    sub a                                         ; $6e0c: $97
    ld a, a                                       ; $6e0d: $7f
    xor a                                         ; $6e0e: $af
    ld a, a                                       ; $6e0f: $7f
    sbc a                                         ; $6e10: $9f
    ld a, [hl]                                    ; $6e11: $7e
    nop                                           ; $6e12: $00
    ld [bc], a                                    ; $6e13: $02
    rst $38                                       ; $6e14: $ff
    and a                                         ; $6e15: $a7
    ld e, a                                       ; $6e16: $5f
    ld b, e                                       ; $6e17: $43
    cp a                                          ; $6e18: $bf
    dec b                                         ; $6e19: $05
    rst $38                                       ; $6e1a: $ff
    nop                                           ; $6e1b: $00
    add e                                         ; $6e1c: $83
    ld a, a                                       ; $6e1d: $7f
    pop bc                                        ; $6e1e: $c1
    ccf                                           ; $6e1f: $3f
    ld h, d                                       ; $6e20: $62
    sbc a                                         ; $6e21: $9f
    ld sp, $00cf                                  ; $6e22: $31 $cf $00
    ld a, [hl+]                                   ; $6e25: $2a
    db $dd                                        ; $6e26: $dd
    dec c                                         ; $6e27: $0d

jr_0a4_6e28:
    cp $3a                                        ; $6e28: $fe $3a
    rst $18                                       ; $6e2a: $df

jr_0a4_6e2b:
    rrca                                          ; $6e2b: $0f
    rst $38                                       ; $6e2c: $ff
    nop                                           ; $6e2d: $00
    sbc a                                         ; $6e2e: $9f
    cp $be                                        ; $6e2f: $fe $be
    db $fd                                        ; $6e31: $fd
    jr jr_0a4_6e2b                                ; $6e32: $18 $f7

    jr nc, jr_0a4_6e05                            ; $6e34: $30 $cf

    nop                                           ; $6e36: $00
    xor h                                         ; $6e37: $ac
    ld a, e                                       ; $6e38: $7b
    ld e, e                                       ; $6e39: $5b
    rst $30                                       ; $6e3a: $f7
    rst $20                                       ; $6e3b: $e7
    rst $18                                       ; $6e3c: $df
    rst $18                                       ; $6e3d: $df
    cp a                                          ; $6e3e: $bf
    nop                                           ; $6e3f: $00
    ld a, [hl+]                                   ; $6e40: $2a
    rst $38                                       ; $6e41: $ff
    sub c                                         ; $6e42: $91
    rst $28                                       ; $6e43: $ef
    add hl, de                                    ; $6e44: $19
    and $ec                                       ; $6e45: $e6 $ec
    di                                            ; $6e47: $f3
    ldh [$a0], a                                  ; $6e48: $e0 $a0
    ld [hl-], a                                   ; $6e4a: $32
    inc bc                                        ; $6e4b: $03
    ld [$0002], sp                                ; $6e4c: $08 $02 $00
    ld [hl], b                                    ; $6e4f: $70
    sbc a                                         ; $6e50: $9f
    jp hl                                         ; $6e51: $e9


    ld a, $d6                                     ; $6e52: $3e $d6
    nop                                           ; $6e54: $00
    ld a, l                                       ; $6e55: $7d
    xor e                                         ; $6e56: $ab
    rst $30                                       ; $6e57: $f7
    jr nc, @-$0f                                  ; $6e58: $30 $ef

    ret z                                         ; $6e5a: $c8

    or a                                          ; $6e5b: $b7
    sub b                                         ; $6e5c: $90
    nop                                           ; $6e5d: $00
    ld l, a                                       ; $6e5e: $6f
    jr c, jr_0a4_6e28                             ; $6e5f: $38 $c7

    add $bf                                       ; $6e61: $c6 $bf
    cp l                                          ; $6e63: $bd
    ld a, a                                       ; $6e64: $7f
    ld a, [$ff00]                                 ; $6e65: $fa $00 $ff
    ld e, l                                       ; $6e68: $5d
    rst $38                                       ; $6e69: $ff
    ld c, $ff                                     ; $6e6a: $0e $ff
    ld b, a                                       ; $6e6c: $47
    rst $38                                       ; $6e6d: $ff
    adc d                                         ; $6e6e: $8a
    nop                                           ; $6e6f: $00
    rst $38                                       ; $6e70: $ff
    dec h                                         ; $6e71: $25
    rst $38                                       ; $6e72: $ff
    ld [hl], l                                    ; $6e73: $75
    ld a, [$fd3a]                                 ; $6e74: $fa $3a $fd
    inc e                                         ; $6e77: $1c
    nop                                           ; $6e78: $00
    rst $38                                       ; $6e79: $ff
    ld b, [hl]                                    ; $6e7a: $46
    cp a                                          ; $6e7b: $bf
    ld hl, $9adf                                  ; $6e7c: $21 $df $9a
    push hl                                       ; $6e7f: $e5
    call $f200                                    ; $6e80: $cd $00 $f2
    ld h, [hl]                                    ; $6e83: $66
    ld sp, hl                                     ; $6e84: $f9
    ld [hl], c                                    ; $6e85: $71
    rst $38                                       ; $6e86: $ff
    jp hl                                         ; $6e87: $e9


    ld a, [hl]                                    ; $6e88: $7e
    ld d, d                                       ; $6e89: $52
    nop                                           ; $6e8a: $00
    rst $38                                       ; $6e8b: $ff

jr_0a4_6e8c:
    or $7d                                        ; $6e8c: $f6 $7d
    ld a, h                                       ; $6e8e: $7c
    ei                                            ; $6e8f: $fb
    cp a                                          ; $6e90: $bf
    ld a, e                                       ; $6e91: $7b
    ld a, [hl-]                                   ; $6e92: $3a
    jr nz, jr_0a4_6e8c                            ; $6e93: $20 $f7

    or a                                          ; $6e95: $b7
    ld l, h                                       ; $6e96: $6c
    ld bc, $fba4                                  ; $6e97: $01 $a4 $fb
    ld d, b                                       ; $6e9a: $50
    rst $38                                       ; $6e9b: $ff
    inc c                                         ; $6e9c: $0c
    nop                                           ; $6e9d: $00
    rst $38                                       ; $6e9e: $ff
    ld h, [hl]                                    ; $6e9f: $66
    sbc a                                         ; $6ea0: $9f
    dec de                                        ; $6ea1: $1b
    rst $20                                       ; $6ea2: $e7
    adc h                                         ; $6ea3: $8c
    di                                            ; $6ea4: $f3
    nop                                           ; $6ea5: $00
    nop                                           ; $6ea6: $00
    rst $38                                       ; $6ea7: $ff
    ld d, b                                       ; $6ea8: $50
    rst $38                                       ; $6ea9: $ff
    add hl, bc                                    ; $6eaa: $09
    cp $e0                                        ; $6eab: $fe $e0
    rra                                           ; $6ead: $1f
    jr c, jr_0a4_6eb0                             ; $6eae: $38 $00

jr_0a4_6eb0:
    rst $00                                       ; $6eb0: $c7
    ld c, h                                       ; $6eb1: $4c
    or e                                          ; $6eb2: $b3
    add [hl]                                      ; $6eb3: $86
    ld sp, hl                                     ; $6eb4: $f9
    ret nz                                        ; $6eb5: $c0

    rst $38                                       ; $6eb6: $ff
    ld bc, $fe00                                  ; $6eb7: $01 $00 $fe
    dec d                                         ; $6eba: $15
    ld [$3dc2], a                                 ; $6ebb: $ea $c2 $3d
    ld a, b                                       ; $6ebe: $78
    add a                                         ; $6ebf: $87
    dec e                                         ; $6ec0: $1d
    nop                                           ; $6ec1: $00
    ld [c], a                                     ; $6ec2: $e2
    adc b                                         ; $6ec3: $88
    rst $30                                       ; $6ec4: $f7
    ld d, b                                       ; $6ec5: $50
    rst $38                                       ; $6ec6: $ff
    ld [bc], a                                    ; $6ec7: $02
    db $fd                                        ; $6ec8: $fd
    ld [$ff00], sp                                ; $6ec9: $08 $00 $ff
    or l                                          ; $6ecc: $b5
    ld l, a                                       ; $6ecd: $6f
    and d                                         ; $6ece: $a2
    ld e, a                                       ; $6ecf: $5f
    jp hl                                         ; $6ed0: $e9


    ld e, a                                       ; $6ed1: $5f
    ret c                                         ; $6ed2: $d8

    nop                                           ; $6ed3: $00
    ccf                                           ; $6ed4: $3f
    sub h                                         ; $6ed5: $94
    ld a, a                                       ; $6ed6: $7f
    cp d                                          ; $6ed7: $ba
    ld a, a                                       ; $6ed8: $7f
    or l                                          ; $6ed9: $b5
    ld a, a                                       ; $6eda: $7f
    jp c, $bf00                                   ; $6edb: $da $00 $bf

    adc b                                         ; $6ede: $88
    rst $30                                       ; $6edf: $f7
    pop bc                                        ; $6ee0: $c1
    cp $6c                                        ; $6ee1: $fe $6c
    di                                            ; $6ee3: $f3
    ld b, $08                                     ; $6ee4: $06 $08
    ld sp, hl                                     ; $6ee6: $f9
    inc hl                                        ; $6ee7: $23
    call c, Call_0a4_5948                         ; $6ee8: $dc $48 $59
    dec b                                         ; $6eeb: $05

jr_0a4_6eec:
    sub l                                         ; $6eec: $95
    ld a, [$0018]                                 ; $6eed: $fa $18 $00
    rst $20                                       ; $6ef0: $e7
    ld c, $f1                                     ; $6ef1: $0e $f1
    ld b, e                                       ; $6ef3: $43
    db $fc                                        ; $6ef4: $fc
    ld bc, $88fe                                  ; $6ef5: $01 $fe $88
    nop                                           ; $6ef8: $00
    ld a, a                                       ; $6ef9: $7f
    ld b, d                                       ; $6efa: $42
    cp a                                          ; $6efb: $bf
    add hl, hl                                    ; $6efc: $29
    rst $10                                       ; $6efd: $d7
    inc d                                         ; $6efe: $14
    db $eb                                        ; $6eff: $eb
    add b                                         ; $6f00: $80
    nop                                           ; $6f01: $00
    ld a, a                                       ; $6f02: $7f
    jr jr_0a4_6eec                                ; $6f03: $18 $e7

    ld c, l                                       ; $6f05: $4d
    or d                                          ; $6f06: $b2
    add [hl]                                      ; $6f07: $86
    ld a, c                                       ; $6f08: $79
    ld bc, $fe00                                  ; $6f09: $01 $00 $fe
    nop                                           ; $6f0c: $00
    rst $38                                       ; $6f0d: $ff
    ld e, h                                       ; $6f0e: $5c
    rst $38                                       ; $6f0f: $ff
    and [hl]                                      ; $6f10: $a6
    rst $38                                       ; $6f11: $ff
    ld l, l                                       ; $6f12: $6d
    nop                                           ; $6f13: $00
    rst $18                                       ; $6f14: $df
    sub e                                         ; $6f15: $93
    rst $28                                       ; $6f16: $ef
    call $f4fb                                    ; $6f17: $cd $fb $f4
    rst $38                                       ; $6f1a: $ff
    ei                                            ; $6f1b: $fb
    ld [bc], a                                    ; $6f1c: $02
    cp $2c                                        ; $6f1d: $fe $2c
    rst $38                                       ; $6f1f: $ff
    ld d, $ff                                     ; $6f20: $16 $ff
    dec hl                                        ; $6f22: $2b
    cp d                                          ; $6f23: $ba
    ld bc, $08b2                                  ; $6f24: $01 $b2 $08
    rst $38                                       ; $6f27: $ff
    reti                                          ; $6f28: $d9


    rst $38                                       ; $6f29: $ff
    db $ec                                        ; $6f2a: $ec

jr_0a4_6f2b:
    ret nc                                        ; $6f2b: $d0

    inc bc                                        ; $6f2c: $03
    jp c, $4d3f                                   ; $6f2d: $da $3f $4d

    nop                                           ; $6f30: $00
    rst $38                                       ; $6f31: $ff
    or e                                          ; $6f32: $b3
    rst $28                                       ; $6f33: $ef
    ld b, $f9                                     ; $6f34: $06 $f9
    ld b, d                                       ; $6f36: $42
    cp l                                          ; $6f37: $bd
    inc d                                         ; $6f38: $14
    ld d, c                                       ; $6f39: $51
    db $eb                                        ; $6f3a: $eb
    adc [hl]                                      ; $6f3b: $8e
    add hl, bc                                    ; $6f3c: $09
    adc c                                         ; $6f3d: $89
    inc c                                         ; $6f3e: $0c
    ld [bc], a                                    ; $6f3f: $02
    xor b                                         ; $6f40: $a8
    rst $38                                       ; $6f41: $ff
    ld bc, $0a64                                  ; $6f42: $01 $64 $0a
    add b                                         ; $6f45: $80
    ld b, c                                       ; $6f46: $41
    rlca                                          ; $6f47: $07
    ld b, b                                       ; $6f48: $40
    cp a                                          ; $6f49: $bf
    jr nz, jr_0a4_6f2b                            ; $6f4a: $20 $df

    jr @-$17                                      ; $6f4c: $18 $e7

    ld c, [hl]                                    ; $6f4e: $4e
    ld [$15f1], sp                                ; $6f4f: $08 $f1 $15
    rst $38                                       ; $6f52: $ff
    and d                                         ; $6f53: $a2
    ret nz                                        ; $6f54: $c0

    ld bc, $fea9                                  ; $6f55: $01 $a9 $fe
    call nc, $ff00                                ; $6f58: $d4 $00 $ff
    ld h, b                                       ; $6f5b: $60
    rst $38                                       ; $6f5c: $ff
    jr c, @+$01                                   ; $6f5d: $38 $ff

    ld e, l                                       ; $6f5f: $5d
    cp $51                                        ; $6f60: $fe $51
    nop                                           ; $6f62: $00
    rst $38                                       ; $6f63: $ff
    and [hl]                                      ; $6f64: $a6
    db $fd                                        ; $6f65: $fd
    ld [de], a                                    ; $6f66: $12
    rst $38                                       ; $6f67: $ff
    ld c, l                                       ; $6f68: $4d
    cp a                                          ; $6f69: $bf
    xor d                                         ; $6f6a: $aa
    nop                                           ; $6f6b: $00
    ld d, a                                       ; $6f6c: $57
    inc d                                         ; $6f6d: $14
    db $eb                                        ; $6f6e: $eb
    ld c, d                                       ; $6f6f: $4a
    push af                                       ; $6f70: $f5
    and d                                         ; $6f71: $a2
    ld a, a                                       ; $6f72: $7f
    push de                                       ; $6f73: $d5
    nop                                           ; $6f74: $00
    cp $ea                                        ; $6f75: $fe $ea
    rst $38                                       ; $6f77: $ff
    ld [hl], l                                    ; $6f78: $75
    rst $38                                       ; $6f79: $ff
    sbc d                                         ; $6f7a: $9a
    ld a, a                                       ; $6f7b: $7f
    ld c, l                                       ; $6f7c: $4d
    nop                                           ; $6f7d: $00
    cp a                                          ; $6f7e: $bf
    rlca                                          ; $6f7f: $07
    rst $38                                       ; $6f80: $ff
    ld e, e                                       ; $6f81: $5b
    rst $30                                       ; $6f82: $f7
    ld a, $f9                                     ; $6f83: $3e $f9
    ld b, $00                                     ; $6f85: $06 $00
    ld sp, hl                                     ; $6f87: $f9
    or b                                          ; $6f88: $b0
    ld e, a                                       ; $6f89: $5f
    ld bc, $81ff                                  ; $6f8a: $01 $ff $81
    rst $38                                       ; $6f8d: $ff
    ld d, e                                       ; $6f8e: $53
    nop                                           ; $6f8f: $00
    rst $38                                       ; $6f90: $ff
    and c                                         ; $6f91: $a1
    rst $38                                       ; $6f92: $ff
    rst $10                                       ; $6f93: $d7
    rst $38                                       ; $6f94: $ff
    db $eb                                        ; $6f95: $eb
    rst $38                                       ; $6f96: $ff
    inc l                                         ; $6f97: $2c
    nop                                           ; $6f98: $00
    ei                                            ; $6f99: $fb
    sbc b                                         ; $6f9a: $98
    ld [hl], a                                    ; $6f9b: $77
    add hl, bc                                    ; $6f9c: $09
    rst $30                                       ; $6f9d: $f7
    db $10                                        ; $6f9e: $10
    rst $38                                       ; $6f9f: $ff
    sbc b                                         ; $6fa0: $98
    ld [bc], a                                    ; $6fa1: $02
    ld [hl], a                                    ; $6fa2: $77
    ld d, [hl]                                    ; $6fa3: $56
    cp c                                          ; $6fa4: $b9
    rra                                           ; $6fa5: $1f
    ldh a, [$30]                                  ; $6fa6: $f0 $30
    rra                                           ; $6fa8: $1f
    ld b, $23                                     ; $6fa9: $06 $23
    add b                                         ; $6fab: $80
    ld h, $02                                     ; $6fac: $26 $02
    ld b, d                                       ; $6fae: $42
    db $fd                                        ; $6faf: $fd
    ld de, $8aff                                  ; $6fb0: $11 $ff $8a
    ld a, a                                       ; $6fb3: $7f
    ld e, h                                       ; $6fb4: $5c
    ld [bc], a                                    ; $6fb5: $02
    and e                                         ; $6fb6: $a3
    ld [bc], a                                    ; $6fb7: $02
    db $fd                                        ; $6fb8: $fd
    nop                                           ; $6fb9: $00
    rst $38                                       ; $6fba: $ff
    ret nz                                        ; $6fbb: $c0

    db $10                                        ; $6fbc: $10
    inc b                                         ; $6fbd: $04
    xor b                                         ; $6fbe: $a8
    nop                                           ; $6fbf: $00
    ld d, a                                       ; $6fc0: $57
    nop                                           ; $6fc1: $00
    rst $38                                       ; $6fc2: $ff
    and d                                         ; $6fc3: $a2
    db $fd                                        ; $6fc4: $fd
    dec b                                         ; $6fc5: $05
    rst $38                                       ; $6fc6: $ff
    and d                                         ; $6fc7: $a2

jr_0a4_6fc8:
    nop                                           ; $6fc8: $00
    ld e, a                                       ; $6fc9: $5f
    inc [hl]                                      ; $6fca: $34
    rst $18                                       ; $6fcb: $df
    reti                                          ; $6fcc: $d9


    ld l, $f0                                     ; $6fcd: $2e $f0
    rrca                                          ; $6fcf: $0f
    ld [$ff00], sp                                ; $6fd0: $08 $00 $ff
    ld e, c                                       ; $6fd3: $59
    xor [hl]                                      ; $6fd4: $ae
    xor d                                         ; $6fd5: $aa
    ld e, l                                       ; $6fd6: $5d
    jr jr_0a4_6fc8                                ; $6fd7: $18 $ef

    inc c                                         ; $6fd9: $0c
    nop                                           ; $6fda: $00
    rst $30                                       ; $6fdb: $f7
    or b                                          ; $6fdc: $b0
    ld l, a                                       ; $6fdd: $6f
    ld [hl], d                                    ; $6fde: $72
    xor l                                         ; $6fdf: $ad
    daa                                           ; $6fe0: $27
    ld hl, sp+$30                                 ; $6fe1: $f8 $30
    nop                                           ; $6fe3: $00
    rst $28                                       ; $6fe4: $ef
    dec h                                         ; $6fe5: $25
    ld a, [$e837]                                 ; $6fe6: $fa $37 $e8
    ld h, c                                       ; $6fe9: $61
    sbc $68                                       ; $6fea: $de $68
    ld bc, $15df                                  ; $6fec: $01 $df $15
    ld [$b748], a                                 ; $6fef: $ea $48 $b7
    ld [c], a                                     ; $6ff2: $e2
    dec e                                         ; $6ff3: $1d
    ld b, e                                       ; $6ff4: $43
    ld c, $04                                     ; $6ff5: $0e $04
    call nc, Call_000_212b                        ; $6ff7: $d4 $2b $21
    sbc $00                                       ; $6ffa: $de $00
    ld [bc], a                                    ; $6ffc: $02
    inc bc                                        ; $6ffd: $03
    dec b                                         ; $6ffe: $05
    ld a, [$ea00]                                 ; $6fff: $fa $00 $ea
    dec d                                         ; $7002: $15
    ld d, b                                       ; $7003: $50
    xor a                                         ; $7004: $af
    nop                                           ; $7005: $00
    rst $38                                       ; $7006: $ff
    db $10                                        ; $7007: $10
    rst $28                                       ; $7008: $ef
    nop                                           ; $7009: $00
    ld b, d                                       ; $700a: $42
    cp l                                          ; $700b: $bd
    add hl, bc                                    ; $700c: $09
    or $0d                                        ; $700d: $f6 $0d
    or $2e                                        ; $700f: $f6 $2e

Call_0a4_7011:
    push de                                       ; $7011: $d5
    nop                                           ; $7012: $00
    db $f4                                        ; $7013: $f4
    rrca                                          ; $7014: $0f
    inc c                                         ; $7015: $0c
    rst $30                                       ; $7016: $f7
    inc b                                         ; $7017: $04
    rst $38                                       ; $7018: $ff
    inc c                                         ; $7019: $0c
    rst $30                                       ; $701a: $f7
    nop                                           ; $701b: $00
    cp [hl]                                       ; $701c: $be
    ld b, e                                       ; $701d: $43
    sub [hl]                                      ; $701e: $96
    ld l, e                                       ; $701f: $6b
    adc $ff                                       ; $7020: $ce $ff
    rst $38                                       ; $7022: $ff
    rst $18                                       ; $7023: $df
    nop                                           ; $7024: $00
    ld c, d                                       ; $7025: $4a
    rst $38                                       ; $7026: $ff
    ld h, b                                       ; $7027: $60
    rst $18                                       ; $7028: $df
    ret                                           ; $7029: $c9


    or [hl]                                       ; $702a: $b6
    call nc, $01ab                                ; $702b: $d4 $ab $01
    add b                                         ; $702e: $80
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    add b                                         ; $7031: $80
    ld b, l                                       ; $7032: $45
    rst $38                                       ; $7033: $ff
    ld a, [$00e4]                                 ; $7034: $fa $e4 $00
    dec c                                         ; $7037: $0d
    and e                                         ; $7038: $a3
    ld e, h                                       ; $7039: $5c
    swap h                                        ; $703a: $cb $34
    or b                                          ; $703c: $b0
    ld a, [bc]                                    ; $703d: $0a
    jr c, jr_0a4_7048                             ; $703e: $38 $08

    sub c                                         ; $7040: $91
    ret nc                                        ; $7041: $d0

    ld [bc], a                                    ; $7042: $02
    jr nz, @-$56                                  ; $7043: $20 $a8

    ld d, a                                       ; $7045: $57
    add hl, bc                                    ; $7046: $09
    dec b                                         ; $7047: $05

jr_0a4_7048:
    rst $38                                       ; $7048: $ff
    ld a, [bc]                                    ; $7049: $0a
    rst $38                                       ; $704a: $ff
    rla                                           ; $704b: $17
    rst $38                                       ; $704c: $ff
    nop                                           ; $704d: $00
    rlca                                          ; $704e: $07
    ei                                            ; $704f: $fb
    ld a, e                                       ; $7050: $7b
    rst $38                                       ; $7051: $ff
    and $fb                                       ; $7052: $e6 $fb
    ld [bc], a                                    ; $7054: $02
    rst $38                                       ; $7055: $ff
    nop                                           ; $7056: $00
    ld d, e                                       ; $7057: $53
    xor l                                         ; $7058: $ad
    inc bc                                        ; $7059: $03
    db $fd                                        ; $705a: $fd
    db $d3                                        ; $705b: $d3
    db $fd                                        ; $705c: $fd
    ld a, l                                       ; $705d: $7d
    rst $38                                       ; $705e: $ff
    nop                                           ; $705f: $00
    cp d                                          ; $7060: $ba
    push bc                                       ; $7061: $c5
    ldh a, [$8f]                                  ; $7062: $f0 $8f
    add b                                         ; $7064: $80
    ld a, a                                       ; $7065: $7f
    sbc $7f                                       ; $7066: $de $7f
    ld de, $7fbf                                  ; $7068: $11 $bf $7f
    ld d, a                                       ; $706b: $57
    ld a, [hl]                                    ; $706c: $7e
    inc bc                                        ; $706d: $03
    ld b, d                                       ; $706e: $42
    db $fd                                        ; $706f: $fd
    add l                                         ; $7070: $85
    adc $02                                       ; $7071: $ce $02
    inc d                                         ; $7073: $14
    nop                                           ; $7074: $00
    rst $38                                       ; $7075: $ff
    xor d                                         ; $7076: $aa
    inc c                                         ; $7077: $0c
    dec b                                         ; $7078: $05
    call nc, $0729                                ; $7079: $d4 $29 $07
    push de                                       ; $707c: $d5
    ld a, [hl+]                                   ; $707d: $2a
    ld b, b                                       ; $707e: $40
    ld a, d                                       ; $707f: $7a
    cpl                                           ; $7080: $2f
    rlca                                          ; $7081: $07
    xor e                                         ; $7082: $ab
    ld d, h                                       ; $7083: $54
    nop                                           ; $7084: $00
    rst $38                                       ; $7085: $ff
    db $f4                                        ; $7086: $f4
    rst $38                                       ; $7087: $ff
    nop                                           ; $7088: $00
    inc b                                         ; $7089: $04
    ei                                            ; $708a: $fb
    add hl, hl                                    ; $708b: $29
    sub $17                                       ; $708c: $d6 $17
    rst $38                                       ; $708e: $ff
    xor e                                         ; $708f: $ab
    db $fd                                        ; $7090: $fd
    nop                                           ; $7091: $00
    ld bc, $e1ff                                  ; $7092: $01 $ff $e1
    ld e, $fd                                     ; $7095: $1e $fd
    ld [bc], a                                    ; $7097: $02
    add hl, hl                                    ; $7098: $29
    sub $88                                       ; $7099: $d6 $88
    sbc d                                         ; $709b: $9a
    nop                                           ; $709c: $00
    cp $a9                                        ; $709d: $fe $a9

jr_0a4_709f:
    cp $f1                                        ; $709f: $fe $f1
    rrca                                          ; $70a1: $0f
    db $10                                        ; $70a2: $10
    jr @+$2a                                      ; $70a3: $18 $28

    nop                                           ; $70a5: $00
    inc [hl]                                      ; $70a6: $34
    ld d, h                                       ; $70a7: $54
    ld l, d                                       ; $70a8: $6a
    ld d, h                                       ; $70a9: $54
    ld l, d                                       ; $70aa: $6a
    or $c8                                        ; $70ab: $f6 $c8
    call c, $e300                                 ; $70ad: $dc $00 $e3
    ld e, l                                       ; $70b0: $5d
    ld h, d                                       ; $70b1: $62
    ld e, l                                       ; $70b2: $5d
    ld h, d                                       ; $70b3: $62
    ld d, h                                       ; $70b4: $54
    ld l, e                                       ; $70b5: $6b
    push de                                       ; $70b6: $d5
    nop                                           ; $70b7: $00
    db $eb                                        ; $70b8: $eb
    sbc $e0                                       ; $70b9: $de $e0
    ld d, h                                       ; $70bb: $54
    ld l, d                                       ; $70bc: $6a
    ld e, h                                       ; $70bd: $5c
    ld h, d                                       ; $70be: $62
    ld l, h                                       ; $70bf: $6c
    ld b, b                                       ; $70c0: $40
    ld d, d                                       ; $70c1: $52
    jr nz, jr_0a4_710c                            ; $70c2: $20 $48

    halt                                          ; $70c4: $76
    ld c, b                                       ; $70c5: $48
    ld e, h                                       ; $70c6: $5c
    and $9c                                       ; $70c7: $e6 $9c
    ld l, [hl]                                    ; $70c9: $6e
    nop                                           ; $70ca: $00
    call c, Call_0a4_5c2e                         ; $70cb: $dc $2e $5c
    xor [hl]                                      ; $70ce: $ae
    jp c, Jump_0a4_5aec                           ; $70cf: $da $ec $5a

    ld l, h                                       ; $70d2: $6c
    nop                                           ; $70d3: $00
    ld e, d                                       ; $70d4: $5a
    ld l, h                                       ; $70d5: $6c
    ld e, [hl]                                    ; $70d6: $5e
    ld l, h                                       ; $70d7: $6c
    ld l, h                                       ; $70d8: $6c
    ld e, [hl]                                    ; $70d9: $5e
    rst $28                                       ; $70da: $ef
    db $10                                        ; $70db: $10
    inc [hl]                                      ; $70dc: $34
    cp [hl]                                       ; $70dd: $be
    ld b, c                                       ; $70de: $41
    ld b, h                                       ; $70df: $44
    rlca                                          ; $70e0: $07
    ld e, d                                       ; $70e1: $5a
    rlca                                          ; $70e2: $07
    rst $38                                       ; $70e3: $ff
    ld e, $07                                     ; $70e4: $1e $07
    ei                                            ; $70e6: $fb
    inc b                                         ; $70e7: $04
    dec d                                         ; $70e8: $15
    cp l                                          ; $70e9: $bd
    ld b, d                                       ; $70ea: $42
    rst $38                                       ; $70eb: $ff
    sub b                                         ; $70ec: $90
    rra                                           ; $70ed: $1f
    dec h                                         ; $70ee: $25
    xor b                                         ; $70ef: $a8
    rlca                                          ; $70f0: $07
    jr nz, jr_0a4_709f                            ; $70f1: $20 $ac

    rlca                                          ; $70f3: $07
    ld d, l                                       ; $70f4: $55
    inc b                                         ; $70f5: $04
    jr nz, jr_0a4_70f8                            ; $70f6: $20 $00

jr_0a4_70f8:
    jr nz, @+$42                                  ; $70f8: $20 $40

    ld b, $11                                     ; $70fa: $06 $11
    cp b                                          ; $70fc: $b8
    rlca                                          ; $70fd: $07
    db $10                                        ; $70fe: $10
    adc $0f                                       ; $70ff: $ce $0f
    nop                                           ; $7101: $00
    rst $18                                       ; $7102: $df
    jr nz, jr_0a4_710e                            ; $7103: $20 $09

Call_0a4_7105:
    and [hl]                                      ; $7105: $a6
    db $e3                                        ; $7106: $e3
    ld b, h                                       ; $7107: $44
    dec hl                                        ; $7108: $2b
    and $02                                       ; $7109: $e6 $02
    add h                                         ; $710b: $84

jr_0a4_710c:
    dec l                                         ; $710c: $2d
    add e                                         ; $710d: $83

jr_0a4_710e:
    rst $28                                       ; $710e: $ef
    rst $08                                       ; $710f: $cf
    ld a, h                                       ; $7110: $7c
    ret nc                                        ; $7111: $d0

    rla                                           ; $7112: $17
    ld [$fb43], sp                                ; $7113: $08 $43 $fb
    sub $0f                                       ; $7116: $d6 $0f
    inc b                                         ; $7118: $04
    cp a                                          ; $7119: $bf
    ld c, b                                       ; $711a: $48
    db $fd                                        ; $711b: $fd
    xor [hl]                                      ; $711c: $ae
    rlca                                          ; $711d: $07
    rst $18                                       ; $711e: $df
    inc de                                        ; $711f: $13
    add b                                         ; $7120: $80
    db $e3                                        ; $7121: $e3
    inc bc                                        ; $7122: $03
    db $fc                                        ; $7123: $fc
    inc bc                                        ; $7124: $03
    cp $01                                        ; $7125: $fe $01
    db $fd                                        ; $7127: $fd
    ld [bc], a                                    ; $7128: $02
    or h                                          ; $7129: $b4
    nop                                           ; $712a: $00
    set 3, d                                      ; $712b: $cb $da
    push hl                                       ; $712d: $e5
    and l                                         ; $712e: $a5
    ld a, [$fdd2]                                 ; $712f: $fa $d2 $fd
    jp hl                                         ; $7132: $e9


    nop                                           ; $7133: $00
    cp $f6                                        ; $7134: $fe $f6
    rst $38                                       ; $7136: $ff
    db $fd                                        ; $7137: $fd
    rst $38                                       ; $7138: $ff
    cp $ff                                        ; $7139: $fe $ff
    sub d                                         ; $713b: $92
    nop                                           ; $713c: $00
    ld a, a                                       ; $713d: $7f
    ld b, b                                       ; $713e: $40
    cp a                                          ; $713f: $bf
    ld [de], a                                    ; $7140: $12
    rst $28                                       ; $7141: $ef
    ld bc, $04fe                                  ; $7142: $01 $fe $04
    nop                                           ; $7145: $00
    ei                                            ; $7146: $fb
    ret nz                                        ; $7147: $c0

    ccf                                           ; $7148: $3f
    ld l, b                                       ; $7149: $68
    sub a                                         ; $714a: $97
    sub l                                         ; $714b: $95
    ld [$00b3], a                                 ; $714c: $ea $b3 $00
    db $fc                                        ; $714f: $fc
    add hl, de                                    ; $7150: $19
    cp $4c                                        ; $7151: $fe $4c
    cp a                                          ; $7153: $bf
    nop                                           ; $7154: $00
    rst $38                                       ; $7155: $ff
    and c                                         ; $7156: $a1
    ld bc, $d05e                                  ; $7157: $01 $5e $d0
    cpl                                           ; $715a: $2f
    ld l, b                                       ; $715b: $68
    sub a                                         ; $715c: $97
    dec a                                         ; $715d: $3d
    jp nz, $0751                                  ; $715e: $c2 $51 $07

    nop                                           ; $7161: $00
    rlca                                          ; $7162: $07
    inc bc                                        ; $7163: $03
    dec c                                         ; $7164: $0d
    inc b                                         ; $7165: $04
    dec de                                        ; $7166: $1b
    dec c                                         ; $7167: $0d
    inc de                                        ; $7168: $13
    ld de, $1f05                                  ; $7169: $11 $05 $1f
    rrca                                          ; $716c: $0f
    rra                                           ; $716d: $1f
    rlca                                          ; $716e: $07
    rrca                                          ; $716f: $0f
    db $10                                        ; $7170: $10
    rrca                                          ; $7171: $0f
    rst $28                                       ; $7172: $ef
    ld [$0001], a                                 ; $7173: $ea $01 $00
    adc c                                         ; $7176: $89
    rst $38                                       ; $7177: $ff
    and c                                         ; $7178: $a1
    rst $18                                       ; $7179: $df
    ld b, d                                       ; $717a: $42
    rst $38                                       ; $717b: $ff
    xor c                                         ; $717c: $a9
    rst $30                                       ; $717d: $f7
    ld bc, $f14e                                  ; $717e: $01 $4e $f1
    and a                                         ; $7181: $a7
    ld hl, sp-$2f                                 ; $7182: $f8 $d1
    cp $e8                                        ; $7184: $fe $e8
    ld c, d                                       ; $7186: $4a
    nop                                           ; $7187: $00
    add b                                         ; $7188: $80
    ld c, [hl]                                    ; $7189: $4e
    ld [$ffff], sp                                ; $718a: $08 $ff $ff
    sub [hl]                                      ; $718d: $96
    ld l, c                                       ; $718e: $69
    ld c, e                                       ; $718f: $4b
    or h                                          ; $7190: $b4
    and l                                         ; $7191: $a5
    nop                                           ; $7192: $00
    ld e, d                                       ; $7193: $5a
    ret nz                                        ; $7194: $c0

    ccf                                           ; $7195: $3f
    ld h, l                                       ; $7196: $65
    sbc a                                         ; $7197: $9f
    inc sp                                        ; $7198: $33
    rst $08                                       ; $7199: $cf
    sbc l                                         ; $719a: $9d
    inc b                                         ; $719b: $04
    db $e3                                        ; $719c: $e3
    ld b, [hl]                                    ; $719d: $46
    ld sp, hl                                     ; $719e: $f9
    ld hl, sp+$07                                 ; $719f: $f8 $07
    ld a, h                                       ; $71a1: $7c
    jr z, @-$02                                   ; $71a2: $28 $fc

    inc bc                                        ; $71a4: $03
    nop                                           ; $71a5: $00
    ld a, [$c005]                                 ; $71a6: $fa $05 $c0
    ccf                                           ; $71a9: $3f
    ld e, h                                       ; $71aa: $5c
    cp e                                          ; $71ab: $bb
    xor [hl]                                      ; $71ac: $ae
    rst $10                                       ; $71ad: $d7
    nop                                           ; $71ae: $00
    ld [hl], a                                    ; $71af: $77
    adc e                                         ; $71b0: $8b
    inc a                                         ; $71b1: $3c
    rst $00                                       ; $71b2: $c7
    ld c, l                                       ; $71b3: $4d
    and [hl]                                      ; $71b4: $a6
    ld h, h                                       ; $71b5: $64
    sbc e                                         ; $71b6: $9b
    ld bc, $9769                                  ; $71b7: $01 $69 $97
    ld d, e                                       ; $71ba: $53
    adc h                                         ; $71bb: $8c
    cp a                                          ; $71bc: $bf
    rst $38                                       ; $71bd: $ff
    ld e, a                                       ; $71be: $5f
    ld d, b                                       ; $71bf: $50
    nop                                           ; $71c0: $00
    ld b, b                                       ; $71c1: $40
    ccf                                           ; $71c2: $3f
    ld h, h                                       ; $71c3: $64
    inc b                                         ; $71c4: $04
    rla                                           ; $71c5: $17
    rst $38                                       ; $71c6: $ff
    and e                                         ; $71c7: $a3
    rst $18                                       ; $71c8: $df
    rst $30                                       ; $71c9: $f7
    ld a, a                                       ; $71ca: $7f
    inc b                                         ; $71cb: $04
    and e                                         ; $71cc: $a3
    db $fc                                        ; $71cd: $fc
    pop de                                        ; $71ce: $d1
    cp $f8                                        ; $71cf: $fe $f8
    ld c, [hl]                                    ; $71d1: $4e
    jr nc, @+$01                                  ; $71d2: $30 $ff

    rst $38                                       ; $71d4: $ff
    nop                                           ; $71d5: $00
    jp $b5ff                                      ; $71d6: $c3 $ff $b5


    bit 1, e                                      ; $71d9: $cb $4b
    add l                                         ; $71db: $85
    ld [hl], h                                    ; $71dc: $74
    add e                                         ; $71dd: $83
    inc b                                         ; $71de: $04
    add hl, hl                                    ; $71df: $29
    rst $10                                       ; $71e0: $d7
    jp nc, $e5ef                                  ; $71e1: $d2 $ef $e5

    adc l                                         ; $71e4: $8d
    rlca                                          ; $71e5: $07
    ld a, e                                       ; $71e6: $7b
    add h                                         ; $71e7: $84
    nop                                           ; $71e8: $00
    ld d, l                                       ; $71e9: $55
    adc b                                         ; $71ea: $88
    dec sp                                        ; $71eb: $3b
    ret nz                                        ; $71ec: $c0

    ld h, l                                       ; $71ed: $65
    or b                                          ; $71ee: $b0
    db $e3                                        ; $71ef: $e3
    inc c                                         ; $71f0: $0c
    nop                                           ; $71f1: $00
    ld c, b                                       ; $71f2: $48
    add e                                         ; $71f3: $83
    add b                                         ; $71f4: $80
    ld [bc], a                                    ; $71f5: $02
    add c                                         ; $71f6: $81
    inc b                                         ; $71f7: $04
    sbc e                                         ; $71f8: $9b
    ld a, a                                       ; $71f9: $7f
    nop                                           ; $71fa: $00
    ld h, c                                       ; $71fb: $61
    sbc a                                         ; $71fc: $9f
    push af                                       ; $71fd: $f5
    dec bc                                        ; $71fe: $0b
    ld [c], a                                     ; $71ff: $e2
    rra                                           ; $7200: $1f
    ld [hl], l                                    ; $7201: $75
    ld c, $02                                     ; $7202: $0e $02
    xor a                                         ; $7204: $af
    jr jr_0a4_7221                                ; $7205: $18 $1a

    push hl                                       ; $7207: $e5
    ld e, c                                       ; $7208: $59
    ld [hl+], a                                   ; $7209: $22
    or b                                          ; $720a: $b0
    rrca                                          ; $720b: $0f
    xor a                                         ; $720c: $af
    add b                                         ; $720d: $80
    ret c                                         ; $720e: $d8

    ld bc, $7f8b                                  ; $720f: $01 $8b $7f

jr_0a4_7212:
    ld d, l                                       ; $7212: $55
    cp a                                          ; $7213: $bf
    adc e                                         ; $7214: $8b
    ld a, a                                       ; $7215: $7f
    ld hl, $df00                                  ; $7216: $21 $00 $df
    jr z, @+$01                                   ; $7219: $28 $ff

    call nz, $823f                                ; $721b: $c4 $3f $82
    ld a, a                                       ; $721e: $7f
    ld d, [hl]                                    ; $721f: $56
    nop                                           ; $7220: $00

jr_0a4_7221:
    cp a                                          ; $7221: $bf
    rrca                                          ; $7222: $0f
    rst $38                                       ; $7223: $ff
    ld h, l                                       ; $7224: $65
    sbc a                                         ; $7225: $9f
    ld [hl-], a                                   ; $7226: $32
    rst $08                                       ; $7227: $cf
    add hl, de                                    ; $7228: $19
    jr nz, jr_0a4_7212                            ; $7229: $20 $e7

    push bc                                       ; $722b: $c5
    ld b, $04                                     ; $722c: $06 $04
    ld b, c                                       ; $722e: $41
    rst $38                                       ; $722f: $ff
    ld [hl+], a                                   ; $7230: $22
    db $fd                                        ; $7231: $fd
    ld sp, $fe00                                  ; $7232: $31 $00 $fe
    sbc b                                         ; $7235: $98
    rst $38                                       ; $7236: $ff
    xor $ff                                       ; $7237: $ee $ff
    scf                                           ; $7239: $37
    rst $38                                       ; $723a: $ff
    ld e, e                                       ; $723b: $5b
    ld [$affe], sp                                ; $723c: $08 $fe $af
    rst $38                                       ; $723f: $ff
    ld d, a                                       ; $7240: $57
    ret z                                         ; $7241: $c8

    inc bc                                        ; $7242: $03
    ld [de], a                                    ; $7243: $12
    rst $38                                       ; $7244: $ff
    adc c                                         ; $7245: $89
    add b                                         ; $7246: $80
    ld c, d                                       ; $7247: $4a
    nop                                           ; $7248: $00
    jr c, jr_0a4_7212                             ; $7249: $38 $c7

    ld [hl], l                                    ; $724b: $75
    rst $38                                       ; $724c: $ff
    sbc a                                         ; $724d: $9f
    ld a, [hl]                                    ; $724e: $7e
    adc a                                         ; $724f: $8f
    nop                                           ; $7250: $00
    cp $e6                                        ; $7251: $fe $e6
    rst $18                                       ; $7253: $df
    ei                                            ; $7254: $fb
    or $fd                                        ; $7255: $f6 $fd
    ld a, [$007f]                                 ; $7257: $fa $7f $00
    db $fc                                        ; $725a: $fc
    cp a                                          ; $725b: $bf
    db $fd                                        ; $725c: $fd
    adc h                                         ; $725d: $8c
    ld [hl], e                                    ; $725e: $73
    ld b, [hl]                                    ; $725f: $46
    cp c                                          ; $7260: $b9
    add e                                         ; $7261: $83
    nop                                           ; $7262: $00
    ld a, h                                       ; $7263: $7c
    ret nc                                        ; $7264: $d0

    cpl                                           ; $7265: $2f
    ld [hl], b                                    ; $7266: $70
    adc a                                         ; $7267: $8f
    xor d                                         ; $7268: $aa
    rst $10                                       ; $7269: $d7
    ld de, $ef00                                  ; $726a: $11 $00 $ef
    adc b                                         ; $726d: $88
    ld [hl], a                                    ; $726e: $77
    ld b, e                                       ; $726f: $43
    rst $38                                       ; $7270: $ff
    sub l                                         ; $7271: $95
    ld a, a                                       ; $7272: $7f
    ld c, d                                       ; $7273: $4a
    ld [$e1bf], sp                                ; $7274: $08 $bf $e1
    rra                                           ; $7277: $1f
    jr nc, jr_0a4_72c6                            ; $7278: $30 $4c

    nop                                           ; $727a: $00
    inc c                                         ; $727b: $0c
    di                                            ; $727c: $f3
    call nz, $fb00                                ; $727d: $c4 $00 $fb
    adc l                                         ; $7280: $8d
    ld a, [c]                                     ; $7281: $f2
    and $f9                                       ; $7282: $e6 $f9
    di                                            ; $7284: $f3
    db $fc                                        ; $7285: $fc
    ld b, b                                       ; $7286: $40
    nop                                           ; $7287: $00
    rst $38                                       ; $7288: $ff
    ld [de], a                                    ; $7289: $12
    db $fd                                        ; $728a: $fd
    jr z, @+$01                                   ; $728b: $28 $ff

    sbc l                                         ; $728d: $9d
    rst $38                                       ; $728e: $ff
    ld b, [hl]                                    ; $728f: $46
    nop                                           ; $7290: $00
    rst $38                                       ; $7291: $ff
    ld e, a                                       ; $7292: $5f
    db $fd                                        ; $7293: $fd

jr_0a4_7294:
    cp a                                          ; $7294: $bf
    ld a, e                                       ; $7295: $7b
    ld a, [de]                                    ; $7296: $1a
    rst $38                                       ; $7297: $ff
    xor l                                         ; $7298: $ad
    nop                                           ; $7299: $00
    ld a, e                                       ; $729a: $7b
    jr jr_0a4_7294                                ; $729b: $18 $f7

    ld e, b                                       ; $729d: $58
    or a                                          ; $729e: $b7
    db $10                                        ; $729f: $10
    rst $38                                       ; $72a0: $ff
    ld [hl], d                                    ; $72a1: $72
    nop                                           ; $72a2: $00
    rst $28                                       ; $72a3: $ef
    ld b, h                                       ; $72a4: $44
    cp e                                          ; $72a5: $bb
    add d                                         ; $72a6: $82
    ld a, l                                       ; $72a7: $7d
    add b                                         ; $72a8: $80
    ld a, a                                       ; $72a9: $7f
    ld d, c                                       ; $72aa: $51
    ld [$28af], sp                                ; $72ab: $08 $af $28
    rst $10                                       ; $72ae: $d7
    sub h                                         ; $72af: $94
    ld b, b                                       ; $72b0: $40
    inc bc                                        ; $72b1: $03
    and l                                         ; $72b2: $a5
    ld a, [$14e0]                                 ; $72b3: $fa $e0 $14
    rst $38                                       ; $72b6: $ff
    ld e, b                                       ; $72b7: $58
    rst $38                                       ; $72b8: $ff
    sbc d                                         ; $72b9: $9a
    dec bc                                        ; $72ba: $0b
    inc bc                                        ; $72bb: $03
    jr nc, jr_0a4_72c1                            ; $72bc: $30 $03

    ld d, d                                       ; $72be: $52
    rst $38                                       ; $72bf: $ff
    ld b, b                                       ; $72c0: $40

jr_0a4_72c1:
    add hl, sp                                    ; $72c1: $39
    jr z, jr_0a4_72c9                             ; $72c2: $28 $05

    ld b, l                                       ; $72c4: $45
    rst $38                                       ; $72c5: $ff

jr_0a4_72c6:
    ld hl, $4cff                                  ; $72c6: $21 $ff $4c

jr_0a4_72c9:
    di                                            ; $72c9: $f3
    inc b                                         ; $72ca: $04
    and [hl]                                      ; $72cb: $a6
    ld sp, hl                                     ; $72cc: $f9
    db $d3                                        ; $72cd: $d3
    db $fc                                        ; $72ce: $fc
    ret z                                         ; $72cf: $c8

    ld [hl], h                                    ; $72d0: $74
    inc bc                                        ; $72d1: $03
    and l                                         ; $72d2: $a5
    cp $00                                        ; $72d3: $fe $00
    rst $30                                       ; $72d5: $f7
    rst $28                                       ; $72d6: $ef
    ld l, a                                       ; $72d7: $6f
    rst $18                                       ; $72d8: $df
    rst $38                                       ; $72d9: $ff
    rst $18                                       ; $72da: $df
    ld b, b                                       ; $72db: $40
    rst $38                                       ; $72dc: $ff
    nop                                           ; $72dd: $00
    ld h, d                                       ; $72de: $62
    rst $18                                       ; $72df: $df
    ret z                                         ; $72e0: $c8

    cp a                                          ; $72e1: $bf
    ret nz                                        ; $72e2: $c0

    cp a                                          ; $72e3: $bf
    db $d3                                        ; $72e4: $d3
    db $fc                                        ; $72e5: $fc
    ld h, b                                       ; $72e6: $60
    db $fc                                        ; $72e7: $fc
    jp nz, Jump_000_0e02                          ; $72e8: $c2 $02 $0e

    add hl, hl                                    ; $72eb: $29
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    adc b                                         ; $72ee: $88
    ld a, a                                       ; $72ef: $7f
    db $e4                                        ; $72f0: $e4
    nop                                           ; $72f1: $00
    rra                                           ; $72f2: $1f
    inc [hl]                                      ; $72f3: $34
    rr d                                          ; $72f4: $cb $1a
    push hl                                       ; $72f6: $e5
    adc l                                         ; $72f7: $8d
    ld a, [c]                                     ; $72f8: $f2
    ld b, [hl]                                    ; $72f9: $46
    ld [bc], a                                    ; $72fa: $02
    ld sp, hl                                     ; $72fb: $f9
    and d                                         ; $72fc: $a2
    db $fd                                        ; $72fd: $fd
    pop de                                        ; $72fe: $d1
    cp $80                                        ; $72ff: $fe $80
    or h                                          ; $7301: $b4
    dec b                                         ; $7302: $05
    add hl, hl                                    ; $7303: $29
    nop                                           ; $7304: $00
    rst $38                                       ; $7305: $ff
    dec b                                         ; $7306: $05
    rst $38                                       ; $7307: $ff
    inc de                                        ; $7308: $13
    cp $0b                                        ; $7309: $fe $0b
    cp $42                                        ; $730b: $fe $42
    nop                                           ; $730d: $00
    cp a                                          ; $730e: $bf
    xor [hl]                                      ; $730f: $ae
    ld d, l                                       ; $7310: $55
    sub h                                         ; $7311: $94
    db $eb                                        ; $7312: $eb
    and b                                         ; $7313: $a0
    ld a, a                                       ; $7314: $7f
    jr nz, jr_0a4_7317                            ; $7315: $20 $00

jr_0a4_7317:
    rst $38                                       ; $7317: $ff
    push af                                       ; $7318: $f5
    ld a, a                                       ; $7319: $7f
    ld a, e                                       ; $731a: $7b
    rst $38                                       ; $731b: $ff
    ld a, [hl]                                    ; $731c: $7e
    rst $38                                       ; $731d: $ff
    db $ed                                        ; $731e: $ed
    nop                                           ; $731f: $00
    rst $38                                       ; $7320: $ff
    ld b, l                                       ; $7321: $45
    ld a, [$70af]                                 ; $7322: $fa $af $70
    ld b, b                                       ; $7325: $40
    rst $38                                       ; $7326: $ff
    ld l, d                                       ; $7327: $6a
    and b                                         ; $7328: $a0
    jp z, $7f07                                   ; $7329: $ca $07 $7f

    xor $02                                       ; $732c: $ee $02
    ld d, b                                       ; $732e: $50
    xor a                                         ; $732f: $af
    push af                                       ; $7330: $f5
    rst $38                                       ; $7331: $ff
    jp z, $3f14                                   ; $7332: $ca $14 $3f

    ld bc, $caff                                  ; $7335: $01 $ff $ca
    dec bc                                        ; $7338: $0b
    ld hl, sp-$16                                 ; $7339: $f8 $ea
    dec b                                         ; $733b: $05
    dec d                                         ; $733c: $15
    ld [$5751], a                                 ; $733d: $ea $51 $57
    ld [c], a                                     ; $7340: $e2
    rlca                                          ; $7341: $07
    ld [hl], l                                    ; $7342: $75
    ret c                                         ; $7343: $d8

    dec b                                         ; $7344: $05
    cp d                                          ; $7345: $ba
    ld b, l                                       ; $7346: $45
    xor e                                         ; $7347: $ab
    ld a, [$1005]                                 ; $7348: $fa $05 $10
    ld b, l                                       ; $734b: $45
    cp d                                          ; $734c: $ba
    ld e, a                                       ; $734d: $5f
    ret c                                         ; $734e: $d8

    ld [bc], a                                    ; $734f: $02
    ld a, [bc]                                    ; $7350: $0a
    rst $38                                       ; $7351: $ff
    ld e, $ff                                     ; $7352: $1e $ff
    ld b, c                                       ; $7354: $41
    cp [hl]                                       ; $7355: $be
    ld a, [de]                                    ; $7356: $1a
    ld [bc], a                                    ; $7357: $02
    nop                                           ; $7358: $00
    rst $38                                       ; $7359: $ff
    ld a, a                                       ; $735a: $7f
    add b                                         ; $735b: $80
    ei                                            ; $735c: $fb
    db $f4                                        ; $735d: $f4
    rlca                                          ; $735e: $07
    jr nz, @+$56                                  ; $735f: $20 $54

    rst $38                                       ; $7361: $ff
    cp h                                          ; $7362: $bc
    dec c                                         ; $7363: $0d
    ld d, [hl]                                    ; $7364: $56
    xor c                                         ; $7365: $a9
    xor a                                         ; $7366: $af
    ld d, b                                       ; $7367: $50
    ld b, h                                       ; $7368: $44
    ld [$01bb], sp                                ; $7369: $08 $bb $01
    cp $fe                                        ; $736c: $fe $fe
    inc [hl]                                      ; $736e: $34
    inc b                                         ; $736f: $04
    add b                                         ; $7370: $80
    ld a, a                                       ; $7371: $7f
    dec bc                                        ; $7372: $0b
    nop                                           ; $7373: $00
    db $f4                                        ; $7374: $f4
    and b                                         ; $7375: $a0
    ld e, a                                       ; $7376: $5f
    cp $01                                        ; $7377: $fe $01
    inc h                                         ; $7379: $24
    db $db                                        ; $737a: $db
    nop                                           ; $737b: $00
    jr nc, @+$01                                  ; $737c: $30 $ff

    add l                                         ; $737e: $85
    ld d, $06                                     ; $737f: $16 $06
    and b                                         ; $7381: $a0
    ld a, [bc]                                    ; $7382: $0a
    ld bc, $28fe                                  ; $7383: $01 $fe $28
    rst $10                                       ; $7386: $d7
    db $10                                        ; $7387: $10
    sub c                                         ; $7388: $91
    ld l, [hl]                                    ; $7389: $6e
    nop                                           ; $738a: $00
    adc $01                                       ; $738b: $ce $01
    dec hl                                        ; $738d: $2b
    rst $38                                       ; $738e: $ff
    push bc                                       ; $738f: $c5
    ccf                                           ; $7390: $3f
    ld a, [bc]                                    ; $7391: $0a
    add sp, $17                                   ; $7392: $e8 $17
    ld d, l                                       ; $7394: $55
    xor d                                         ; $7395: $aa
    and d                                         ; $7396: $a2
    dec bc                                        ; $7397: $0b
    rla                                           ; $7398: $17
    ld l, h                                       ; $7399: $6c
    nop                                           ; $739a: $00

jr_0a4_739b:
    ld b, d                                       ; $739b: $42
    jr z, jr_0a4_739b                             ; $739c: $28 $fd

    xor b                                         ; $739e: $a8
    ld c, [hl]                                    ; $739f: $4e
    db $10                                        ; $73a0: $10
    inc h                                         ; $73a1: $24
    ld h, $04                                     ; $73a2: $26 $04
    ld d, a                                       ; $73a4: $57
    xor b                                         ; $73a5: $a8
    ld b, d                                       ; $73a6: $42
    ld hl, $45bd                                  ; $73a7: $21 $bd $45

jr_0a4_73aa:
    ld c, b                                       ; $73aa: $48

jr_0a4_73ab:
    ld b, $a5                                     ; $73ab: $06 $a5
    ld a, [$55aa]                                 ; $73ad: $fa $aa $55
    call nc, $801b                                ; $73b0: $d4 $1b $80
    ld c, [hl]                                    ; $73b3: $4e
    ld bc, $0aff                                  ; $73b4: $01 $ff $0a
    push af                                       ; $73b7: $f5
    ld b, b                                       ; $73b8: $40
    cp a                                          ; $73b9: $bf
    ld a, [hl+]                                   ; $73ba: $2a
    push de                                       ; $73bb: $d5
    ld bc, $a857                                  ; $73bc: $01 $57 $a8
    nop                                           ; $73bf: $00
    rst $38                                       ; $73c0: $ff
    add d                                         ; $73c1: $82
    ld a, a                                       ; $73c2: $7f
    ld a, a                                       ; $73c3: $7f
    db $10                                        ; $73c4: $10
    ld [bc], a                                    ; $73c5: $02
    ld b, b                                       ; $73c6: $40
    xor d                                         ; $73c7: $aa
    ld b, d                                       ; $73c8: $42
    ld b, $e2                                     ; $73c9: $06 $e2
    dec e                                         ; $73cb: $1d
    rst $38                                       ; $73cc: $ff
    nop                                           ; $73cd: $00
    sub l                                         ; $73ce: $95
    ld l, d                                       ; $73cf: $6a
    ld [bc], a                                    ; $73d0: $02
    jr nz, @-$1f                                  ; $73d1: $20 $df

    xor d                                         ; $73d3: $aa
    ld d, l                                       ; $73d4: $55
    ld c, c                                       ; $73d5: $49
    cp $f7                                        ; $73d6: $fe $f7
    ld a, [bc]                                    ; $73d8: $0a
    add sp, $00                                   ; $73d9: $e8 $00
    rst $38                                       ; $73db: $ff
    push af                                       ; $73dc: $f5
    rst $38                                       ; $73dd: $ff
    cp a                                          ; $73de: $bf
    rst $38                                       ; $73df: $ff
    ld [de], a                                    ; $73e0: $12
    rst $28                                       ; $73e1: $ef
    and b                                         ; $73e2: $a0
    ld a, [hl+]                                   ; $73e3: $2a
    ld e, a                                       ; $73e4: $5f
    inc b                                         ; $73e5: $04
    jr nc, jr_0a4_73e9                            ; $73e6: $30 $01

    ld c, b                                       ; $73e8: $48

jr_0a4_73e9:
    adc h                                         ; $73e9: $8c
    ld b, $0a                                     ; $73ea: $06 $0a
    adc e                                         ; $73ec: $8b
    ld [bc], a                                    ; $73ed: $02
    and d                                         ; $73ee: $a2
    inc c                                         ; $73ef: $0c
    db $fd                                        ; $73f0: $fd
    ld d, b                                       ; $73f1: $50
    rst $38                                       ; $73f2: $ff
    add b                                         ; $73f3: $80
    ret nz                                        ; $73f4: $c0

    ld bc, $053a                                  ; $73f5: $01 $3a $05
    rst $30                                       ; $73f8: $f7
    ld e, [hl]                                    ; $73f9: $5e
    ld [hl+], a                                   ; $73fa: $22
    rst $38                                       ; $73fb: $ff
    or l                                          ; $73fc: $b5
    jr nc, jr_0a4_7406                            ; $73fd: $30 $07

    add c                                         ; $73ff: $81
    cp $4a                                        ; $7400: $fe $4a
    and e                                         ; $7402: $a3
    ld [bc], a                                    ; $7403: $02
    and e                                         ; $7404: $a3
    inc bc                                        ; $7405: $03

jr_0a4_7406:
    ld e, a                                       ; $7406: $5f
    nop                                           ; $7407: $00
    rst $38                                       ; $7408: $ff
    or h                                          ; $7409: $b4
    rst $38                                       ; $740a: $ff
    ld b, c                                       ; $740b: $41
    inc d                                         ; $740c: $14
    dec b                                         ; $740d: $05
    nop                                           ; $740e: $00
    dec de                                        ; $740f: $1b
    call z, Call_000_1a80                         ; $7410: $cc $80 $1a
    nop                                           ; $7413: $00
    dec bc                                        ; $7414: $0b
    and b                                         ; $7415: $a0
    ld e, a                                       ; $7416: $5f
    inc c                                         ; $7417: $0c
    jr z, jr_0a4_73aa                             ; $7418: $28 $90

    ld a, [de]                                    ; $741a: $1a
    add b                                         ; $741b: $80
    ld b, h                                       ; $741c: $44
    nop                                           ; $741d: $00
    add c                                         ; $741e: $81
    inc h                                         ; $741f: $24
    add b                                         ; $7420: $80
    jr jr_0a4_73ab                                ; $7421: $18 $88

    nop                                           ; $7423: $00
    add h                                         ; $7424: $84
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    ld b, b                                       ; $7427: $40

jr_0a4_7428:
    add [hl]                                      ; $7428: $86
    pop bc                                        ; $7429: $c1
    ld [$9840], sp                                ; $742a: $08 $40 $98
    adc [hl]                                      ; $742d: $8e
    ld hl, $5d00                                  ; $742e: $21 $00 $5d
    ld [hl+], a                                   ; $7431: $22
    xor a                                         ; $7432: $af
    db $10                                        ; $7433: $10
    ld b, [hl]                                    ; $7434: $46
    ld de, $0a05                                  ; $7435: $11 $05 $0a
    nop                                           ; $7438: $00
    rla                                           ; $7439: $17
    ld [$0f80], sp                                ; $743a: $08 $80 $0f
    inc b                                         ; $743d: $04
    ld d, c                                       ; $743e: $51
    ld [bc], a                                    ; $743f: $02
    rst $38                                       ; $7440: $ff
    nop                                           ; $7441: $00
    dec h                                         ; $7442: $25
    rst $18                                       ; $7443: $df
    ld a, [de]                                    ; $7444: $1a
    rst $28                                       ; $7445: $ef
    sbc b                                         ; $7446: $98
    ld [hl], a                                    ; $7447: $77

jr_0a4_7448:
    ld d, l                                       ; $7448: $55
    xor d                                         ; $7449: $aa
    nop                                           ; $744a: $00
    xor d                                         ; $744b: $aa
    dec d                                         ; $744c: $15
    ld d, l                                       ; $744d: $55
    ld a, [bc]                                    ; $744e: $0a
    jr z, jr_0a4_7428                             ; $744f: $28 $d7

    add e                                         ; $7451: $83
    rst $38                                       ; $7452: $ff
    nop                                           ; $7453: $00
    ld l, l                                       ; $7454: $6d
    add e                                         ; $7455: $83
    add a                                         ; $7456: $87
    ld bc, $03d4                                  ; $7457: $01 $d4 $03
    ld l, c                                       ; $745a: $69
    add a                                         ; $745b: $87
    db $10                                        ; $745c: $10
    or d                                          ; $745d: $b2
    rst $08                                       ; $745e: $cf
    push bc                                       ; $745f: $c5
    dec c                                         ; $7460: $0d
    inc bc                                        ; $7461: $03
    jr nz, jr_0a4_7448                            ; $7462: $20 $e4

    ld d, b                                       ; $7464: $50
    add d                                         ; $7465: $82
    nop                                           ; $7466: $00
    ld l, e                                       ; $7467: $6b
    add c                                         ; $7468: $81
    or l                                          ; $7469: $b5
    ret nz                                        ; $746a: $c0

    adc $f0                                       ; $746b: $ce $f0
    push hl                                       ; $746d: $e5
    ld hl, sp+$00                                 ; $746e: $f8 $00
    ld a, [c]                                     ; $7470: $f2
    db $fd                                        ; $7471: $fd
    ld hl, sp-$01                                 ; $7472: $f8 $ff
    ld a, [bc]                                    ; $7474: $0a
    jr nc, jr_0a4_747b                            ; $7475: $30 $04

    ld [$0000], sp                                ; $7477: $08 $00 $00
    inc b                                         ; $747a: $04

jr_0a4_747b:
    ld [hl-], a                                   ; $747b: $32
    call z, $8001                                 ; $747c: $cc $01 $80
    ld b, b                                       ; $747f: $40
    add c                                         ; $7480: $81
    nop                                           ; $7481: $00
    add sp, $00                                   ; $7482: $e8 $00
    ld d, h                                       ; $7484: $54
    add b                                         ; $7485: $80
    dec c                                         ; $7486: $0d
    ld [hl-], a                                   ; $7487: $32
    inc sp                                        ; $7488: $33
    ld c, h                                       ; $7489: $4c
    nop                                           ; $748a: $00
    dec hl                                        ; $748b: $2b
    ld b, h                                       ; $748c: $44
    rla                                           ; $748d: $17
    add b                                         ; $748e: $80
    ld [bc], a                                    ; $748f: $02
    ld bc, HeaderLogo                             ; $7490: $01 $04 $01
    nop                                           ; $7493: $00
    add b                                         ; $7494: $80
    ld [bc], a                                    ; $7495: $02
    ld h, l                                       ; $7496: $65

jr_0a4_7497:
    ld [bc], a                                    ; $7497: $02
    add b                                         ; $7498: $80
    ld a, a                                       ; $7499: $7f
    push de                                       ; $749a: $d5
    dec hl                                        ; $749b: $2b
    adc b                                         ; $749c: $88
    ld [hl], l                                    ; $749d: $75
    dec b                                         ; $749e: $05
    ld bc, $03fd                                  ; $749f: $01 $fd $03
    inc b                                         ; $74a2: $04
    ld [$01fe], sp                                ; $74a3: $08 $fe $01
    and h                                         ; $74a6: $a4
    nop                                           ; $74a7: $00
    rst $18                                       ; $74a8: $df
    ld e, c                                       ; $74a9: $59
    add a                                         ; $74aa: $87
    xor h                                         ; $74ab: $ac
    inc bc                                        ; $74ac: $03
    inc d                                         ; $74ad: $14
    inc bc                                        ; $74ae: $03
    ld [hl+], a                                   ; $74af: $22
    nop                                           ; $74b0: $00
    dec b                                         ; $74b1: $05
    sub h                                         ; $74b2: $94
    dec bc                                        ; $74b3: $0b
    ld l, c                                       ; $74b4: $69
    sub a                                         ; $74b5: $97
    sub e                                         ; $74b6: $93
    rst $28                                       ; $74b7: $ef
    cp d                                          ; $74b8: $ba
    nop                                           ; $74b9: $00
    ld b, b                                       ; $74ba: $40
    ld l, l                                       ; $74bb: $6d
    sub b                                         ; $74bc: $90
    sub a                                         ; $74bd: $97
    ld [$fcfb], a                                 ; $74be: $ea $fb $fc
    pop hl                                        ; $74c1: $e1
    nop                                           ; $74c2: $00
    cp $f2                                        ; $74c3: $fe $f2
    db $fd                                        ; $74c5: $fd
    ld sp, hl                                     ; $74c6: $f9
    cp $fc                                        ; $74c7: $fe $fc
    rst $38                                       ; $74c9: $ff
    ld [bc], a                                    ; $74ca: $02
    nop                                           ; $74cb: $00
    inc [hl]                                      ; $74cc: $34
    nop                                           ; $74cd: $00
    ld c, h                                       ; $74ce: $4c
    add b                                         ; $74cf: $80
    ld [bc], a                                    ; $74d0: $02
    nop                                           ; $74d1: $00
    ld b, c                                       ; $74d2: $41
    add d                                         ; $74d3: $82
    ld [bc], a                                    ; $74d4: $02
    jr nz, jr_0a4_7497                            ; $74d5: $20 $c0

    inc d                                         ; $74d7: $14
    ret nc                                        ; $74d8: $d0

    inc c                                         ; $74d9: $0c
    and b                                         ; $74da: $a0
    jp nc, $fe03                                  ; $74db: $d2 $03 $fe

    ld h, e                                       ; $74de: $63
    ld bc, $0c1c                                  ; $74df: $01 $1c $0c
    inc b                                         ; $74e2: $04
    jr z, jr_0a4_7561                             ; $74e3: $28 $7c

    rst $38                                       ; $74e5: $ff
    add l                                         ; $74e6: $85
    sub e                                         ; $74e7: $93
    inc c                                         ; $74e8: $0c
    ld [de], a                                    ; $74e9: $12
    jr nc, @+$04                                  ; $74ea: $30 $02

    ld bc, $c1ff                                  ; $74ec: $01 $ff $c1
    ccf                                           ; $74ef: $3f

jr_0a4_74f0:
    pop af                                        ; $74f0: $f1
    rrca                                          ; $74f1: $0f
    ld e, [hl]                                    ; $74f2: $5e
    jr jr_0a4_74f0                                ; $74f3: $18 $fb

    nop                                           ; $74f5: $00
    dec b                                         ; $74f6: $05
    db $fc                                        ; $74f7: $fc
    inc bc                                        ; $74f8: $03
    ld b, l                                       ; $74f9: $45
    or b                                          ; $74fa: $b0
    xor [hl]                                      ; $74fb: $ae
    ret nc                                        ; $74fc: $d0

    ld d, a                                       ; $74fd: $57
    nop                                           ; $74fe: $00
    add sp, -$5e                                  ; $74ff: $e8 $a2
    ld a, h                                       ; $7501: $7c
    ld d, d                                       ; $7502: $52
    ccf                                           ; $7503: $3f
    xor c                                         ; $7504: $a9
    ld e, $54                                     ; $7505: $1e $54
    ld a, [bc]                                    ; $7507: $0a
    adc a                                         ; $7508: $8f
    sbc c                                         ; $7509: $99
    rst $20                                       ; $750a: $e7
    rst $38                                       ; $750b: $ff
    jp z, Jump_000_2f04                           ; $750c: $ca $04 $2f

    ld hl, sp+$02                                 ; $750f: $f8 $02
    cpl                                           ; $7511: $2f
    ld bc, $77ff                                  ; $7512: $01 $ff $77
    cp a                                          ; $7515: $bf
    ld a, e                                       ; $7516: $7b
    rst $38                                       ; $7517: $ff
    adc a                                         ; $7518: $8f
    rst $38                                       ; $7519: $ff
    ld e, [hl]                                    ; $751a: $5e
    ld e, d                                       ; $751b: $5a
    nop                                           ; $751c: $00
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    call nc, $662f                                ; $751f: $d4 $2f $66
    sbc l                                         ; $7522: $9d
    inc a                                         ; $7523: $3c
    rlc b                                         ; $7524: $cb $00
    adc b                                         ; $7526: $88
    rst $38                                       ; $7527: $ff
    ld c, [hl]                                    ; $7528: $4e
    ld sp, hl                                     ; $7529: $f9
    xor e                                         ; $752a: $ab
    db $f4                                        ; $752b: $f4
    db $db                                        ; $752c: $db
    db $f4                                        ; $752d: $f4
    ld b, b                                       ; $752e: $40
    jp hl                                         ; $752f: $e9


    or $07                                        ; $7530: $f6 $07
    ld e, a                                       ; $7532: $5f
    and b                                         ; $7533: $a0
    daa                                           ; $7534: $27
    ret c                                         ; $7535: $d8

    ld bc, $00fe                                  ; $7536: $01 $fe $00
    add b                                         ; $7539: $80
    ld a, a                                       ; $753a: $7f
    ldh [$1f], a                                  ; $753b: $e0 $1f
    ei                                            ; $753d: $fb
    inc b                                         ; $753e: $04
    ld e, a                                       ; $753f: $5f
    and b                                         ; $7540: $a0
    nop                                           ; $7541: $00
    ld l, a                                       ; $7542: $6f
    cp a                                          ; $7543: $bf
    add a                                         ; $7544: $87
    ld a, a                                       ; $7545: $7f
    db $d3                                        ; $7546: $d3
    cpl                                           ; $7547: $2f
    add hl, hl                                    ; $7548: $29
    ld d, a                                       ; $7549: $57
    nop                                           ; $754a: $00
    or l                                          ; $754b: $b5
    ld c, d                                       ; $754c: $4a
    rst $38                                       ; $754d: $ff
    ld b, b                                       ; $754e: $40
    cpl                                           ; $754f: $2f
    ret nz                                        ; $7550: $c0

    ld h, b                                       ; $7551: $60
    scf                                           ; $7552: $37
    and b                                         ; $7553: $a0
    ld d, b                                       ; $7554: $50
    ld [$faaf], sp                                ; $7555: $08 $af $fa
    dec b                                         ; $7558: $05
    adc e                                         ; $7559: $8b
    rst $38                                       ; $755a: $ff
    push hl                                       ; $755b: $e5
    ld e, a                                       ; $755c: $5f
    sub e                                         ; $755d: $93
    add b                                         ; $755e: $80
    sub b                                         ; $755f: $90
    rlca                                          ; $7560: $07

jr_0a4_7561:
    ld hl, sp-$09                                 ; $7561: $f8 $f7
    cp $f1                                        ; $7563: $fe $f1
    rst $30                                       ; $7565: $f7
    ld hl, sp-$08                                 ; $7566: $f8 $f8
    cp e                                          ; $7568: $bb
    xor [hl]                                      ; $7569: $ae
    ld bc, $c0fa                                  ; $756a: $01 $fa $c0
    inc de                                        ; $756d: $13
    ld l, $0d                                     ; $756e: $2e $0d
    ld l, h                                       ; $7570: $6c
    dec c                                         ; $7571: $0d
    ld d, l                                       ; $7572: $55
    ld b, h                                       ; $7573: $44
    dec b                                         ; $7574: $05
    inc a                                         ; $7575: $3c
    inc c                                         ; $7576: $0c
    nop                                           ; $7577: $00
    and e                                         ; $7578: $a3
    inc c                                         ; $7579: $0c
    rla                                           ; $757a: $17
    ld a, [bc]                                    ; $757b: $0a
    ld [bc], a                                    ; $757c: $02
    add hl, bc                                    ; $757d: $09
    dec d                                         ; $757e: $15
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    ld [c], a                                     ; $7581: $e2
    db $10                                        ; $7582: $10
    ld bc, $0648                                  ; $7583: $01 $48 $06
    inc h                                         ; $7586: $24
    jr nz, jr_0a4_758c                            ; $7587: $20 $03

    nop                                           ; $7589: $00
    ld d, d                                       ; $758a: $52
    cpl                                           ; $758b: $2f

jr_0a4_758c:
    ret                                           ; $758c: $c9


    scf                                           ; $758d: $37
    or d                                          ; $758e: $b2
    rra                                           ; $758f: $1f
    call nz, Call_000_003b                        ; $7590: $c4 $3b $00
    ld h, b                                       ; $7593: $60
    rst $18                                       ; $7594: $df
    ld h, a                                       ; $7595: $67
    inc e                                         ; $7596: $1c
    or [hl]                                       ; $7597: $b6
    add hl, bc                                    ; $7598: $09
    dec d                                         ; $7599: $15
    add sp, $60                                   ; $759a: $e8 $60
    rst $38                                       ; $759c: $ff
    db $10                                        ; $759d: $10
    inc b                                         ; $759e: $04
    inc d                                         ; $759f: $14
    inc c                                         ; $75a0: $0c
    xor e                                         ; $75a1: $ab
    ld a, a                                       ; $75a2: $7f
    ld b, a                                       ; $75a3: $47
    cp a                                          ; $75a4: $bf
    and e                                         ; $75a5: $a3
    ld [bc], a                                    ; $75a6: $02
    ld e, a                                       ; $75a7: $5f
    pop de                                        ; $75a8: $d1
    cpl                                           ; $75a9: $2f
    db $fd                                        ; $75aa: $fd
    rst $38                                       ; $75ab: $ff
    sub $6c                                       ; $75ac: $d6 $6c
    inc b                                         ; $75ae: $04
    add h                                         ; $75af: $84
    nop                                           ; $75b0: $00
    rst $38                                       ; $75b1: $ff
    ld [hl], c                                    ; $75b2: $71
    cp $8d                                        ; $75b3: $fe $8d
    rst $38                                       ; $75b5: $ff
    cp b                                          ; $75b6: $b8
    rst $10                                       ; $75b7: $d7
    dec d                                         ; $75b8: $15
    nop                                           ; $75b9: $00
    ld a, [$1000]                                 ; $75ba: $fa $00 $10
    ld c, b                                       ; $75bd: $48
    nop                                           ; $75be: $00
    and b                                         ; $75bf: $a0
    inc b                                         ; $75c0: $04
    pop de                                        ; $75c1: $d1
    nop                                           ; $75c2: $00
    ld b, $60                                     ; $75c3: $06 $60
    adc b                                         ; $75c5: $88
    or b                                          ; $75c6: $b0
    ld b, b                                       ; $75c7: $40
    xor b                                         ; $75c8: $a8
    ld d, b                                       ; $75c9: $50
    ld d, b                                       ; $75ca: $50
    nop                                           ; $75cb: $00
    xor b                                         ; $75cc: $a8
    xor d                                         ; $75cd: $aa
    ld b, h                                       ; $75ce: $44
    rla                                           ; $75cf: $17
    ld b, d                                       ; $75d0: $42
    ld a, [hl+]                                   ; $75d1: $2a
    ld bc, $0025                                  ; $75d2: $01 $25 $00
    ret nc                                        ; $75d5: $d0

    inc bc                                        ; $75d6: $03
    db $10                                        ; $75d7: $10
    dec b                                         ; $75d8: $05
    ld [$040a], sp                                ; $75d9: $08 $0a $04
    ld bc, $1200                                  ; $75dc: $01 $00 $12
    db $e3                                        ; $75df: $e3

jr_0a4_75e0:
    rra                                           ; $75e0: $1f
    pop af                                        ; $75e1: $f1
    rrca                                          ; $75e2: $0f
    inc de                                        ; $75e3: $13
    rst $28                                       ; $75e4: $ef
    inc hl                                        ; $75e5: $23
    nop                                           ; $75e6: $00
    ld e, a                                       ; $75e7: $5f
    and e                                         ; $75e8: $a3
    ld e, a                                       ; $75e9: $5f
    add [hl]                                      ; $75ea: $86
    ld a, a                                       ; $75eb: $7f
    sub e                                         ; $75ec: $93
    ld l, a                                       ; $75ed: $6f
    and [hl]                                      ; $75ee: $a6
    nop                                           ; $75ef: $00
    ld e, a                                       ; $75f0: $5f
    ld a, [hl-]                                   ; $75f1: $3a
    push de                                       ; $75f2: $d5
    ld e, l                                       ; $75f3: $5d
    or d                                          ; $75f4: $b2
    rst $28                                       ; $75f5: $ef
    ret nc                                        ; $75f6: $d0

    ld e, c                                       ; $75f7: $59
    nop                                           ; $75f8: $00
    cp [hl]                                       ; $75f9: $be
    ld a, [hl+]                                   ; $75fa: $2a
    ret nz                                        ; $75fb: $c0

    ld [hl], c                                    ; $75fc: $71
    add d                                         ; $75fd: $82
    and b                                         ; $75fe: $a0
    ld [bc], a                                    ; $75ff: $02
    jp nc, $f680                                  ; $7600: $d2 $80 $f6

    dec b                                         ; $7603: $05
    ld d, h                                       ; $7604: $54
    xor e                                         ; $7605: $ab
    add sp, $17                                   ; $7606: $e8 $17
    ld e, [hl]                                    ; $7608: $5e
    and c                                         ; $7609: $a1
    nop                                           ; $760a: $00
    add c                                         ; $760b: $81
    ld a, [c]                                     ; $760c: $f2
    inc bc                                        ; $760d: $03
    xor b                                         ; $760e: $a8
    ld d, a                                       ; $760f: $57
    push af                                       ; $7610: $f5
    ld a, [bc]                                    ; $7611: $0a
    ld [$aaf7], sp                                ; $7612: $08 $f7 $aa
    ld a, [bc]                                    ; $7615: $0a
    inc b                                         ; $7616: $04
    xor c                                         ; $7617: $a9
    ld d, [hl]                                    ; $7618: $56
    ld [bc], a                                    ; $7619: $02
    db $fd                                        ; $761a: $fd
    xor e                                         ; $761b: $ab
    adc d                                         ; $761c: $8a
    inc b                                         ; $761d: $04
    ld d, b                                       ; $761e: $50
    xor a                                         ; $761f: $af
    ld bc, $f40b                                  ; $7620: $01 $0b $f4
    rst $38                                       ; $7623: $ff
    nop                                           ; $7624: $00
    ld e, a                                       ; $7625: $5f
    and b                                         ; $7626: $a0
    nop                                           ; $7627: $00
    ld a, [hl-]                                   ; $7628: $3a
    rlca                                          ; $7629: $07
    ld b, b                                       ; $762a: $40
    rst $38                                       ; $762b: $ff
    ld [hl], d                                    ; $762c: $72
    ld [bc], a                                    ; $762d: $02
    ld c, d                                       ; $762e: $4a
    rst $38                                       ; $762f: $ff
    rst $10                                       ; $7630: $d7
    jr z, jr_0a4_75e0                             ; $7631: $28 $ad

    ld d, d                                       ; $7633: $52
    db $10                                        ; $7634: $10
    ld d, d                                       ; $7635: $52
    xor l                                         ; $7636: $ad
    nop                                           ; $7637: $00
    adc $10                                       ; $7638: $ce $10
    ld c, b                                       ; $763a: $48
    rst $38                                       ; $763b: $ff
    sub l                                         ; $763c: $95
    ld l, d                                       ; $763d: $6a
    jp nz, $0a52                                  ; $763e: $c2 $52 $0a

    ret nc                                        ; $7641: $d0

    ld c, b                                       ; $7642: $48
    ld bc, $faff                                  ; $7643: $01 $ff $fa
    dec b                                         ; $7646: $05
    ldh [rOBP0], a                                ; $7647: $e0 $48
    db $10                                        ; $7649: $10
    db $10                                        ; $764a: $10
    rst $38                                       ; $764b: $ff
    xor l                                         ; $764c: $ad
    ld d, d                                       ; $764d: $52
    ldh a, [rOBP0]                                ; $764e: $f0 $48
    nop                                           ; $7650: $00
    rst $38                                       ; $7651: $ff
    cpl                                           ; $7652: $2f
    ret nc                                        ; $7653: $d0

    add d                                         ; $7654: $82
    nop                                           ; $7655: $00
    ld c, c                                       ; $7656: $49
    xor a                                         ; $7657: $af
    rst $38                                       ; $7658: $ff
    rst $30                                       ; $7659: $f7
    rst $38                                       ; $765a: $ff
    ld c, a                                       ; $765b: $4f
    ld a, b                                       ; $765c: $78
    ld b, $0f                                     ; $765d: $06 $0f
    nop                                           ; $765f: $00
    rst $38                                       ; $7660: $ff
    rst $18                                       ; $7661: $df
    rst $38                                       ; $7662: $ff
    rst $10                                       ; $7663: $d7
    cpl                                           ; $7664: $2f
    ld h, a                                       ; $7665: $67
    sbc a                                         ; $7666: $9f
    ld d, l                                       ; $7667: $55
    add b                                         ; $7668: $80
    ld e, c                                       ; $7669: $59
    ld [bc], a                                    ; $766a: $02
    ld a, a                                       ; $766b: $7f
    ld a, a                                       ; $766c: $7f
    cp a                                          ; $766d: $bf
    cp a                                          ; $766e: $bf
    ld a, a                                       ; $766f: $7f
    ld a, a                                       ; $7670: $7f
    adc a                                         ; $7671: $8f
    inc b                                         ; $7672: $04
    sub c                                         ; $7673: $91
    ld e, l                                       ; $7674: $5d
    ld e, a                                       ; $7675: $5f
    sbc a                                         ; $7676: $9f
    sbc l                                         ; $7677: $9d
    db $10                                        ; $7678: $10
    ld [$fdfd], sp                                ; $7679: $08 $fd $fd
    nop                                           ; $767c: $00
    cp $fe                                        ; $767d: $fe $fe
    db $fd                                        ; $767f: $fd
    db $fd                                        ; $7680: $fd
    ld a, $46                                     ; $7681: $3e $46
    ld [hl], l                                    ; $7683: $75
    ld a, l                                       ; $7684: $7d
    nop                                           ; $7685: $00
    ld a, [hl]                                    ; $7686: $7e
    halt                                          ; $7687: $76
    rst $30                                       ; $7688: $f7
    rrca                                          ; $7689: $0f
    rst $00                                       ; $768a: $c7
    ccf                                           ; $768b: $3f
    and a                                         ; $768c: $a7
    ld e, a                                       ; $768d: $5f
    nop                                           ; $768e: $00
    rrca                                          ; $768f: $0f
    rst $38                                       ; $7690: $ff
    cp a                                          ; $7691: $bf
    rlca                                          ; $7692: $07
    ld d, a                                       ; $7693: $57
    rrca                                          ; $7694: $0f
    rrca                                          ; $7695: $0f
    rlca                                          ; $7696: $07
    inc a                                         ; $7697: $3c
    dec de                                        ; $7698: $1b
    rlca                                          ; $7699: $07
    inc h                                         ; $769a: $24
    ld [$4804], sp                                ; $769b: $08 $04 $48
    inc h                                         ; $769e: $24
    ld [$4804], sp                                ; $769f: $08 $04 $48
    rst $38                                       ; $76a2: $ff
    nop                                           ; $76a3: $00
    ld d, b                                       ; $76a4: $50
    ei                                            ; $76a5: $fb
    dec l                                         ; $76a6: $2d
    rlca                                          ; $76a7: $07
    ld e, e                                       ; $76a8: $5b
    ld [hl+], a                                   ; $76a9: $22
    ld [de], a                                    ; $76aa: $12
    rst $28                                       ; $76ab: $ef
    nop                                           ; $76ac: $00
    cp l                                          ; $76ad: $bd
    nop                                           ; $76ae: $00
    inc bc                                        ; $76af: $03
    ccf                                           ; $76b0: $3f
    rst $38                                       ; $76b1: $ff
    ld b, e                                       ; $76b2: $43
    cp a                                          ; $76b3: $bf
    xor e                                         ; $76b4: $ab
    ld d, l                                       ; $76b5: $55
    ld [hl], b                                    ; $76b6: $70
    ld a, [de]                                    ; $76b7: $1a
    ld [bc], a                                    ; $76b8: $02
    ld c, $01                                     ; $76b9: $0e $01
    xor d                                         ; $76bb: $aa
    call nc, $f24f                                ; $76bc: $d4 $4f $f2
    ld [hl+], a                                   ; $76bf: $22
    db $fd                                        ; $76c0: $fd
    ret nc                                        ; $76c1: $d0

    ld c, $02                                     ; $76c2: $0e $02
    nop                                           ; $76c4: $00
    ld c, d                                       ; $76c5: $4a

jr_0a4_76c6:
    add a                                         ; $76c6: $87
    dec [hl]                                      ; $76c7: $35
    rst $08                                       ; $76c8: $cf
    set 7, a                                      ; $76c9: $cb $ff
    nop                                           ; $76cb: $00
    ld hl, $8000                                  ; $76cc: $21 $00 $80
    ld hl, $4190                                  ; $76cf: $21 $90 $41
    ld l, c                                       ; $76d2: $69
    add d                                         ; $76d3: $82
    nop                                           ; $76d4: $00
    cp $00                                        ; $76d5: $fe $00
    cp c                                          ; $76d7: $b9
    ld b, d                                       ; $76d8: $42
    ld d, h                                       ; $76d9: $54
    xor c                                         ; $76da: $a9
    xor a                                         ; $76db: $af
    ret nc                                        ; $76dc: $d0

    inc bc                                        ; $76dd: $03
    cp $00                                        ; $76de: $fe $00
    ld h, a                                       ; $76e0: $67
    ld e, $d2                                     ; $76e1: $1e $d2
    cpl                                           ; $76e3: $2f
    ld h, a                                       ; $76e4: $67
    ld e, $d6                                     ; $76e5: $1e $d6
    ld l, $00                                     ; $76e7: $2e $00
    and a                                         ; $76e9: $a7
    ld e, [hl]                                    ; $76ea: $5e
    inc c                                         ; $76eb: $0c
    cp $27                                        ; $76ec: $fe $27
    sbc $a0                                       ; $76ee: $de $a0
    ld [bc], a                                    ; $76f0: $02
    ld bc, HeaderSGBFlag                          ; $76f1: $01 $46 $01
    jr z, jr_0a4_76c6                             ; $76f4: $28 $d0

    stop                                          ; $76f6: $10 $00
    ld d, b                                       ; $76f8: $50
    rst $10                                       ; $76f9: $d7
    ld b, $00                                     ; $76fa: $06 $00

jr_0a4_76fc:
    add b                                         ; $76fc: $80
    stop                                          ; $76fd: $10 $00
    db $10                                        ; $76ff: $10
    ccf                                           ; $7700: $3f
    rst $38                                       ; $7701: $ff
    add c                                         ; $7702: $81
    ld a, a                                       ; $7703: $7f
    jr nz, @-$15                                  ; $7704: $20 $e9

    rla                                           ; $7706: $17
    ret nz                                        ; $7707: $c0

    ld a, [hl-]                                   ; $7708: $3a
    rst $10                                       ; $7709: $d7
    add sp, -$56                                  ; $770a: $e8 $aa
    push af                                       ; $770c: $f5
    ld d, c                                       ; $770d: $51
    nop                                           ; $770e: $00
    cp [hl]                                       ; $770f: $be

Call_0a4_7710:
    xor d                                         ; $7710: $aa
    rra                                           ; $7711: $1f
    ld [de], a                                    ; $7712: $12
    rrca                                          ; $7713: $0f
    xor c                                         ; $7714: $a9
    rlca                                          ; $7715: $07
    ld d, h                                       ; $7716: $54
    nop                                           ; $7717: $00
    adc e                                         ; $7718: $8b
    xor e                                         ; $7719: $ab
    rst $10                                       ; $771a: $d7
    ld c, h                                       ; $771b: $4c
    cp [hl]                                       ; $771c: $be
    ld h, $df                                     ; $771d: $26 $df
    adc a                                         ; $771f: $8f
    nop                                           ; $7720: $00
    ld a, h                                       ; $7721: $7c
    and [hl]                                      ; $7722: $a6
    ld e, h                                       ; $7723: $5c
    ld c, a                                       ; $7724: $4f
    cp h                                          ; $7725: $bc
    ld e, $fc                                     ; $7726: $1e $fc
    adc l                                         ; $7728: $8d
    nop                                           ; $7729: $00
    rst $38                                       ; $772a: $ff
    db $dd                                        ; $772b: $dd
    cp $01                                        ; $772c: $fe $01
    db $10                                        ; $772e: $10
    call nc, Call_000_012b                        ; $772f: $d4 $2b $01
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    inc b                                         ; $7734: $04
    nop                                           ; $7735: $00
    ld b, c                                       ; $7736: $41
    nop                                           ; $7737: $00
    xor d                                         ; $7738: $aa

jr_0a4_7739:
    nop                                           ; $7739: $00
    dec d                                         ; $773a: $15
    nop                                           ; $773b: $00
    ldh [$c2], a                                  ; $773c: $e0 $c2
    rra                                           ; $773e: $1f

Jump_0a4_773f:
    ld a, [hl]                                    ; $773f: $7e
    rst $38                                       ; $7740: $ff
    add d                                         ; $7741: $82
    ld a, l                                       ; $7742: $7d
    ld d, l                                       ; $7743: $55
    ld h, b                                       ; $7744: $60
    xor e                                         ; $7745: $ab
    ld [bc], a                                    ; $7746: $02
    dec bc                                        ; $7747: $0b
    ld b, $0b                                     ; $7748: $06 $0b
    cp $01                                        ; $774a: $fe $01
    db $eb                                        ; $774c: $eb
    db $fc                                        ; $774d: $fc
    cp l                                          ; $774e: $bd
    nop                                           ; $774f: $00
    cp $5a                                        ; $7750: $fe $5a
    cp l                                          ; $7752: $bd
    ld e, d                                       ; $7753: $5a
    ccf                                           ; $7754: $3f
    cp b                                          ; $7755: $b8
    rra                                           ; $7756: $1f
    cp b                                          ; $7757: $b8
    jr nz, jr_0a4_7739                            ; $7758: $20 $df

    ret c                                         ; $775a: $d8

    sub d                                         ; $775b: $92
    ld b, $ff                                     ; $775c: $06 $ff
    nop                                           ; $775e: $00
    ld a, [hl]                                    ; $775f: $7e
    add c                                         ; $7760: $81

jr_0a4_7761:
    xor e                                         ; $7761: $ab
    nop                                           ; $7762: $00
    ld d, h                                       ; $7763: $54
    jp nc, $b5ed                                  ; $7764: $d2 $ed $b5

    ld a, a                                       ; $7767: $7f
    jr z, jr_0a4_7761                             ; $7768: $28 $f7

    jr nz, jr_0a4_76fc                            ; $776a: $20 $90

    sbc h                                         ; $776c: $9c
    inc b                                         ; $776d: $04
    xor d                                         ; $776e: $aa
    push de                                       ; $776f: $d5
    sbc [hl]                                      ; $7770: $9e
    inc b                                         ; $7771: $04
    push bc                                       ; $7772: $c5
    nop                                           ; $7773: $00
    rst $38                                       ; $7774: $ff
    xor a                                         ; $7775: $af
    inc de                                        ; $7776: $13
    ret nc                                        ; $7777: $d0

    ccf                                           ; $7778: $3f
    ret nz                                        ; $7779: $c0

    ld a, h                                       ; $777a: $7c
    ld c, $35                                     ; $777b: $0e $35
    jp z, $024c                                   ; $777d: $ca $4c $02

    ld e, h                                       ; $7780: $5c
    inc b                                         ; $7781: $04
    ret nz                                        ; $7782: $c0

    halt                                          ; $7783: $76
    add hl, bc                                    ; $7784: $09
    adc h                                         ; $7785: $8c
    ld c, $0f                                     ; $7786: $0e $0f
    rlca                                          ; $7788: $07
    inc bc                                        ; $7789: $03
    rst $38                                       ; $778a: $ff
    cpl                                           ; $778b: $2f
    rlca                                          ; $778c: $07
    dec b                                         ; $778d: $05
    inc de                                        ; $778e: $13
    rlca                                          ; $778f: $07
    inc bc                                        ; $7790: $03
    rlca                                          ; $7791: $07
    dec bc                                        ; $7792: $0b
    inc b                                         ; $7793: $04
    nop                                           ; $7794: $00
    adc e                                         ; $7795: $8b
    jr nz, @+$33                                  ; $7796: $20 $31

    ld [hl-], a                                   ; $7798: $32
    ld b, c                                       ; $7799: $41
    ld e, a                                       ; $779a: $5f
    ld d, h                                       ; $779b: $54
    add hl, de                                    ; $779c: $19
    jr nz, @+$2b                                  ; $779d: $20 $29

    dec b                                         ; $779f: $05
    ld a, l                                       ; $77a0: $7d
    ld d, h                                       ; $77a1: $54
    add hl, de                                    ; $77a2: $19
    ld b, e                                       ; $77a3: $43
    add b                                         ; $77a4: $80
    jp $af06                                      ; $77a5: $c3 $06 $af


    add a                                         ; $77a8: $87
    sbc e                                         ; $77a9: $9b
    add a                                         ; $77aa: $87
    adc a                                         ; $77ab: $8f
    add a                                         ; $77ac: $87
    cp e                                          ; $77ad: $bb
    nop                                           ; $77ae: $00
    add a                                         ; $77af: $87
    ld a, a                                       ; $77b0: $7f
    add a                                         ; $77b1: $87
    rst $30                                       ; $77b2: $f7
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rlca                                          ; $77b5: $07
    rst $30                                       ; $77b6: $f7
    ld bc, $ef0f                                  ; $77b7: $01 $0f $ef
    rla                                           ; $77ba: $17
    rst $30                                       ; $77bb: $f7
    rrca                                          ; $77bc: $0f
    ld b, a                                       ; $77bd: $47
    cp a                                          ; $77be: $bf
    dec bc                                        ; $77bf: $0b
    nop                                           ; $77c0: $00
    ld hl, sp-$74                                 ; $77c1: $f8 $8c
    ld b, $60                                     ; $77c3: $06 $60
    ld c, c                                       ; $77c5: $49
    ld b, h                                       ; $77c6: $44
    ld [$4960], sp                                ; $77c7: $08 $60 $49
    ld b, h                                       ; $77ca: $44
    ld [$e0ff], sp                                ; $77cb: $08 $ff $e0
    rst $28                                       ; $77ce: $ef
    ld [bc], a                                    ; $77cf: $02
    ldh a, [$f7]                                  ; $77d0: $f0 $f7
    add sp, -$11                                  ; $77d2: $e8 $ef
    ldh a, [$e2]                                  ; $77d4: $f0 $e2
    xor e                                         ; $77d6: $ab
    nop                                           ; $77d7: $00
    ldh [$81], a                                  ; $77d8: $e0 $81
    sub h                                         ; $77da: $94
    inc b                                         ; $77db: $04
    ld c, c                                       ; $77dc: $49
    or [hl]                                       ; $77dd: $b6
    add d                                         ; $77de: $82
    ld a, l                                       ; $77df: $7d
    cpl                                           ; $77e0: $2f
    ret nc                                        ; $77e1: $d0

    sub h                                         ; $77e2: $94
    ld [$9080], sp                                ; $77e3: $08 $80 $90
    jr jr_0a4_7833                                ; $77e6: $18 $4b

    or h                                          ; $77e8: $b4
    db $10                                        ; $77e9: $10
    rst $28                                       ; $77ea: $ef
    adc $31                                       ; $77eb: $ce $31
    ld bc, $fe10                                  ; $77ed: $01 $10 $fe
    ld b, b                                       ; $77f0: $40
    cp a                                          ; $77f1: $bf
    and b                                         ; $77f2: $a0
    jr jr_0a4_7847                                ; $77f3: $18 $52

    xor l                                         ; $77f5: $ad
    dec b                                         ; $77f6: $05
    ld a, [$ae02]                                 ; $77f7: $fa $02 $ae
    ld d, c                                       ; $77fa: $51
    ld b, b                                       ; $77fb: $40
    cp a                                          ; $77fc: $bf
    dec d                                         ; $77fd: $15
    ld [$2810], a                                 ; $77fe: $ea $10 $28
    jr nz, jr_0a4_780f                            ; $7801: $20 $0c

    rst $18                                       ; $7803: $df
    sub h                                         ; $7804: $94
    ld l, e                                       ; $7805: $6b
    ld bc, $149a                                  ; $7806: $01 $9a $14
    ld c, h                                       ; $7809: $4c
    rrca                                          ; $780a: $0f
    xor l                                         ; $780b: $ad
    ld d, e                                       ; $780c: $53
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00

jr_0a4_780f:
    rst $38                                       ; $780f: $ff
    ld l, l                                       ; $7810: $6d
    sub e                                         ; $7811: $93
    nop                                           ; $7812: $00
    rst $38                                       ; $7813: $ff

jr_0a4_7814:
    ld e, l                                       ; $7814: $5d
    and e                                         ; $7815: $a3
    jr nz, jr_0a4_7814                            ; $7816: $20 $fc

    inc bc                                        ; $7818: $03
    ld e, h                                       ; $7819: $5c
    rrca                                          ; $781a: $0f
    ld a, d                                       ; $781b: $7a
    add l                                         ; $781c: $85
    nop                                           ; $781d: $00
    rst $38                                       ; $781e: $ff
    sub a                                         ; $781f: $97
    rlca                                          ; $7820: $07
    ld l, b                                       ; $7821: $68
    ld b, b                                       ; $7822: $40
    cp a                                          ; $7823: $bf
    dec b                                         ; $7824: $05
    ld a, [$18e0]                                 ; $7825: $fa $e0 $18
    ld [hl], b                                    ; $7828: $70
    ld a, [de]                                    ; $7829: $1a
    ld a, [c]                                     ; $782a: $f2
    dec sp                                        ; $782b: $3b
    add hl, bc                                    ; $782c: $09
    nop                                           ; $782d: $00
    rst $38                                       ; $782e: $ff
    push af                                       ; $782f: $f5
    ld a, [bc]                                    ; $7830: $0a
    db $10                                        ; $7831: $10
    ld e, b                                       ; $7832: $58

jr_0a4_7833:
    ld d, a                                       ; $7833: $57
    xor b                                         ; $7834: $a8
    db $10                                        ; $7835: $10
    ld c, h                                       ; $7836: $4c
    ld c, $51                                     ; $7837: $0e $51
    xor [hl]                                      ; $7839: $ae
    add b                                         ; $783a: $80
    ld a, a                                       ; $783b: $7f
    or b                                          ; $783c: $b0
    ld a, [bc]                                    ; $783d: $0a
    inc h                                         ; $783e: $24
    inc d                                         ; $783f: $14
    xor l                                         ; $7840: $ad
    rlca                                          ; $7841: $07
    xor d                                         ; $7842: $aa
    nop                                           ; $7843: $00
    ld d, l                                       ; $7844: $55
    inc b                                         ; $7845: $04
    ei                                            ; $7846: $fb

jr_0a4_7847:
    xor c                                         ; $7847: $a9
    ld d, [hl]                                    ; $7848: $56
    nop                                           ; $7849: $00
    rst $38                                       ; $784a: $ff
    jp nc, Jump_000_2d40                          ; $784b: $d2 $40 $2d

jr_0a4_784e:
    jr nc, jr_0a4_7869                            ; $784e: $30 $19

    ld c, d                                       ; $7850: $4a
    or l                                          ; $7851: $b5
    db $10                                        ; $7852: $10
    rst $28                                       ; $7853: $ef
    ld a, [hl]                                    ; $7854: $7e
    add c                                         ; $7855: $81
    ld h, b                                       ; $7856: $60
    nop                                           ; $7857: $00
    jr jr_0a4_785a                                ; $7858: $18 $00

jr_0a4_785a:
    ld h, b                                       ; $785a: $60
    jr z, jr_0a4_785d                             ; $785b: $28 $00

jr_0a4_785d:
    ld d, l                                       ; $785d: $55
    inc bc                                        ; $785e: $03
    nop                                           ; $785f: $00
    ld a, [bc]                                    ; $7860: $0a
    nop                                           ; $7861: $00
    ld b, c                                       ; $7862: $41
    inc bc                                        ; $7863: $03
    nop                                           ; $7864: $00
    dec d                                         ; $7865: $15
    nop                                           ; $7866: $00
    rrca                                          ; $7867: $0f
    nop                                           ; $7868: $00

jr_0a4_7869:
    dec bc                                        ; $7869: $0b
    ld c, b                                       ; $786a: $48
    inc h                                         ; $786b: $24
    ld a, [de]                                    ; $786c: $1a
    jr jr_0a4_784e                                ; $786d: $18 $df

    jr nz, @+$68                                  ; $786f: $20 $66

    inc b                                         ; $7871: $04
    jr nz, jr_0a4_78eb                            ; $7872: $20 $77

    adc b                                         ; $7874: $88
    ret z                                         ; $7875: $c8

    cp d                                          ; $7876: $ba
    dec bc                                        ; $7877: $0b
    ld a, [hl+]                                   ; $7878: $2a
    ld [$41be], sp                                ; $7879: $08 $be $41
    dec h                                         ; $787c: $25
    ld b, $08                                     ; $787d: $06 $08
    rst $38                                       ; $787f: $ff
    nop                                           ; $7880: $00
    ld b, b                                       ; $7881: $40
    db $db                                        ; $7882: $db
    jr nz, jr_0a4_7895                            ; $7883: $20 $10

    rst $18                                       ; $7885: $df
    jr nz, @-$08                                  ; $7886: $20 $f6

    add hl, bc                                    ; $7888: $09
    rst $38                                       ; $7889: $ff
    add b                                         ; $788a: $80
    add b                                         ; $788b: $80
    adc b                                         ; $788c: $88
    inc b                                         ; $788d: $04
    inc b                                         ; $788e: $04
    ld l, [hl]                                    ; $788f: $6e
    sub b                                         ; $7890: $90
    ld e, a                                       ; $7891: $5f
    nop                                           ; $7892: $00
    cp a                                          ; $7893: $bf
    nop                                           ; $7894: $00

jr_0a4_7895:
    nop                                           ; $7895: $00
    dec hl                                        ; $7896: $2b
    inc b                                         ; $7897: $04
    ld e, a                                       ; $7898: $5f
    nop                                           ; $7899: $00
    ld a, $01                                     ; $789a: $3e $01
    ld l, a                                       ; $789c: $6f
    nop                                           ; $789d: $00
    nop                                           ; $789e: $00
    ld a, e                                       ; $789f: $7b
    inc b                                         ; $78a0: $04
    cp a                                          ; $78a1: $bf
    ld b, b                                       ; $78a2: $40
    rst $18                                       ; $78a3: $df
    ld [hl+], a                                   ; $78a4: $22
    rst $38                                       ; $78a5: $ff
    add b                                         ; $78a6: $80
    ld [de], a                                    ; $78a7: $12
    rst $30                                       ; $78a8: $f7
    ld [$b3df], sp                                ; $78a9: $08 $df $b3
    dec b                                         ; $78ac: $05
    db $fd                                        ; $78ad: $fd
    ld [bc], a                                    ; $78ae: $02
    ld b, $08                                     ; $78af: $06 $08
    ld a, a                                       ; $78b1: $7f
    ld b, c                                       ; $78b2: $41
    add b                                         ; $78b3: $80
    sub d                                         ; $78b4: $92
    ld [bc], a                                    ; $78b5: $02
    inc b                                         ; $78b6: $04
    rst $38                                       ; $78b7: $ff
    db $10                                        ; $78b8: $10
    sbc $a1                                       ; $78b9: $de $a1
    ld [$0008], sp                                ; $78bb: $08 $08 $00
    ccf                                           ; $78be: $3f
    ret nz                                        ; $78bf: $c0

jr_0a4_78c0:
    db $fd                                        ; $78c0: $fd
    nop                                           ; $78c1: $00
    cp [hl]                                       ; $78c2: $be
    ld b, b                                       ; $78c3: $40
    db $fd                                        ; $78c4: $fd
    nop                                           ; $78c5: $00
    db $10                                        ; $78c6: $10
    cp $08                                        ; $78c7: $fe $08
    ld a, l                                       ; $78c9: $7d
    jr jr_0a4_78cc                                ; $78ca: $18 $00

jr_0a4_78cc:
    or $08                                        ; $78cc: $f6 $08
    rst $38                                       ; $78ce: $ff
    jr nz, jr_0a4_78d1                            ; $78cf: $20 $00

jr_0a4_78d1:
    ld a, a                                       ; $78d1: $7f
    db $10                                        ; $78d2: $10
    dec sp                                        ; $78d3: $3b
    inc b                                         ; $78d4: $04
    ld e, c                                       ; $78d5: $59
    ld b, $2f                                     ; $78d6: $06 $2f
    nop                                           ; $78d8: $00
    ld bc, $005f                                  ; $78d9: $01 $5f $00
    dec hl                                        ; $78dc: $2b
    nop                                           ; $78dd: $00
    dec b                                         ; $78de: $05
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    jr nc, @+$12                                  ; $78e1: $30 $10

    jr nz, jr_0a4_78c0                            ; $78e3: $20 $db

    inc h                                         ; $78e5: $24
    sub e                                         ; $78e6: $93
    ld b, $40                                     ; $78e7: $06 $40
    rst $28                                       ; $78e9: $ef
    db $10                                        ; $78ea: $10

jr_0a4_78eb:
    rst $38                                       ; $78eb: $ff
    ld [bc], a                                    ; $78ec: $02
    inc c                                         ; $78ed: $0c
    rst $38                                       ; $78ee: $ff
    nop                                           ; $78ef: $00
    cp a                                          ; $78f0: $bf
    ld b, b                                       ; $78f1: $40
    ld a, $00                                     ; $78f2: $3e $00
    adc [hl]                                      ; $78f4: $8e
    ld [$3b00], sp                                ; $78f5: $08 $00 $3b
    ld b, b                                       ; $78f8: $40
    call nz, Call_000_0e68                        ; $78f9: $c4 $68 $0e
    rst $18                                       ; $78fc: $df
    jr nz, @-$03                                  ; $78fd: $20 $fb

    dec b                                         ; $78ff: $05
    rst $18                                       ; $7900: $df
    jr nz, jr_0a4_7923                            ; $7901: $20 $20

    rst $30                                       ; $7903: $f7
    ld [$1880], sp                                ; $7904: $08 $80 $18
    ld l, a                                       ; $7907: $6f
    sub b                                         ; $7908: $90
    xor [hl]                                      ; $7909: $ae
    rst $38                                       ; $790a: $ff
    ld sp, hl                                     ; $790b: $f9
    nop                                           ; $790c: $00
    ld a, [hl]                                    ; $790d: $7e
    pop af                                        ; $790e: $f1
    ld a, a                                       ; $790f: $7f
    ld b, a                                       ; $7910: $47
    ei                                            ; $7911: $fb
    rst $18                                       ; $7912: $df
    ld l, a                                       ; $7913: $6f
    cp a                                          ; $7914: $bf
    nop                                           ; $7915: $00
    ld e, a                                       ; $7916: $5f
    cp $3f                                        ; $7917: $fe $3f
    ld a, l                                       ; $7919: $7d
    cp a                                          ; $791a: $bf
    cp d                                          ; $791b: $ba
    rst $38                                       ; $791c: $ff
    db $fd                                        ; $791d: $fd
    nop                                           ; $791e: $00
    sbc $f8                                       ; $791f: $de $f8
    rst $18                                       ; $7921: $df
    sub l                                         ; $7922: $95

jr_0a4_7923:
    cp $18                                        ; $7923: $fe $18
    rst $28                                       ; $7925: $ef
    ld a, [de]                                    ; $7926: $1a
    ld b, b                                       ; $7927: $40
    db $ed                                        ; $7928: $ed
    add $04                                       ; $7929: $c6 $04
    rst $30                                       ; $792b: $f7
    push hl                                       ; $792c: $e5
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $30                                       ; $792f: $f7
    ld a, [c]                                     ; $7930: $f2
    nop                                           ; $7931: $00
    rst $38                                       ; $7932: $ff
    rlca                                          ; $7933: $07
    ei                                            ; $7934: $fb
    ld e, $e3                                     ; $7935: $1e $e3
    cp $03                                        ; $7937: $fe $03
    ld h, e                                       ; $7939: $63
    ld [bc], a                                    ; $793a: $02
    sbc l                                         ; $793b: $9d
    ld bc, $d5ff                                  ; $793c: $01 $ff $d5
    rst $38                                       ; $793f: $ff
    and d                                         ; $7940: $a2
    ld c, [hl]                                    ; $7941: $4e
    inc b                                         ; $7942: $04
    ld [hl-], a                                   ; $7943: $32
    nop                                           ; $7944: $00
    rst $08                                       ; $7945: $cf
    ld h, l                                       ; $7946: $65
    sbc a                                         ; $7947: $9f
    srl a                                         ; $7948: $cb $3f
    inc de                                        ; $794a: $13
    rst $38                                       ; $794b: $ff
    add [hl]                                      ; $794c: $86
    nop                                           ; $794d: $00
    rst $38                                       ; $794e: $ff
    daa                                           ; $794f: $27
    reti                                          ; $7950: $d9


    sub d                                         ; $7951: $92
    db $ed                                        ; $7952: $ed
    ld d, c                                       ; $7953: $51
    cp $fd                                        ; $7954: $fe $fd
    ld d, l                                       ; $7956: $55
    cp $6f                                        ; $7957: $fe $6f
    add hl, bc                                    ; $7959: $09
    dec d                                         ; $795a: $15
    inc h                                         ; $795b: $24
    rlca                                          ; $795c: $07
    ld b, c                                       ; $795d: $41
    jr nz, jr_0a4_7960                            ; $795e: $20 $00

jr_0a4_7960:
    call nc, $06f2                                ; $7960: $d4 $f2 $06
    ld bc, $7fc8                                  ; $7963: $01 $c8 $7f
    ld d, b                                       ; $7966: $50
    rst $38                                       ; $7967: $ff
    jp nz, $f57d                                  ; $7968: $c2 $7d $f5

    or l                                          ; $796b: $b5
    inc d                                         ; $796c: $14
    nop                                           ; $796d: $00
    push af                                       ; $796e: $f5

jr_0a4_796f:
    rst $38                                       ; $796f: $ff
    db $ec                                        ; $7970: $ec
    rst $38                                       ; $7971: $ff
    push de                                       ; $7972: $d5
    cp $ae                                        ; $7973: $fe $ae
    db $fd                                        ; $7975: $fd
    nop                                           ; $7976: $00
    pop de                                        ; $7977: $d1
    db $fc                                        ; $7978: $fc
    call z, $aaf5                                 ; $7979: $cc $f5 $aa
    ld d, l                                       ; $797c: $55
    ld d, b                                       ; $797d: $50
    xor a                                         ; $797e: $af
    add b                                         ; $797f: $80
    cp d                                          ; $7980: $ba
    ld c, $a8                                     ; $7981: $0e $a8
    rst $38                                       ; $7983: $ff
    inc bc                                        ; $7984: $03
    db $fc                                        ; $7985: $fc
    and a                                         ; $7986: $a7
    ld e, b                                       ; $7987: $58
    ld l, d                                       ; $7988: $6a
    nop                                           ; $7989: $00
    sub l                                         ; $798a: $95
    dec hl                                        ; $798b: $2b
    db $f4                                        ; $798c: $f4
    ld h, [hl]                                    ; $798d: $66
    cp c                                          ; $798e: $b9
    inc a                                         ; $798f: $3c
    db $d3                                        ; $7990: $d3
    ld sp, $df00                                  ; $7991: $31 $00 $df
    ld [hl], d                                    ; $7994: $72
    sbc a                                         ; $7995: $9f
    push af                                       ; $7996: $f5
    rrca                                          ; $7997: $0f
    ei                                            ; $7998: $fb
    rrca                                          ; $7999: $0f
    or a                                          ; $799a: $b7
    jr nz, @+$51                                  ; $799b: $20 $4f

    rst $38                                       ; $799d: $ff
    xor d                                         ; $799e: $aa
    rrca                                          ; $799f: $0f
    cp $ea                                        ; $79a0: $fe $ea
    rst $38                                       ; $79a2: $ff
    di                                            ; $79a3: $f3
    cp $06                                        ; $79a4: $fe $06
    ld a, [$d3f7]                                 ; $79a6: $fa $f7 $d3
    cp $fb                                        ; $79a9: $fe $fb
    ld b, b                                       ; $79ab: $40
    dec b                                         ; $79ac: $05
    xor [hl]                                      ; $79ad: $ae
    dec c                                         ; $79ae: $0d
    ld [bc], a                                    ; $79af: $02
    add b                                         ; $79b0: $80
    nop                                           ; $79b1: $00
    dec [hl]                                      ; $79b2: $35
    rra                                           ; $79b3: $1f
    rst $28                                       ; $79b4: $ef
    rst $38                                       ; $79b5: $ff
    rrca                                          ; $79b6: $0f
    rst $28                                       ; $79b7: $ef
    rra                                           ; $79b8: $1f
    xor a                                         ; $79b9: $af
    ret nc                                        ; $79ba: $d0

    and $14                                       ; $79bb: $e6 $14
    db $d3                                        ; $79bd: $d3
    rrca                                          ; $79be: $0f
    ld a, [c]                                     ; $79bf: $f2
    inc h                                         ; $79c0: $24
    nop                                           ; $79c1: $00
    jp c, $9df4                                   ; $79c2: $da $f4 $9d

    pop af                                        ; $79c5: $f1
    nop                                           ; $79c6: $00
    or d                                          ; $79c7: $b2
    ld d, e                                       ; $79c8: $53
    db $f4                                        ; $79c9: $f4
    ld d, $ec                                     ; $79ca: $16 $ec
    add hl, de                                    ; $79cc: $19
    ld [bc], a                                    ; $79cd: $02
    ld hl, sp+$00                                 ; $79ce: $f8 $00
    ld d, b                                       ; $79d0: $50
    push hl                                       ; $79d1: $e5
    ld h, h                                       ; $79d2: $64
    push bc                                       ; $79d3: $c5
    ld [hl], b                                    ; $79d4: $70
    push bc                                       ; $79d5: $c5
    ld h, l                                       ; $79d6: $65
    call nz, $7000                                ; $79d7: $c4 $00 $70
    push bc                                       ; $79da: $c5
    ld d, l                                       ; $79db: $55
    db $ec                                        ; $79dc: $ec
    ld l, b                                       ; $79dd: $68
    call z, $9b50                                 ; $79de: $cc $50 $9b
    nop                                           ; $79e1: $00
    and b                                         ; $79e2: $a0
    inc [hl]                                      ; $79e3: $34
    ld c, h                                       ; $79e4: $4c
    ld h, d                                       ; $79e5: $62
    sub h                                         ; $79e6: $94
    jp nz, $8128                                  ; $79e7: $c2 $28 $81

    ld bc, $0040                                  ; $79ea: $01 $40 $00
    jr nz, jr_0a4_796f                            ; $79ed: $20 $80

    ld bc, $a640                                  ; $79ef: $01 $40 $a6
    ld l, d                                       ; $79f2: $6a
    rlca                                          ; $79f3: $07
    nop                                           ; $79f4: $00
    ld a, [hl]                                    ; $79f5: $7e
    add c                                         ; $79f6: $81
    push de                                       ; $79f7: $d5
    ld a, [hl+]                                   ; $79f8: $2a
    ld c, e                                       ; $79f9: $4b
    or a                                          ; $79fa: $b7
    xor l                                         ; $79fb: $ad
    cp $06                                        ; $79fc: $fe $06
    inc d                                         ; $79fe: $14
    rst $28                                       ; $79ff: $ef
    inc b                                         ; $7a00: $04
    rst $38                                       ; $7a01: $ff
    ld e, [hl]                                    ; $7a02: $5e
    and h                                         ; $7a03: $a4
    rlca                                          ; $7a04: $07
    jr nz, jr_0a4_7a71                            ; $7a05: $20 $6a

    xor b                                         ; $7a07: $a8
    nop                                           ; $7a08: $00
    ld d, l                                       ; $7a09: $55
    ld [$f400], a                                 ; $7a0a: $ea $00 $f4
    ld [$8058], sp                                ; $7a0d: $08 $58 $80
    ldh [$0e], a                                  ; $7a10: $e0 $0e
    ld [bc], a                                    ; $7a12: $02
    ld b, b                                       ; $7a13: $40
    ld [$7a80], sp                                ; $7a14: $08 $80 $7a
    dec b                                         ; $7a17: $05
    add b                                         ; $7a18: $80
    dec c                                         ; $7a19: $0d
    ld [hl-], a                                   ; $7a1a: $32
    ld a, $80                                     ; $7a1b: $3e $80
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    and b                                         ; $7a1f: $a0
    ld [$00c0], sp                                ; $7a20: $08 $c0 $00
    ld d, b                                       ; $7a23: $50
    add d                                         ; $7a24: $82
    ret nz                                        ; $7a25: $c0

    nop                                           ; $7a26: $00
    nop                                           ; $7a27: $00
    xor b                                         ; $7a28: $a8
    nop                                           ; $7a29: $00
    ldh a, [rP1]                                  ; $7a2a: $f0 $00
    ret nc                                        ; $7a2c: $d0

    inc h                                         ; $7a2d: $24
    jr nc, jr_0a4_7a30                            ; $7a2e: $30 $00

jr_0a4_7a30:
    ld [hl], b                                    ; $7a30: $70
    jr nc, @+$72                                  ; $7a31: $30 $70

    ld [hl], b                                    ; $7a33: $70
    jr c, @+$6a                                   ; $7a34: $38 $68

    inc [hl]                                      ; $7a36: $34
    ld d, h                                       ; $7a37: $54
    nop                                           ; $7a38: $00
    ld l, d                                       ; $7a39: $6a
    ld d, h                                       ; $7a3a: $54
    ld l, d                                       ; $7a3b: $6a
    halt                                          ; $7a3c: $76
    ld c, b                                       ; $7a3d: $48
    ld e, h                                       ; $7a3e: $5c
    ld h, e                                       ; $7a3f: $63
    ld e, l                                       ; $7a40: $5d
    nop                                           ; $7a41: $00
    ld h, d                                       ; $7a42: $62
    ld e, l                                       ; $7a43: $5d
    ld h, d                                       ; $7a44: $62
    ld d, h                                       ; $7a45: $54
    ld l, e                                       ; $7a46: $6b
    ld d, l                                       ; $7a47: $55
    ld l, e                                       ; $7a48: $6b
    ld e, [hl]                                    ; $7a49: $5e
    nop                                           ; $7a4a: $00
    ld h, b                                       ; $7a4b: $60
    ld d, h                                       ; $7a4c: $54
    ld l, d                                       ; $7a4d: $6a
    ld e, h                                       ; $7a4e: $5c
    ld h, d                                       ; $7a4f: $62
    ld l, h                                       ; $7a50: $6c
    ld d, d                                       ; $7a51: $52
    ld e, a                                       ; $7a52: $5f
    ld c, $00                                     ; $7a53: $0e $00
    dec h                                         ; $7a55: $25
    nop                                           ; $7a56: $00
    ld [bc], a                                    ; $7a57: $02
    sbc b                                         ; $7a58: $98
    ld bc, $2803                                  ; $7a59: $01 $03 $28
    sbc h                                         ; $7a5c: $9c
    ld bc, $0001                                  ; $7a5d: $01 $01 $00
    cp a                                          ; $7a60: $bf
    nop                                           ; $7a61: $00
    ld d, a                                       ; $7a62: $57
    nop                                           ; $7a63: $00
    dec bc                                        ; $7a64: $0b
    ld b, b                                       ; $7a65: $40
    ld [bc], a                                    ; $7a66: $02
    nop                                           ; $7a67: $00
    ld [hl-], a                                   ; $7a68: $32
    dec b                                         ; $7a69: $05
    db $10                                        ; $7a6a: $10
    reti                                          ; $7a6b: $d9


    dec b                                         ; $7a6c: $05
    inc e                                         ; $7a6d: $1c
    ld [de], a                                    ; $7a6e: $12
    cp $09                                        ; $7a6f: $fe $09

jr_0a4_7a71:
    add sp, $09                                   ; $7a71: $e8 $09
    ld [hl], a                                    ; $7a73: $77
    ld de, $bf08                                  ; $7a74: $11 $08 $bf
    jr nz, jr_0a4_7aa4                            ; $7a77: $20 $2b

    ld [$1810], sp                                ; $7a79: $08 $10 $18
    jr z, jr_0a4_7ace                             ; $7a7c: $28 $50

    jr z, jr_0a4_7a80                             ; $7a7e: $28 $00

jr_0a4_7a80:
    ld [c], a                                     ; $7a80: $e2
    sbc h                                         ; $7a81: $9c
    ld h, d                                       ; $7a82: $62
    call c, $5422                                 ; $7a83: $dc $22 $54
    xor d                                         ; $7a86: $aa
    call nc, $ea40                                ; $7a87: $d4 $40 $ea
    ld d, b                                       ; $7a8a: $50
    jr z, jr_0a4_7a92                             ; $7a8b: $28 $05

    nop                                           ; $7a8d: $00
    inc bc                                        ; $7a8e: $03
    db $10                                        ; $7a8f: $10
    dec c                                         ; $7a90: $0d
    nop                                           ; $7a91: $00

jr_0a4_7a92:
    ld bc, $4209                                  ; $7a92: $01 $09 $42
    cpl                                           ; $7a95: $2f
    nop                                           ; $7a96: $00
    ld d, a                                       ; $7a97: $57
    ld [$323f], sp                                ; $7a98: $08 $3f $32
    ld [bc], a                                    ; $7a9b: $02
    nop                                           ; $7a9c: $00
    ld a, [$fd00]                                 ; $7a9d: $fa $00 $fd
    nop                                           ; $7aa0: $00
    call nc, $f820                                ; $7aa1: $d4 $20 $f8

jr_0a4_7aa4:
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    ld a, h                                       ; $7aa6: $7c
    add b                                         ; $7aa7: $80
    or $00                                        ; $7aa8: $f6 $00
    sbc $20                                       ; $7aaa: $de $20
    db $fd                                        ; $7aac: $fd
    ld [bc], a                                    ; $7aad: $02
    ld bc, $0e0c                                  ; $7aae: $01 $0c $0e
    inc c                                         ; $7ab1: $0c
    ld c, $16                                     ; $7ab2: $0e $16
    inc e                                         ; $7ab4: $1c
    ld a, [hl+]                                   ; $7ab5: $2a
    ld b, b                                       ; $7ab6: $40
    jr nc, jr_0a4_7ac8                            ; $7ab7: $30 $0f

    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    rrca                                          ; $7abb: $0f
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    dec d                                         ; $7abe: $15
    nop                                           ; $7abf: $00
    ld bc, $0021                                  ; $7ac0: $01 $21 $00
    inc bc                                        ; $7ac3: $03
    daa                                           ; $7ac4: $27
    nop                                           ; $7ac5: $00
    inc b                                         ; $7ac6: $04
    ld [hl], c                                    ; $7ac7: $71

jr_0a4_7ac8:
    nop                                           ; $7ac8: $00
    ld d, e                                       ; $7ac9: $53
    nop                                           ; $7aca: $00
    dec sp                                        ; $7acb: $3b
    nop                                           ; $7acc: $00
    rlca                                          ; $7acd: $07

jr_0a4_7ace:
    nop                                           ; $7ace: $00
    add b                                         ; $7acf: $80
    nop                                           ; $7ad0: $00
    ld l, c                                       ; $7ad1: $69
    nop                                           ; $7ad2: $00
    ld a, [bc]                                    ; $7ad3: $0a
    inc d                                         ; $7ad4: $14
    sub d                                         ; $7ad5: $92
    nop                                           ; $7ad6: $00
    ld e, $00                                     ; $7ad7: $1e $00
    ld [bc], a                                    ; $7ad9: $02
    nop                                           ; $7ada: $00
    ret z                                         ; $7adb: $c8

    nop                                           ; $7adc: $00
    ld hl, $ff00                                  ; $7add: $21 $00 $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rrca                                          ; $7ae5: $0f
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    dec d                                         ; $7ae8: $15
    nop                                           ; $7ae9: $00
    ld bc, $0015                                  ; $7aea: $01 $15 $00
    ld bc, $0015                                  ; $7aed: $01 $15 $00
    ld bc, $001b                                  ; $7af0: $01 $1b $00
    ld [bc], a                                    ; $7af3: $02
    ld [bc], a                                    ; $7af4: $02
    nop                                           ; $7af5: $00
    inc d                                         ; $7af6: $14
    nop                                           ; $7af7: $00
    add a                                         ; $7af8: $87
    nop                                           ; $7af9: $00
    rlca                                          ; $7afa: $07
    nop                                           ; $7afb: $00
    call nc, Call_000_3b00                        ; $7afc: $d4 $00 $3b
    nop                                           ; $7aff: $00
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rrca                                          ; $7b06: $0f
    nop                                           ; $7b07: $00
    nop                                           ; $7b08: $00
    dec d                                         ; $7b09: $15
    nop                                           ; $7b0a: $00
    ld bc, $001b                                  ; $7b0b: $01 $1b $00
    ld [bc], a                                    ; $7b0e: $02
    dec de                                        ; $7b0f: $1b
    nop                                           ; $7b10: $00
    ld [bc], a                                    ; $7b11: $02
    daa                                           ; $7b12: $27
    nop                                           ; $7b13: $00
    inc b                                         ; $7b14: $04
    ld [bc], a                                    ; $7b15: $02
    nop                                           ; $7b16: $00
    ld d, $00                                     ; $7b17: $16 $00
    sbc $00                                       ; $7b19: $de $00
    rlca                                          ; $7b1b: $07
    ld [bc], a                                    ; $7b1c: $02
    ld b, e                                       ; $7b1d: $43
    nop                                           ; $7b1e: $00
    ld e, c                                       ; $7b1f: $59
    nop                                           ; $7b20: $00
    rlca                                          ; $7b21: $07
    nop                                           ; $7b22: $00
    pop bc                                        ; $7b23: $c1
    nop                                           ; $7b24: $00
    ld e, h                                       ; $7b25: $5c
    nop                                           ; $7b26: $00
    ld a, [bc]                                    ; $7b27: $0a
    inc e                                         ; $7b28: $1c
    rlc b                                         ; $7b29: $cb $00
    call c, $ff00                                 ; $7b2b: $dc $00 $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    inc c                                         ; $7b33: $0c
    nop                                           ; $7b34: $00
    nop                                           ; $7b35: $00
    jr jr_0a4_7b38                                ; $7b36: $18 $00

jr_0a4_7b38:
    ld [bc], a                                    ; $7b38: $02
    jr jr_0a4_7b3b                                ; $7b39: $18 $00

jr_0a4_7b3b:
    ld [bc], a                                    ; $7b3b: $02
    ld e, $00                                     ; $7b3c: $1e $00
    inc bc                                        ; $7b3e: $03
    rlca                                          ; $7b3f: $07
    nop                                           ; $7b40: $00
    inc sp                                        ; $7b41: $33
    nop                                           ; $7b42: $00
    ld sp, $0700                                  ; $7b43: $31 $00 $07
    ld [bc], a                                    ; $7b46: $02
    inc sp                                        ; $7b47: $33
    nop                                           ; $7b48: $00
    db $d3                                        ; $7b49: $d3
    nop                                           ; $7b4a: $00
    ld a, [bc]                                    ; $7b4b: $0a
    dec de                                        ; $7b4c: $1b
    cp h                                          ; $7b4d: $bc
    nop                                           ; $7b4e: $00
    xor [hl]                                      ; $7b4f: $ae
    nop                                           ; $7b50: $00
    ld [bc], a                                    ; $7b51: $02
    nop                                           ; $7b52: $00
    db $e4                                        ; $7b53: $e4
    nop                                           ; $7b54: $00
    and b                                         ; $7b55: $a0
    nop                                           ; $7b56: $00
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    add hl, bc                                    ; $7b5d: $09
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    add hl, bc                                    ; $7b60: $09
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    rrca                                          ; $7b63: $0f
    nop                                           ; $7b64: $00
    ld bc, $0002                                  ; $7b65: $01 $02 $00
    ld b, b                                       ; $7b68: $40
    nop                                           ; $7b69: $00
    ld a, a                                       ; $7b6a: $7f
    nop                                           ; $7b6b: $00
    ld [hl], c                                    ; $7b6c: $71
    nop                                           ; $7b6d: $00
    add b                                         ; $7b6e: $80
    nop                                           ; $7b6f: $00
    dec hl                                        ; $7b70: $2b
    nop                                           ; $7b71: $00
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    dec d                                         ; $7b78: $15
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    dec de                                        ; $7b7b: $1b
    nop                                           ; $7b7c: $00
    ld bc, $001b                                  ; $7b7d: $01 $1b $00
    ld bc, $001b                                  ; $7b80: $01 $1b $00
    ld bc, $001b                                  ; $7b83: $01 $1b $00
    ld bc, $001b                                  ; $7b86: $01 $1b $00
    ld bc, $0021                                  ; $7b89: $01 $21 $00
    ld [bc], a                                    ; $7b8c: $02
    ld [bc], a                                    ; $7b8d: $02
    nop                                           ; $7b8e: $00
    ld hl, $4600                                  ; $7b8f: $21 $00 $46
    nop                                           ; $7b92: $00
    ld [bc], a                                    ; $7b93: $02
    ld bc, $016f                                  ; $7b94: $01 $6f $01
    ld [hl], b                                    ; $7b97: $70
    nop                                           ; $7b98: $00
    rlca                                          ; $7b99: $07
    nop                                           ; $7b9a: $00
    sbc b                                         ; $7b9b: $98
    ld bc, $0083                                  ; $7b9c: $01 $83 $00
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    inc c                                         ; $7ba5: $0c
    nop                                           ; $7ba6: $00
    nop                                           ; $7ba7: $00
    jr jr_0a4_7baa                                ; $7ba8: $18 $00

jr_0a4_7baa:
    ld [bc], a                                    ; $7baa: $02
    jr jr_0a4_7bad                                ; $7bab: $18 $00

jr_0a4_7bad:
    ld [bc], a                                    ; $7bad: $02
    ld e, $00                                     ; $7bae: $1e $00
    inc bc                                        ; $7bb0: $03
    rlca                                          ; $7bb1: $07
    ld [bc], a                                    ; $7bb2: $02
    ld d, $00                                     ; $7bb3: $16 $00
    jp nc, $0700                                  ; $7bb5: $d2 $00 $07

    nop                                           ; $7bb8: $00
    daa                                           ; $7bb9: $27
    nop                                           ; $7bba: $00
    ld [hl-], a                                   ; $7bbb: $32
    nop                                           ; $7bbc: $00
    ld a, [bc]                                    ; $7bbd: $0a
    ld de, $00a8                                  ; $7bbe: $11 $a8 $00
    ld sp, $0200                                  ; $7bc1: $31 $00 $02
    nop                                           ; $7bc4: $00
    rst $00                                       ; $7bc5: $c7
    nop                                           ; $7bc6: $00
    rst $00                                       ; $7bc7: $c7
    nop                                           ; $7bc8: $00
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    inc c                                         ; $7bcf: $0c
    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    ld [de], a                                    ; $7bd2: $12
    nop                                           ; $7bd3: $00
    ld bc, $0012                                  ; $7bd4: $01 $12 $00
    ld bc, $001e                                  ; $7bd7: $01 $1e $00
    inc bc                                        ; $7bda: $03
    ld [bc], a                                    ; $7bdb: $02
    nop                                           ; $7bdc: $00
    jr jr_0a4_7bdf                                ; $7bdd: $18 $00

jr_0a4_7bdf:
    cp a                                          ; $7bdf: $bf
    nop                                           ; $7be0: $00
    rlca                                          ; $7be1: $07
    ld [bc], a                                    ; $7be2: $02
    sub c                                         ; $7be3: $91
    nop                                           ; $7be4: $00
    ld d, d                                       ; $7be5: $52
    nop                                           ; $7be6: $00
    rlca                                          ; $7be7: $07
    nop                                           ; $7be8: $00
    sbc e                                         ; $7be9: $9b
    nop                                           ; $7bea: $00
    db $d3                                        ; $7beb: $d3
    nop                                           ; $7bec: $00
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    inc c                                         ; $7bf3: $0c
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    ld c, [hl]                                    ; $7bf6: $4e
    nop                                           ; $7bf7: $00
    dec bc                                        ; $7bf8: $0b
    sub [hl]                                      ; $7bf9: $96
    nop                                           ; $7bfa: $00
    rla                                           ; $7bfb: $17
    sbc $00                                       ; $7bfc: $de $00
    inc hl                                        ; $7bfe: $23
    ld l, [hl]                                    ; $7bff: $6e
    ld bc, $0015                                  ; $7c00: $01 $15 $00
    ld h, [hl]                                    ; $7c03: $66
    ld [bc], a                                    ; $7c04: $02
    ld l, [hl]                                    ; $7c05: $6e
    nop                                           ; $7c06: $00
    dec d                                         ; $7c07: $15
    nop                                           ; $7c08: $00
    ld b, [hl]                                    ; $7c09: $46
    ld bc, $006e                                  ; $7c0a: $01 $6e $00
    ld d, $00                                     ; $7c0d: $16 $00
    cp a                                          ; $7c0f: $bf
    nop                                           ; $7c10: $00
    ld l, [hl]                                    ; $7c11: $6e
    nop                                           ; $7c12: $00
    rla                                           ; $7c13: $17
    nop                                           ; $7c14: $00
    rst $00                                       ; $7c15: $c7
    ld bc, $006e                                  ; $7c16: $01 $6e $00
    ld e, $00                                     ; $7c19: $1e $00
    ld a, a                                       ; $7c1b: $7f
    nop                                           ; $7c1c: $00
    ld l, [hl]                                    ; $7c1d: $6e
    nop                                           ; $7c1e: $00
    ld h, $00                                     ; $7c1f: $26 $00
    inc d                                         ; $7c21: $14
    nop                                           ; $7c22: $00
    ld l, [hl]                                    ; $7c23: $6e
    nop                                           ; $7c24: $00
    jr z, jr_0a4_7c27                             ; $7c25: $28 $00

jr_0a4_7c27:
    inc a                                         ; $7c27: $3c
    nop                                           ; $7c28: $00
    ld l, [hl]                                    ; $7c29: $6e
    nop                                           ; $7c2a: $00
    add hl, hl                                    ; $7c2b: $29
    nop                                           ; $7c2c: $00
    add hl, de                                    ; $7c2d: $19
    ld [bc], a                                    ; $7c2e: $02
    ld l, [hl]                                    ; $7c2f: $6e
    nop                                           ; $7c30: $00
    ld a, [hl+]                                   ; $7c31: $2a
    nop                                           ; $7c32: $00
    adc a                                         ; $7c33: $8f
    ld bc, $006e                                  ; $7c34: $01 $6e $00
    dec l                                         ; $7c37: $2d
    nop                                           ; $7c38: $00
    cp e                                          ; $7c39: $bb
    ld [bc], a                                    ; $7c3a: $02
    ld l, [hl]                                    ; $7c3b: $6e
    ld bc, $003d                                  ; $7c3c: $01 $3d $00
    ld de, $6e01                                  ; $7c3f: $11 $01 $6e
    nop                                           ; $7c42: $00
    ld b, c                                       ; $7c43: $41
    nop                                           ; $7c44: $00
    add d                                         ; $7c45: $82
    ld [bc], a                                    ; $7c46: $02
    ld l, [hl]                                    ; $7c47: $6e
    ld bc, $0041                                  ; $7c48: $01 $41 $00
    db $ec                                        ; $7c4b: $ec
    ld bc, $006e                                  ; $7c4c: $01 $6e $00
    ld c, [hl]                                    ; $7c4f: $4e
    nop                                           ; $7c50: $00
    ld b, e                                       ; $7c51: $43
    ld [bc], a                                    ; $7c52: $02
    ld l, [hl]                                    ; $7c53: $6e
    ld bc, $0051                                  ; $7c54: $01 $51 $00
    or [hl]                                       ; $7c57: $b6
    ld bc, $016e                                  ; $7c58: $01 $6e $01
    ld d, h                                       ; $7c5b: $54
    nop                                           ; $7c5c: $00
    inc l                                         ; $7c5d: $2c
    nop                                           ; $7c5e: $00
    ld l, [hl]                                    ; $7c5f: $6e
    nop                                           ; $7c60: $00
    ld e, h                                       ; $7c61: $5c
    nop                                           ; $7c62: $00
    jr nc, jr_0a4_7c66                            ; $7c63: $30 $01

    ld l, [hl]                                    ; $7c65: $6e

jr_0a4_7c66:
    nop                                           ; $7c66: $00
    ld h, e                                       ; $7c67: $63
    nop                                           ; $7c68: $00
    ld a, [$6e01]                                 ; $7c69: $fa $01 $6e
    nop                                           ; $7c6c: $00
    ld l, h                                       ; $7c6d: $6c
    nop                                           ; $7c6e: $00
    cp c                                          ; $7c6f: $b9
    nop                                           ; $7c70: $00
    ld l, [hl]                                    ; $7c71: $6e
    ld bc, $0078                                  ; $7c72: $01 $78 $00
    ld c, h                                       ; $7c75: $4c
    nop                                           ; $7c76: $00
    ld l, [hl]                                    ; $7c77: $6e
    nop                                           ; $7c78: $00
    ld a, l                                       ; $7c79: $7d
    nop                                           ; $7c7a: $00
    adc l                                         ; $7c7b: $8d
    ld bc, $026e                                  ; $7c7c: $01 $6e $02
    ld a, l                                       ; $7c7f: $7d
    nop                                           ; $7c80: $00
    dec de                                        ; $7c81: $1b
    nop                                           ; $7c82: $00
    ld l, [hl]                                    ; $7c83: $6e
    nop                                           ; $7c84: $00
    ld a, [hl]                                    ; $7c85: $7e
    nop                                           ; $7c86: $00
    ld h, [hl]                                    ; $7c87: $66
    ld bc, $016e                                  ; $7c88: $01 $6e $01
    add c                                         ; $7c8b: $81
    nop                                           ; $7c8c: $00
    sub d                                         ; $7c8d: $92
    nop                                           ; $7c8e: $00
    ld l, [hl]                                    ; $7c8f: $6e
    ld bc, $008a                                  ; $7c90: $01 $8a $00
    ld e, e                                       ; $7c93: $5b
    ld [bc], a                                    ; $7c94: $02
    ld l, [hl]                                    ; $7c95: $6e
    nop                                           ; $7c96: $00
    adc d                                         ; $7c97: $8a
    nop                                           ; $7c98: $00
    sub b                                         ; $7c99: $90
    ld [bc], a                                    ; $7c9a: $02
    ld l, [hl]                                    ; $7c9b: $6e
    ld bc, $008f                                  ; $7c9c: $01 $8f $00
    ld [$6e00], a                                 ; $7c9f: $ea $00 $6e
    nop                                           ; $7ca2: $00
    and b                                         ; $7ca3: $a0
    nop                                           ; $7ca4: $00
    inc [hl]                                      ; $7ca5: $34
    ld bc, $006e                                  ; $7ca6: $01 $6e $00
    and b                                         ; $7ca9: $a0
    nop                                           ; $7caa: $00
    jp z, Jump_0a4_6e01                           ; $7cab: $ca $01 $6e

    nop                                           ; $7cae: $00
    and b                                         ; $7caf: $a0
    nop                                           ; $7cb0: $00
    inc l                                         ; $7cb1: $2c
    ld [bc], a                                    ; $7cb2: $02
    ld l, [hl]                                    ; $7cb3: $6e
    nop                                           ; $7cb4: $00
    xor e                                         ; $7cb5: $ab
    nop                                           ; $7cb6: $00
    dec sp                                        ; $7cb7: $3b
    nop                                           ; $7cb8: $00
    ld l, [hl]                                    ; $7cb9: $6e
    nop                                           ; $7cba: $00
    or b                                          ; $7cbb: $b0
    nop                                           ; $7cbc: $00
    add l                                         ; $7cbd: $85
    ld bc, $006e                                  ; $7cbe: $01 $6e $00
    cp d                                          ; $7cc1: $ba
    nop                                           ; $7cc2: $00
    add h                                         ; $7cc3: $84
    nop                                           ; $7cc4: $00
    ld l, [hl]                                    ; $7cc5: $6e
    ld bc, $00ba                                  ; $7cc6: $01 $ba $00
    or $01                                        ; $7cc9: $f6 $01
    ld l, [hl]                                    ; $7ccb: $6e
    ld bc, $00be                                  ; $7ccc: $01 $be $00
    rst $00                                       ; $7ccf: $c7
    ld [bc], a                                    ; $7cd0: $02
    ld l, [hl]                                    ; $7cd1: $6e
    ld bc, $00c0                                  ; $7cd2: $01 $c0 $00
    jr jr_0a4_7cd8                                ; $7cd5: $18 $01

    ld l, [hl]                                    ; $7cd7: $6e

jr_0a4_7cd8:
    ld bc, $00d0                                  ; $7cd8: $01 $d0 $00
    rst $18                                       ; $7cdb: $df
    nop                                           ; $7cdc: $00
    ld l, [hl]                                    ; $7cdd: $6e
    nop                                           ; $7cde: $00
    call nc, Call_0a4_5700                        ; $7cdf: $d4 $00 $57
    ld [bc], a                                    ; $7ce2: $02
    ld l, [hl]                                    ; $7ce3: $6e
    nop                                           ; $7ce4: $00
    sub $00                                       ; $7ce5: $d6 $00
    ld d, $02                                     ; $7ce7: $16 $02
    ld l, [hl]                                    ; $7ce9: $6e
    nop                                           ; $7cea: $00
    reti                                          ; $7ceb: $d9


    nop                                           ; $7cec: $00
    inc a                                         ; $7ced: $3c
    ld bc, $006e                                  ; $7cee: $01 $6e $00
    sbc $00                                       ; $7cf1: $de $00
    sbc b                                         ; $7cf3: $98
    ld [bc], a                                    ; $7cf4: $02
    ld l, [hl]                                    ; $7cf5: $6e
    nop                                           ; $7cf6: $00
    ld [c], a                                     ; $7cf7: $e2
    nop                                           ; $7cf8: $00
    or c                                          ; $7cf9: $b1
    ld bc, $006e                                  ; $7cfa: $01 $6e $00
    db $e3                                        ; $7cfd: $e3
    nop                                           ; $7cfe: $00
    jr jr_0a4_7d01                                ; $7cff: $18 $00

jr_0a4_7d01:
    ld l, [hl]                                    ; $7d01: $6e
    ld bc, $00e3                                  ; $7d02: $01 $e3 $00
    ld e, [hl]                                    ; $7d05: $5e
    nop                                           ; $7d06: $00
    ld l, [hl]                                    ; $7d07: $6e
    nop                                           ; $7d08: $00
    add sp, $00                                   ; $7d09: $e8 $00
    and b                                         ; $7d0b: $a0
    nop                                           ; $7d0c: $00
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    ld [de], a                                    ; $7d13: $12
    nop                                           ; $7d14: $00
    nop                                           ; $7d15: $00
    ld [de], a                                    ; $7d16: $12
    nop                                           ; $7d17: $00
    nop                                           ; $7d18: $00
    ld [de], a                                    ; $7d19: $12
    nop                                           ; $7d1a: $00
    nop                                           ; $7d1b: $00
    inc h                                         ; $7d1c: $24
    nop                                           ; $7d1d: $00
    inc bc                                        ; $7d1e: $03
    inc h                                         ; $7d1f: $24
    nop                                           ; $7d20: $00
    inc bc                                        ; $7d21: $03
    inc h                                         ; $7d22: $24
    nop                                           ; $7d23: $00
    inc bc                                        ; $7d24: $03
    ld [bc], a                                    ; $7d25: $02
    ld bc, $00af                                  ; $7d26: $01 $af $00
    ld c, b                                       ; $7d29: $48
    nop                                           ; $7d2a: $00
    dec bc                                        ; $7d2b: $0b
    nop                                           ; $7d2c: $00
    cp [hl]                                       ; $7d2d: $be
    nop                                           ; $7d2e: $00
    cp b                                          ; $7d2f: $b8
    nop                                           ; $7d30: $00
    ld [$bf18], sp                                ; $7d31: $08 $18 $bf
    nop                                           ; $7d34: $00
    ld a, a                                       ; $7d35: $7f
    nop                                           ; $7d36: $00
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    ld [de], a                                    ; $7d3d: $12
    nop                                           ; $7d3e: $00
    nop                                           ; $7d3f: $00
    ld [de], a                                    ; $7d40: $12
    nop                                           ; $7d41: $00
    nop                                           ; $7d42: $00
    ld [de], a                                    ; $7d43: $12
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00
    ld [de], a                                    ; $7d46: $12
    nop                                           ; $7d47: $00
    nop                                           ; $7d48: $00
    ld [de], a                                    ; $7d49: $12
    nop                                           ; $7d4a: $00
    nop                                           ; $7d4b: $00
    ld [de], a                                    ; $7d4c: $12
    nop                                           ; $7d4d: $00
    nop                                           ; $7d4e: $00
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    inc b                                         ; $7d55: $04
    add hl, bc                                    ; $7d56: $09
    nop                                           ; $7d57: $00
    ld de, $2100                                  ; $7d58: $11 $00 $21
    nop                                           ; $7d5b: $00
    add hl, hl                                    ; $7d5c: $29
    nop                                           ; $7d5d: $00
    ld [bc], a                                    ; $7d5e: $02
    ld bc, $0406                                  ; $7d5f: $01 $06 $04
    ld b, $17                                     ; $7d62: $06 $17
    jr jr_0a4_7d7d                                ; $7d64: $18 $17

    ld bc, $0902                                  ; $7d66: $01 $02 $09
    inc c                                         ; $7d69: $0c
    add hl, bc                                    ; $7d6a: $09
    ld a, [bc]                                    ; $7d6b: $0a
    add hl, de                                    ; $7d6c: $19
    ld a, [de]                                    ; $7d6d: $1a
    dec de                                        ; $7d6e: $1b
    inc e                                         ; $7d6f: $1c
    add hl, bc                                    ; $7d70: $09
    dec e                                         ; $7d71: $1d
    ld e, $09                                     ; $7d72: $1e $09
    rra                                           ; $7d74: $1f
    inc e                                         ; $7d75: $1c
    inc bc                                        ; $7d76: $03
    inc bc                                        ; $7d77: $03
    rrca                                          ; $7d78: $0f
    inc b                                         ; $7d79: $04
    rrca                                          ; $7d7a: $0f
    jr nz, jr_0a4_7d9e                            ; $7d7b: $20 $21

jr_0a4_7d7d:
    jr nz, jr_0a4_7d82                            ; $7d7d: $20 $03

    ld bc, $0407                                  ; $7d7f: $01 $07 $04

jr_0a4_7d82:
    rlca                                          ; $7d82: $07
    ld [hl+], a                                   ; $7d83: $22
    ld [hl+], a                                   ; $7d84: $22
    rlca                                          ; $7d85: $07
    ld [bc], a                                    ; $7d86: $02
    dec b                                         ; $7d87: $05
    nop                                           ; $7d88: $00
    add hl, de                                    ; $7d89: $19
    nop                                           ; $7d8a: $00
    inc b                                         ; $7d8b: $04
    ld bc, $1000                                  ; $7d8c: $01 $00 $10
    inc d                                         ; $7d8f: $14
    dec d                                         ; $7d90: $15
    ld d, $17                                     ; $7d91: $16 $17
    jr jr_0a4_7dae                                ; $7d93: $18 $19

    ld a, [de]                                    ; $7d95: $1a
    dec de                                        ; $7d96: $1b
    ld hl, $2322                                  ; $7d97: $21 $22 $23
    rla                                           ; $7d9a: $17
    jr @+$1b                                      ; $7d9b: $18 $19

    ld a, [de]                                    ; $7d9d: $1a

jr_0a4_7d9e:
    dec de                                        ; $7d9e: $1b
    inc b                                         ; $7d9f: $04
    ld [bc], a                                    ; $7da0: $02
    ld bc, $240a                                  ; $7da1: $01 $0a $24
    dec h                                         ; $7da4: $25
    ld h, $17                                     ; $7da5: $26 $17
    daa                                           ; $7da7: $27
    jr z, jr_0a4_7dd3                             ; $7da8: $28 $29

    ld a, [hl+]                                   ; $7daa: $2a
    dec hl                                        ; $7dab: $2b
    inc l                                         ; $7dac: $2c
    ld [bc], a                                    ; $7dad: $02

jr_0a4_7dae:
    dec b                                         ; $7dae: $05
    nop                                           ; $7daf: $00
    dec d                                         ; $7db0: $15
    nop                                           ; $7db1: $00
    ld [bc], a                                    ; $7db2: $02
    nop                                           ; $7db3: $00
    ld bc, $010c                                  ; $7db4: $01 $0c $01
    ld [bc], a                                    ; $7db7: $02
    rrca                                          ; $7db8: $0f
    dec b                                         ; $7db9: $05
    ld b, $10                                     ; $7dba: $06 $10
    ld [hl-], a                                   ; $7dbc: $32
    inc sp                                        ; $7dbd: $33
    inc [hl]                                      ; $7dbe: $34
    dec [hl]                                      ; $7dbf: $35
    ld [hl], $37                                  ; $7dc0: $36 $37
    ld b, $04                                     ; $7dc2: $06 $04
    rla                                           ; $7dc4: $17
    ld [bc], a                                    ; $7dc5: $02
    jr c, jr_0a4_7e01                             ; $7dc6: $38 $39

    ld [bc], a                                    ; $7dc8: $02
    dec b                                         ; $7dc9: $05
    nop                                           ; $7dca: $00
    dec l                                         ; $7dcb: $2d
    nop                                           ; $7dcc: $00
    ld a, [bc]                                    ; $7dcd: $0a
    ld b, $30                                     ; $7dce: $06 $30
    inc h                                         ; $7dd0: $24
    jr nc, @+$33                                  ; $7dd1: $30 $31

jr_0a4_7dd3:
    dec [hl]                                      ; $7dd3: $35
    ld [hl-], a                                   ; $7dd4: $32
    inc sp                                        ; $7dd5: $33
    ld [hl], $46                                  ; $7dd6: $36 $46
    ld b, a                                       ; $7dd8: $47
    ld c, d                                       ; $7dd9: $4a
    ld l, [hl]                                    ; $7dda: $6e
    ld l, a                                       ; $7ddb: $6f
    ld [hl], b                                    ; $7ddc: $70
    ld [hl], c                                    ; $7ddd: $71
    ld [hl], d                                    ; $7dde: $72
    ld [hl], e                                    ; $7ddf: $73
    ld [hl], h                                    ; $7de0: $74
    ld [hl], l                                    ; $7de1: $75
    halt                                          ; $7de2: $76
    ld [hl], a                                    ; $7de3: $77
    ld a, b                                       ; $7de4: $78
    ld a, c                                       ; $7de5: $79
    ld a, d                                       ; $7de6: $7a
    ld a, e                                       ; $7de7: $7b
    ld a, h                                       ; $7de8: $7c
    ld a, l                                       ; $7de9: $7d
    ld a, [hl]                                    ; $7dea: $7e
    ld a, a                                       ; $7deb: $7f
    ld l, [hl]                                    ; $7dec: $6e
    ld l, a                                       ; $7ded: $6f
    ld [hl], b                                    ; $7dee: $70
    ld [hl], c                                    ; $7def: $71
    ld [hl], d                                    ; $7df0: $72
    ld [hl], e                                    ; $7df1: $73
    ld [hl], h                                    ; $7df2: $74
    ld [hl], l                                    ; $7df3: $75
    halt                                          ; $7df4: $76
    inc b                                         ; $7df5: $04
    rlca                                          ; $7df6: $07
    add b                                         ; $7df7: $80
    inc b                                         ; $7df8: $04
    add b                                         ; $7df9: $80
    add c                                         ; $7dfa: $81
    add d                                         ; $7dfb: $82
    add e                                         ; $7dfc: $83
    ld [bc], a                                    ; $7dfd: $02
    dec b                                         ; $7dfe: $05
    nop                                           ; $7dff: $00
    rla                                           ; $7e00: $17

jr_0a4_7e01:
    nop                                           ; $7e01: $00
    ld bc, $850b                                  ; $7e02: $01 $0b $85

Jump_0a4_7e05:
    ld c, $4d                                     ; $7e05: $0e $4d
    ld c, c                                       ; $7e07: $49
    ld a, [hl]                                    ; $7e08: $7e
    ld c, c                                       ; $7e09: $49
    ld a, a                                       ; $7e0a: $7f
    ld c, c                                       ; $7e0b: $49
    add b                                         ; $7e0c: $80
    add c                                         ; $7e0d: $81
    ld c, l                                       ; $7e0e: $4d
    add d                                         ; $7e0f: $82
    ld c, l                                       ; $7e10: $4d
    add e                                         ; $7e11: $83
    add h                                         ; $7e12: $84
    add l                                         ; $7e13: $85
    ld bc, $8d0d                                  ; $7e14: $01 $0d $8d
    ld c, $66                                     ; $7e17: $0e $66
    ld h, e                                       ; $7e19: $63
    add [hl]                                      ; $7e1a: $86
    ld h, e                                       ; $7e1b: $63
    add a                                         ; $7e1c: $87
    ld h, e                                       ; $7e1d: $63
    adc b                                         ; $7e1e: $88
    adc c                                         ; $7e1f: $89
    ld h, [hl]                                    ; $7e20: $66
    adc d                                         ; $7e21: $8a
    ld h, [hl]                                    ; $7e22: $66
    adc e                                         ; $7e23: $8b
    adc h                                         ; $7e24: $8c
    adc l                                         ; $7e25: $8d

    db $72, $00, $48, $04, $01, $d0, $00, $00, $08, $38, $00, $09, $00, $1e, $00, $00
    db $09, $16, $18, $09, $00, $01, $20, $26, $28, $09, $ff, $04, $10, $28, $18, $04
    db $48, $01, $80, $3c, $08, $04, $30, $71, $68, $5d, $08, $ff, $6b, $08, $6f, $20
    db $20, $50, $8e, $18, $60, $10, $38, $30, $51, $10, $78, $10, $ff, $10, $50, $80
    db $38, $46, $20, $a0, $38, $dc, $38, $38, $48, $0d, $20, $10, $58, $ff, $58, $18
    db $04, $10, $10, $28, $70, $28, $10, $30, $1a, $09, $04, $40, $0a, $48, $ff, $48
    db $48, $41, $30, $13, $70, $40, $68, $0c, $41, $90, $60, $30, $21, $04, $68, $ff
    db $d3, $50, $a8, $29, $65, $29, $9e, $58, $a2, $28, $8f, $40, $d7, $11, $a2, $58
    db $ff, $7f, $21, $87, $21, $b1, $59, $9d, $70, $b0, $11, $04, $38, $0b, $58, $a8
    db $31, $ff, $b8, $50, $10, $61, $90, $58, $2d, $80, $e3, $60, $72, $51, $48, $50
    db $b8, $49, $ff, $4c, $28, $7b, $79, $b3, $80, $b8, $80, $44, $40, $04, $43, $30
    db $4a, $44, $88, $ff, $0d, $58, $bc, $58, $94, $48, $20, $69, $dc, $b8, $ed, $81
    db $e8, $70, $64, $7a, $ff, $21, $a2, $85, $79, $48, $71, $b8, $60, $c7, $68, $1f
    db $69, $b8, $6a, $25, $04, $ff, $0c, $24, $14, $1c, $cb, $13, $40, $48, $01, $5c
    db $9c, $43, $66, $2c, $67, $04, $c0, $63, $23, $9c, $0c

    inc c                                         ; $7f11: $0c

jr_0a4_7f12:
    nop                                           ; $7f12: $00
    ld c, a                                       ; $7f13: $4f
    inc b                                         ; $7f14: $04
    ld bc, $00d0                                  ; $7f15: $01 $d0 $00
    nop                                           ; $7f18: $00
    ld c, $58                                     ; $7f19: $0e $58
    db $10                                        ; $7f1b: $10
    ld l, b                                       ; $7f1c: $68
    inc h                                         ; $7f1d: $24
    jr z, jr_0a4_7f24                             ; $7f1e: $28 $04

    jr c, jr_0a4_7f12                             ; $7f20: $38 $f0

    ld [bc], a                                    ; $7f22: $02
    ld a, b                                       ; $7f23: $78

jr_0a4_7f24:
    ld [hl+], a                                   ; $7f24: $22
    ld e, b                                       ; $7f25: $58
    ld d, h                                       ; $7f26: $54
    ld [hl], b                                    ; $7f27: $70
    add c                                         ; $7f28: $81
    ld h, b                                       ; $7f29: $60

    db $13, $00, $4b, $04, $01, $c0, $00, $00, $12, $d8, $00, $01, $18, $08, $08, $ff
    db $0c, $28, $32, $48, $19, $18, $0d, $30, $04, $18, $56, $18, $04, $38, $02, $70
    db $e0, $22, $60, $74, $70, $b1, $60

    dec c                                         ; $7f51: $0d
    nop                                           ; $7f52: $00
    ld b, a                                       ; $7f53: $47
    inc b                                         ; $7f54: $04
    ld bc, $00c8                                  ; $7f55: $01 $c8 $00
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    dec b                                         ; $7f5a: $05
    ld [$2804], sp                                ; $7f5b: $08 $04 $28
    ld [bc], a                                    ; $7f5e: $02
    ld hl, sp-$08                                 ; $7f5f: $f8 $f8
    inc sp                                        ; $7f61: $33
    jr jr_0a4_7f68                                ; $7f62: $18 $04

    jr z, @+$46                                   ; $7f64: $28 $44

    jr c, @+$55                                   ; $7f66: $38 $53

jr_0a4_7f68:
    ld c, b                                       ; $7f68: $48
    inc b                                         ; $7f69: $04
    ld e, b                                       ; $7f6a: $58
    dec c                                         ; $7f6b: $0d
    nop                                           ; $7f6c: $00
    ld e, a                                       ; $7f6d: $5f
    inc b                                         ; $7f6e: $04
    ld bc, $00d8                                  ; $7f6f: $01 $d8 $00
    dec c                                         ; $7f72: $0d
    ld d, b                                       ; $7f73: $50
    ld bc, $1000                                  ; $7f74: $01 $00 $10
    ld e, b                                       ; $7f77: $58

jr_0a4_7f78:
    inc h                                         ; $7f78: $24
    jr nc, @+$06                                  ; $7f79: $30 $04

    jr nc, @-$06                                  ; $7f7b: $30 $f8

    ld bc, $2878                                  ; $7f7d: $01 $78 $28
    jr jr_0a4_7f8a                                ; $7f80: $18 $08

    jr z, @+$47                                   ; $7f82: $28 $45

    ld [$4874], sp                                ; $7f84: $08 $74 $48
    dec bc                                        ; $7f87: $0b
    nop                                           ; $7f88: $00
    ld c, a                                       ; $7f89: $4f

jr_0a4_7f8a:
    inc b                                         ; $7f8a: $04
    ld bc, $00d0                                  ; $7f8b: $01 $d0 $00
    nop                                           ; $7f8e: $00
    ld c, $58                                     ; $7f8f: $0e $58
    db $10                                        ; $7f91: $10
    ld l, b                                       ; $7f92: $68
    inc h                                         ; $7f93: $24
    jr z, jr_0a4_7f9a                             ; $7f94: $28 $04

    jr c, jr_0a4_7f78                             ; $7f96: $38 $e0

    ld [bc], a                                    ; $7f98: $02
    ld a, b                                       ; $7f99: $78

jr_0a4_7f9a:
    ld [hl+], a                                   ; $7f9a: $22
    ld [hl], b                                    ; $7f9b: $70
    ld [hl], e                                    ; $7f9c: $73
    ld d, b                                       ; $7f9d: $50

    db $22, $00, $4f, $04, $01, $b0, $00, $00, $04, $18, $0e, $20, $04, $18, $10, $30
    db $ff, $22, $28, $34, $78, $41, $58, $4e, $80, $4b, $20, $53, $18, $01, $70, $21
    db $70, $ff, $04, $58, $98, $70, $a6, $50, $b8, $48, $c0, $18, $06, $28, $5d, $30
    db $0e, $50, $ff, $20, $28, $cc, $58, $74, $68, $44, $48, $0e, $58, $af, $30, $36
    db $41, $8e, $68, $c0, $7e, $60, $71, $61

    ld a, [bc]                                    ; $7fe6: $0a
    nop                                           ; $7fe7: $00
    ld e, a                                       ; $7fe8: $5f
    inc b                                         ; $7fe9: $04
    ld bc, $0080                                  ; $7fea: $01 $80 $00
    ld bc, $1040                                  ; $7fed: $01 $40 $10
    jr jr_0a4_7ff6                                ; $7ff0: $18 $04

    jr c, @+$10                                   ; $7ff2: $38 $0e

    ld e, b                                       ; $7ff4: $58
    ld a, [hl+]                                   ; $7ff5: $2a

jr_0a4_7ff6:
    ld c, b                                       ; $7ff6: $48
    ret nz                                        ; $7ff7: $c0

    ld [hl-], a                                   ; $7ff8: $32
    jr c, @+$32                                   ; $7ff9: $38 $30

    ld c, b                                       ; $7ffb: $48
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
