; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

    dec a                                         ; $4000: $3d
    rla                                           ; $4001: $17
    dec d                                         ; $4002: $15
    ld d, [hl]                                    ; $4003: $56
    ld a, [hl]                                    ; $4004: $7e
    ld c, $57                                     ; $4005: $0e $57
    daa                                           ; $4007: $27
    ld b, [hl]                                    ; $4008: $46
    ld e, e                                       ; $4009: $5b
    sbc h                                         ; $400a: $9c
    rst $20                                       ; $400b: $e7
    ld c, h                                       ; $400c: $4c
    sub $cd                                       ; $400d: $d6 $cd
    rst $38                                       ; $400f: $ff
    jp nz, Jump_000_1f97                          ; $4010: $c2 $97 $1f

    sra d                                         ; $4013: $cb $2a
    db $ed                                        ; $4015: $ed
    ei                                            ; $4016: $fb
    pop af                                        ; $4017: $f1
    sbc $d5                                       ; $4018: $de $d5
    dec hl                                        ; $401a: $2b
    ld e, h                                       ; $401b: $5c
    sub b                                         ; $401c: $90
    xor e                                         ; $401d: $ab
    add hl, de                                    ; $401e: $19
    sbc e                                         ; $401f: $9b
    rst $08                                       ; $4020: $cf
    xor c                                         ; $4021: $a9
    ld e, e                                       ; $4022: $5b
    ld l, d                                       ; $4023: $6a
    adc e                                         ; $4024: $8b
    add hl, sp                                    ; $4025: $39
    rst $08                                       ; $4026: $cf
    add l                                         ; $4027: $85
    inc l                                         ; $4028: $2c
    adc $04                                       ; $4029: $ce $04
    cp c                                          ; $402b: $b9
    jr nc, jr_03d_4093                            ; $402c: $30 $65

    jp c, $9ca6                                   ; $402e: $da $a6 $9c

    ld [hl], $62                                  ; $4031: $36 $62
    db $e4                                        ; $4033: $e4
    inc [hl]                                      ; $4034: $34
    ld c, e                                       ; $4035: $4b
    sbc $00                                       ; $4036: $de $00
    add c                                         ; $4038: $81
    add h                                         ; $4039: $84
    sbc h                                         ; $403a: $9c
    db $e4                                        ; $403b: $e4
    inc l                                         ; $403c: $2c
    adc [hl]                                      ; $403d: $8e
    ld d, e                                       ; $403e: $53
    xor $cd                                       ; $403f: $ee $cd
    ld [hl], a                                    ; $4041: $77
    ld a, [hl]                                    ; $4042: $7e
    ld h, $eb                                     ; $4043: $26 $eb
    ld b, [hl]                                    ; $4045: $46
    db $f4                                        ; $4046: $f4
    cp c                                          ; $4047: $b9
    ld hl, sp+$75                                 ; $4048: $f8 $75
    and a                                         ; $404a: $a7
    ld d, l                                       ; $404b: $55
    push bc                                       ; $404c: $c5
    ld a, l                                       ; $404d: $7d
    ld e, c                                       ; $404e: $59
    ld l, d                                       ; $404f: $6a
    adc e                                         ; $4050: $8b
    ld a, c                                       ; $4051: $79
    inc bc                                        ; $4052: $03
    add c                                         ; $4053: $81
    sub h                                         ; $4054: $94
    xor [hl]                                      ; $4055: $ae
    push de                                       ; $4056: $d5
    db $ec                                        ; $4057: $ec
    sub a                                         ; $4058: $97
    ld [hl-], a                                   ; $4059: $32
    adc e                                         ; $405a: $8b
    db $e3                                        ; $405b: $e3
    jr nc, jr_03d_40d3                            ; $405c: $30 $75

    push af                                       ; $405e: $f5
    adc e                                         ; $405f: $8b
    add hl, bc                                    ; $4060: $09
    or d                                          ; $4061: $b2
    ld c, [hl]                                    ; $4062: $4e
    sbc l                                         ; $4063: $9d
    push af                                       ; $4064: $f5
    and a                                         ; $4065: $a7
    ld l, l                                       ; $4066: $6d
    ld d, $47                                     ; $4067: $16 $47
    ld h, c                                       ; $4069: $61
    sbc l                                         ; $406a: $9d
    cp d                                          ; $406b: $ba

jr_03d_406c:
    ld d, d                                       ; $406c: $52
    ld [$ecbd], sp                                ; $406d: $08 $bd $ec
    rla                                           ; $4070: $17
    dec de                                        ; $4071: $1b
    db $eb                                        ; $4072: $eb
    jr nc, jr_03d_406c                            ; $4073: $30 $f7

    dec hl                                        ; $4075: $2b
    cp c                                          ; $4076: $b9
    cpl                                           ; $4077: $2f
    ld sp, $b9e7                                  ; $4078: $31 $e7 $b9
    ld a, [c]                                     ; $407b: $f2
    adc e                                         ; $407c: $8b
    add hl, hl                                    ; $407d: $29
    jp nz, $001b                                  ; $407e: $c2 $1b $00

    db $dd                                        ; $4081: $dd
    ld a, d                                       ; $4082: $7a
    ld sp, hl                                     ; $4083: $f9
    ld h, [hl]                                    ; $4084: $66
    xor e                                         ; $4085: $ab
    ldh a, [$bd]                                  ; $4086: $f0 $bd
    ld l, a                                       ; $4088: $6f
    or [hl]                                       ; $4089: $b6
    ld a, [bc]                                    ; $408a: $0a
    ld e, a                                       ; $408b: $5f
    rst $18                                       ; $408c: $df
    sub h                                         ; $408d: $94
    ld c, $25                                     ; $408e: $0e $25
    ld h, [hl]                                    ; $4090: $66
    adc a                                         ; $4091: $8f
    ld [hl], l                                    ; $4092: $75

jr_03d_4093:
    db $eb                                        ; $4093: $eb
    db $eb                                        ; $4094: $eb
    ret nc                                        ; $4095: $d0

    db $fc                                        ; $4096: $fc
    ld [hl+], a                                   ; $4097: $22
    sub a                                         ; $4098: $97
    and l                                         ; $4099: $a5
    jp nc, Jump_03d_4bfc                          ; $409a: $d2 $fc $4b

    push de                                       ; $409d: $d5
    ld e, $00                                     ; $409e: $1e $00
    db $dd                                        ; $40a0: $dd
    ld a, d                                       ; $40a1: $7a
    cp a                                          ; $40a2: $bf
    add $06                                       ; $40a3: $c6 $06
    push hl                                       ; $40a5: $e5
    xor h                                         ; $40a6: $ac
    dec sp                                        ; $40a7: $3b
    or $e8                                        ; $40a8: $f6 $e8
    add l                                         ; $40aa: $85
    ld c, $63                                     ; $40ab: $0e $63
    ld [$626a], a                                 ; $40ad: $ea $6a $62
    ld [$97c2], a                                 ; $40b0: $ea $c2 $97
    ld e, a                                       ; $40b3: $5f
    ld h, b                                       ; $40b4: $60
    or c                                          ; $40b5: $b1
    add $20                                       ; $40b6: $c6 $20
    and l                                         ; $40b8: $a5
    ld hl, $617c                                  ; $40b9: $21 $7c $61
    jp z, $fd1e                                   ; $40bc: $ca $1e $fd

    bit 5, d                                      ; $40bf: $cb $6a
    ld c, d                                       ; $40c1: $4a
    ld a, d                                       ; $40c2: $7a
    ld a, $fa                                     ; $40c3: $3e $fa
    ld e, h                                       ; $40c5: $5c
    sbc b                                         ; $40c6: $98
    or d                                          ; $40c7: $b2
    ld a, [c]                                     ; $40c8: $f2
    jp Jump_03d_4134                              ; $40c9: $c3 $34 $41


    or $00                                        ; $40cc: $f6 $00

jr_03d_40ce:
    ld bc, $1c94                                  ; $40ce: $01 $94 $1c
    and $4a                                       ; $40d1: $e6 $4a

jr_03d_40d3:
    adc [hl]                                      ; $40d3: $8e
    jr @+$1d                                      ; $40d4: $18 $1b

    pop de                                        ; $40d6: $d1
    inc de                                        ; $40d7: $13
    cp [hl]                                       ; $40d8: $be
    ld d, b                                       ; $40d9: $50

jr_03d_40da:
    or d                                          ; $40da: $b2
    sbc d                                         ; $40db: $9a
    sbc d                                         ; $40dc: $9a
    ld a, [c]                                     ; $40dd: $f2
    rst $30                                       ; $40de: $f7
    cp d                                          ; $40df: $ba
    ld e, l                                       ; $40e0: $5d
    pop af                                        ; $40e1: $f1
    ei                                            ; $40e2: $fb
    ld d, l                                       ; $40e3: $55
    adc b                                         ; $40e4: $88
    ld c, l                                       ; $40e5: $4d
    ld h, [hl]                                    ; $40e6: $66
    rst $38                                       ; $40e7: $ff
    ld [hl+], a                                   ; $40e8: $22
    sub $05                                       ; $40e9: $d6 $05
    ld h, h                                       ; $40eb: $64
    adc h                                         ; $40ec: $8c
    sub h                                         ; $40ed: $94
    sbc c                                         ; $40ee: $99
    call nz, $9c39                                ; $40ef: $c4 $39 $9c
    sub a                                         ; $40f2: $97
    add a                                         ; $40f3: $87
    ld l, h                                       ; $40f4: $6c
    or c                                          ; $40f5: $b1
    rlca                                          ; $40f6: $07
    nop                                           ; $40f7: $00
    db $dd                                        ; $40f8: $dd
    ld l, $71                                     ; $40f9: $2e $71
    ld d, l                                       ; $40fb: $55
    daa                                           ; $40fc: $27
    call $e337                                    ; $40fd: $cd $37 $e3
    ld a, [bc]                                    ; $4100: $0a
    ei                                            ; $4101: $fb
    rst $30                                       ; $4102: $f7
    ld e, b                                       ; $4103: $58
    or a                                          ; $4104: $b7
    ld e, [hl]                                    ; $4105: $5e
    ld h, l                                       ; $4106: $65
    and c                                         ; $4107: $a1
    ld h, h                                       ; $4108: $64
    dec [hl]                                      ; $4109: $35
    dec [hl]                                      ; $410a: $35
    ld h, l                                       ; $410b: $65
    add c                                         ; $410c: $81
    ld hl, sp+$21                                 ; $410d: $f8 $21
    ld d, a                                       ; $410f: $57
    jr c, jr_03d_40da                             ; $4110: $38 $c8

    ld l, c                                       ; $4112: $69
    ld a, h                                       ; $4113: $7c
    jp hl                                         ; $4114: $e9


    ld e, d                                       ; $4115: $5a
    jp c, $a8c8                                   ; $4116: $da $c8 $a8

    reti                                          ; $4119: $d9


    inc bc                                        ; $411a: $03
    nop                                           ; $411b: $00
    ld a, l                                       ; $411c: $7d
    sbc d                                         ; $411d: $9a
    cp h                                          ; $411e: $bc
    add a                                         ; $411f: $87
    xor a                                         ; $4120: $af
    db $db                                        ; $4121: $db
    rlca                                          ; $4122: $07
    ld l, l                                       ; $4123: $6d
    ld d, [hl]                                    ; $4124: $56
    ld l, c                                       ; $4125: $69
    ld b, h                                       ; $4126: $44
    ld h, d                                       ; $4127: $62
    rrca                                          ; $4128: $0f
    nop                                           ; $4129: $00
    db $dd                                        ; $412a: $dd
    db $ec                                        ; $412b: $ec
    inc [hl]                                      ; $412c: $34
    ld a, [hl]                                    ; $412d: $7e
    sbc l                                         ; $412e: $9d
    cp d                                          ; $412f: $ba
    or a                                          ; $4130: $b7
    jr c, jr_03d_40ce                             ; $4131: $38 $9b

    ld a, l                                       ; $4133: $7d

Jump_03d_4134:
    rst $20                                       ; $4134: $e7
    ei                                            ; $4135: $fb
    ld h, l                                       ; $4136: $65
    rrca                                          ; $4137: $0f
    nop                                           ; $4138: $00
    rst $20                                       ; $4139: $e7
    ret                                           ; $413a: $c9


    sbc e                                         ; $413b: $9b
    or $ba                                        ; $413c: $f6 $ba
    rst $18                                       ; $413e: $df
    add hl, sp                                    ; $413f: $39
    dec l                                         ; $4140: $2d
    ld [hl], l                                    ; $4141: $75
    ld d, $c7                                     ; $4142: $16 $c7
    add hl, hl                                    ; $4144: $29
    rla                                           ; $4145: $17
    db $fc                                        ; $4146: $fc
    cp l                                          ; $4147: $bd
    ld sp, hl                                     ; $4148: $f9
    adc $fb                                       ; $4149: $ce $fb
    ld e, h                                       ; $414b: $5c
    ld c, h                                       ; $414c: $4c
    sbc a                                         ; $414d: $9f
    scf                                           ; $414e: $37
    nop                                           ; $414f: $00
    cp l                                          ; $4150: $bd
    ld c, $c0                                     ; $4151: $0e $c0
    ld h, c                                       ; $4153: $61
    ld c, [hl]                                    ; $4154: $4e
    cp c                                          ; $4155: $b9
    ldh [$ef], a                                  ; $4156: $e0 $ef
    call $de77                                    ; $4158: $cd $77 $de
    rst $20                                       ; $415b: $e7
    cp l                                          ; $415c: $bd

Call_03d_415d:
    ld e, [hl]                                    ; $415d: $5e
    pop bc                                        ; $415e: $c1
    sub h                                         ; $415f: $94
    ld e, a                                       ; $4160: $5f
    inc h                                         ; $4161: $24
    or d                                          ; $4162: $b2
    ld c, [hl]                                    ; $4163: $4e
    sbc l                                         ; $4164: $9d
    push bc                                       ; $4165: $c5
    ld [hl], c                                    ; $4166: $71
    sub l                                         ; $4167: $95
    inc l                                         ; $4168: $2c
    dec d                                         ; $4169: $15
    jp z, $e77e                                   ; $416a: $ca $7e $e7

    adc c                                         ; $416d: $89
    or l                                          ; $416e: $b5
    cp d                                          ; $416f: $ba
    cp d                                          ; $4170: $ba
    and c                                         ; $4171: $a1
    ld c, a                                       ; $4172: $4f
    cp c                                          ; $4173: $b9
    ld bc, $94f6                                  ; $4174: $01 $f6 $94
    cp d                                          ; $4177: $ba
    dec h                                         ; $4178: $25
    ld a, [c]                                     ; $4179: $f2
    cp [hl]                                       ; $417a: $be
    rst $28                                       ; $417b: $ef
    ld l, [hl]                                    ; $417c: $6e
    dec [hl]                                      ; $417d: $35
    rla                                           ; $417e: $17
    db $e4                                        ; $417f: $e4
    inc a                                         ; $4180: $3c
    ei                                            ; $4181: $fb
    cp l                                          ; $4182: $bd
    rst $08                                       ; $4183: $cf
    sub l                                         ; $4184: $95
    ld e, a                                       ; $4185: $5f
    rst $28                                       ; $4186: $ef
    rrca                                          ; $4187: $0f
    ld a, a                                       ; $4188: $7f
    sbc [hl]                                      ; $4189: $9e
    ld l, e                                       ; $418a: $6b
    ld e, b                                       ; $418b: $58
    ld l, c                                       ; $418c: $69
    jp c, $ad3a                                   ; $418d: $da $3a $ad

    inc [hl]                                      ; $4190: $34
    rst $38                                       ; $4191: $ff
    ld a, [hl]                                    ; $4192: $7e
    call nz, Call_03d_5f95                        ; $4193: $c4 $95 $5f
    ld c, h                                       ; $4196: $4c
    ld de, $00f6                                  ; $4197: $11 $f6 $00
    db $dd                                        ; $419a: $dd
    ld l, $e3                                     ; $419b: $2e $e3
    jp nz, Jump_03d_4a56                          ; $419d: $c2 $56 $4a

    push de                                       ; $41a0: $d5
    ld e, $00                                     ; $41a1: $1e $00
    db $dd                                        ; $41a3: $dd
    ld [bc], a                                    ; $41a4: $02
    ld d, d                                       ; $41a5: $52
    ld d, [hl]                                    ; $41a6: $56
    db $dd                                        ; $41a7: $dd
    ld [hl], b                                    ; $41a8: $70
    jp z, $f9bd                                   ; $41a9: $ca $bd $f9

    adc $4b                                       ; $41ac: $ce $4b
    ld [c], a                                     ; $41ae: $e2
    ld c, d                                       ; $41af: $4a
    ld [$ab08], a                                 ; $41b0: $ea $08 $ab
    xor e                                         ; $41b3: $ab
    ld h, $52                                     ; $41b4: $26 $52
    ld a, e                                       ; $41b6: $7b
    xor h                                         ; $41b7: $ac
    ld e, e                                       ; $41b8: $5b
    add b                                         ; $41b9: $80
    inc h                                         ; $41ba: $24
    add $5c                                       ; $41bb: $c6 $5c
    add hl, hl                                    ; $41bd: $29
    add h                                         ; $41be: $84
    ld e, [hl]                                    ; $41bf: $5e
    cp d                                          ; $41c0: $ba
    ld [hl], b                                    ; $41c1: $70
    push hl                                       ; $41c2: $e5
    ld [hl], l                                    ; $41c3: $75
    sub l                                         ; $41c4: $95
    scf                                           ; $41c5: $37
    ld l, a                                       ; $41c6: $6f
    ld e, d                                       ; $41c7: $5a
    ld [hl+], a                                   ; $41c8: $22
    ld [hl], l                                    ; $41c9: $75
    sbc [hl]                                      ; $41ca: $9e

jr_03d_41cb:
    xor e                                         ; $41cb: $ab
    ld d, b                                       ; $41cc: $50
    ld e, $b3                                     ; $41cd: $1e $b3
    rlca                                          ; $41cf: $07
    nop                                           ; $41d0: $00
    add c                                         ; $41d1: $81
    ld [hl], $f0                                  ; $41d2: $36 $f0
    ld h, c                                       ; $41d4: $61
    ld c, [hl]                                    ; $41d5: $4e
    add hl, sp                                    ; $41d6: $39
    adc e                                         ; $41d7: $8b
    and e                                         ; $41d8: $a3
    ld a, a                                       ; $41d9: $7f
    jp hl                                         ; $41da: $e9


    sbc d                                         ; $41db: $9a
    ld a, c                                       ; $41dc: $79
    ld l, l                                       ; $41dd: $6d
    jp $8df7                                      ; $41de: $c3 $f7 $8d


    rst $30                                       ; $41e1: $f7
    ld l, $70                                     ; $41e2: $2e $70
    ld a, [de]                                    ; $41e4: $1a
    ld [hl], e                                    ; $41e5: $73
    dec h                                         ; $41e6: $25
    ld h, a                                       ; $41e7: $67
    ld [hl], c                                    ; $41e8: $71
    inc e                                         ; $41e9: $1c
    dec [hl]                                      ; $41ea: $35
    and h                                         ; $41eb: $a4
    db $fc                                        ; $41ec: $fc
    ld [bc], a                                    ; $41ed: $02
    pop af                                        ; $41ee: $f1
    ld b, e                                       ; $41ef: $43
    sbc $00                                       ; $41f0: $de $00
    or $2f                                        ; $41f2: $f6 $2f
    ld h, d                                       ; $41f4: $62
    add l                                         ; $41f5: $85
    rrca                                          ; $41f6: $0f
    db $db                                        ; $41f7: $db
    or h                                          ; $41f8: $b4
    ld e, c                                       ; $41f9: $59
    ld e, h                                       ; $41fa: $5c
    and e                                         ; $41fb: $a3
    db $fc                                        ; $41fc: $fc
    xor b                                         ; $41fd: $a8
    pop af                                        ; $41fe: $f1
    db $eb                                        ; $41ff: $eb
    call nc, Call_000_2129                        ; $4200: $d4 $29 $21
    daa                                           ; $4203: $27
    xor c                                         ; $4204: $a9
    di                                            ; $4205: $f3
    sbc h                                         ; $4206: $9c
    or [hl]                                       ; $4207: $b6
    jp hl                                         ; $4208: $e9


    ld [hl], a                                    ; $4209: $77
    jr c, jr_03d_426f                             ; $420a: $38 $63

    ld e, e                                       ; $420c: $5b
    rst $20                                       ; $420d: $e7
    jp nz, $97d7                                  ; $420e: $c2 $d7 $97

    ld a, c                                       ; $4211: $79
    sub [hl]                                      ; $4212: $96
    rst $00                                       ; $4213: $c7
    ret z                                         ; $4214: $c8

    ld a, c                                       ; $4215: $79
    xor $dc                                       ; $4216: $ee $dc
    ld [c], a                                     ; $4218: $e2
    xor d                                         ; $4219: $aa
    xor e                                         ; $421a: $ab
    xor l                                         ; $421b: $ad
    scf                                           ; $421c: $37
    nop                                           ; $421d: $00
    ld bc, $5c94                                  ; $421e: $01 $94 $5c
    ld sp, hl                                     ; $4221: $f9
    sbc c                                         ; $4222: $99
    ld h, [hl]                                    ; $4223: $66
    ld a, $4a                                     ; $4224: $3e $4a
    db $eb                                        ; $4226: $eb
    cp a                                          ; $4227: $bf
    sbc d                                         ; $4228: $9a
    di                                            ; $4229: $f3
    adc [hl]                                      ; $422a: $8e
    add l                                         ; $422b: $85
    ei                                            ; $422c: $fb
    inc bc                                        ; $422d: $03
    ld [hl], b                                    ; $422e: $70
    ld [hl], l                                    ; $422f: $75
    sub a                                         ; $4230: $97
    adc $e2                                       ; $4231: $ce $e2
    cp b                                          ; $4233: $b8
    rst $00                                       ; $4234: $c7
    ld c, b                                       ; $4235: $48
    cp l                                          ; $4236: $bd
    rst $10                                       ; $4237: $d7
    ld e, e                                       ; $4238: $5b
    sbc b                                         ; $4239: $98
    or e                                          ; $423a: $b3
    jr c, jr_03d_41cb                             ; $423b: $38 $8e

    ld a, [hl-]                                   ; $423d: $3a
    add a                                         ; $423e: $87
    ld d, e                                       ; $423f: $53
    dec de                                        ; $4240: $1b
    adc h                                         ; $4241: $8c
    ld e, c                                       ; $4242: $59
    rst $38                                       ; $4243: $ff
    inc a                                         ; $4244: $3c
    ld h, a                                       ; $4245: $67
    ld [hl], c                                    ; $4246: $71
    inc e                                         ; $4247: $1c
    bit 0, d                                      ; $4248: $cb $42
    sub [hl]                                      ; $424a: $96
    ld b, $49                                     ; $424b: $06 $49
    xor $0d                                       ; $424d: $ee $0d
    ld c, l                                       ; $424f: $4d
    ldh a, [$6f]                                  ; $4250: $f0 $6f
    nop                                           ; $4252: $00
    db $dd                                        ; $4253: $dd
    db $ec                                        ; $4254: $ec
    or e                                          ; $4255: $b3
    ld a, h                                       ; $4256: $7c
    adc a                                         ; $4257: $8f
    ld [hl], l                                    ; $4258: $75
    cp a                                          ; $4259: $bf
    inc l                                         ; $425a: $2c
    db $eb                                        ; $425b: $eb
    ld b, a                                       ; $425c: $47
    sbc a                                         ; $425d: $9f
    ld h, e                                       ; $425e: $63
    sbc c                                         ; $425f: $99
    ld h, [hl]                                    ; $4260: $66
    reti                                          ; $4261: $d9


    ld h, e                                       ; $4262: $63
    and h                                         ; $4263: $a4
    adc $73                                       ; $4264: $ce $73
    sub l                                         ; $4266: $95
    inc l                                         ; $4267: $2c
    dec d                                         ; $4268: $15
    jp z, $e67e                                   ; $4269: $ca $7e $e6

    push af                                       ; $426c: $f5
    ld a, e                                       ; $426d: $7b
    ld [bc], a                                    ; $426e: $02

jr_03d_426f:
    or $0f                                        ; $426f: $f6 $0f
    ld c, c                                       ; $4271: $49
    di                                            ; $4272: $f3
    ldh a, [rBCPD]                                ; $4273: $f0 $69
    db $db                                        ; $4275: $db
    rla                                           ; $4276: $17
    ret z                                         ; $4277: $c8

    dec [hl]                                      ; $4278: $35
    ld [c], a                                     ; $4279: $e2
    inc l                                         ; $427a: $2c
    xor [hl]                                      ; $427b: $ae
    ld l, c                                       ; $427c: $69
    and e                                         ; $427d: $a3
    db $fc                                        ; $427e: $fc
    jp nz, $97d7                                  ; $427f: $c2 $d7 $97

    ld a, c                                       ; $4282: $79
    sub [hl]                                      ; $4283: $96
    rst $00                                       ; $4284: $c7
    ret z                                         ; $4285: $c8

    ld a, c                                       ; $4286: $79
    xor $dc                                       ; $4287: $ee $dc
    ld [c], a                                     ; $4289: $e2
    xor d                                         ; $428a: $aa
    xor e                                         ; $428b: $ab
    xor l                                         ; $428c: $ad
    ldh a, [$75]                                  ; $428d: $f0 $75
    scf                                           ; $428f: $37
    or [hl]                                       ; $4290: $b6
    ld [hl], l                                    ; $4291: $75
    xor [hl]                                      ; $4292: $ae
    db $e4                                        ; $4293: $e4
    add d                                         ; $4294: $82
    cpl                                           ; $4295: $2f
    ld [hl], $df                                  ; $4296: $36 $df
    inc de                                        ; $4298: $13
    nop                                           ; $4299: $00
    cp l                                          ; $429a: $bd
    or e                                          ; $429b: $b3
    adc $15                                       ; $429c: $ce $15
    adc $b7                                       ; $429e: $ce $b7
    ld a, [hl]                                    ; $42a0: $7e
    call c, $ca8f                                 ; $42a1: $dc $8f $ca
    ld a, c                                       ; $42a4: $79
    xor d                                         ; $42a5: $aa
    ld c, c                                       ; $42a6: $49
    ld c, h                                       ; $42a7: $4c
    db $d3                                        ; $42a8: $d3
    ld a, h                                       ; $42a9: $7c
    jp nz, $d317                                  ; $42aa: $c2 $17 $d3

    inc a                                         ; $42ad: $3c
    ld a, [$f95c]                                 ; $42ae: $fa $5c $f9
    push de                                       ; $42b1: $d5
    inc l                                         ; $42b2: $2c
    jp hl                                         ; $42b3: $e9


    ld l, l                                       ; $42b4: $6d
    ld a, [hl]                                    ; $42b5: $7e
    rst $28                                       ; $42b6: $ef
    ld l, c                                       ; $42b7: $69
    call c, $dffb                                 ; $42b8: $dc $fb $df
    cp c                                          ; $42bb: $b9
    push bc                                       ; $42bc: $c5
    ld d, l                                       ; $42bd: $55
    ld d, a                                       ; $42be: $57
    ld e, e                                       ; $42bf: $5b
    and a                                         ; $42c0: $a7
    sbc h                                         ; $42c1: $9c
    push bc                                       ; $42c2: $c5
    pop de                                        ; $42c3: $d1
    rst $38                                       ; $42c4: $ff
    ld a, h                                       ; $42c5: $7c
    ld c, d                                       ; $42c6: $4a
    db $dd                                        ; $42c7: $dd
    ld a, h                                       ; $42c8: $7c
    sbc $bb                                       ; $42c9: $de $bb
    call nz, $1d55                                ; $42cb: $c4 $55 $1d
    ld h, c                                       ; $42ce: $61
    ld b, l                                       ; $42cf: $45
    ld sp, hl                                     ; $42d0: $f9
    add e                                         ; $42d1: $83
    ld [hl], e                                    ; $42d2: $73
    ld d, $c7                                     ; $42d3: $16 $c7
    ld a, l                                       ; $42d5: $7d
    ld hl, sp+$42                                 ; $42d6: $f8 $42
    db $d3                                        ; $42d8: $d3
    xor b                                         ; $42d9: $a8
    sbc h                                         ; $42da: $9c
    ld c, c                                       ; $42db: $49
    inc e                                         ; $42dc: $1c
    sub l                                         ; $42dd: $95
    dec bc                                        ; $42de: $0b
    ld a, [hl-]                                   ; $42df: $3a
    ld d, [hl]                                    ; $42e0: $56
    ld [hl], d                                    ; $42e1: $72
    ld d, $c7                                     ; $42e2: $16 $c7
    push bc                                       ; $42e4: $c5
    rst $00                                       ; $42e5: $c7
    sbc b                                         ; $42e6: $98
    di                                            ; $42e7: $f3
    ld d, h                                       ; $42e8: $54
    ld a, [hl]                                    ; $42e9: $7e
    rst $20                                       ; $42ea: $e7
    ld l, a                                       ; $42eb: $6f
    nop                                           ; $42ec: $00
    sub a                                         ; $42ed: $97
    ld de, $a759                                  ; $42ee: $11 $59 $a7
    adc $e2                                       ; $42f1: $ce $e2
    jr c, jr_03d_4344                             ; $42f3: $38 $4f

    ld h, e                                       ; $42f5: $63
    inc hl                                        ; $42f6: $23
    jp z, $fb92                                   ; $42f7: $ca $92 $fb

    sbc l                                         ; $42fa: $9d
    db $e3                                        ; $42fb: $e3
    ld [$a14e], a                                 ; $42fc: $ea $4e $a1
    ld c, a                                       ; $42ff: $4f
    pop hl                                        ; $4300: $e1
    ld a, $98                                     ; $4301: $3e $98
    ld a, [c]                                     ; $4303: $f2
    xor e                                         ; $4304: $ab
    sbc e                                         ; $4305: $9b
    sub $79                                       ; $4306: $d6 $79
    rst $28                                       ; $4308: $ef
    ld e, h                                       ; $4309: $5c
    rst $00                                       ; $430a: $c7
    dec b                                         ; $430b: $05
    ld [c], a                                     ; $430c: $e2
    add a                                         ; $430d: $87
    sbc h                                         ; $430e: $9c
    push bc                                       ; $430f: $c5
    dec [hl]                                      ; $4310: $35
    ld [c], a                                     ; $4311: $e2
    ld a, [bc]                                    ; $4312: $0a
    ld d, a                                       ; $4313: $57
    ld hl, $66fa                                  ; $4314: $21 $fa $66
    cp e                                          ; $4317: $bb
    ld e, a                                       ; $4318: $5f
    rst $18                                       ; $4319: $df
    sub h                                         ; $431a: $94
    ld c, $25                                     ; $431b: $0e $25
    and $7e                                       ; $431d: $e6 $7e
    or $0f                                        ; $431f: $f6 $0f
    ld c, c                                       ; $4321: $49
    di                                            ; $4322: $f3
    scf                                           ; $4323: $37
    nop                                           ; $4324: $00
    ld bc, $1c94                                  ; $4325: $01 $94 $1c
    and $f4                                       ; $4328: $e6 $f4
    dec sp                                        ; $432a: $3b
    xor h                                         ; $432b: $ac
    ld d, e                                       ; $432c: $53
    rst $20                                       ; $432d: $e7
    ld l, l                                       ; $432e: $6d

jr_03d_432f:
    pop de                                        ; $432f: $d1
    ld [hl], e                                    ; $4330: $73
    call nc, Call_000_35d8                        ; $4331: $d4 $d8 $35
    sub [hl]                                      ; $4334: $96
    ld a, c                                       ; $4335: $79
    ld l, d                                       ; $4336: $6a
    ld hl, sp+$26                                 ; $4337: $f8 $26
    sbc b                                         ; $4339: $98
    di                                            ; $433a: $f3
    call c, $ae39                                 ; $433b: $dc $39 $ae
    xor $14                                       ; $433e: $ee $14
    ld a, [$de14]                                 ; $4340: $fa $14 $de
    nop                                           ; $4343: $00

jr_03d_4344:
    halt                                          ; $4344: $76
    jr jr_03d_435a                                ; $4345: $18 $13

    dec c                                         ; $4347: $0d
    ld [hl], l                                    ; $4348: $75
    sub c                                         ; $4349: $91
    add sp, -$7b                                  ; $434a: $e8 $85
    ld [hl], l                                    ; $434c: $75
    ld [$8e2c], a                                 ; $434d: $ea $2c $8e
    db $eb                                        ; $4350: $eb
    jr c, jr_03d_4388                             ; $4351: $38 $35

    cpl                                           ; $4353: $2f
    dec h                                         ; $4354: $25
    rst $28                                       ; $4355: $ef
    push af                                       ; $4356: $f5
    ld c, l                                       ; $4357: $4d
    sbc l                                         ; $4358: $9d
    ld l, a                                       ; $4359: $6f

jr_03d_435a:
    sub l                                         ; $435a: $95
    and $9b                                       ; $435b: $e6 $9b
    or b                                          ; $435d: $b0
    ld c, [hl]                                    ; $435e: $4e
    sbc l                                         ; $435f: $9d
    ld [hl], l                                    ; $4360: $75
    push bc                                       ; $4361: $c5
    ld de, $61ca                                  ; $4362: $11 $ca $61
    ld [$2688], a                                 ; $4365: $ea $88 $26
    ld sp, $d7ca                                  ; $4368: $31 $ca $d7
    xor c                                         ; $436b: $a9
    inc hl                                        ; $436c: $23
    xor $3c                                       ; $436d: $ee $3c
    or c                                          ; $436f: $b1
    ld d, [hl]                                    ; $4370: $56
    ld d, a                                       ; $4371: $57
    scf                                           ; $4372: $37
    db $f4                                        ; $4373: $f4
    add hl, hl                                    ; $4374: $29
    scf                                           ; $4375: $37
    nop                                           ; $4376: $00
    db $dd                                        ; $4377: $dd
    inc bc                                        ; $4378: $03
    cp a                                          ; $4379: $bf
    ld b, e                                       ; $437a: $43
    sbc l                                         ; $437b: $9d
    or a                                          ; $437c: $b7
    ld b, l                                       ; $437d: $45
    rst $08                                       ; $437e: $cf
    ld d, c                                       ; $437f: $51
    ld h, e                                       ; $4380: $63
    rst $10                                       ; $4381: $d7
    adc $71                                       ; $4382: $ce $71
    ld [hl], l                                    ; $4384: $75
    and a                                         ; $4385: $a7
    ret nc                                        ; $4386: $d0

    and a                                         ; $4387: $a7

jr_03d_4388:
    or b                                          ; $4388: $b0
    daa                                           ; $4389: $27
    nop                                           ; $438a: $00
    ld a, l                                       ; $438b: $7d
    inc de                                        ; $438c: $13
    ld a, $cc                                     ; $438d: $3e $cc
    sub l                                         ; $438f: $95
    ld e, h                                       ; $4390: $5c
    sub b                                         ; $4391: $90
    xor e                                         ; $4392: $ab
    inc [hl]                                      ; $4393: $34
    adc l                                         ; $4394: $8d
    add hl, sp                                    ; $4395: $39
    ld [c], a                                     ; $4396: $e2
    ld h, d                                       ; $4397: $62
    ld a, [$cb1c]                                 ; $4398: $fa $1c $cb
    cp h                                          ; $439b: $bc
    call Call_000_00df                            ; $439c: $cd $df $00
    or $5c                                        ; $439f: $f6 $5c
    jp c, Jump_000_1cf8                           ; $43a1: $da $f8 $1c

    ld [hl], c                                    ; $43a4: $71
    ld e, a                                       ; $43a5: $5f
    jr nz, jr_03d_432f                            ; $43a6: $20 $87

    cp a                                          ; $43a8: $bf
    ldh a, [rNR51]                                ; $43a9: $f0 $25
    ld [hl], d                                    ; $43ab: $72
    ld d, $c7                                     ; $43ac: $16 $c7
    ld b, l                                       ; $43ae: $45
    ld d, a                                       ; $43af: $57
    ret                                           ; $43b0: $c9


    ld e, c                                       ; $43b1: $59
    inc e                                         ; $43b2: $1c
    and a                                         ; $43b3: $a7
    ld e, a                                       ; $43b4: $5f
    sbc d                                         ; $43b5: $9a
    inc l                                         ; $43b6: $2c

jr_03d_43b7:
    ld c, h                                       ; $43b7: $4c
    sbc c                                         ; $43b8: $99
    jp Jump_000_3abd                              ; $43b9: $c3 $bd $3a


    adc h                                         ; $43bc: $8c
    add hl, sp                                    ; $43bd: $39
    daa                                           ; $43be: $27
    db $10                                        ; $43bf: $10
    ld sp, $06f2                                  ; $43c0: $31 $f2 $06
    db $dd                                        ; $43c3: $dd
    inc bc                                        ; $43c4: $03
    cp a                                          ; $43c5: $bf
    jp Jump_03d_5b79                              ; $43c6: $c3 $79 $5b


    db $f4                                        ; $43c9: $f4
    ld e, h                                       ; $43ca: $5c
    add sp, -$18                                  ; $43cb: $e8 $e8
    ld [hl], e                                    ; $43cd: $73
    ld b, h                                       ; $43ce: $44
    sub e                                         ; $43cf: $93
    jr jr_03d_43b7                                ; $43d0: $18 $e5

    ld h, l                                       ; $43d2: $65
    cp a                                          ; $43d3: $bf
    ld [hl], e                                    ; $43d4: $73
    ld e, h                                       ; $43d5: $5c
    db $dd                                        ; $43d6: $dd
    add hl, hl                                    ; $43d7: $29
    db $f4                                        ; $43d8: $f4
    add hl, hl                                    ; $43d9: $29
    add h                                         ; $43da: $84
    cpl                                           ; $43db: $2f
    ld c, h                                       ; $43dc: $4c
    ld e, c                                       ; $43dd: $59
    push af                                       ; $43de: $f5
    ld d, a                                       ; $43df: $57
    ld d, d                                       ; $43e0: $52
    ld a, d                                       ; $43e1: $7a
    ld [bc], a                                    ; $43e2: $02
    add c                                         ; $43e3: $81
    ld l, l                                       ; $43e4: $6d
    dec h                                         ; $43e5: $25
    and a                                         ; $43e6: $a7
    ld l, $6c                                     ; $43e7: $2e $6c
    sub h                                         ; $43e9: $94
    add a                                         ; $43ea: $87
    rrca                                          ; $43eb: $0f
    ld [hl], e                                    ; $43ec: $73
    sub c                                         ; $43ed: $91
    dec hl                                        ; $43ee: $2b
    add hl, sp                                    ; $43ef: $39
    rst $18                                       ; $43f0: $df
    call nz, $efe6                                ; $43f1: $c4 $e6 $ef
    reti                                          ; $43f4: $d9


    jp hl                                         ; $43f5: $e9


    inc e                                         ; $43f6: $1c
    ld l, $98                                     ; $43f7: $2e $98
    ld [hl], l                                    ; $43f9: $75
    ld b, a                                       ; $43fa: $47
    cp b                                          ; $43fb: $b8
    inc [hl]                                      ; $43fc: $34
    ld l, $7c                                     ; $43fd: $2e $7c
    sbc a                                         ; $43ff: $9f
    scf                                           ; $4400: $37
    nop                                           ; $4401: $00
    ld bc, $d592                                  ; $4402: $01 $92 $d5
    call nc, $f814                                ; $4405: $d4 $14 $f8
    cp d                                          ; $4408: $ba
    db $eb                                        ; $4409: $eb
    ld [hl], a                                    ; $440a: $77
    jr c, @+$71                                   ; $440b: $38 $6f

    adc e                                         ; $440d: $8b
    sbc [hl]                                      ; $440e: $9e
    dec bc                                        ; $440f: $0b
    db $d3                                        ; $4410: $d3
    or e                                          ; $4411: $b3
    ld c, [hl]                                    ; $4412: $4e
    dec e                                         ; $4413: $1d
    pop de                                        ; $4414: $d1
    inc h                                         ; $4415: $24
    ld b, [hl]                                    ; $4416: $46
    ld a, c                                       ; $4417: $79
    reti                                          ; $4418: $d9


    rst $28                                       ; $4419: $ef
    inc e                                         ; $441a: $1c
    ld d, a                                       ; $441b: $57
    ld [hl], a                                    ; $441c: $77

jr_03d_441d:
    ld a, [bc]                                    ; $441d: $0a
    ld a, l                                       ; $441e: $7d
    ld a, [bc]                                    ; $441f: $0a
    ld a, e                                       ; $4420: $7b
    ld [bc], a                                    ; $4421: $02
    or $5c                                        ; $4422: $f6 $5c

Jump_03d_4424:
    jp c, $9cf8                                   ; $4424: $da $f8 $9c

    push bc                                       ; $4427: $c5
    ld [hl], c                                    ; $4428: $71
    sub c                                         ; $4429: $91
    ld l, b                                       ; $442a: $68
    di                                            ; $442b: $f3
    or e                                          ; $442c: $b3
    jr c, jr_03d_441d                             ; $442d: $38 $ee

    inc hl                                        ; $442f: $23
    pop de                                        ; $4430: $d1
    ld d, e                                       ; $4431: $53
    and $70                                       ; $4432: $e6 $70
    xor a                                         ; $4434: $af
    ld c, $63                                     ; $4435: $0e $63
    xor [hl]                                      ; $4437: $ae
    jp c, $fe51                                   ; $4438: $da $51 $fe

    ld e, [hl]                                    ; $443b: $5e
    rst $18                                       ; $443c: $df
    sbc h                                         ; $443d: $9c
    ld d, [hl]                                    ; $443e: $56
    sbc l                                         ; $443f: $9d
    or [hl]                                       ; $4440: $b6
    add hl, hl                                    ; $4441: $29
    rla                                           ; $4442: $17
    db $fc                                        ; $4443: $fc
    adc [hl]                                      ; $4444: $8e
    ld [hl], h                                    ; $4445: $74
    xor l                                         ; $4446: $ad
    ld a, [hl]                                    ; $4447: $7e
    ld sp, $f7c1                                  ; $4448: $31 $c1 $f7
    add hl, sp                                    ; $444b: $39
    db $eb                                        ; $444c: $eb
    rst $18                                       ; $444d: $df
    nop                                           ; $444e: $00
    sub a                                         ; $444f: $97
    ld de, $9ca1                                  ; $4450: $11 $a1 $9c
    push bc                                       ; $4453: $c5
    ld [hl], c                                    ; $4454: $71
    pop bc                                        ; $4455: $c1
    rst $28                                       ; $4456: $ef
    sub h                                         ; $4457: $94
    sub a                                         ; $4458: $97
    sbc c                                         ; $4459: $99
    call nz, $e39d                                ; $445a: $c4 $9d $e3
    ld [$a14e], a                                 ; $445d: $ea $4e $a1
    ld c, a                                       ; $4460: $4f
    pop hl                                        ; $4461: $e1
    cp l                                          ; $4462: $bd
    ld l, [hl]                                    ; $4463: $6e
    halt                                          ; $4464: $76
    cp d                                          ; $4465: $ba
    jp c, $e759                                   ; $4466: $da $59 $e7

    inc b                                         ; $4469: $04
    ld [hl+], a                                   ; $446a: $22
    ld b, [hl]                                    ; $446b: $46
    or $00                                        ; $446c: $f6 $00
    halt                                          ; $446e: $76
    ld h, l                                       ; $446f: $65
    and c                                         ; $4470: $a1
    ld h, h                                       ; $4471: $64
    dec [hl]                                      ; $4472: $35
    dec [hl]                                      ; $4473: $35
    ld h, l                                       ; $4474: $65
    rst $20                                       ; $4475: $e7
    cp b                                          ; $4476: $b8
    cp d                                          ; $4477: $ba
    ld d, e                                       ; $4478: $53
    add sp, $53                                   ; $4479: $e8 $53
    jr c, jr_03d_44e7                             ; $447b: $38 $6a

    db $ec                                        ; $447d: $ec
    ld a, [de]                                    ; $447e: $1a
    ld [hl], c                                    ; $447f: $71
    rla                                           ; $4480: $17
    dec h                                         ; $4481: $25
    ld a, d                                       ; $4482: $7a
    and c                                         ; $4483: $a1
    sbc $bb                                       ; $4484: $de $bb
    xor h                                         ; $4486: $ac
    ld de, $8739                                  ; $4487: $11 $39 $87
    ccf                                           ; $448a: $3f
    and c                                         ; $448b: $a1
    jp $8b66                                      ; $448c: $c3 $66 $8b


    ld l, e                                       ; $448f: $6b
    ld [hl], l                                    ; $4490: $75
    sbc b                                         ; $4491: $98
    ld [de], a                                    ; $4492: $12
    rra                                           ; $4493: $1f
    inc hl                                        ; $4494: $23
    ld h, a                                       ; $4495: $67
    ld [de], a                                    ; $4496: $12
    rst $00                                       ; $4497: $c7
    or d                                          ; $4498: $b2
    ld a, $0d                                     ; $4499: $3e $0d
    sbc e                                         ; $449b: $9b
    ld b, [hl]                                    ; $449c: $46
    ret                                           ; $449d: $c9


    ld a, c                                       ; $449e: $79
    xor [hl]                                      ; $449f: $ae
    rst $08                                       ; $44a0: $cf
    ld b, e                                       ; $44a1: $43
    db $ed                                        ; $44a2: $ed
    rst $28                                       ; $44a3: $ef
    ld [hl], l                                    ; $44a4: $75
    rrca                                          ; $44a5: $0f
    ld c, b                                       ; $44a6: $48
    sbc c                                         ; $44a7: $99
    push bc                                       ; $44a8: $c5
    ld d, l                                       ; $44a9: $55
    sbc l                                         ; $44aa: $9d
    push bc                                       ; $44ab: $c5
    dec [hl]                                      ; $44ac: $35
    ld a, [bc]                                    ; $44ad: $0a
    ld [hl], l                                    ; $44ae: $75
    dec d                                         ; $44af: $15

jr_03d_44b0:
    ld c, d                                       ; $44b0: $4a
    ret                                           ; $44b1: $c9


    sbc [hl]                                      ; $44b2: $9e
    nop                                           ; $44b3: $00

Call_03d_44b4:
    halt                                          ; $44b4: $76
    cp d                                          ; $44b5: $ba
    jr nc, jr_03d_451d                            ; $44b6: $30 $65

    dec h                                         ; $44b8: $25
    rst $20                                       ; $44b9: $e7
    ld a, c                                       ; $44ba: $79
    rst $18                                       ; $44bb: $df
    push hl                                       ; $44bc: $e5
    rla                                           ; $44bd: $17
    ret nc                                        ; $44be: $d0

    add sp, -$1b                                  ; $44bf: $e8 $e5
    ld [hl], a                                    ; $44c1: $77
    ld l, [hl]                                    ; $44c2: $6e
    dec hl                                        ; $44c3: $2b
    xor c                                         ; $44c4: $a9
    ld e, c                                       ; $44c5: $59
    db $fd                                        ; $44c6: $fd
    push hl                                       ; $44c7: $e5
    ld b, $dd                                     ; $44c8: $06 $dd
    ld a, d                                       ; $44ca: $7a
    db $db                                        ; $44cb: $db
    sub $39                                       ; $44cc: $d6 $39
    db $fd                                        ; $44ce: $fd
    ld c, $75                                     ; $44cf: $0e $75
    call nc, $01ec                                ; $44d1: $d4 $ec $01
    nop                                           ; $44d4: $00
    halt                                          ; $44d5: $76
    sbc d                                         ; $44d6: $9a
    jp $ab5c                                      ; $44d7: $c3 $5c $ab


    jp $f894                                      ; $44da: $c3 $94 $f8


    rst $30                                       ; $44dd: $f7
    ld [bc], a                                    ; $44de: $02
    pop af                                        ; $44df: $f1
    rst $28                                       ; $44e0: $ef
    ei                                            ; $44e1: $fb
    xor [hl]                                      ; $44e2: $ae
    ld l, e                                       ; $44e3: $6b
    ld hl, sp-$42                                 ; $44e4: $f8 $be
    ld b, b                                       ; $44e6: $40

jr_03d_44e7:
    xor [hl]                                      ; $44e7: $ae
    ld de, $f957                                  ; $44e8: $11 $57 $f9
    db $fd                                        ; $44eb: $fd
    ld a, [de]                                    ; $44ec: $1a
    ld b, [hl]                                    ; $44ed: $46
    ld h, d                                       ; $44ee: $62
    ld a, h                                       ; $44ef: $7c
    sbc c                                         ; $44f0: $99
    ld h, h                                       ; $44f1: $64
    rst $20                                       ; $44f2: $e7
    and l                                         ; $44f3: $a5
    db $fc                                        ; $44f4: $fc
    dec c                                         ; $44f5: $0d
    nop                                           ; $44f6: $00
    ld a, l                                       ; $44f7: $7d
    rst $18                                       ; $44f8: $df
    scf                                           ; $44f9: $37
    ld l, $74                                     ; $44fa: $2e $74
    db $f4                                        ; $44fc: $f4
    sbc h                                         ; $44fd: $9c
    ld h, h                                       ; $44fe: $64
    rst $20                                       ; $44ff: $e7
    ld h, l                                       ; $4500: $65
    push hl                                       ; $4501: $e5
    rla                                           ; $4502: $17
    ret nc                                        ; $4503: $d0

    add sp, -$1b                                  ; $4504: $e8 $e5
    rst $20                                       ; $4506: $e7
    add hl, sp                                    ; $4507: $39
    ld l, h                                       ; $4508: $6c
    ld [$fc39], sp                                ; $4509: $08 $39 $fc
    push de                                       ; $450c: $d5
    adc a                                         ; $450d: $8f
    sub h                                         ; $450e: $94
    cp a                                          ; $450f: $bf
    ld [hl], a                                    ; $4510: $77
    adc [hl]                                      ; $4511: $8e
    xor e                                         ; $4512: $ab
    dec sp                                        ; $4513: $3b
    add l                                         ; $4514: $85
    ld a, $85                                     ; $4515: $3e $85
    xor e                                         ; $4517: $ab
    jr c, jr_03d_44b0                             ; $4518: $38 $96

    ld a, [bc]                                    ; $451a: $0a
    ld d, a                                       ; $451b: $57
    rst $38                                       ; $451c: $ff

jr_03d_451d:
    pop bc                                        ; $451d: $c1
    adc a                                         ; $451e: $8f
    ld a, a                                       ; $451f: $7f
    cpl                                           ; $4520: $2f
    sub b                                         ; $4521: $90
    sub b                                         ; $4522: $90
    sub e                                         ; $4523: $93
    sbc h                                         ; $4524: $9c
    push bc                                       ; $4525: $c5
    ld [hl], c                                    ; $4526: $71
    ld d, $47                                     ; $4527: $16 $47
    sub c                                         ; $4529: $91
    xor [hl]                                      ; $452a: $ae
    ld b, l                                       ; $452b: $45
    ld [hl+], a                                   ; $452c: $22
    ld h, l                                       ; $452d: $65
    ld c, $7f                                     ; $452e: $0e $7f
    push hl                                       ; $4530: $e5
    dec b                                         ; $4531: $05
    ld a, [$e099]                                 ; $4532: $fa $99 $e0
    ld c, e                                       ; $4535: $4b
    ld sp, hl                                     ; $4536: $f9
    sbc c                                         ; $4537: $99
    call nz, $a0d8                                ; $4538: $c4 $d8 $a0
    sbc h                                         ; $453b: $9c
    ld h, [hl]                                    ; $453c: $66
    ld b, a                                       ; $453d: $47
    cp b                                          ; $453e: $b8
    sbc b                                         ; $453f: $98
    ld a, $47                                     ; $4540: $3e $47
    adc l                                         ; $4542: $8d
    ld a, c                                       ; $4543: $79
    inc bc                                        ; $4544: $03
    add c                                         ; $4545: $81
    ld l, l                                       ; $4546: $6d
    ld a, [$ce1d]                                 ; $4547: $fa $1d $ce
    ld [c], a                                     ; $454a: $e2
    cp b                                          ; $454b: $b8
    ld [hl], e                                    ; $454c: $73
    ld e, h                                       ; $454d: $5c
    db $dd                                        ; $454e: $dd
    add hl, hl                                    ; $454f: $29
    db $f4                                        ; $4550: $f4
    add hl, hl                                    ; $4551: $29
    sbc h                                         ; $4552: $9c
    ld [hl], d                                    ; $4553: $72
    pop bc                                        ; $4554: $c1
    ld e, a                                       ; $4555: $5f
    db $fd                                        ; $4556: $fd
    ld h, d                                       ; $4557: $62
    add d                                         ; $4558: $82
    rst $28                                       ; $4559: $ef
    inc de                                        ; $455a: $13
    cp [hl]                                       ; $455b: $be
    ld b, b                                       ; $455c: $40
    db $fc                                        ; $455d: $fc
    sub b                                         ; $455e: $90
    adc e                                         ; $455f: $8b
    ld e, a                                       ; $4560: $5f
    ld [hl], a                                    ; $4561: $77
    ld e, d                                       ; $4562: $5a
    ld d, l                                       ; $4563: $55
    cp h                                          ; $4564: $bc
    rst $10                                       ; $4565: $d7
    db $ed                                        ; $4566: $ed
    ld a, h                                       ; $4567: $7c
    jp hl                                         ; $4568: $e9


    jp c, $e3af                                   ; $4569: $da $af $e3

    call nc, $acbc                                ; $456c: $d4 $bc $ac
    db $fc                                        ; $456f: $fc
    ld [bc], a                                    ; $4570: $02
    ld a, [de]                                    ; $4571: $1a
    cp l                                          ; $4572: $bd
    db $fc                                        ; $4573: $fc
    xor b                                         ; $4574: $a8
    pop af                                        ; $4575: $f1
    add a                                         ; $4576: $87
    ld l, c                                       ; $4577: $69
    add d                                         ; $4578: $82
    db $ec                                        ; $4579: $ec
    ld bc, $7600                                  ; $457a: $01 $00 $76
    jr @+$15                                      ; $457d: $18 $13

    dec c                                         ; $457f: $0d
    ld [hl], l                                    ; $4580: $75
    sub c                                         ; $4581: $91
    add sp, -$5b                                  ; $4582: $e8 $a5
    ld [$8e2c], a                                 ; $4584: $ea $2c $8e
    dec hl                                        ; $4587: $2b
    add l                                         ; $4588: $85
    ret nc                                        ; $4589: $d0

    res 0, d                                      ; $458a: $cb $82
    xor a                                         ; $458c: $af
    pop af                                        ; $458d: $f1
    ld d, a                                       ; $458e: $57
    ld a, [hl]                                    ; $458f: $7e
    ld bc, $5e8d                                  ; $4590: $01 $8d $5e
    ld a, [hl]                                    ; $4593: $7e
    and c                                         ; $4594: $a1
    or h                                          ; $4595: $b4
    sbc d                                         ; $4596: $9a
    sub d                                         ; $4597: $92
    scf                                           ; $4598: $37
    nop                                           ; $4599: $00
    ld a, l                                       ; $459a: $7d
    ld [hl], e                                    ; $459b: $73
    jp c, $b570                                   ; $459c: $da $70 $b5

    call Call_000_000d                            ; $459f: $cd $0d $00
    db $dd                                        ; $45a2: $dd
    ld a, [$69b6]                                 ; $45a3: $fa $b6 $69
    jp $36d5                                      ; $45a6: $c3 $d5 $36


    dec a                                         ; $45a9: $3d
    nop                                           ; $45aa: $00
    ld d, a                                       ; $45ab: $57
    rst $38                                       ; $45ac: $ff
    xor b                                         ; $45ad: $a8
    dec hl                                        ; $45ae: $2b
    cp a                                          ; $45af: $bf
    ld h, b                                       ; $45b0: $60
    jp z, Jump_000_0bdf                           ; $45b1: $ca $df $0b

    and h                                         ; $45b4: $a4
    ld [hl], h                                    ; $45b5: $74
    xor l                                         ; $45b6: $ad
    ld h, [hl]                                    ; $45b7: $66
    cp a                                          ; $45b8: $bf
    sub h                                         ; $45b9: $94
    ld e, c                                       ; $45ba: $59
    inc e                                         ; $45bb: $1c
    add a                                         ; $45bc: $87
    xor c                                         ; $45bd: $a9
    dec bc                                        ; $45be: $0b
    inc de                                        ; $45bf: $13
    and c                                         ; $45c0: $a1
    xor a                                         ; $45c1: $af
    ld d, e                                       ; $45c2: $53
    ld d, a                                       ; $45c3: $57
    ld a, [hl]                                    ; $45c4: $7e
    and $c3                                       ; $45c5: $e6 $c3
    sbc a                                         ; $45c7: $9f
    push af                                       ; $45c8: $f5
    cp [hl]                                       ; $45c9: $be
    ld l, a                                       ; $45ca: $6f
    nop                                           ; $45cb: $00
    db $dd                                        ; $45cc: $dd
    cpl                                           ; $45cd: $2f
    inc de                                        ; $45ce: $13
    ld d, [hl]                                    ; $45cf: $56
    ld d, d                                       ; $45d0: $52
    ld a, d                                       ; $45d1: $7a
    xor [hl]                                      ; $45d2: $ae
    cp e                                          ; $45d3: $bb
    sbc l                                         ; $45d4: $9d
    add $2e                                       ; $45d5: $c6 $2e
    db $dd                                        ; $45d7: $dd
    ld e, e                                       ; $45d8: $5b
    sbc h                                         ; $45d9: $9c
    call $f3be                                    ; $45da: $cd $be $f3
    db $fd                                        ; $45dd: $fd
    or d                                          ; $45de: $b2
    rst $20                                       ; $45df: $e7
    ld a, l                                       ; $45e0: $7d
    rst $18                                       ; $45e1: $df
    or $b4                                        ; $45e2: $f6 $b4
    jp nz, $ddd7                                  ; $45e4: $c2 $d7 $dd

    ld [c], a                                     ; $45e7: $e2
    xor d                                         ; $45e8: $aa
    adc [hl]                                      ; $45e9: $8e
    ld a, [de]                                    ; $45ea: $1a
    cp e                                          ; $45eb: $bb
    sbc d                                         ; $45ec: $9a
    ld l, $f8                                     ; $45ed: $2e $f8
    and [hl]                                      ; $45ef: $a6
    ld de, $f67d                                  ; $45f0: $11 $7d $f6
    inc b                                         ; $45f3: $04
    ld a, l                                       ; $45f4: $7d
    rst $18                                       ; $45f5: $df
    ccf                                           ; $45f6: $3f
    ld a, h                                       ; $45f7: $7c
    ld a, l                                       ; $45f8: $7d
    ld e, c                                       ; $45f9: $59
    ld l, c                                       ; $45fa: $69
    and l                                         ; $45fb: $a5
    ldh a, [rTMA]                                 ; $45fc: $f0 $06
    ld a, l                                       ; $45fe: $7d
    ld [hl], e                                    ; $45ff: $73
    ld c, l                                       ; $4600: $4d
    xor d                                         ; $4601: $aa
    ld [hl], $dd                                  ; $4602: $36 $dd
    ld c, a                                       ; $4604: $4f
    cp a                                          ; $4605: $bf
    inc [hl]                                      ; $4606: $34
    ld e, c                                       ; $4607: $59
    ld b, [hl]                                    ; $4608: $46
    ld sp, hl                                     ; $4609: $f9
    ld d, l                                       ; $460a: $55
    ret c                                         ; $460b: $d8

    rra                                           ; $460c: $1f
    cp [hl]                                       ; $460d: $be
    xor $15                                       ; $460e: $ee $15
    adc d                                         ; $4610: $8a
    ld a, a                                       ; $4611: $7f
    rst $18                                       ; $4612: $df
    inc de                                        ; $4613: $13
    nop                                           ; $4614: $00
    sub a                                         ; $4615: $97
    jr c, jr_03d_4626                             ; $4616: $38 $0e

    di                                            ; $4618: $f3
    ld e, [hl]                                    ; $4619: $5e
    or a                                          ; $461a: $b7
    dec hl                                        ; $461b: $2b
    inc e                                         ; $461c: $1c
    ld c, e                                       ; $461d: $4b
    add l                                         ; $461e: $85
    ei                                            ; $461f: $fb
    sub l                                         ; $4620: $95
    sbc a                                         ; $4621: $9f
    ld sp, hl                                     ; $4622: $f9
    ld a, [$ebe1]                                 ; $4623: $fa $e1 $eb

jr_03d_4626:
    bit 1, d                                      ; $4626: $cb $4a
    dec hl                                        ; $4628: $2b
    add l                                         ; $4629: $85
    dec a                                         ; $462a: $3d
    nop                                           ; $462b: $00
    ld a, l                                       ; $462c: $7d
    ld [hl], e                                    ; $462d: $73
    ld h, c                                       ; $462e: $61
    ld a, [$4daa]                                 ; $462f: $fa $aa $4d
    and a                                         ; $4632: $a7
    ld e, a                                       ; $4633: $5f
    sbc d                                         ; $4634: $9a
    call c, Call_03d_58bb                         ; $4635: $dc $bb $58
    ld d, a                                       ; $4638: $57
    ret                                           ; $4639: $c9


    ld d, d                                       ; $463a: $52
    and c                                         ; $463b: $a1
    ld [hl], h                                    ; $463c: $74
    pop hl                                        ; $463d: $e1
    ld a, [hl]                                    ; $463e: $7e
    ld h, c                                       ; $463f: $61
    dec hl                                        ; $4640: $2b
    push hl                                       ; $4641: $e5
    ld h, l                                       ; $4642: $65
    sub $85                                       ; $4643: $d6 $85
    inc d                                         ; $4645: $14
    ld c, a                                       ; $4646: $4f
    xor c                                         ; $4647: $a9
    jp c, $7574                                   ; $4648: $da $74 $75

    sub a                                         ; $464b: $97
    ld l, $74                                     ; $464c: $2e $74
    jr jr_03d_46a3                                ; $464e: $18 $53

    ld l, a                                       ; $4650: $6f
    nop                                           ; $4651: $00
    ld a, l                                       ; $4652: $7d
    ld [hl], e                                    ; $4653: $73
    dec h                                         ; $4654: $25
    ld b, a                                       ; $4655: $47
    adc h                                         ; $4656: $8c
    adc l                                         ; $4657: $8d
    add sp, -$57                                  ; $4658: $e8 $a9
    ldh a, [rHDMA1]                               ; $465a: $f0 $51
    ld h, e                                       ; $465c: $63
    adc [hl]                                      ; $465d: $8e
    cp d                                          ; $465e: $ba

Call_03d_465f:
    ld d, [hl]                                    ; $465f: $56
    add a                                         ; $4660: $87
    add hl, hl                                    ; $4661: $29
    pop af                                        ; $4662: $f1
    ld sp, $06f2                                  ; $4663: $31 $f2 $06
    ld a, l                                       ; $4666: $7d
    ld [hl], e                                    ; $4667: $73

jr_03d_4668:
    ld hl, $6ea5                                  ; $4668: $21 $a5 $6e
    or c                                          ; $466b: $b1
    ld c, c                                       ; $466c: $49
    push de                                       ; $466d: $d5
    ld e, c                                       ; $466e: $59
    inc e                                         ; $466f: $1c
    ld d, a                                       ; $4670: $57
    ld [hl], d                                    ; $4671: $72
    pop bc                                        ; $4672: $c1
    add a                                         ; $4673: $87
    cp d                                          ; $4674: $ba
    sbc d                                         ; $4675: $9a
    sbc $b3                                       ; $4676: $de $b3
    rst $20                                       ; $4678: $e7
    ld a, $14                                     ; $4679: $3e $14
    and d                                         ; $467b: $a2
    ld l, a                                       ; $467c: $6f
    ld a, $f7                                     ; $467d: $3e $f7
    dec bc                                        ; $467f: $0b
    cp [hl]                                       ; $4680: $be
    and c                                         ; $4681: $a1
    inc d                                         ; $4682: $14
    xor [hl]                                      ; $4683: $ae
    ld e, d                                       ; $4684: $5a
    adc b                                         ; $4685: $88
    sub c                                         ; $4686: $91
    ei                                            ; $4687: $fb
    sub l                                         ; $4688: $95
    rra                                           ; $4689: $1f
    ld b, h                                       ; $468a: $44
    adc h                                         ; $468b: $8c
    cp h                                          ; $468c: $bc
    ld [hl], a                                    ; $468d: $77
    ld b, l                                       ; $468e: $45
    ld e, d                                       ; $468f: $5a
    rst $30                                       ; $4690: $f7
    rst $30                                       ; $4691: $f7
    ld a, l                                       ; $4692: $7d
    ld [hl], a                                    ; $4693: $77
    and e                                         ; $4694: $a3
    add $b4                                       ; $4695: $c6 $b4
    xor [hl]                                      ; $4697: $ae
    inc [hl]                                      ; $4698: $34
    adc l                                         ; $4699: $8d
    cp c                                          ; $469a: $b9
    ldh a, [$e5]                                  ; $469b: $f0 $e5
    rla                                           ; $469d: $17
    or d                                          ; $469e: $b2
    ldh a, [$a5]                                  ; $469f: $f0 $a5
    rlca                                          ; $46a1: $07
    nop                                           ; $46a2: $00

jr_03d_46a3:
    add c                                         ; $46a3: $81
    adc l                                         ; $46a4: $8d
    jr jr_03d_471a                                ; $46a5: $18 $73

    sub c                                         ; $46a7: $91
    ld c, b                                       ; $46a8: $48
    sbc c                                         ; $46a9: $99
    push bc                                       ; $46aa: $c5
    ld [hl], c                                    ; $46ab: $71
    pop bc                                        ; $46ac: $c1
    scf                                           ; $46ad: $37
    sub h                                         ; $46ae: $94
    ld d, c                                       ; $46af: $51
    ld h, e                                       ; $46b0: $63
    jp nz, $97d7                                  ; $46b1: $c2 $d7 $97

    sub l                                         ; $46b4: $95
    ld d, [hl]                                    ; $46b5: $56
    ld a, [bc]                                    ; $46b6: $0a
    rst $28                                       ; $46b7: $ef
    ld [hl], l                                    ; $46b8: $75
    dec bc                                        ; $46b9: $0b
    ld h, b                                       ; $46ba: $60
    sub h                                         ; $46bb: $94
    ld d, [hl]                                    ; $46bc: $56
    db $dd                                        ; $46bd: $dd
    adc h                                         ; $46be: $8c
    db $d3                                        ; $46bf: $d3
    ld e, l                                       ; $46c0: $5d
    sub [hl]                                      ; $46c1: $96
    pop af                                        ; $46c2: $f1
    adc e                                         ; $46c3: $8b
    db $d3                                        ; $46c4: $d3
    ld e, $00                                     ; $46c5: $1e $00
    ld a, l                                       ; $46c7: $7d
    cp d                                          ; $46c8: $ba
    ld [hl], h                                    ; $46c9: $74
    pop af                                        ; $46ca: $f1
    push bc                                       ; $46cb: $c5
    ld [hl], e                                    ; $46cc: $73
    dec h                                         ; $46cd: $25
    ld b, a                                       ; $46ce: $47
    adc h                                         ; $46cf: $8c
    ld b, h                                       ; $46d0: $44
    ld c, a                                       ; $46d1: $4f
    jp hl                                         ; $46d2: $e9


    ld d, d                                       ; $46d3: $52
    ld hl, sp-$06                                 ; $46d4: $f8 $fa
    or d                                          ; $46d6: $b2
    jp nc, $e14a                                  ; $46d7: $d2 $4a $e1

    dec c                                         ; $46da: $0d
    nop                                           ; $46db: $00
    db $dd                                        ; $46dc: $dd
    db $ec                                        ; $46dd: $ec
    inc [hl]                                      ; $46de: $34
    halt                                          ; $46df: $76
    adc l                                         ; $46e0: $8d
    jr jr_03d_4668                                ; $46e1: $18 $85

    rst $18                                       ; $46e3: $df
    ld l, c                                       ; $46e4: $69
    sub h                                         ; $46e5: $94
    ld hl, sp+$3d                                 ; $46e6: $f8 $3d
    ld d, $88                                     ; $46e8: $16 $88
    rra                                           ; $46ea: $1f
    ld [hl], d                                    ; $46eb: $72
    sub $5f                                       ; $46ec: $d6 $5f
    ldh a, [$3b]                                  ; $46ee: $f0 $3b
    jp nc, Jump_03d_6235                          ; $46f0: $d2 $35 $62

    sub h                                         ; $46f3: $94
    rst $30                                       ; $46f4: $f7
    ld a, c                                       ; $46f5: $79
    inc bc                                        ; $46f6: $03
    ld a, l                                       ; $46f7: $7d
    ld [hl], e                                    ; $46f8: $73
    ld b, [hl]                                    ; $46f9: $46
    sbc b                                         ; $46fa: $98
    or e                                          ; $46fb: $b3
    jr c, jr_03d_472c                             ; $46fc: $38 $2e

    ld [hl], h                                    ; $46fe: $74
    db $f4                                        ; $46ff: $f4
    cp a                                          ; $4700: $bf
    ld a, [bc]                                    ; $4701: $0a
    dec b                                         ; $4702: $05
    ld d, e                                       ; $4703: $53
    ld l, a                                       ; $4704: $6f
    nop                                           ; $4705: $00
    sub a                                         ; $4706: $97
    halt                                          ; $4707: $76
    add l                                         ; $4708: $85
    call Call_03d_7c27                            ; $4709: $cd $27 $7c
    or $2f                                        ; $470c: $f6 $2f
    ld h, d                                       ; $470e: $62
    add l                                         ; $470f: $85
    adc a                                         ; $4710: $8f
    ld [hl], l                                    ; $4711: $75
    ret c                                         ; $4712: $d8

    ret c                                         ; $4713: $d8

    rst $38                                       ; $4714: $ff
    rst $30                                       ; $4715: $f7
    adc e                                         ; $4716: $8b
    ld l, c                                       ; $4717: $69
    ld e, [hl]                                    ; $4718: $5e
    ld d, [hl]                                    ; $4719: $56

jr_03d_471a:
    ld a, [hl]                                    ; $471a: $7e
    push de                                       ; $471b: $d5
    push hl                                       ; $471c: $e5
    ld e, l                                       ; $471d: $5d
    db $fc                                        ; $471e: $fc
    dec de                                        ; $471f: $1b
    nop                                           ; $4720: $00
    db $dd                                        ; $4721: $dd
    ld a, [$6ae6]                                 ; $4722: $fa $e6 $6a
    xor [hl]                                      ; $4725: $ae
    db $fc                                        ; $4726: $fc
    add d                                         ; $4727: $82
    ld e, h                                       ; $4728: $5c
    sub h                                         ; $4729: $94
    or a                                          ; $472a: $b7
    pop af                                        ; $472b: $f1

jr_03d_472c:
    reti                                          ; $472c: $d9


    ld h, e                                       ; $472d: $63
    db $dd                                        ; $472e: $dd
    ld l, $23                                     ; $472f: $2e $23
    or d                                          ; $4731: $b2
    ld c, [hl]                                    ; $4732: $4e
    sbc l                                         ; $4733: $9d
    push bc                                       ; $4734: $c5
    ld [hl], c                                    ; $4735: $71
    sub l                                         ; $4736: $95
    inc l                                         ; $4737: $2c
    dec d                                         ; $4738: $15
    ld c, d                                       ; $4739: $4a
    rrca                                          ; $473a: $0f
    nop                                           ; $473b: $00
    halt                                          ; $473c: $76
    ld a, [de]                                    ; $473d: $1a
    cp e                                          ; $473e: $bb
    and $53                                       ; $473f: $e6 $53
    ld [$f3e6], a                                 ; $4741: $ea $e6 $f3
    ld e, [hl]                                    ; $4744: $5e
    or a                                          ; $4745: $b7
    dec hl                                        ; $4746: $2b
    cp [hl]                                       ; $4747: $be
    ld c, [hl]                                    ; $4748: $4e
    db $ed                                        ; $4749: $ed
    ld bc, $1700                                  ; $474a: $01 $00 $17
    db $fd                                        ; $474d: $fd
    ld b, d                                       ; $474e: $42
    ret                                           ; $474f: $c9


    ld l, d                                       ; $4750: $6a
    ld l, d                                       ; $4751: $6a
    jp z, $8faf                                   ; $4752: $ca $af $8f

    add hl, sp                                    ; $4755: $39
    cpl                                           ; $4756: $2f
    pop af                                        ; $4757: $f1
    and c                                         ; $4758: $a1

Jump_03d_4759:
    cpl                                           ; $4759: $2f
    ld h, l                                       ; $475a: $65
    cp [hl]                                       ; $475b: $be
    add hl, de                                    ; $475c: $19
    adc $e2                                       ; $475d: $ce $e2
    cp b                                          ; $475f: $b8
    ld [hl], e                                    ; $4760: $73
    ld e, h                                       ; $4761: $5c
    db $dd                                        ; $4762: $dd
    add hl, hl                                    ; $4763: $29
    db $f4                                        ; $4764: $f4
    add hl, hl                                    ; $4765: $29
    inc e                                         ; $4766: $1c
    dec [hl]                                      ; $4767: $35
    halt                                          ; $4768: $76
    adc l                                         ; $4769: $8d
    cp b                                          ; $476a: $b8
    adc e                                         ; $476b: $8b

Jump_03d_476c:
    ld [de], a                                    ; $476c: $12
    cp l                                          ; $476d: $bd
    ld d, b                                       ; $476e: $50
    ld l, a                                       ; $476f: $6f
    nop                                           ; $4770: $00
    db $dd                                        ; $4771: $dd
    inc bc                                        ; $4772: $03
    cp a                                          ; $4773: $bf
    ld b, e                                       ; $4774: $43
    sbc l                                         ; $4775: $9d
    or a                                          ; $4776: $b7
    ld b, l                                       ; $4777: $45
    rst $08                                       ; $4778: $cf
    ld d, c                                       ; $4779: $51
    ld h, e                                       ; $477a: $63
    rst $10                                       ; $477b: $d7
    adc $71                                       ; $477c: $ce $71
    ld [hl], l                                    ; $477e: $75
    and a                                         ; $477f: $a7
    ret nc                                        ; $4780: $d0

    and a                                         ; $4781: $a7
    or b                                          ; $4782: $b0
    daa                                           ; $4783: $27
    nop                                           ; $4784: $00
    or $5c                                        ; $4785: $f6 $5c
    jp c, $9cf8                                   ; $4787: $da $f8 $9c

    push bc                                       ; $478a: $c5
    ld [hl], c                                    ; $478b: $71
    call nc, Call_000_35d8                        ; $478c: $d4 $d8 $35
    rst $08                                       ; $478f: $cf
    ld d, l                                       ; $4790: $55
    jp c, $e3f7                                   ; $4791: $da $f7 $e3

    dec c                                         ; $4794: $0d
    nop                                           ; $4795: $00
    ld bc, $c5e9                                  ; $4796: $01 $e9 $c5
    and $47                                       ; $4799: $e6 $47
    adc l                                         ; $479b: $8d
    cpl                                           ; $479c: $2f
    inc sp                                        ; $479d: $33
    xor a                                         ; $479e: $af
    ld l, l                                       ; $479f: $6d
    call nz, $f719                                ; $47a0: $c4 $19 $f7
    push bc                                       ; $47a3: $c5
    ld [c], a                                     ; $47a4: $e2
    ld a, [de]                                    ; $47a5: $1a
    ld h, l                                       ; $47a6: $65
    pop hl                                        ; $47a7: $e1
    ld c, e                                       ; $47a8: $4b
    db $e4                                        ; $47a9: $e4
    dec c                                         ; $47aa: $0d
    nop                                           ; $47ab: $00
    ld a, l                                       ; $47ac: $7d
    di                                            ; $47ad: $f3
    ld e, [hl]                                    ; $47ae: $5e
    nop                                           ; $47af: $00
    dec h                                         ; $47b0: $25
    ld d, a                                       ; $47b1: $57
    ld [hl], d                                    ; $47b2: $72

jr_03d_47b3:
    dec d                                         ; $47b3: $15
    and $6a                                       ; $47b4: $e6 $6a
    ld h, a                                       ; $47b6: $67
    add d                                         ; $47b7: $82
    cp c                                          ; $47b8: $b9
    jr nc, jr_03d_4820                            ; $47b9: $30 $65

    inc l                                         ; $47bb: $2c
    or e                                          ; $47bc: $b3
    cp b                                          ; $47bd: $b8
    add [hl]                                      ; $47be: $86
    ld sp, $3617                                  ; $47bf: $31 $17 $36
    call $001b                                    ; $47c2: $cd $1b $00
    ld a, l                                       ; $47c5: $7d
    ld [hl], e                                    ; $47c6: $73
    dec h                                         ; $47c7: $25
    rla                                           ; $47c8: $17
    db $e4                                        ; $47c9: $e4
    ld a, [hl+]                                   ; $47ca: $2a
    ld c, l                                       ; $47cb: $4d
    ld h, e                                       ; $47cc: $63
    adc [hl]                                      ; $47cd: $8e
    cp b                                          ; $47ce: $b8
    sbc b                                         ; $47cf: $98
    ld a, $c7                                     ; $47d0: $3e $c7
    ld [hl-], a                                   ; $47d2: $32
    ld l, a                                       ; $47d3: $6f
    di                                            ; $47d4: $f3
    scf                                           ; $47d5: $37
    nop                                           ; $47d6: $00
    or $5c                                        ; $47d7: $f6 $5c
    and l                                         ; $47d9: $a5
    ld l, c                                       ; $47da: $69
    call z, $befd                                 ; $47db: $cc $fd $be
    ld b, b                                       ; $47de: $40
    xor [hl]                                      ; $47df: $ae
    ld de, $7167                                  ; $47e0: $11 $67 $71
    sbc h                                         ; $47e3: $9c
    ld [hl], d                                    ; $47e4: $72
    xor l                                         ; $47e5: $ad
    di                                            ; $47e6: $f3
    xor e                                         ; $47e7: $ab
    ld h, h                                       ; $47e8: $64
    ld a, c                                       ; $47e9: $79
    db $f4                                        ; $47ea: $f4
    ld a, c                                       ; $47eb: $79
    rst $28                                       ; $47ec: $ef
    or d                                          ; $47ed: $b2
    cpl                                           ; $47ee: $2f
    xor e                                         ; $47ef: $ab
    or b                                          ; $47f0: $b0
    rst $38                                       ; $47f1: $ff
    jr z, jr_03d_47b3                             ; $47f2: $28 $bf

    xor d                                         ; $47f4: $aa
    push hl                                       ; $47f5: $e5
    ld b, $01                                     ; $47f6: $06 $01
    ld b, d                                       ; $47f8: $42
    add sp, $00                                   ; $47f9: $e8 $00
    adc h                                         ; $47fb: $8c
    ld e, a                                       ; $47fc: $5f
    cp b                                          ; $47fd: $b8
    ld e, a                                       ; $47fe: $5f
    rra                                           ; $47ff: $1f
    ld [hl], e                                    ; $4800: $73
    ld e, [hl]                                    ; $4801: $5e
    ld [c], a                                     ; $4802: $e2
    ld b, e                                       ; $4803: $43
    ld e, a                                       ; $4804: $5f
    jp z, $8bbd                                   ; $4805: $ca $bd $8b

    ld d, d                                       ; $4808: $52
    rla                                           ; $4809: $17
    db $e4                                        ; $480a: $e4
    ld a, [hl+]                                   ; $480b: $2a
    ld c, l                                       ; $480c: $4d
    ld h, e                                       ; $480d: $63
    ld l, $f8                                     ; $480e: $2e $f8
    sbc l                                         ; $4810: $9d
    ld a, [c]                                     ; $4811: $f2
    add sp, -$0d                                  ; $4812: $e8 $f3

jr_03d_4814:
    ld b, $7d                                     ; $4814: $06 $7d
    ld [hl], e                                    ; $4816: $73
    dec [hl]                                      ; $4817: $35
    rst $20                                       ; $4818: $e7
    jp hl                                         ; $4819: $e9


    sbc e                                         ; $481a: $9b
    ret                                           ; $481b: $c9


    db $fd                                        ; $481c: $fd
    or d                                          ; $481d: $b2
    and e                                         ; $481e: $a3
    sub h                                         ; $481f: $94

jr_03d_4820:
    jp z, $c94b                                   ; $4820: $ca $4b $c9

    dec de                                        ; $4823: $1b
    nop                                           ; $4824: $00
    sub a                                         ; $4825: $97
    ld a, l                                       ; $4826: $7d
    ld e, c                                       ; $4827: $59
    add l                                         ; $4828: $85
    db $fd                                        ; $4829: $fd
    and a                                         ; $482a: $a7
    ld e, h                                       ; $482b: $5c
    ldh a, [$d7]                                  ; $482c: $f0 $d7
    ld a, h                                       ; $482e: $7c
    xor $57                                       ; $482f: $ee $57

jr_03d_4831:
    and c                                         ; $4831: $a1
    db $ec                                        ; $4832: $ec
    ld h, a                                       ; $4833: $67
    rst $38                                       ; $4834: $ff
    sub b                                         ; $4835: $90
    inc [hl]                                      ; $4836: $34
    ld a, a                                       ; $4837: $7f
    rst $08                                       ; $4838: $cf
    cp $3b                                        ; $4839: $fe $3b
    push hl                                       ; $483b: $e5
    ld [hl], c                                    ; $483c: $71
    or l                                          ; $483d: $b5
    inc sp                                        ; $483e: $33
    pop bc                                        ; $483f: $c1
    cp h                                          ; $4840: $bc
    ld bc, $5cf6                                  ; $4841: $01 $f6 $5c
    jp c, $dcf8                                   ; $4844: $da $f8 $dc

jr_03d_4847:
    rla                                           ; $4847: $17
    jr z, jr_03d_4831                             ; $4848: $28 $e7

    add hl, sp                                    ; $484a: $39
    adc e                                         ; $484b: $8b
    db $e3                                        ; $484c: $e3
    sub h                                         ; $484d: $94
    dec bc                                        ; $484e: $0b
    cp $62                                        ; $484f: $fe $62
    sub $ef                                       ; $4851: $d6 $ef
    ld [hl], e                                    ; $4853: $73
    ld c, $5f                                     ; $4854: $0e $5f
    ld d, a                                       ; $4856: $57
    ld a, c                                       ; $4857: $79
    di                                            ; $4858: $f3
    and [hl]                                      ; $4859: $a6
    dec h                                         ; $485a: $25
    ld d, d                                       ; $485b: $52
    ld l, a                                       ; $485c: $6f
    nop                                           ; $485d: $00
    rla                                           ; $485e: $17

Jump_03d_485f:
    ld [hl], c                                    ; $485f: $71
    ld b, c                                       ; $4860: $41
    ld l, $6d                                     ; $4861: $2e $6d
    ld a, h                                       ; $4863: $7c
    xor [hl]                                      ; $4864: $ae
    halt                                          ; $4865: $76
    ld d, d                                       ; $4866: $52
    dec sp                                        ; $4867: $3b
    ld a, c                                       ; $4868: $79
    reti                                          ; $4869: $d9


    rla                                           ; $486a: $17
    jr z, jr_03d_4814                             ; $486b: $28 $a7

    reti                                          ; $486d: $d9


    ld de, $e1ce                                  ; $486e: $11 $ce $e1
    ld c, a                                       ; $4871: $4f
    add sp, -$50                                  ; $4872: $e8 $b0
    reti                                          ; $4874: $d9


    ld [c], a                                     ; $4875: $e2
    ld e, d                                       ; $4876: $5a
    dec e                                         ; $4877: $1d
    and [hl]                                      ; $4878: $a6
    call nz, $c8c7                                ; $4879: $c4 $c7 $c8
    dec de                                        ; $487c: $1b
    nop                                           ; $487d: $00
    ld a, l                                       ; $487e: $7d
    ld [hl], e                                    ; $487f: $73
    dec h                                         ; $4880: $25
    rla                                           ; $4881: $17
    db $e4                                        ; $4882: $e4
    ld a, [hl+]                                   ; $4883: $2a
    ld c, l                                       ; $4884: $4d
    ld h, e                                       ; $4885: $63
    adc $53                                       ; $4886: $ce $53
    dec a                                         ; $4888: $3d
    ld d, a                                       ; $4889: $57
    ld a, [hl]                                    ; $488a: $7e
    add [hl]                                      ; $488b: $86
    ld hl, sp-$0d                                 ; $488c: $f8 $f3
    call c, $9a63                                 ; $488e: $dc $63 $9a
    jr nz, jr_03d_4902                            ; $4891: $20 $6f

    nop                                           ; $4893: $00
    ld bc, $2b29                                  ; $4894: $01 $29 $2b
    add hl, sp                                    ; $4897: $39
    adc e                                         ; $4898: $8b
    db $e3                                        ; $4899: $e3
    xor h                                         ; $489a: $ac
    add hl, sp                                    ; $489b: $39
    xor l                                         ; $489c: $ad
    ld a, [bc]                                    ; $489d: $0a
    ld e, a                                       ; $489e: $5f
    ldh a, [$35]                                  ; $489f: $f0 $35
    cp $2e                                        ; $48a1: $fe $2e
    cp e                                          ; $48a3: $bb
    halt                                          ; $48a4: $76
    ld h, c                                       ; $48a5: $61
    ld a, d                                       ; $48a6: $7a
    or c                                          ; $48a7: $b1
    ld a, c                                       ; $48a8: $79
    sbc l                                         ; $48a9: $9d
    ld d, d                                       ; $48aa: $52
    halt                                          ; $48ab: $76
    adc [hl]                                      ; $48ac: $8e
    xor e                                         ; $48ad: $ab
    dec sp                                        ; $48ae: $3b
    add l                                         ; $48af: $85
    ld a, $85                                     ; $48b0: $3e $85
    scf                                           ; $48b2: $37
    nop                                           ; $48b3: $00
    ld a, l                                       ; $48b4: $7d
    di                                            ; $48b5: $f3
    sbc $d5                                       ; $48b6: $de $d5
    jp $d09c                                      ; $48b8: $c3 $9c $d0


    jr c, jr_03d_4847                             ; $48bb: $38 $8a

    rst $08                                       ; $48bd: $cf
    dec b                                         ; $48be: $05
    cp a                                          ; $48bf: $bf
    ld b, e                                       ; $48c0: $43
    add hl, hl                                    ; $48c1: $29
    cp c                                          ; $48c2: $b9
    ld c, d                                       ; $48c3: $4a
    db $d3                                        ; $48c4: $d3
    sbc b                                         ; $48c5: $98
    inc hl                                        ; $48c6: $23
    adc [hl]                                      ; $48c7: $8e
    ld h, l                                       ; $48c8: $65
    sbc [hl]                                      ; $48c9: $9e
    ld a, [$8756]                                 ; $48ca: $fa $56 $87
    ld a, c                                       ; $48cd: $79
    inc bc                                        ; $48ce: $03
    rla                                           ; $48cf: $17
    push hl                                       ; $48d0: $e5
    add d                                         ; $48d1: $82
    ld e, h                                       ; $48d2: $5c
    and l                                         ; $48d3: $a5
    ld l, c                                       ; $48d4: $69
    call z, $c499                                 ; $48d5: $cc $99 $c4
    xor c                                         ; $48d8: $a9
    dec de                                        ; $48d9: $1b
    push de                                       ; $48da: $d5
    ld h, h                                       ; $48db: $64
    rst $20                                       ; $48dc: $e7
    rst $28                                       ; $48dd: $ef
    ld e, l                                       ; $48de: $5d
    or $65                                        ; $48df: $f6 $65
    dec d                                         ; $48e1: $15
    or $5f                                        ; $48e2: $f6 $5f
    push hl                                       ; $48e4: $e5
    xor l                                         ; $48e5: $ad
    cp a                                          ; $48e6: $bf
    ld e, a                                       ; $48e7: $5f
    rst $20                                       ; $48e8: $e7
    ld b, l                                       ; $48e9: $45
    jr z, @+$75                                   ; $48ea: $28 $73

    cp b                                          ; $48ec: $b8
    jr nc, @+$4f                                  ; $48ed: $30 $4d

    sbc $00                                       ; $48ef: $de $00
    ld a, l                                       ; $48f1: $7d
    db $db                                        ; $48f2: $db
    or h                                          ; $48f3: $b4
    ld e, c                                       ; $48f4: $59
    ld e, h                                       ; $48f5: $5c
    and e                                         ; $48f6: $a3
    db $fc                                        ; $48f7: $fc
    or h                                          ; $48f8: $b4
    ld [$2dbc], a                                 ; $48f9: $ea $bc $2d
    ld a, d                                       ; $48fc: $7a
    adc [hl]                                      ; $48fd: $8e
    ld a, [de]                                    ; $48fe: $1a
    cp e                                          ; $48ff: $bb
    and [hl]                                      ; $4900: $a6
    ld l, [hl]                                    ; $4901: $6e

jr_03d_4902:
    sbc [hl]                                      ; $4902: $9e
    ld a, [de]                                    ; $4903: $1a
    cp [hl]                                       ; $4904: $be
    add hl, bc                                    ; $4905: $09
    and $0d                                       ; $4906: $e6 $0d
    nop                                           ; $4908: $00
    ld a, l                                       ; $4909: $7d
    di                                            ; $490a: $f3
    ld e, [hl]                                    ; $490b: $5e
    jr nz, jr_03d_492f                            ; $490c: $20 $21

    daa                                           ; $490e: $27
    add hl, sp                                    ; $490f: $39
    adc e                                         ; $4910: $8b
    db $e3                                        ; $4911: $e3
    inc e                                         ; $4912: $1c
    and $3c                                       ; $4913: $e6 $3c
    ld d, a                                       ; $4915: $57
    ld d, d                                       ; $4916: $52
    rla                                           ; $4917: $17
    ld c, d                                       ; $4918: $4a
    ld d, [hl]                                    ; $4919: $56
    ld d, e                                       ; $491a: $53
    ld d, e                                       ; $491b: $53
    xor b                                         ; $491c: $a8
    dec hl                                        ; $491d: $2b
    add hl, sp                                    ; $491e: $39
    db $fd                                        ; $491f: $fd
    ld c, $6f                                     ; $4920: $0e $6f
    nop                                           ; $4922: $00
    rla                                           ; $4923: $17
    push hl                                       ; $4924: $e5
    ld a, [hl+]                                   ; $4925: $2a
    ld l, l                                       ; $4926: $6d
    ld h, $b1                                     ; $4927: $26 $b1
    ld b, d                                       ; $4929: $42
    pop de                                        ; $492a: $d1
    ld b, a                                       ; $492b: $47
    sbc a                                         ; $492c: $9f
    inc sp                                        ; $492d: $33
    adc c                                         ; $492e: $89

jr_03d_492f:
    db $eb                                        ; $492f: $eb
    ld h, e                                       ; $4930: $63
    adc $4b                                       ; $4931: $ce $4b
    ld a, h                                       ; $4933: $7c
    add sp, $4b                                   ; $4934: $e8 $4b
    sbc c                                         ; $4936: $99
    ld [hl], l                                    ; $4937: $75
    ld h, c                                       ; $4938: $61
    and d                                         ; $4939: $a2
    call $e1cf                                    ; $493a: $cd $cf $e1
    rst $08                                       ; $493d: $cf
    cp h                                          ; $493e: $bc
    db $fc                                        ; $493f: $fc
    ld l, d                                       ; $4940: $6a
    ld h, a                                       ; $4941: $67
    sbc l                                         ; $4942: $9d
    ld d, d                                       ; $4943: $52
    jp c, $bbdf                                   ; $4944: $da $df $bb

    db $ec                                        ; $4947: $ec
    sra d                                         ; $4948: $cb $2a
    db $ec                                        ; $494a: $ec
    ccf                                           ; $494b: $3f
    sub [hl]                                      ; $494c: $96
    ld a, [c]                                     ; $494d: $f2
    dec hl                                        ; $494e: $2b
    add hl, sp                                    ; $494f: $39
    ld h, l                                       ; $4950: $65
    ld hl, sp+$37                                 ; $4951: $f8 $37
    nop                                           ; $4953: $00
    ld a, l                                       ; $4954: $7d
    sbc h                                         ; $4955: $9c
    add hl, bc                                    ; $4956: $09
    cp [hl]                                       ; $4957: $be
    xor [hl]                                      ; $4958: $ae
    ld b, d                                       ; $4959: $42
    ld b, e                                       ; $495a: $43
    dec e                                         ; $495b: $1d
    and $b4                                       ; $495c: $e6 $b4
    ld [$cdb0], a                                 ; $495e: $ea $b0 $cd
    db $db                                        ; $4961: $db
    and d                                         ; $4962: $a2
    rst $20                                       ; $4963: $e7
    xor b                                         ; $4964: $a8
    ld sp, $b3ad                                  ; $4965: $31 $ad $b3
    and $0d                                       ; $4968: $e6 $0d
    nop                                           ; $496a: $00
    sub a                                         ; $496b: $97
    ld a, l                                       ; $496c: $7d
    ld e, c                                       ; $496d: $59

jr_03d_496e:
    add l                                         ; $496e: $85
    db $fd                                        ; $496f: $fd
    ld b, a                                       ; $4970: $47
    adc l                                         ; $4971: $8d
    ld e, l                                       ; $4972: $5d
    inc hl                                        ; $4973: $23
    adc [hl]                                      ; $4974: $8e
    ld h, l                                       ; $4975: $65
    rst $20                                       ; $4976: $e7
    ret                                           ; $4977: $c9


    db $e3                                        ; $4978: $e3
    ld a, d                                       ; $4979: $7a
    ld h, a                                       ; $497a: $67
    ld c, l                                       ; $497b: $4d
    sbc a                                         ; $497c: $9f
    or d                                          ; $497d: $b2
    ld d, b                                       ; $497e: $50
    sbc $c4                                       ; $497f: $de $c4
    ld h, [hl]                                    ; $4981: $66
    ld e, $7d                                     ; $4982: $1e $7d
    ld c, [hl]                                    ; $4984: $4e
    db $dd                                        ; $4985: $dd
    ld a, h                                       ; $4986: $7c
    ld d, e                                       ; $4987: $53
    db $e3                                        ; $4988: $e3

jr_03d_4989:
    ld b, h                                       ; $4989: $44
    ld [hl], e                                    ; $498a: $73
    sbc [hl]                                      ; $498b: $9e
    xor e                                         ; $498c: $ab
    ld l, [hl]                                    ; $498d: $6e
    jr c, @-$2f                                   ; $498e: $38 $cf

    db $fd                                        ; $4990: $fd
    pop bc                                        ; $4991: $c1
    ld a, c                                       ; $4992: $79
    inc bc                                        ; $4993: $03
    cp l                                          ; $4994: $bd
    ld c, d                                       ; $4995: $4a
    jp hl                                         ; $4996: $e9


    sbc d                                         ; $4997: $9a
    ld c, a                                       ; $4998: $4f
    db $f4                                        ; $4999: $f4
    ld e, h                                       ; $499a: $5c
    pop hl                                        ; $499b: $e1
    jp nz, $fdf2                                  ; $499c: $c2 $f2 $fd

    call Call_03d_57c3                            ; $499f: $cd $c3 $57
    ld [hl], e                                    ; $49a2: $73
    xor l                                         ; $49a3: $ad
    ld a, [hl]                                    ; $49a4: $7e
    xor b                                         ; $49a5: $a8
    ld h, c                                       ; $49a6: $61
    sbc $00                                       ; $49a7: $de $00
    rla                                           ; $49a9: $17
    dec d                                         ; $49aa: $15
    ld d, [hl]                                    ; $49ab: $56
    ld [hl], d                                    ; $49ac: $72
    sbc $e6                                       ; $49ad: $de $e6
    ld [hl], l                                    ; $49af: $75
    jp c, Jump_000_1570                           ; $49b0: $da $70 $15

    ld c, d                                       ; $49b3: $4a
    ret                                           ; $49b4: $c9


    dec de                                        ; $49b5: $1b
    nop                                           ; $49b6: $00
    ld bc, $e842                                  ; $49b7: $01 $42 $e8
    nop                                           ; $49ba: $00
    adc h                                         ; $49bb: $8c
    ld e, a                                       ; $49bc: $5f
    cp b                                          ; $49bd: $b8
    sbc a                                         ; $49be: $9f
    jp $9285                                      ; $49bf: $c3 $85 $92


    push de                                       ; $49c2: $d5
    call nc, Call_03d_7b94                        ; $49c3: $d4 $94 $7b
    add c                                         ; $49c6: $81
    adc l                                         ; $49c7: $8d
    ld [hl], l                                    ; $49c8: $75
    jr z, @-$62                                   ; $49c9: $28 $9c

    ld a, [hl]                                    ; $49cb: $7e
    add a                                         ; $49cc: $87
    jr c, jr_03d_496e                             ; $49cd: $38 $9f

    add sp, $39                                   ; $49cf: $e8 $39
    ld l, d                                       ; $49d1: $6a
    db $ec                                        ; $49d2: $ec
    jp nz, Jump_03d_4c39                          ; $49d3: $c2 $39 $4c

    sbc l                                         ; $49d6: $9d
    ld [hl], l                                    ; $49d7: $75
    add hl, de                                    ; $49d8: $19
    dec h                                         ; $49d9: $25
    push af                                       ; $49da: $f5
    ld b, $bd                                     ; $49db: $06 $bd
    inc l                                         ; $49dd: $2c
    adc $66                                       ; $49de: $ce $66

jr_03d_49e0:
    sub $7d                                       ; $49e0: $d6 $7d
    add hl, hl                                    ; $49e2: $29
    ld e, l                                       ; $49e3: $5d
    ldh a, [$bd]                                  ; $49e4: $f0 $bd
    ld c, b                                       ; $49e6: $48
    db $eb                                        ; $49e7: $eb
    db $fc                                        ; $49e8: $fc
    xor h                                         ; $49e9: $ac
    ei                                            ; $49ea: $fb

jr_03d_49eb:
    adc $f7                                       ; $49eb: $ce $f7
    bit 7, e                                      ; $49ed: $cb $7b
    sub a                                         ; $49ef: $97
    dec e                                         ; $49f0: $1d
    jr nc, jr_03d_4989                            ; $49f1: $30 $96

    ld b, $51                                     ; $49f3: $06 $51
    ld l, a                                       ; $49f5: $6f
    nop                                           ; $49f6: $00
    or $5c                                        ; $49f7: $f6 $5c
    jp c, $9cf8                                   ; $49f9: $da $f8 $9c

    push bc                                       ; $49fc: $c5
    ld [hl], c                                    ; $49fd: $71
    jp z, $ceb5                                   ; $49fe: $ca $b5 $ce

    rst $08                                       ; $4a01: $cf
    pop hl                                        ; $4a02: $e1
    ld h, d                                       ; $4a03: $62
    ld h, e                                       ; $4a04: $63
    dec e                                         ; $4a05: $1d
    and $0d                                       ; $4a06: $e6 $0d
    nop                                           ; $4a08: $00
    ld bc, $c5e9                                  ; $4a09: $01 $e9 $c5
    and $47                                       ; $4a0c: $e6 $47
    adc l                                         ; $4a0e: $8d
    cpl                                           ; $4a0f: $2f
    inc hl                                        ; $4a10: $23
    adc $b8                                       ; $4a11: $ce $b8
    cpl                                           ; $4a13: $2f
    ld d, $d7                                     ; $4a14: $16 $d7
    jr z, jr_03d_49eb                             ; $4a16: $28 $d3

    ld d, $5b                                     ; $4a18: $16 $5b
    sbc $bb                                       ; $4a1a: $de $bb
    db $ec                                        ; $4a1c: $ec
    sra d                                         ; $4a1d: $cb $2a
    db $ec                                        ; $4a1f: $ec
    cp a                                          ; $4a20: $bf
    jr nc, jr_03d_49e0                            ; $4a21: $30 $bd

    ret c                                         ; $4a23: $d8

    db $fc                                        ; $4a24: $fc
    xor b                                         ; $4a25: $a8
    pop af                                        ; $4a26: $f1
    ld h, l                                       ; $4a27: $65
    call nz, $f4c5                                ; $4a28: $c4 $c5 $f4
    xor c                                         ; $4a2b: $a9
    db $d3                                        ; $4a2c: $d3
    ld d, $5b                                     ; $4a2d: $16 $5b
    ld a, [hl+]                                   ; $4a2f: $2a
    ld a, h                                       ; $4a30: $7c
    jp c, Jump_03d_7166                           ; $4a31: $da $66 $71

    ld c, l                                       ; $4a34: $4d
    dec de                                        ; $4a35: $1b
    push hl                                       ; $4a36: $e5
    rst $20                                       ; $4a37: $e7
    cp c                                          ; $4a38: $b9
    ld a, [bc]                                    ; $4a39: $0a
    push bc                                       ; $4a3a: $c5
    cp a                                          ; $4a3b: $bf
    cp a                                          ; $4a3c: $bf
    ld bc, $7d97                                  ; $4a3d: $01 $97 $7d
    ld e, c                                       ; $4a40: $59
    add l                                         ; $4a41: $85
    db $fd                                        ; $4a42: $fd
    rst $10                                       ; $4a43: $d7
    sub a                                         ; $4a44: $97
    sub l                                         ; $4a45: $95
    ld d, [hl]                                    ; $4a46: $56
    ld a, [bc]                                    ; $4a47: $0a
    ld [hl], a                                    ; $4a48: $77
    ld d, c                                       ; $4a49: $51
    ld [hl+], a                                   ; $4a4a: $22
    call nc, Call_000_18c9                        ; $4a4b: $d4 $c9 $18
    or e                                          ; $4a4e: $b3
    ld e, [hl]                                    ; $4a4f: $5e
    pop hl                                        ; $4a50: $e1
    add d                                         ; $4a51: $82
    cp a                                          ; $4a52: $bf
    sub b                                         ; $4a53: $90
    cp [hl]                                       ; $4a54: $be
    ld sp, hl                                     ; $4a55: $f9

Jump_03d_4a56:
    sbc h                                         ; $4a56: $9c
    push bc                                       ; $4a57: $c5
    ld [hl], c                                    ; $4a58: $71
    dec e                                         ; $4a59: $1d
    and a                                         ; $4a5a: $a7
    ld d, $c7                                     ; $4a5b: $16 $c7
    xor c                                         ; $4a5d: $a9
    sbc e                                         ; $4a5e: $9b
    ld a, [hl]                                    ; $4a5f: $7e
    sbc b                                         ; $4a60: $98
    scf                                           ; $4a61: $37
    nop                                           ; $4a62: $00
    rla                                           ; $4a63: $17
    ld [hl], c                                    ; $4a64: $71
    ld l, c                                       ; $4a65: $69
    or e                                          ; $4a66: $b3
    ldh [rPCM34], a                               ; $4a67: $e0 $77
    jp z, $88cb                                   ; $4a69: $ca $cb $88

    xor e                                         ; $4a6c: $ab
    ld h, h                                       ; $4a6d: $64
    rst $38                                       ; $4a6e: $ff
    ld [hl], l                                    ; $4a6f: $75
    cp [hl]                                       ; $4a70: $be
    rst $18                                       ; $4a71: $df
    rst $08                                       ; $4a72: $cf
    inc h                                         ; $4a73: $24
    xor [hl]                                      ; $4a74: $ae
    adc a                                         ; $4a75: $8f
    add hl, sp                                    ; $4a76: $39
    cpl                                           ; $4a77: $2f
    pop af                                        ; $4a78: $f1
    and c                                         ; $4a79: $a1
    cpl                                           ; $4a7a: $2f
    push hl                                       ; $4a7b: $e5
    ld e, [hl]                                    ; $4a7c: $5e
    add b                                         ; $4a7d: $80
    db $10                                        ; $4a7e: $10
    ld a, [hl-]                                   ; $4a7f: $3a
    nop                                           ; $4a80: $00
    db $e3                                        ; $4a81: $e3
    rla                                           ; $4a82: $17
    xor $c7                                       ; $4a83: $ee $c7
    ld d, d                                       ; $4a85: $52
    cp $06                                        ; $4a86: $fe $06
    or $5c                                        ; $4a88: $f6 $5c
    jp c, $9cf8                                   ; $4a8a: $da $f8 $9c

    push bc                                       ; $4a8d: $c5
    ld [hl], c                                    ; $4a8e: $71
    add l                                         ; $4a8f: $85
    add e                                         ; $4a90: $83
    sbc h                                         ; $4a91: $9c
    add $1f                                       ; $4a92: $c6 $1f
    ld a, [hl]                                    ; $4a94: $7e
    add l                                         ; $4a95: $85
    ret nc                                        ; $4a96: $d0

    set 0, d                                      ; $4a97: $cb $c2
    sub h                                         ; $4a99: $94
    or c                                          ; $4a9a: $b1
    xor h                                         ; $4a9b: $ac
    inc a                                         ; $4a9c: $3c
    sub h                                         ; $4a9d: $94
    rst $30                                       ; $4a9e: $f7
    cp d                                          ; $4a9f: $ba
    ld e, a                                       ; $4aa0: $5f
    inc a                                         ; $4aa1: $3c
    jp z, $dcef                                   ; $4aa2: $ca $ef $dc

    ld d, [hl]                                    ; $4aa5: $56
    ld c, h                                       ; $4aa6: $4c
    or b                                          ; $4aa7: $b0
    daa                                           ; $4aa8: $27
    nop                                           ; $4aa9: $00
    ld h, a                                       ; $4aaa: $67
    dec sp                                        ; $4aab: $3b
    ld h, d                                       ; $4aac: $62
    jp nz, $84a7                                  ; $4aad: $c2 $a7 $84

    sbc h                                         ; $4ab0: $9c
    db $e4                                        ; $4ab1: $e4
    inc l                                         ; $4ab2: $2c
    adc [hl]                                      ; $4ab3: $8e
    jp Jump_000_351c                              ; $4ab4: $c3 $1c $35


    halt                                          ; $4ab7: $76
    db $ed                                        ; $4ab8: $ed
    dec l                                         ; $4ab9: $2d
    adc $66                                       ; $4aba: $ce $66
    cpl                                           ; $4abc: $2f
    jp nc, Jump_03d_7f3a                          ; $4abd: $d2 $3a $7f

    inc bc                                        ; $4ac0: $03
    ld a, l                                       ; $4ac1: $7d
    call z, $8979                                 ; $4ac2: $cc $79 $89
    rrca                                          ; $4ac5: $0f
    ld a, l                                       ; $4ac6: $7d
    add hl, hl                                    ; $4ac7: $29
    and e                                         ; $4ac8: $a3

Jump_03d_4ac9:
    xor [hl]                                      ; $4ac9: $ae
    db $fc                                        ; $4aca: $fc
    ld a, h                                       ; $4acb: $7c
    inc de                                        ; $4acc: $13
    sbc d                                         ; $4acd: $9a
    sbc b                                         ; $4ace: $98
    ld a, [c]                                     ; $4acf: $f2
    ld a, e                                       ; $4ad0: $7b
    rst $18                                       ; $4ad1: $df
    rst $08                                       ; $4ad2: $cf
    ld h, c                                       ; $4ad3: $61
    db $fc                                        ; $4ad4: $fc
    ld a, e                                       ; $4ad5: $7b
    add c                                         ; $4ad6: $81
    add h                                         ; $4ad7: $84
    sbc h                                         ; $4ad8: $9c
    db $e4                                        ; $4ad9: $e4
    inc l                                         ; $4ada: $2c
    adc [hl]                                      ; $4adb: $8e
    dec hl                                        ; $4adc: $2b
    add hl, sp                                    ; $4add: $39
    db $fd                                        ; $4ade: $fd
    ld c, $6f                                     ; $4adf: $0e $6f
    nop                                           ; $4ae1: $00
    or $69                                        ; $4ae2: $f6 $69
    dec e                                         ; $4ae4: $1d
    and $4a                                       ; $4ae5: $e6 $4a
    ld l, $c8                                     ; $4ae7: $2e $c8
    ld d, l                                       ; $4ae9: $55
    sbc d                                         ; $4aea: $9a
    add $bc                                       ; $4aeb: $c6 $bc
    ld bc, $fd17                                  ; $4aed: $01 $17 $fd
    ld a, [hl+]                                   ; $4af0: $2a
    inc d                                         ; $4af1: $14
    rst $38                                       ; $4af2: $ff
    ld a, [hl]                                    ; $4af3: $7e
    call nc, Call_000_1c59                        ; $4af4: $d4 $59 $1c
    add a                                         ; $4af7: $87
    cp c                                          ; $4af8: $b9
    sub d                                         ; $4af9: $92
    xor e                                         ; $4afa: $ab
    jr nc, @+$59                                  ; $4afb: $30 $57

    dec sp                                        ; $4afd: $3b
    db $eb                                        ; $4afe: $eb
    ld a, [hl]                                    ; $4aff: $7e
    dec [hl]                                      ; $4b00: $35
    pop de                                        ; $4b01: $d1
    ld sp, hl                                     ; $4b02: $f9
    cp h                                          ; $4b03: $bc
    ld bc, $2edd                                  ; $4b04: $01 $dd $2e
    xor a                                         ; $4b07: $af
    xor $01                                       ; $4b08: $ee $01
    nop                                           ; $4b0a: $00
    ld a, l                                       ; $4b0b: $7d
    db $db                                        ; $4b0c: $db
    db $e4                                        ; $4b0d: $e4
    dec [hl]                                      ; $4b0e: $35
    ld c, d                                       ; $4b0f: $4a
    adc $73                                       ; $4b10: $ce $73
    add c                                         ; $4b12: $81
    ld hl, sp+$21                                 ; $4b13: $f8 $21
    ld l, a                                       ; $4b15: $6f
    nop                                           ; $4b16: $00
    db $dd                                        ; $4b17: $dd
    ld a, [$42e6]                                 ; $4b18: $fa $e6 $42
    ld b, a                                       ; $4b1b: $47
    sbc a                                         ; $4b1c: $9f
    xor e                                         ; $4b1d: $ab
    or e                                          ; $4b1e: $b3
    ld b, d                                       ; $4b1f: $42
    xor c                                         ; $4b20: $a9
    reti                                          ; $4b21: $d9


    inc bc                                        ; $4b22: $03
    nop                                           ; $4b23: $00
    db $dd                                        ; $4b24: $dd
    ld a, [$59b6]                                 ; $4b25: $fa $b6 $59
    or e                                          ; $4b28: $b3
    rst $00                                       ; $4b29: $c7
    db $ec                                        ; $4b2a: $ec
    inc [hl]                                      ; $4b2b: $34
    cp [hl]                                       ; $4b2c: $be
    ld l, $2c                                     ; $4b2d: $2e $2c
    adc a                                         ; $4b2f: $8f
    pop af                                        ; $4b30: $f1
    ld [hl], l                                    ; $4b31: $75
    sbc b                                         ; $4b32: $98
    cp d                                          ; $4b33: $ba
    ret c                                         ; $4b34: $d8

    adc b                                         ; $4b35: $88
    call nz, $ac35                                ; $4b36: $c4 $35 $ac
    or e                                          ; $4b39: $b3
    jp nc, $eb4a                                  ; $4b3a: $d2 $4a $eb

    rst $38                                       ; $4b3d: $ff
    ld a, $f5                                     ; $4b3e: $3e $f5
    sbc $39                                       ; $4b40: $de $39
    db $ec                                        ; $4b42: $ec
    ld [hl], b                                    ; $4b43: $70
    ld c, d                                       ; $4b44: $4a
    cp c                                          ; $4b45: $b9
    rst $28                                       ; $4b46: $ef
    cp e                                          ; $4b47: $bb
    db $db                                        ; $4b48: $db
    ld b, l                                       ; $4b49: $45
    rst $18                                       ; $4b4a: $df

Jump_03d_4b4b:
    ccf                                           ; $4b4b: $3f

Jump_03d_4b4c:
    rst $20                                       ; $4b4c: $e7
    ld e, c                                       ; $4b4d: $59

jr_03d_4b4e:
    halt                                          ; $4b4e: $76
    ld c, [hl]                                    ; $4b4f: $4e
    ei                                            ; $4b50: $fb
    ld c, [hl]                                    ; $4b51: $4e
    ret                                           ; $4b52: $c9


    ld e, $eb                                     ; $4b53: $1e $eb
    ld h, [hl]                                    ; $4b55: $66
    rst $08                                       ; $4b56: $cf
    dec d                                         ; $4b57: $15
    jp c, $9cf8                                   ; $4b58: $da $f8 $9c

    ld h, [hl]                                    ; $4b5b: $66
    ld b, a                                       ; $4b5c: $47
    jr c, @-$68                                   ; $4b5d: $38 $96

    ld a, [c]                                     ; $4b5f: $f2
    dec a                                         ; $4b60: $3d
    sub $ed                                       ; $4b61: $d6 $ed
    ld [hl], d                                    ; $4b63: $72
    db $fd                                        ; $4b64: $fd
    dec d                                         ; $4b65: $15
    rst $10                                       ; $4b66: $d7
    ld a, a                                       ; $4b67: $7f
    cp c                                          ; $4b68: $b9
    ld l, d                                       ; $4b69: $6a
    ld b, a                                       ; $4b6a: $47
    jr z, jr_03d_4b4e                             ; $4b6b: $28 $e1

    or e                                          ; $4b6d: $b3
    ld a, a                                       ; $4b6e: $7f
    ld de, $0f6b                                  ; $4b6f: $11 $6b $0f
    nop                                           ; $4b72: $00
    rst $20                                       ; $4b73: $e7
    ret                                           ; $4b74: $c9


    sbc e                                         ; $4b75: $9b
    or $0a                                        ; $4b76: $f6 $0a
    sbc a                                         ; $4b78: $9f
    db $fd                                        ; $4b79: $fd
    adc e                                         ; $4b7a: $8b
    ld e, b                                       ; $4b7b: $58
    pop hl                                        ; $4b7c: $e1
    xor e                                         ; $4b7d: $ab
    add hl, sp                                    ; $4b7e: $39
    ld l, d                                       ; $4b7f: $6a
    db $fc                                        ; $4b80: $fc
    adc $cf                                       ; $4b81: $ce $cf
    ld [c], a                                     ; $4b83: $e2
    ld e, d                                       ; $4b84: $5a
    ld a, h                                       ; $4b85: $7c
    db $f4                                        ; $4b86: $f4
    add hl, sp                                    ; $4b87: $39
    sub [hl]                                      ; $4b88: $96
    ld a, l                                       ; $4b89: $7d
    inc de                                        ; $4b8a: $13
    sbc $00                                       ; $4b8b: $de $00
    halt                                          ; $4b8d: $76
    cp b                                          ; $4b8e: $b8
    ld a, [$04c5]                                 ; $4b8f: $fa $c5 $04
    rst $38                                       ; $4b92: $ff
    ld e, [hl]                                    ; $4b93: $5e
    jr nz, jr_03d_4c14                            ; $4b94: $20 $7e

    ret z                                         ; $4b96: $c8

    ld h, c                                       ; $4b97: $61
    ld [$cdf4], a                                 ; $4b98: $ea $f4 $cd
    xor a                                         ; $4b9b: $af
    halt                                          ; $4b9c: $76
    ld h, $f8                                     ; $4b9d: $26 $f8
    xor e                                         ; $4b9f: $ab
    db $10                                        ; $4ba0: $10
    db $e3                                        ; $4ba1: $e3
    rst $30                                       ; $4ba2: $f7
    ei                                            ; $4ba3: $fb
    dec de                                        ; $4ba4: $1b
    nop                                           ; $4ba5: $00
    db $dd                                        ; $4ba6: $dd
    ld [bc], a                                    ; $4ba7: $02
    add hl, bc                                    ; $4ba8: $09
    cp c                                          ; $4ba9: $b9
    ld d, [hl]                                    ; $4baa: $56
    and a                                         ; $4bab: $a7
    ld l, $7c                                     ; $4bac: $2e $7c
    ld sp, hl                                     ; $4bae: $f9
    jp nc, $bffa                                  ; $4baf: $d2 $fa $bf

    ld c, a                                       ; $4bb2: $4f
    add l                                         ; $4bb3: $85
    rst $08                                       ; $4bb4: $cf
    cp $45                                        ; $4bb5: $fe $45
    xor h                                         ; $4bb7: $ac
    dec a                                         ; $4bb8: $3d
    sub $ed                                       ; $4bb9: $d6 $ed
    ld a, [bc]                                    ; $4bbb: $0a
    rst $00                                       ; $4bbc: $c7
    ld d, d                                       ; $4bbd: $52
    pop hl                                        ; $4bbe: $e1
    ld a, [hl]                                    ; $4bbf: $7e
    dec c                                         ; $4bc0: $0d
    inc hl                                        ; $4bc1: $23
    ld sp, $94be                                  ; $4bc2: $31 $be $94
    db $ec                                        ; $4bc5: $ec
    ld bc, $dd00                                  ; $4bc6: $01 $00 $dd
    ld [bc], a                                    ; $4bc9: $02
    cp d                                          ; $4bca: $ba
    ld a, [$a4bd]                                 ; $4bcb: $fa $bd $a4
    or $58                                        ; $4bce: $f6 $58
    or a                                          ; $4bd0: $b7
    ld a, $ad                                     ; $4bd1: $3e $ad
    ld d, b                                       ; $4bd3: $50
    rst $20                                       ; $4bd4: $e7
    cp c                                          ; $4bd5: $b9
    or b                                          ; $4bd6: $b0
    xor e                                         ; $4bd7: $ab
    rst $18                                       ; $4bd8: $df
    ld c, e                                       ; $4bd9: $4b
    ld l, d                                       ; $4bda: $6a
    adc a                                         ; $4bdb: $8f
    dec b                                         ; $4bdc: $05
    ld [de], a                                    ; $4bdd: $12
    ld [hl], d                                    ; $4bde: $72
    sub d                                         ; $4bdf: $92
    or e                                          ; $4be0: $b3
    jr c, jr_03d_4bf1                             ; $4be1: $38 $0e

    ld d, e                                       ; $4be3: $53
    rst $30                                       ; $4be4: $f7
    pop af                                        ; $4be5: $f1
    call Call_03d_7c23                            ; $4be6: $cd $23 $7c
    jp c, $c466                                   ; $4be9: $da $66 $c4

    push af                                       ; $4bec: $f5

jr_03d_4bed:
    rst $38                                       ; $4bed: $ff
    ld a, [hl-]                                   ; $4bee: $3a
    ld [hl], l                                    ; $4bef: $75
    push hl                                       ; $4bf0: $e5

jr_03d_4bf1:
    rla                                           ; $4bf1: $17
    db $fc                                        ; $4bf2: $fc
    ld c, [hl]                                    ; $4bf3: $4e
    adc e                                         ; $4bf4: $8b
    ld l, a                                       ; $4bf5: $6f
    sbc d                                         ; $4bf6: $9a
    dec l                                         ; $4bf7: $2d
    sbc $00                                       ; $4bf8: $de $00
    halt                                          ; $4bfa: $76
    sbc d                                         ; $4bfb: $9a

Jump_03d_4bfc:
    jp Jump_000_269c                              ; $4bfc: $c3 $9c $26


    ld l, $ec                                     ; $4bff: $2e $ec
    ld [$92f7], a                                 ; $4c01: $ea $f7 $92
    ld a, d                                       ; $4c04: $7a
    rst $18                                       ; $4c05: $df
    ld [hl], a                                    ; $4c06: $77
    scf                                           ; $4c07: $37
    ld c, l                                       ; $4c08: $4d
    ld e, h                                       ; $4c09: $5c
    add hl, hl                                    ; $4c0a: $29
    ld e, a                                       ; $4c0b: $5f
    and c                                         ; $4c0c: $a1
    xor $cb                                       ; $4c0d: $ee $cb
    ei                                            ; $4c0f: $fb
    rst $10                                       ; $4c10: $d7
    ld e, $00                                     ; $4c11: $1e $00
    cp l                                          ; $4c13: $bd

jr_03d_4c14:
    add hl, hl                                    ; $4c14: $29
    ld a, [c]                                     ; $4c15: $f2
    cp $ef                                        ; $4c16: $fe $ef
    dec b                                         ; $4c18: $05
    ld [de], a                                    ; $4c19: $12
    ld [hl], d                                    ; $4c1a: $72
    sub d                                         ; $4c1b: $92
    or e                                          ; $4c1c: $b3
    jr c, jr_03d_4bed                             ; $4c1d: $38 $ce

    pop hl                                        ; $4c1f: $e1
    rst $08                                       ; $4c20: $cf
    ld [hl], e                                    ; $4c21: $73
    call nc, $95d7                                ; $4c22: $d4 $d7 $95
    ld a, [c]                                     ; $4c25: $f2
    dec d                                         ; $4c26: $15
    xor [hl]                                      ; $4c27: $ae
    db $fc                                        ; $4c28: $fc
    cp [hl]                                       ; $4c29: $be
    inc hl                                        ; $4c2a: $23
    cp h                                          ; $4c2b: $bc
    ld bc, $03dd                                  ; $4c2c: $01 $dd $03
    jr z, jr_03d_4c6a                             ; $4c2f: $28 $39

    db $e3                                        ; $4c31: $e3
    cp d                                          ; $4c32: $ba
    ld c, d                                       ; $4c33: $4a
    ld c, a                                       ; $4c34: $4f
    nop                                           ; $4c35: $00
    rla                                           ; $4c36: $17
    db $fd                                        ; $4c37: $fd
    ld c, d                                       ; $4c38: $4a

Jump_03d_4c39:
    ld sp, hl                                     ; $4c39: $f9
    ld a, [bc]                                    ; $4c3a: $0a
    ld h, a                                       ; $4c3b: $67
    ld [hl], c                                    ; $4c3c: $71
    inc e                                         ; $4c3d: $1c
    dec [hl]                                      ; $4c3e: $35
    halt                                          ; $4c3f: $76
    xor l                                         ; $4c40: $ad
    xor $d2                                       ; $4c41: $ee $d2
    cp l                                          ; $4c43: $bd
    ld c, b                                       ; $4c44: $48
    db $eb                                        ; $4c45: $eb
    db $fc                                        ; $4c46: $fc
    xor b                                         ; $4c47: $a8
    di                                            ; $4c48: $f3
    xor l                                         ; $4c49: $ad
    sbc d                                         ; $4c4a: $9a
    ld b, d                                       ; $4c4b: $42
    adc h                                         ; $4c4c: $8c
    sbc h                                         ; $4c4d: $9c
    rst $20                                       ; $4c4e: $e7
    jp z, $3ceb                                   ; $4c4f: $ca $eb $3c

    db $eb                                        ; $4c52: $eb
    ld l, $bd                                     ; $4c53: $2e $bd
    ld bc, $2fdd                                  ; $4c55: $01 $dd $2f
    db $e3                                        ; $4c58: $e3
    add h                                         ; $4c59: $84
    push de                                       ; $4c5a: $d5
    adc l                                         ; $4c5b: $8d
    ld b, d                                       ; $4c5c: $42
    db $dd                                        ; $4c5d: $dd
    xor a                                         ; $4c5e: $af
    db $fc                                        ; $4c5f: $fc
    ld a, h                                       ; $4c60: $7c
    jp z, $9ffb                                   ; $4c61: $ca $fb $9f

    ld c, c                                       ; $4c64: $49
    ld e, h                                       ; $4c65: $5c
    ld a, c                                       ; $4c66: $79
    ld e, l                                       ; $4c67: $5d
    add hl, hl                                    ; $4c68: $29
    ld e, a                                       ; $4c69: $5f

jr_03d_4c6a:
    and c                                         ; $4c6a: $a1
    adc $73                                       ; $4c6b: $ce $73
    ld h, c                                       ; $4c6d: $61
    ld sp, hl                                     ; $4c6e: $f9
    ld hl, sp+$13                                 ; $4c6f: $f8 $13
    ld d, [hl]                                    ; $4c71: $56
    or d                                          ; $4c72: $b2
    ld h, h                                       ; $4c73: $64
    db $e4                                        ; $4c74: $e4
    and e                                         ; $4c75: $a3
    rst $08                                       ; $4c76: $cf
    ld a, l                                       ; $4c77: $7d
    ld de, $fa7a                                  ; $4c78: $11 $7a $fa
    sub h                                         ; $4c7b: $94
    sbc [hl]                                      ; $4c7c: $9e
    nop                                           ; $4c7d: $00
    halt                                          ; $4c7e: $76
    ld a, [$dea3]                                 ; $4c7f: $fa $a3 $de
    cp e                                          ; $4c82: $bb
    db $ec                                        ; $4c83: $ec
    sra d                                         ; $4c84: $cb $2a
    db $ec                                        ; $4c86: $ec
    cp a                                          ; $4c87: $bf
    rst $28                                       ; $4c88: $ef
    ret z                                         ; $4c89: $c8

    xor a                                         ; $4c8a: $af
    db $fc                                        ; $4c8b: $fc
    ld b, d                                       ; $4c8c: $42
    ld b, a                                       ; $4c8d: $47
    adc c                                         ; $4c8e: $89
    ld a, a                                       ; $4c8f: $7f
    inc bc                                        ; $4c90: $03
    sub a                                         ; $4c91: $97
    ld de, $74bd                                  ; $4c92: $11 $bd $74
    jp hl                                         ; $4c95: $e9


    inc l                                         ; $4c96: $2c
    adc [hl]                                      ; $4c97: $8e
    xor e                                         ; $4c98: $ab
    ld h, h                                       ; $4c99: $64
    ld a, c                                       ; $4c9a: $79
    sbc c                                         ; $4c9b: $99
    ld [hl], l                                    ; $4c9c: $75
    and $fb                                       ; $4c9d: $e6 $fb
    cp a                                          ; $4c9f: $bf
    sub h                                         ; $4ca0: $94
    ld e, a                                       ; $4ca1: $5f
    ld c, $1d                                     ; $4ca2: $0e $1d
    sbc d                                         ; $4ca4: $9a
    sbc a                                         ; $4ca5: $9f
    ld de, $ffd7                                  ; $4ca6: $11 $d7 $ff
    add l                                         ; $4ca9: $85
    ld [hl], l                                    ; $4caa: $75
    ld [$2fca], a                                 ; $4cab: $ea $ca $2f
    ld [hl], h                                    ; $4cae: $74
    sub h                                         ; $4caf: $94
    ld hl, sp+$37                                 ; $4cb0: $f8 $37
    nop                                           ; $4cb2: $00
    ld bc, $1c94                                  ; $4cb3: $01 $94 $1c
    ld [hl], l                                    ; $4cb6: $75
    ld d, $c7                                     ; $4cb7: $16 $c7
    ld h, c                                       ; $4cb9: $61
    ld l, $12                                     ; $4cba: $2e $12
    and c                                         ; $4cbc: $a1
    ld e, h                                       ; $4cbd: $5c
    db $dd                                        ; $4cbe: $dd
    ld b, [hl]                                    ; $4cbf: $46
    dec [hl]                                      ; $4cc0: $35
    reti                                          ; $4cc1: $d9


    ld sp, hl                                     ; $4cc2: $f9
    dec de                                        ; $4cc3: $1b
    nop                                           ; $4cc4: $00
    sub a                                         ; $4cc5: $97
    ld h, l                                       ; $4cc6: $65
    db $fd                                        ; $4cc7: $fd
    dec hl                                        ; $4cc8: $2b
    cp a                                          ; $4cc9: $bf
    jp c, $efe6                                   ; $4cca: $da $e6 $ef

    reti                                          ; $4ccd: $d9


    jp hl                                         ; $4cce: $e9


    jp nz, Jump_03d_5f97                          ; $4ccf: $c2 $97 $5f

    jr z, jr_03d_4ce1                             ; $4cd2: $28 $0d

    ld c, l                                       ; $4cd4: $4d
    dec bc                                        ; $4cd5: $0b
    db $db                                        ; $4cd6: $db
    ld h, e                                       ; $4cd7: $63

Jump_03d_4cd8:
    and h                                         ; $4cd8: $a4
    jp nz, Jump_03d_5217                          ; $4cd9: $c2 $17 $52

    ld [hl], d                                    ; $4cdc: $72
    sbc b                                         ; $4cdd: $98
    jp Jump_03d_59d4                              ; $4cde: $c3 $d4 $59


jr_03d_4ce1:
    inc e                                         ; $4ce1: $1c
    db $fd                                        ; $4ce2: $fd
    cpl                                           ; $4ce3: $2f
    and e                                         ; $4ce4: $a3
    db $fc                                        ; $4ce5: $fc
    dec c                                         ; $4ce6: $0d
    nop                                           ; $4ce7: $00
    sub a                                         ; $4ce8: $97
    ld de, $5ca1                                  ; $4ce9: $11 $a1 $5c
    ld sp, hl                                     ; $4cec: $f9
    sub l                                         ; $4ced: $95
    ld a, [c]                                     ; $4cee: $f2
    dec d                                         ; $4cef: $15
    sbc $bb                                       ; $4cf0: $de $bb
    ld [c], a                                     ; $4cf2: $e2
    db $eb                                        ; $4cf3: $eb
    call nc, $001b                                ; $4cf4: $d4 $1b $00
    db $dd                                        ; $4cf7: $dd
    ld a, [$f17c]                                 ; $4cf8: $fa $7c $f1
    dec l                                         ; $4cfb: $2d
    cp $94                                        ; $4cfc: $fe $94
    rrca                                          ; $4cfe: $0f
    rra                                           ; $4cff: $1f
    and $ca                                       ; $4d00: $e6 $ca
    cpl                                           ; $4d02: $2f
    ret z                                         ; $4d03: $c8

    sbc c                                         ; $4d04: $99
    add h                                         ; $4d05: $84
    sbc d                                         ; $4d06: $9a
    rst $08                                       ; $4d07: $cf
    ld e, $eb                                     ; $4d08: $1e $eb
    halt                                          ; $4d0a: $76
    add hl, de                                    ; $4d0b: $19
    pop de                                        ; $4d0c: $d1
    ld c, e                                       ; $4d0d: $4b
    push de                                       ; $4d0e: $d5
    ld e, c                                       ; $4d0f: $59
    inc e                                         ; $4d10: $1c
    rst $10                                       ; $4d11: $d7
    jr nc, jr_03d_4d26                            ; $4d12: $30 $12

    db $e3                                        ; $4d14: $e3
    ld c, e                                       ; $4d15: $4b

Call_03d_4d16:
    ret                                           ; $4d16: $c9


    ld a, c                                       ; $4d17: $79
    ld c, $1d                                     ; $4d18: $0e $1d
    dec hl                                        ; $4d1a: $2b
    reti                                          ; $4d1b: $d9


    inc bc                                        ; $4d1c: $03
    nop                                           ; $4d1d: $00
    db $dd                                        ; $4d1e: $dd
    ld [bc], a                                    ; $4d1f: $02
    ld a, [de]                                    ; $4d20: $1a
    ei                                            ; $4d21: $fb
    cp a                                          ; $4d22: $bf
    adc $73                                       ; $4d23: $ce $73
    rst $18                                       ; $4d25: $df

jr_03d_4d26:
    adc a                                         ; $4d26: $8f
    ld e, [hl]                                    ; $4d27: $5e
    ret c                                         ; $4d28: $d8

    cp a                                          ; $4d29: $bf
    rst $00                                       ; $4d2a: $c7
    ld [bc], a                                    ; $4d2b: $02
    jr z, jr_03d_4da7                             ; $4d2c: $28 $79

    rst $18                                       ; $4d2e: $df
    ld [hl], a                                    ; $4d2f: $77
    scf                                           ; $4d30: $37
    ld c, l                                       ; $4d31: $4d
    inc e                                         ; $4d32: $1c
    ld sp, $a6a5                                  ; $4d33: $31 $a5 $a6
    or $00                                        ; $4d36: $f6 $00
    halt                                          ; $4d38: $76
    ld a, [de]                                    ; $4d39: $1a
    ld e, a                                       ; $4d3a: $5f
    rla                                           ; $4d3b: $17
    ld [hl], $f6                                  ; $4d3c: $36 $f6
    ld a, a                                       ; $4d3e: $7f
    sbc l                                         ; $4d3f: $9d
    ld h, $4e                                     ; $4d40: $26 $4e
    ld e, l                                       ; $4d42: $5d
    ld [hl], l                                    ; $4d43: $75
    inc sp                                        ; $4d44: $33
    adc l                                         ; $4d45: $8d
    jr jr_03d_4da1                                ; $4d46: $18 $59

    inc de                                        ; $4d48: $13
    inc hl                                        ; $4d49: $23
    rlca                                          ; $4d4a: $07
    ret                                           ; $4d4b: $c9


    and e                                         ; $4d4c: $a3
    and a                                         ; $4d4d: $a7
    ld l, $7c                                     ; $4d4e: $2e $7c
    ld sp, hl                                     ; $4d50: $f9
    dec b                                         ; $4d51: $05
    rst $18                                       ; $4d52: $df
    ld d, b                                       ; $4d53: $50
    ld [hl+], a                                   ; $4d54: $22
    rst $20                                       ; $4d55: $e7
    rst $38                                       ; $4d56: $ff
    ldh [rNR32], a                                ; $4d57: $e0 $1c
    ld [hl], c                                    ; $4d59: $71
    dec d                                         ; $4d5a: $15
    or $9f                                        ; $4d5b: $f6 $9f
    rst $20                                       ; $4d5d: $e7
    inc a                                         ; $4d5e: $3c

Call_03d_4d5f:
    ld c, l                                       ; $4d5f: $4d
    sub e                                         ; $4d60: $93
    ret z                                         ; $4d61: $c8

    add hl, de                                    ; $4d62: $19
    db $db                                        ; $4d63: $db
    ld a, [hl-]                                   ; $4d64: $3a
    ld d, a                                       ; $4d65: $57
    ld h, a                                       ; $4d66: $67
    add l                                         ; $4d67: $85
    ld [de], a                                    ; $4d68: $12
    ld a, c                                       ; $4d69: $79
    inc bc                                        ; $4d6a: $03
    ld d, a                                       ; $4d6b: $57
    xor a                                         ; $4d6c: $af
    db $fc                                        ; $4d6d: $fc
    ld [$a6b7], a                                 ; $4d6e: $ea $b7 $a6
    ret c                                         ; $4d71: $d8

    db $fc                                        ; $4d72: $fc
    xor b                                         ; $4d73: $a8
    or c                                          ; $4d74: $b1
    dec bc                                        ; $4d75: $0b
    ld d, a                                       ; $4d76: $57
    db $ed                                        ; $4d77: $ed
    jr z, @+$41                                   ; $4d78: $28 $3f

    rst $08                                       ; $4d7a: $cf
    or d                                          ; $4d7b: $b2
    ld hl, sp-$63                                 ; $4d7c: $f8 $9d
    ld b, d                                       ; $4d7e: $42
    ret                                           ; $4d7f: $c9


    ld a, e                                       ; $4d80: $7b
    halt                                          ; $4d81: $76
    ld a, [de]                                    ; $4d82: $1a
    ld [hl], e                                    ; $4d83: $73
    pop hl                                        ; $4d84: $e1
    dec bc                                        ; $4d85: $0b
    dec c                                         ; $4d86: $0d
    ld d, a                                       ; $4d87: $57
    ld [hl], a                                    ; $4d88: $77
    jp hl                                         ; $4d89: $e9


    inc e                                         ; $4d8a: $1c
    cp $a2                                        ; $4d8b: $fe $a2
    ld a, h                                       ; $4d8d: $7c
    dec e                                         ; $4d8e: $1d
    cp $2c                                        ; $4d8f: $fe $2c
    adc [hl]                                      ; $4d91: $8e
    ld [hl], e                                    ; $4d92: $73
    cp b                                          ; $4d93: $b8
    ld a, [hl]                                    ; $4d94: $7e
    adc [hl]                                      ; $4d95: $8e
    ld d, b                                       ; $4d96: $50
    sbc $00                                       ; $4d97: $de $00
    db $dd                                        ; $4d99: $dd
    ld l, $4d                                     ; $4d9a: $2e $4d
    add h                                         ; $4d9c: $84
    rrca                                          ; $4d9d: $0f
    or e                                          ; $4d9e: $b3
    rlca                                          ; $4d9f: $07
    nop                                           ; $4da0: $00

jr_03d_4da1:
    sub a                                         ; $4da1: $97
    ld de, $5c67                                  ; $4da2: $11 $67 $5c
    di                                            ; $4da5: $f3
    rst $28                                       ; $4da6: $ef

jr_03d_4da7:
    di                                            ; $4da7: $f3
    cp [hl]                                       ; $4da8: $be
    ld l, a                                       ; $4da9: $6f
    nop                                           ; $4daa: $00
    ld d, a                                       ; $4dab: $57
    rst $08                                       ; $4dac: $cf
    cp b                                          ; $4dad: $b8
    and $df                                       ; $4dae: $e6 $df
    rst $20                                       ; $4db0: $e7
    ld c, h                                       ; $4db1: $4c
    ld [c], a                                     ; $4db2: $e2
    jp z, $52ef                                   ; $4db3: $ca $ef $52

    ld [hl], $7c                                  ; $4db6: $36 $7c
    ld hl, sp-$58                                 ; $4db8: $f8 $a8
    dec hl                                        ; $4dba: $2b
    cp a                                          ; $4dbb: $bf
    or b                                          ; $4dbc: $b0
    or c                                          ; $4dbd: $b1
    rst $38                                       ; $4dbe: $ff
    xor a                                         ; $4dbf: $af
    xor $d2                                       ; $4dc0: $ee $d2
    ld d, l                                       ; $4dc2: $55
    dec sp                                        ; $4dc3: $3b
    ld c, d                                       ; $4dc4: $4a
    db $e4                                        ; $4dc5: $e4
    dec c                                         ; $4dc6: $0d
    nop                                           ; $4dc7: $00
    db $dd                                        ; $4dc8: $dd
    ld a, d                                       ; $4dc9: $7a
    cp e                                          ; $4dca: $bb
    and $df                                       ; $4dcb: $e6 $df
    daa                                           ; $4dcd: $27
    ld a, h                                       ; $4dce: $7c
    or $2f                                        ; $4dcf: $f6 $2f
    ld h, d                                       ; $4dd1: $62
    db $ed                                        ; $4dd2: $ed
    ld bc, $dd00                                  ; $4dd3: $01 $00 $dd
    ld a, e                                       ; $4dd6: $7b
    db $db                                        ; $4dd7: $db
    sub $39                                       ; $4dd8: $d6 $39
    ld l, d                                       ; $4dda: $6a
    db $ec                                        ; $4ddb: $ec
    jp c, $89a5                                   ; $4ddc: $da $a5 $89

    dec a                                         ; $4ddf: $3d
    ld bc, $85bd                                  ; $4de0: $01 $bd $85
    ld a, c                                       ; $4de3: $79
    rst $18                                       ; $4de4: $df
    or a                                          ; $4de5: $b7
    ld de, $2ce6                                  ; $4de6: $11 $e6 $2c
    adc [hl]                                      ; $4de9: $8e
    ld d, e                                       ; $4dea: $53
    ld c, [hl]                                    ; $4deb: $4e
    ld l, b                                       ; $4dec: $68
    ld e, h                                       ; $4ded: $5c
    ld c, b                                       ; $4dee: $48
    ld a, c                                       ; $4def: $79
    jp hl                                         ; $4df0: $e9


    cp d                                          ; $4df1: $ba
    rla                                           ; $4df2: $17
    ld b, b                                       ; $4df3: $40
    ret                                           ; $4df4: $c9


    ld l, c                                       ; $4df5: $69
    add e                                         ; $4df6: $83
    inc e                                         ; $4df7: $1c
    rst $10                                       ; $4df8: $d7
    ret nc                                        ; $4df9: $d0

    inc h                                         ; $4dfa: $24
    xor d                                         ; $4dfb: $aa
    ld l, c                                       ; $4dfc: $69
    call nz, Call_000_1bc8                        ; $4dfd: $c4 $c8 $1b
    nop                                           ; $4e00: $00
    ld a, l                                       ; $4e01: $7d
    ld [hl], e                                    ; $4e02: $73
    ld h, c                                       ; $4e03: $61
    ld a, d                                       ; $4e04: $7a
    sub $a9                                       ; $4e05: $d6 $a9
    di                                            ; $4e07: $f3
    adc h                                         ; $4e08: $8c
    ld b, h                                       ; $4e09: $44
    ld a, [bc]                                    ; $4e0a: $0a
    and [hl]                                      ; $4e0b: $a6
    adc $3a                                       ; $4e0c: $ce $3a
    call z, $df05                                 ; $4e0e: $cc $05 $df
    ld a, [hl-]                                   ; $4e11: $3a
    ld a, h                                       ; $4e12: $7c
    rst $38                                       ; $4e13: $ff
    or e                                          ; $4e14: $b3
    cp $2c                                        ; $4e15: $fe $2c
    adc [hl]                                      ; $4e17: $8e
    dec bc                                        ; $4e18: $0b
    dec e                                         ; $4e19: $1d
    db $fd                                        ; $4e1a: $fd
    cpl                                           ; $4e1b: $2f
    ld hl, sp-$7a                                 ; $4e1c: $f8 $86
    ld d, d                                       ; $4e1e: $52
    jr c, @+$01                                   ; $4e1f: $38 $ff

    rlca                                          ; $4e21: $07
    rst $20                                       ; $4e22: $e7
    cp l                                          ; $4e23: $bd
    dec hl                                        ; $4e24: $2b
    cp [hl]                                       ; $4e25: $be
    ld c, [hl]                                    ; $4e26: $4e
    db $dd                                        ; $4e27: $dd
    xor a                                         ; $4e28: $af
    db $fc                                        ; $4e29: $fc
    or h                                          ; $4e2a: $b4
    ld b, c                                       ; $4e2b: $41
    xor [hl]                                      ; $4e2c: $ae
    ld de, $1723                                  ; $4e2d: $11 $23 $17
    db $fc                                        ; $4e30: $fc
    ld c, [hl]                                    ; $4e31: $4e
    adc e                                         ; $4e32: $8b
    ld l, a                                       ; $4e33: $6f
    sbc d                                         ; $4e34: $9a
    dec l                                         ; $4e35: $2d
    sbc $00                                       ; $4e36: $de $00
    db $dd                                        ; $4e38: $dd
    ld l, $c7                                     ; $4e39: $2e $c7
    ld b, l                                       ; $4e3b: $45
    ret                                           ; $4e3c: $c9


    ld d, d                                       ; $4e3d: $52
    ld a, d                                       ; $4e3e: $7a
    xor h                                         ; $4e3f: $ac
    db $db                                        ; $4e40: $db
    push bc                                       ; $4e41: $c5
    ld d, c                                       ; $4e42: $51
    ld a, [hl]                                    ; $4e43: $7e
    dec d                                         ; $4e44: $15
    or $1f                                        ; $4e45: $f6 $1f
    ld h, [hl]                                    ; $4e47: $66
    rrca                                          ; $4e48: $0f
    nop                                           ; $4e49: $00
    ld a, l                                       ; $4e4a: $7d
    ld [hl], e                                    ; $4e4b: $73
    sub c                                         ; $4e4c: $91
    ld a, e                                       ; $4e4d: $7b
    ld [hl], l                                    ; $4e4e: $75
    ld a, [de]                                    ; $4e4f: $1a
    xor c                                         ; $4e50: $a9
    rst $30                                       ; $4e51: $f7
    ld a, l                                       ; $4e52: $7d
    rst $30                                       ; $4e53: $f7
    ld d, $e6                                     ; $4e54: $16 $e6
    inc l                                         ; $4e56: $2c
    adc [hl]                                      ; $4e57: $8e
    and e                                         ; $4e58: $a3
    add $ae                                       ; $4e59: $c6 $ae
    dec [hl]                                      ; $4e5b: $35
    inc [hl]                                      ; $4e5c: $34
    adc c                                         ; $4e5d: $89
    ld l, d                                       ; $4e5e: $6a
    ld a, [de]                                    ; $4e5f: $1a
    ld sp, $def2                                  ; $4e60: $31 $f2 $de
    ld h, l                                       ; $4e63: $65
    adc l                                         ; $4e64: $8d
    ret z                                         ; $4e65: $c8

    add hl, sp                                    ; $4e66: $39
    inc e                                         ; $4e67: $1c
    sub h                                         ; $4e68: $94
    dec h                                         ; $4e69: $25
    db $e4                                        ; $4e6a: $e4
    ld l, d                                       ; $4e6b: $6a
    ld h, a                                       ; $4e6c: $67
    ld e, l                                       ; $4e6d: $5d
    dec [hl]                                      ; $4e6e: $35
    ld [hl], e                                    ; $4e6f: $73
    call nz, $9f95                                ; $4e70: $c4 $95 $9f
    ld sp, hl                                     ; $4e73: $f9
    ld c, $fb                                     ; $4e74: $0e $fb
    rst $38                                       ; $4e76: $ff
    dec c                                         ; $4e77: $0d
    nop                                           ; $4e78: $00

Call_03d_4e79:
    sub a                                         ; $4e79: $97
    dec [hl]                                      ; $4e7a: $35
    ld [hl+], a                                   ; $4e7b: $22
    ld d, a                                       ; $4e7c: $57
    dec sp                                        ; $4e7d: $3b
    inc de                                        ; $4e7e: $13
    ld a, h                                       ; $4e7f: $7c
    sbc l                                         ; $4e80: $9d
    ld c, c                                       ; $4e81: $49
    ld a, l                                       ; $4e82: $7d
    db $dd                                        ; $4e83: $dd
    xor e                                         ; $4e84: $ab
    push bc                                       ; $4e85: $c5
    ld d, c                                       ; $4e86: $51
    ld d, d                                       ; $4e87: $52
    ld e, a                                       ; $4e88: $5f
    ld b, a                                       ; $4e89: $47
    ld e, h                                       ; $4e8a: $5c
    ld sp, hl                                     ; $4e8b: $f9
    sbc c                                         ; $4e8c: $99
    rst $28                                       ; $4e8d: $ef
    or b                                          ; $4e8e: $b0
    rst $38                                       ; $4e8f: $ff
    rst $18                                       ; $4e90: $df
    nop                                           ; $4e91: $00
    db $dd                                        ; $4e92: $dd
    ld l, $c7                                     ; $4e93: $2e $c7
    ld e, a                                       ; $4e95: $5f
    sbc b                                         ; $4e96: $98
    and [hl]                                      ; $4e97: $a6
    reti                                          ; $4e98: $d9


    ld [c], a                                     ; $4e99: $e2
    db $ec                                        ; $4e9a: $ec
    add hl, hl                                    ; $4e9b: $29
    sbc l                                         ; $4e9c: $9d
    xor h                                         ; $4e9d: $ac
    or h                                          ; $4e9e: $b4
    ld hl, sp-$5b                                 ; $4e9f: $f8 $a5
    push af                                       ; $4ea1: $f5
    ld a, a                                       ; $4ea2: $7f
    adc h                                         ; $4ea3: $8c
    db $ec                                        ; $4ea4: $ec
    or c                                          ; $4ea5: $b1
    ld l, [hl]                                    ; $4ea6: $6e
    ld a, l                                       ; $4ea7: $7d
    adc b                                         ; $4ea8: $88
    xor c                                         ; $4ea9: $a9
    xor e                                         ; $4eaa: $ab
    cp a                                          ; $4eab: $bf
    call z, $38e2                                 ; $4eac: $cc $e2 $38
    call z, Call_03d_7f05                         ; $4eaf: $cc $05 $7f
    ld h, c                                       ; $4eb2: $61
    ld a, [$73e6]                                 ; $4eb3: $fa $e6 $73
    ld c, [hl]                                    ; $4eb6: $4e
    ld e, a                                       ; $4eb7: $5f
    jp z, Jump_000_00f7                           ; $4eb8: $ca $f7 $00

    db $dd                                        ; $4ebb: $dd
    cpl                                           ; $4ebc: $2f

jr_03d_4ebd:
    ld [hl], c                                    ; $4ebd: $71
    ld d, l                                       ; $4ebe: $55
    rla                                           ; $4ebf: $17
    ld a, h                                       ; $4ec0: $7c
    jp Jump_03d_753a                              ; $4ec1: $c3 $3a $75


    rra                                           ; $4ec4: $1f
    ld c, h                                       ; $4ec5: $4c

Jump_03d_4ec6:
    ld sp, hl                                     ; $4ec6: $f9
    sbc [hl]                                      ; $4ec7: $9e
    nop                                           ; $4ec8: $00
    or $0f                                        ; $4ec9: $f6 $0f
    ld c, c                                       ; $4ecb: $49
    di                                            ; $4ecc: $f3
    di                                            ; $4ecd: $f3
    xor l                                         ; $4ece: $ad
    ld e, a                                       ; $4ecf: $5f
    adc $e2                                       ; $4ed0: $ce $e2
    cp b                                          ; $4ed2: $b8
    jp z, Jump_03d_4b4b                           ; $4ed3: $ca $4b $4b

    ld e, l                                       ; $4ed6: $5d
    jr z, jr_03d_4f32                             ; $4ed7: $28 $59

    ld c, l                                       ; $4ed9: $4d
    ld c, l                                       ; $4eda: $4d
    and c                                         ; $4edb: $a1
    ld l, $94                                     ; $4edc: $2e $94
    adc h                                         ; $4ede: $8c
    add h                                         ; $4edf: $84
    ld l, h                                       ; $4ee0: $6c
    ld e, $57                                     ; $4ee1: $1e $57
    ld a, [hl]                                    ; $4ee3: $7e
    ld h, c                                       ; $4ee4: $61
    and e                                         ; $4ee5: $a3
    sub a                                         ; $4ee6: $97
    cp a                                          ; $4ee7: $bf
    rla                                           ; $4ee8: $17
    jr jr_03d_4f35                                ; $4ee9: $18 $4a

    cp d                                          ; $4eeb: $ba
    jr c, jr_03d_4ebd                             ; $4eec: $38 $cf

    ld c, [hl]                                    ; $4eee: $4e
    or e                                          ; $4eef: $b3
    sbc l                                         ; $4ef0: $9d
    ld h, a                                       ; $4ef1: $67
    cp a                                          ; $4ef2: $bf
    sub a                                         ; $4ef3: $97
    or c                                          ; $4ef4: $b1
    db $ec                                        ; $4ef5: $ec
    and d                                         ; $4ef6: $a2
    rst $28                                       ; $4ef7: $ef
    sbc a                                         ; $4ef8: $9f
    di                                            ; $4ef9: $f3
    inc l                                         ; $4efa: $2c
    dec sp                                        ; $4efb: $3b
    and a                                         ; $4efc: $a7
    ld a, l                                       ; $4efd: $7d
    and a                                         ; $4efe: $a7
    inc h                                         ; $4eff: $24
    ld a, h                                       ; $4f00: $7c
    rst $20                                       ; $4f01: $e7

jr_03d_4f02:
    sub [hl]                                      ; $4f02: $96
    ld d, $61                                     ; $4f03: $16 $61
    ld [hl], $03                                  ; $4f05: $36 $03
    ld h, e                                       ; $4f07: $63
    ld b, h                                       ; $4f08: $44
    di                                            ; $4f09: $f3
    jr @+$6f                                      ; $4f0a: $18 $6d

    ld d, a                                       ; $4f0c: $57
    ld e, [hl]                                    ; $4f0d: $5e
    ld d, a                                       ; $4f0e: $57
    jp z, $a857                                   ; $4f0f: $ca $57 $a8

    or e                                          ; $4f12: $b3
    xor [hl]                                      ; $4f13: $ae
    adc a                                         ; $4f14: $8f
    add hl, sp                                    ; $4f15: $39
    cpl                                           ; $4f16: $2f
    pop af                                        ; $4f17: $f1
    and c                                         ; $4f18: $a1
    cpl                                           ; $4f19: $2f
    ld h, l                                       ; $4f1a: $65
    ld d, c                                       ; $4f1b: $51
    ld e, $b5                                     ; $4f1c: $1e $b5
    ld a, [hl-]                                   ; $4f1e: $3a
    and l                                         ; $4f1f: $a5
    or [hl]                                       ; $4f20: $b6
    ld e, l                                       ; $4f21: $5d
    ld a, c                                       ; $4f22: $79
    ld e, l                                       ; $4f23: $5d
    ret c                                         ; $4f24: $d8

    ret c                                         ; $4f25: $d8

    rst $38                                       ; $4f26: $ff
    ld [hl], l                                    ; $4f27: $75
    sbc [hl]                                      ; $4f28: $9e
    ei                                            ; $4f29: $fb
    ld a, [hl]                                    ; $4f2a: $7e
    db $f4                                        ; $4f2b: $f4
    jp nz, $f7fe                                  ; $4f2c: $c2 $fe $f7

    db $ec                                        ; $4f2f: $ec
    inc [hl]                                      ; $4f30: $34
    ld [hl], d                                    ; $4f31: $72

jr_03d_4f32:
    sbc [hl]                                      ; $4f32: $9e
    dec e                                         ; $4f33: $1d
    ld c, [hl]                                    ; $4f34: $4e

jr_03d_4f35:
    add hl, hl                                    ; $4f35: $29
    ld h, e                                       ; $4f36: $63
    sbc c                                         ; $4f37: $99
    and a                                         ; $4f38: $a7
    ld a, [hl]                                    ; $4f39: $7e
    or l                                          ; $4f3a: $b5
    ld c, l                                       ; $4f3b: $4d
    adc $73                                       ; $4f3c: $ce $73
    add c                                         ; $4f3e: $81
    ld hl, sp+$21                                 ; $4f3f: $f8 $21
    rst $28                                       ; $4f41: $ef
    push af                                       ; $4f42: $f5
    ld d, d                                       ; $4f43: $52
    sbc e                                         ; $4f44: $9b
    ld e, c                                       ; $4f45: $59
    inc e                                         ; $4f46: $1c
    and a                                         ; $4f47: $a7
    add h                                         ; $4f48: $84
    sbc h                                         ; $4f49: $9c
    db $e4                                        ; $4f4a: $e4
    inc l                                         ; $4f4b: $2c
    adc [hl]                                      ; $4f4c: $8e
    adc e                                         ; $4f4d: $8b
    ld b, h                                       ; $4f4e: $44
    sub $a9                                       ; $4f4f: $d6 $a9
    or e                                          ; $4f51: $b3
    jr c, jr_03d_4f02                             ; $4f52: $38 $ae

    ld h, [hl]                                    ; $4f54: $66
    ld a, a                                       ; $4f55: $7f
    ld d, e                                       ; $4f56: $53
    ld e, [hl]                                    ; $4f57: $5e
    and $f0                                       ; $4f58: $e6 $f0
    rla                                           ; $4f5a: $17
    and [hl]                                      ; $4f5b: $a6
    ld l, c                                       ; $4f5c: $69
    or [hl]                                       ; $4f5d: $b6
    ld a, b                                       ; $4f5e: $78
    rst $18                                       ; $4f5f: $df
    scf                                           ; $4f60: $37
    nop                                           ; $4f61: $00
    db $dd                                        ; $4f62: $dd
    xor a                                         ; $4f63: $af
    sbc [hl]                                      ; $4f64: $9e
    rst $20                                       ; $4f65: $e7
    inc l                                         ; $4f66: $2c
    xor [hl]                                      ; $4f67: $ae
    ld [$5294], a                                 ; $4f68: $ea $94 $52
    ld l, c                                       ; $4f6b: $69
    jp nc, Jump_03d_6a35                          ; $4f6c: $d2 $35 $6a

    or $04                                        ; $4f6f: $f6 $04
    ld a, l                                       ; $4f71: $7d
    ld [hl], e                                    ; $4f72: $73
    dec h                                         ; $4f73: $25
    and a                                         ; $4f74: $a7
    ld d, l                                       ; $4f75: $55
    rst $28                                       ; $4f76: $ef
    ld e, l                                       ; $4f77: $5d
    or $65                                        ; $4f78: $f6 $65
    dec d                                         ; $4f7a: $15
    or $5f                                        ; $4f7b: $f6 $5f
    ld sp, hl                                     ; $4f7d: $f9
    add l                                         ; $4f7e: $85
    sub d                                         ; $4f7f: $92
    sub c                                         ; $4f80: $91
    add $34                                       ; $4f81: $c6 $34
    ld e, e                                       ; $4f83: $5b
    ld e, h                                       ; $4f84: $5c
    jr z, jr_03d_4fa0                             ; $4f85: $28 $19

    reti                                          ; $4f87: $d9


    rst $28                                       ; $4f88: $ef
    ld h, a                                       ; $4f89: $67
    ld [de], a                                    ; $4f8a: $12
    and e                                         ; $4f8b: $a3
    db $fc                                        ; $4f8c: $fc
    ld e, b                                       ; $4f8d: $58
    ld d, [hl]                                    ; $4f8e: $56
    db $ed                                        ; $4f8f: $ed
    ld [$bde5], sp                                ; $4f90: $08 $e5 $bd
    res 1, b                                      ; $4f93: $cb $88
    xor h                                         ; $4f95: $ac
    ld d, e                                       ; $4f96: $53
    ld h, a                                       ; $4f97: $67
    ld [hl], c                                    ; $4f98: $71
    call c, $2857                                 ; $4f99: $dc $57 $28
    dec c                                         ; $4f9c: $0d
    ld [hl], d                                    ; $4f9d: $72
    cpl                                           ; $4f9e: $2f
    dec h                                         ; $4f9f: $25

jr_03d_4fa0:
    ld l, a                                       ; $4fa0: $6f
    nop                                           ; $4fa1: $00
    add c                                         ; $4fa2: $81
    or [hl]                                       ; $4fa3: $b6
    dec h                                         ; $4fa4: $25
    rla                                           ; $4fa5: $17
    ld a, h                                       ; $4fa6: $7c
    db $eb                                        ; $4fa7: $eb
    call nc, Call_000_3755                        ; $4fa8: $d4 $55 $37
    db $d3                                        ; $4fab: $d3
    adc b                                         ; $4fac: $88
    sub c                                         ; $4fad: $91
    dec bc                                        ; $4fae: $0b

Jump_03d_4faf:
    db $d3                                        ; $4faf: $d3
    inc [hl]                                      ; $4fb0: $34
    ld e, e                                       ; $4fb1: $5b
    ld e, h                                       ; $4fb2: $5c
    ld hl, sp-$0e                                 ; $4fb3: $f8 $f2
    adc e                                         ; $4fb5: $8b
    db $ed                                        ; $4fb6: $ed
    ld e, [hl]                                    ; $4fb7: $5e
    cpl                                           ; $4fb8: $2f
    rst $08                                       ; $4fb9: $cf
    ld a, [c]                                     ; $4fba: $f2
    jr jr_03d_5036                                ; $4fbb: $18 $79

    jp c, Jump_03d_692a                           ; $4fbd: $da $2a $69

    db $dd                                        ; $4fc0: $dd
    xor a                                         ; $4fc1: $af
    db $e3                                        ; $4fc2: $e3
    call nc, $ecbc                                ; $4fc3: $d4 $bc $ec
    ld [hl], a                                    ; $4fc6: $77
    ld l, c                                       ; $4fc7: $69
    ld [c], a                                     ; $4fc8: $e2
    xor h                                         ; $4fc9: $ac
    dec hl                                        ; $4fca: $2b
    adc [hl]                                      ; $4fcb: $8e
    ld d, b                                       ; $4fcc: $50
    ld l, $a4                                     ; $4fcd: $2e $a4
    ld l, a                                       ; $4fcf: $6f
    ld d, d                                       ; $4fd0: $52
    ld [hl], l                                    ; $4fd1: $75
    ld l, a                                       ; $4fd2: $6f
    ld [hl], l                                    ; $4fd3: $75
    cp $ef                                        ; $4fd4: $fe $ef
    sbc l                                         ; $4fd6: $9d
    db $ed                                        ; $4fd7: $ed
    adc b                                         ; $4fd8: $88
    ccf                                           ; $4fd9: $3f
    ld [hl], l                                    ; $4fda: $75
    sub h                                         ; $4fdb: $94
    ld c, b                                       ; $4fdc: $48
    ld hl, sp-$14                                 ; $4fdd: $f8 $ec
    ld e, a                                       ; $4fdf: $5f
    call nz, $df7a                                ; $4fe0: $c4 $7a $df
    scf                                           ; $4fe3: $37
    add l                                         ; $4fe4: $85
    ld a, [hl-]                                   ; $4fe5: $3a
    add a                                         ; $4fe6: $87
    xor e                                         ; $4fe7: $ab
    rra                                           ; $4fe8: $1f
    jp z, $a351                                   ; $4fe9: $ca $51 $a3

    dec bc                                        ; $4fec: $0b
    adc c                                         ; $4fed: $89
    ld a, $6f                                     ; $4fee: $3e $6f
    nop                                           ; $4ff0: $00
    ld a, l                                       ; $4ff1: $7d
    ld [hl], e                                    ; $4ff2: $73
    pop bc                                        ; $4ff3: $c1
    ld e, a                                       ; $4ff4: $5f
    or l                                          ; $4ff5: $b5
    ld b, e                                       ; $4ff6: $43
    db $d3                                        ; $4ff7: $d3
    ld [de], a                                    ; $4ff8: $12
    rst $18                                       ; $4ff9: $df
    rst $20                                       ; $4ffa: $e7
    cp l                                          ; $4ffb: $bd
    adc e                                         ; $4ffc: $8b
    add e                                         ; $4ffd: $83
    jp $af84                                      ; $4ffe: $c3 $84 $af


    ld e, e                                       ; $5001: $5b
    dec h                                         ; $5002: $25
    xor l                                         ; $5003: $ad
    ei                                            ; $5004: $fb
    ld b, l                                       ; $5005: $45
    ld [hl+], a                                   ; $5006: $22
    ld h, l                                       ; $5007: $65
    ld d, $c7                                     ; $5008: $16 $c7

jr_03d_500a:
    ld d, l                                       ; $500a: $55
    or d                                          ; $500b: $b2
    ld d, h                                       ; $500c: $54
    jr z, jr_03d_500a                             ; $500d: $28 $fb

    or c                                          ; $500f: $b1
    ld c, $d9                                     ; $5010: $0e $d9
    rst $38                                       ; $5012: $ff
    and l                                         ; $5013: $a5
    rlca                                          ; $5014: $07
    nop                                           ; $5015: $00
    add c                                         ; $5016: $81
    rst $18                                       ; $5017: $df
    or c                                          ; $5018: $b1
    ld sp, hl                                     ; $5019: $f9
    ld e, c                                       ; $501a: $59
    inc e                                         ; $501b: $1c
    ld b, a                                       ; $501c: $47

Call_03d_501d:
    inc [hl]                                      ; $501d: $34
    adc c                                         ; $501e: $89
    ld d, c                                       ; $501f: $51
    ld e, [hl]                                    ; $5020: $5e

jr_03d_5021:
    ld l, h                                       ; $5021: $6c
    ld e, [hl]                                    ; $5022: $5e
    ld b, a                                       ; $5023: $47
    adc l                                         ; $5024: $8d
    ld e, h                                       ; $5025: $5c
    ld [hl], c                                    ; $5026: $71
    ret nc                                        ; $5027: $d0

    dec bc                                        ; $5028: $0b
    ld a, h                                       ; $5029: $7c
    ld bc, $2319                                  ; $502a: $01 $19 $23
    push hl                                       ; $502d: $e5
    ld b, $01                                     ; $502e: $06 $01
    ld b, h                                       ; $5030: $44
    xor l                                         ; $5031: $ad
    ld a, [hl-]                                   ; $5032: $3a
    adc e                                         ; $5033: $8b
    db $e3                                        ; $5034: $e3
    sub h                                         ; $5035: $94

jr_03d_5036:
    ld h, d                                       ; $5036: $62
    di                                            ; $5037: $f3
    dec bc                                        ; $5038: $0b
    call nz, Call_03d_790f                        ; $5039: $c4 $0f $79
    cpl                                           ; $503c: $2f
    or b                                          ; $503d: $b0
    or c                                          ; $503e: $b1
    ld c, $85                                     ; $503f: $0e $85
    xor e                                         ; $5041: $ab
    cp c                                          ; $5042: $b9
    ldh [$2f], a                                  ; $5043: $e0 $2f
    ld a, l                                       ; $5045: $7d
    ld a, e                                       ; $5046: $7b
    sbc a                                         ; $5047: $9f
    scf                                           ; $5048: $37
    nop                                           ; $5049: $00
    ld d, a                                       ; $504a: $57
    cpl                                           ; $504b: $2f
    ld [hl], d                                    ; $504c: $72
    jp hl                                         ; $504d: $e9


    db $db                                        ; $504e: $db
    rst $18                                       ; $504f: $df
    cp e                                          ; $5050: $bb
    ret c                                         ; $5051: $d8

    or a                                          ; $5052: $b7
    rst $28                                       ; $5053: $ef
    db $fc                                        ; $5054: $fc
    ld a, [hl]                                    ; $5055: $7e
    pop de                                        ; $5056: $d1
    dec l                                         ; $5057: $2d
    ld a, h                                       ; $5058: $7c
    cpl                                           ; $5059: $2f
    ld e, h                                       ; $505a: $5c
    db $fc                                        ; $505b: $fc
    cp d                                          ; $505c: $ba
    db $d3                                        ; $505d: $d3
    xor d                                         ; $505e: $aa
    ld [c], a                                     ; $505f: $e2
    adc h                                         ; $5060: $8c
    ld a, e                                       ; $5061: $7b
    db $f4                                        ; $5062: $f4
    cp c                                          ; $5063: $b9
    sub $79                                       ; $5064: $d6 $79
    ld e, h                                       ; $5066: $5c
    ccf                                           ; $5067: $3f
    add a                                         ; $5068: $87
    ld sp, $3f75                                  ; $5069: $31 $75 $3f
    ei                                            ; $506c: $fb
    add h                                         ; $506d: $84
    ld h, b                                       ; $506e: $60
    cp [hl]                                       ; $506f: $be
    ld b, h                                       ; $5070: $44
    cp l                                          ; $5071: $bd
    ld bc, $5117                                  ; $5072: $01 $17 $51
    ld d, a                                       ; $5075: $57
    ld l, c                                       ; $5076: $69
    db $eb                                        ; $5077: $eb
    rst $20                                       ; $5078: $e7
    jr nc, jr_03d_5021                            ; $5079: $30 $a6

    xor $e7                                       ; $507b: $ee $e7
    inc [hl]                                      ; $507d: $34
    jp nc, $bacf                                  ; $507e: $d2 $cf $ba

    ld e, a                                       ; $5081: $5f
    jr nz, @+$80                                  ; $5082: $20 $7e

    ret z                                         ; $5084: $c8

    ld a, e                                       ; $5085: $7b
    add c                                         ; $5086: $81
    ld l, l                                       ; $5087: $6d
    sbc b                                         ; $5088: $98
    xor e                                         ; $5089: $ab
    cp c                                          ; $508a: $b9
    adc [hl]                                      ; $508b: $8e
    ld d, e                                       ; $508c: $53
    di                                            ; $508d: $f3
    sbc l                                         ; $508e: $9d
    rst $18                                       ; $508f: $df
    xor a                                         ; $5090: $af
    or [hl]                                       ; $5091: $b6
    cp c                                          ; $5092: $b9
    rst $28                                       ; $5093: $ef
    cp e                                          ; $5094: $bb
    sbc e                                         ; $5095: $9b
    ld h, a                                       ; $5096: $67
    rst $00                                       ; $5097: $c7
    and $d7                                       ; $5098: $e6 $d7
    ld h, h                                       ; $509a: $64
    ld d, c                                       ; $509b: $51
    ld e, [hl]                                    ; $509c: $5e
    rst $20                                       ; $509d: $e7
    inc [hl]                                      ; $509e: $34
    jp nc, Jump_000_00f7                          ; $509f: $d2 $f7 $00

    halt                                          ; $50a2: $76
    or b                                          ; $50a3: $b0
    sbc $c4                                       ; $50a4: $de $c4
    xor a                                         ; $50a6: $af
    adc c                                         ; $50a7: $89
    sub c                                         ; $50a8: $91
    rst $30                                       ; $50a9: $f7
    ld l, $c7                                     ; $50aa: $2e $c7
    ld e, a                                       ; $50ac: $5f
    ld c, b                                       ; $50ad: $48
    db $fc                                        ; $50ae: $fc
    ld e, c                                       ; $50af: $59
    inc e                                         ; $50b0: $1c
    ld [hl], a                                    ; $50b1: $77
    ld l, [hl]                                    ; $50b2: $6e
    ld [hl], c                                    ; $50b3: $71
    push de                                       ; $50b4: $d5
    push de                                       ; $50b5: $d5
    sub $61                                       ; $50b6: $d6 $61
    xor [hl]                                      ; $50b8: $ae
    ld [hl], b                                    ; $50b9: $70
    cpl                                           ; $50ba: $2f
    ld a, [c]                                     ; $50bb: $f2
    ld l, b                                       ; $50bc: $68
    ld e, [hl]                                    ; $50bd: $5e
    ld a, [hl]                                    ; $50be: $7e
    push hl                                       ; $50bf: $e5
    rla                                           ; $50c0: $17
    ld [hl], $0a                                  ; $50c1: $36 $0a
    cp $ca                                        ; $50c3: $fe $ca
    cpl                                           ; $50c5: $2f
    sub h                                         ; $50c6: $94
    ld d, [hl]                                    ; $50c7: $56
    ld d, e                                       ; $50c8: $53
    ld a, [hl]                                    ; $50c9: $7e
    dec d                                         ; $50ca: $15
    or $9f                                        ; $50cb: $f6 $9f
    push bc                                       ; $50cd: $c5
    ld [hl], c                                    ; $50ce: $71
    dec [hl]                                      ; $50cf: $35
    rst $20                                       ; $50d0: $e7
    add hl, de                                    ; $50d1: $19
    ld e, l                                       ; $50d2: $5d
    dec h                                         ; $50d3: $25
    ld l, a                                       ; $50d4: $6f
    nop                                           ; $50d5: $00
    ld bc, $9c94                                  ; $50d6: $01 $94 $9c
    or [hl]                                       ; $50d9: $b6
    ld d, l                                       ; $50da: $55
    dec l                                         ; $50db: $2d
    jp $c95c                                      ; $50dc: $c3 $5c $c9


    ld d, c                                       ; $50df: $51
    db $e3                                        ; $50e0: $e3
    ld [hl], a                                    ; $50e1: $77
    ld a, [hl]                                    ; $50e2: $7e
    ld e, a                                       ; $50e3: $5f
    inc de                                        ; $50e4: $13
    cp a                                          ; $50e5: $bf
    rst $38                                       ; $50e6: $ff
    and e                                         ; $50e7: $a3
    ld c, a                                       ; $50e8: $4f
    ld hl, sp-$46                                 ; $50e9: $f8 $ba
    ld e, e                                       ; $50eb: $5b
    ld e, h                                       ; $50ec: $5c
    xor e                                         ; $50ed: $ab
    adc d                                         ; $50ee: $8a
    dec hl                                        ; $50ef: $2b
    cp c                                          ; $50f0: $b9
    ld h, b                                       ; $50f1: $60
    db $eb                                        ; $50f2: $eb
    sbc a                                         ; $50f3: $9f
    dec a                                         ; $50f4: $3d
    ld bc, $da7d                                  ; $50f5: $01 $7d $da
    ld [$46a7], a                                 ; $50f8: $ea $a7 $46
    ret                                           ; $50fb: $c9


    ld a, e                                       ; $50fc: $7b
    cp l                                          ; $50fd: $bd
    ld d, [hl]                                    ; $50fe: $56
    and c                                         ; $50ff: $a1
    and c                                         ; $5100: $a1
    ld l, $36                                     ; $5101: $2e $36

jr_03d_5103:
    ld [hl+], a                                   ; $5103: $22
    ld h, a                                       ; $5104: $67
    ld [hl], c                                    ; $5105: $71
    ld e, h                                       ; $5106: $5c
    ldh a, [$0d]                                  ; $5107: $f0 $0d
    and l                                         ; $5109: $a5
    db $e4                                        ; $510a: $e4
    dec a                                         ; $510b: $3d
    dec sp                                        ; $510c: $3b
    ld e, l                                       ; $510d: $5d
    or l                                          ; $510e: $b5
    and e                                         ; $510f: $a3
    ld b, h                                       ; $5110: $44
    adc $3a                                       ; $5111: $ce $3a
    ld l, e                                       ; $5113: $6b
    ld c, [hl]                                    ; $5114: $4e
    db $d3                                        ; $5115: $d3
    ld a, [hl-]                                   ; $5116: $3a
    ld e, a                                       ; $5117: $5f
    or l                                          ; $5118: $b5
    db $d3                                        ; $5119: $d3
    jp z, $df7d                                   ; $511a: $ca $7d $df

    nop                                           ; $511d: $00
    halt                                          ; $511e: $76
    ld a, [de]                                    ; $511f: $1a
    ld a, a                                       ; $5120: $7f
    ld l, a                                       ; $5121: $6f
    ld [hl], c                                    ; $5122: $71
    ld [hl], $f0                                  ; $5123: $36 $f0
    ld de, $9f67                                  ; $5125: $11 $67 $9f
    db $10                                        ; $5128: $10
    call z, $a897                                 ; $5129: $cc $97 $a8
    ldh a, [$75]                                  ; $512c: $f0 $75
    scf                                           ; $512e: $37
    adc c                                         ; $512f: $89
    ld [hl], e                                    ; $5130: $73
    ld a, [de]                                    ; $5131: $1a
    jp hl                                         ; $5132: $e9


    ld a, e                                       ; $5133: $7b
    ld [bc], a                                    ; $5134: $02
    add c                                         ; $5135: $81
    adc l                                         ; $5136: $8d
    ld [hl], l                                    ; $5137: $75
    jr z, jr_03d_5156                             ; $5138: $28 $1c

    dec [hl]                                      ; $513a: $35
    halt                                          ; $513b: $76
    call $d624                                    ; $513c: $cd $24 $d6
    dec c                                         ; $513f: $0d
    jp z, $977b                                   ; $5140: $ca $7b $97

    ld h, l                                       ; $5143: $65
    db $fd                                        ; $5144: $fd
    ldh a, [$85]                                  ; $5145: $f0 $85
    cpl                                           ; $5147: $2f
    cp a                                          ; $5148: $bf
    ret c                                         ; $5149: $d8

    ld l, [hl]                                    ; $514a: $6e
    nop                                           ; $514b: $00
    halt                                          ; $514c: $76
    ld b, d                                       ; $514d: $42

jr_03d_514e:
    sbc l                                         ; $514e: $9d
    ld h, a                                       ; $514f: $67
    db $fd                                        ; $5150: $fd
    jp c, $e7de                                   ; $5151: $da $de $e7

    adc h                                         ; $5154: $8c
    sub e                                         ; $5155: $93

jr_03d_5156:
    sub [hl]                                      ; $5156: $96
    sbc d                                         ; $5157: $9a
    ldh a, [rTIMA]                                ; $5158: $f0 $05
    ld h, h                                       ; $515a: $64
    adc h                                         ; $515b: $8c
    sub h                                         ; $515c: $94
    ld a, e                                       ; $515d: $7b
    ld a, l                                       ; $515e: $7d
    jr c, jr_03d_5103                             ; $515f: $38 $a2

    ld a, c                                       ; $5161: $79
    add c                                         ; $5162: $81
    ld e, [hl]                                    ; $5163: $5e
    xor d                                         ; $5164: $aa
    adc $73                                       ; $5165: $ce $73
    or c                                          ; $5167: $b1
    adc l                                         ; $5168: $8d
    jr c, jr_03d_514e                             ; $5169: $38 $e3

    ld e, $63                                     ; $516b: $1e $63
    adc [hl]                                      ; $516d: $8e
    or b                                          ; $516e: $b0
    cp [hl]                                       ; $516f: $be
    ld l, [hl]                                    ; $5170: $6e
    ret z                                         ; $5171: $c8

    ld d, c                                       ; $5172: $51
    inc hl                                        ; $5173: $23
    rst $10                                       ; $5174: $d7
    jr nc, jr_03d_51c9                            ; $5175: $30 $52

    xor b                                         ; $5177: $a8
    adc a                                         ; $5178: $8f
    sub c                                         ; $5179: $91
    and e                                         ; $517a: $a3
    add [hl]                                      ; $517b: $86
    db $ec                                        ; $517c: $ec
    sub a                                         ; $517d: $97
    rst $30                                       ; $517e: $f7
    ld a, d                                       ; $517f: $7a
    dec bc                                        ; $5180: $0b
    ld [hl], e                                    ; $5181: $73
    ld d, $c7                                     ; $5182: $16 $c7
    ld d, c                                       ; $5184: $51
    ld d, a                                       ; $5185: $57
    ld a, [hl]                                    ; $5186: $7e
    and [hl]                                      ; $5187: $a6
    ld a, h                                       ; $5188: $7c
    add l                                         ; $5189: $85
    dec bc                                        ; $518a: $0b
    ld e, a                                       ; $518b: $5f
    ld a, [hl]                                    ; $518c: $7e
    ld b, h                                       ; $518d: $44
    sub e                                         ; $518e: $93
    jr @-$19                                      ; $518f: $18 $e5

    ld h, l                                       ; $5191: $65
    push hl                                       ; $5192: $e5
    rla                                           ; $5193: $17
    ret nc                                        ; $5194: $d0

    add sp, -$1b                                  ; $5195: $e8 $e5
    ld l, a                                       ; $5197: $6f
    nop                                           ; $5198: $00
    ld d, a                                       ; $5199: $57
    jr nc, jr_03d_51f3                            ; $519a: $30 $57

    ld a, [hl]                                    ; $519c: $7e
    ld bc, $5e8d                                  ; $519d: $01 $8d $5e
    ld e, $be                                     ; $51a0: $1e $be
    sub b                                         ; $51a2: $90
    sub d                                         ; $51a3: $92
    jp $c95c                                      ; $51a4: $c3 $5c $c9


    ld de, $2363                                  ; $51a7: $11 $63 $23
    ld a, [$d7bc]                                 ; $51aa: $fa $bc $d7
    db $dd                                        ; $51ad: $dd
    ld c, [hl]                                    ; $51ae: $4e
    ld h, e                                       ; $51af: $63
    rst $10                                       ; $51b0: $d7
    inc a                                         ; $51b1: $3c
    ld sp, $ce4a                                  ; $51b2: $31 $4a $ce
    or e                                          ; $51b5: $b3
    call z, $434e                                 ; $51b6: $cc $4e $43
    or $cb                                        ; $51b9: $f6 $cb
    sbc [hl]                                      ; $51bb: $9e
    db $eb                                        ; $51bc: $eb
    sbc $db                                       ; $51bd: $de $db
    or [hl]                                       ; $51bf: $b6
    adc $55                                       ; $51c0: $ce $55
    dec sp                                        ; $51c2: $3b
    inc [hl]                                      ; $51c3: $34
    dec l                                         ; $51c4: $2d
    pop af                                        ; $51c5: $f1
    ld a, e                                       ; $51c6: $7b
    xor [hl]                                      ; $51c7: $ae
    ld e, e                                       ; $51c8: $5b

jr_03d_51c9:
    cpl                                           ; $51c9: $2f
    db $eb                                        ; $51ca: $eb
    ld bc, $6bfe                                  ; $51cb: $01 $fe $6b
    jp nz, Jump_000_3f57                          ; $51ce: $c2 $57 $3f

    dec [hl]                                      ; $51d1: $35
    ld c, d                                       ; $51d2: $4a
    or $00                                        ; $51d3: $f6 $00
    sub a                                         ; $51d5: $97
    ld e, a                                       ; $51d6: $5f
    halt                                          ; $51d7: $76
    cp $45                                        ; $51d8: $fe $45
    rst $20                                       ; $51da: $e7
    ld e, a                                       ; $51db: $5f
    db $d3                                        ; $51dc: $d3
    ld l, e                                       ; $51dd: $6b
    cp l                                          ; $51de: $bd
    ld l, $5a                                     ; $51df: $2e $5a
    ld l, a                                       ; $51e1: $6f
    ei                                            ; $51e2: $fb
    di                                            ; $51e3: $f3
    ld a, e                                       ; $51e4: $7b
    ld e, a                                       ; $51e5: $5f
    ld a, h                                       ; $51e6: $7c
    inc bc                                        ; $51e7: $03
    add c                                         ; $51e8: $81
    db $ed                                        ; $51e9: $ed
    cp [hl]                                       ; $51ea: $be
    rst $28                                       ; $51eb: $ef
    ld d, l                                       ; $51ec: $55
    adc b                                         ; $51ed: $88
    ld a, e                                       ; $51ee: $7b
    adc e                                         ; $51ef: $8b
    or e                                          ; $51f0: $b3
    add c                                         ; $51f1: $81
    rst $08                                       ; $51f2: $cf

jr_03d_51f3:
    inc b                                         ; $51f3: $04
    sbc e                                         ; $51f4: $9b
    ld c, c                                       ; $51f5: $49
    ld hl, sp-$54                                 ; $51f6: $f8 $ac
    di                                            ; $51f8: $f3
    xor l                                         ; $51f9: $ad
    and $4a                                       ; $51fa: $e6 $4a
    adc $e2                                       ; $51fc: $ce $e2
    cp b                                          ; $51fe: $b8
    ld a, [bc]                                    ; $51ff: $0a
    dec d                                         ; $5200: $15
    nop                                           ; $5201: $00
    halt                                          ; $5202: $76
    ld a, [hl-]                                   ; $5203: $3a
    pop hl                                        ; $5204: $e1
    sub a                                         ; $5205: $97
    ei                                            ; $5206: $fb
    cp [hl]                                       ; $5207: $be
    adc c                                         ; $5208: $89
    xor e                                         ; $5209: $ab
    db $db                                        ; $520a: $db
    ld a, [hl-]                                   ; $520b: $3a
    ld e, c                                       ; $520c: $59
    or h                                          ; $520d: $b4
    sub l                                         ; $520e: $95
    sub d                                         ; $520f: $92
    rst $30                                       ; $5210: $f7
    ld a, l                                       ; $5211: $7d
    sub a                                         ; $5212: $97
    ld e, a                                       ; $5213: $5f
    inc h                                         ; $5214: $24
    ld b, d                                       ; $5215: $42
    ld a, c                                       ; $5216: $79

Jump_03d_5217:
    rst $18                                       ; $5217: $df
    scf                                           ; $5218: $37
    nop                                           ; $5219: $00
    db $dd                                        ; $521a: $dd
    cpl                                           ; $521b: $2f
    ld [hl], c                                    ; $521c: $71
    ld d, l                                       ; $521d: $55
    ld a, e                                       ; $521e: $7b
    ld [bc], a                                    ; $521f: $02
    ld a, l                                       ; $5220: $7d
    cp b                                          ; $5221: $b8
    ld a, [bc]                                    ; $5222: $0a
    ld [hl], e                                    ; $5223: $73
    cp a                                          ; $5224: $bf
    jp c, Jump_03d_7566                           ; $5225: $da $66 $75

    db $d3                                        ; $5228: $d3
    ld a, [hl-]                                   ; $5229: $3a
    pop hl                                        ; $522a: $e1
    inc sp                                        ; $522b: $33
    adc c                                         ; $522c: $89
    dec hl                                        ; $522d: $2b
    ccf                                           ; $522e: $3f
    sub e                                         ; $522f: $93
    pop hl                                        ; $5230: $e1
    rst $08                                       ; $5231: $cf
    ld [hl], e                                    ; $5232: $73
    sub a                                         ; $5233: $97
    cp b                                          ; $5234: $b8
    and $7d                                       ; $5235: $e6 $7d
    adc e                                         ; $5237: $8b
    ld h, $78                                     ; $5238: $26 $78
    inc bc                                        ; $523a: $03
    ld a, l                                       ; $523b: $7d
    adc $b7                                       ; $523c: $ce $b7
    db $eb                                        ; $523e: $eb
    ld a, e                                       ; $523f: $7b
    sbc c                                         ; $5240: $99
    db $dd                                        ; $5241: $dd
    cp l                                          ; $5242: $bd
    set 1, [hl]                                   ; $5243: $cb $ce
    or a                                          ; $5245: $b7
    db $eb                                        ; $5246: $eb
    ld l, e                                       ; $5247: $6b
    or a                                          ; $5248: $b7
    adc e                                         ; $5249: $8b
    ld a, d                                       ; $524a: $7a
    dec l                                         ; $524b: $2d
    ldh [$7c], a                                  ; $524c: $e0 $7c
    cp e                                          ; $524e: $bb
    ld [hl], e                                    ; $524f: $73
    ld l, $ed                                     ; $5250: $2e $ed
    dec [hl]                                      ; $5252: $35
    cp e                                          ; $5253: $bb
    cp [hl]                                       ; $5254: $be
    or e                                          ; $5255: $b3
    cp e                                          ; $5256: $bb
    ld l, b                                       ; $5257: $68
    ld h, a                                       ; $5258: $67
    ld e, a                                       ; $5259: $5f
    ld a, h                                       ; $525a: $7c
    ld d, c                                       ; $525b: $51
    ldh [$f9], a                                  ; $525c: $e0 $f9
    rla                                           ; $525e: $17
    ld e, l                                       ; $525f: $5d
    ld [hl], h                                    ; $5260: $74
    pop af                                        ; $5261: $f1
    dec c                                         ; $5262: $0d
    nop                                           ; $5263: $00
    db $dd                                        ; $5264: $dd
    xor a                                         ; $5265: $af
    or b                                          ; $5266: $b0
    dec bc                                        ; $5267: $0b
    sbc h                                         ; $5268: $9c
    ld e, l                                       ; $5269: $5d
    rst $18                                       ; $526a: $df
    ld e, l                                       ; $526b: $5d
    ld [hl], h                                    ; $526c: $74
    pop af                                        ; $526d: $f1
    ld l, $b9                                     ; $526e: $2e $b9
    call c, Call_03d_7d6e                         ; $5270: $dc $6e $7d
    db $ec                                        ; $5273: $ec
    ld h, [hl]                                    ; $5274: $66
    ld l, a                                       ; $5275: $6f
    or a                                          ; $5276: $b7
    sbc $17                                       ; $5277: $de $17
    rst $30                                       ; $5279: $f7
    cp l                                          ; $527a: $bd
    jp nz, $d2ee                                  ; $527b: $c2 $ee $d2

    set 1, [hl]                                   ; $527e: $cb $ce
    ccf                                           ; $5280: $3f
    rst $20                                       ; $5281: $e7
    ld [c], a                                     ; $5282: $e2
    sbc [hl]                                      ; $5283: $9e
    dec bc                                        ; $5284: $0b
    inc a                                         ; $5285: $3c
    di                                            ; $5286: $f3
    and d                                         ; $5287: $a2
    adc e                                         ; $5288: $8b
    ld [hl], a                                    ; $5289: $77
    sbc c                                         ; $528a: $99
    ld e, l                                       ; $528b: $5d
    rst $18                                       ; $528c: $df
    di                                            ; $528d: $f3
    ld l, $de                                     ; $528e: $2e $de
    cp c                                          ; $5290: $b9
    rla                                           ; $5291: $17
    ld e, a                                       ; $5292: $5f
    jp c, $d7a7                                   ; $5293: $da $a7 $d7

    ld [bc], a                                    ; $5296: $02
    rst $08                                       ; $5297: $cf
    ld e, a                                       ; $5298: $5f
    xor a                                         ; $5299: $af
    adc e                                         ; $529a: $8b
    adc $bb                                       ; $529b: $ce $bb
    db $fc                                        ; $529d: $fc
    ld a, h                                       ; $529e: $7c
    cp e                                          ; $529f: $bb
    cp [hl]                                       ; $52a0: $be
    db $eb                                        ; $52a1: $eb
    ld h, e                                       ; $52a2: $63
    or a                                          ; $52a3: $b7
    ld [hl], e                                    ; $52a4: $73
    db $ec                                        ; $52a5: $ec
    ld l, $e8                                     ; $52a6: $2e $e8
    or l                                          ; $52a8: $b5
    sbc $17                                       ; $52a9: $de $17
    rst $30                                       ; $52ab: $f7
    add hl, bc                                    ; $52ac: $09
    add sp, $75                                   ; $52ad: $e8 $75
    jp hl                                         ; $52af: $e9


    ld h, l                                       ; $52b0: $65
    rst $20                                       ; $52b1: $e7
    ld e, a                                       ; $52b2: $5f
    cp d                                          ; $52b3: $ba
    ret nz                                        ; $52b4: $c0

    set 2, a                                      ; $52b5: $cb $d7
    ei                                            ; $52b7: $fb
    ld [hl], d                                    ; $52b8: $72
    cp e                                          ; $52b9: $bb
    ld c, e                                       ; $52ba: $4b
    inc bc                                        ; $52bb: $03
    ld l, $be                                     ; $52bc: $2e $be
    rla                                           ; $52be: $17
    ld h, b                                       ; $52bf: $60
    ld [hl], a                                    ; $52c0: $77
    jp hl                                         ; $52c1: $e9


    push bc                                       ; $52c2: $c5
    db $eb                                        ; $52c3: $eb
    ld a, l                                       ; $52c4: $7d
    ld a, c                                       ; $52c5: $79
    xor a                                         ; $52c6: $af
    cp [hl]                                       ; $52c7: $be
    rst $20                                       ; $52c8: $e7
    ld e, h                                       ; $52c9: $5c
    cp h                                          ; $52ca: $bc
    set 5, h                                      ; $52cb: $cb $ec
    ld a, [$d79e]                                 ; $52cd: $fa $9e $d7
    ld l, e                                       ; $52d0: $6b
    halt                                          ; $52d1: $76
    rla                                           ; $52d2: $17
    call $a2ee                                    ; $52d3: $cd $ee $a2
    di                                            ; $52d6: $f3
    xor a                                         ; $52d7: $af
    ld a, [hl-]                                   ; $52d8: $3a
    rst $38                                       ; $52d9: $ff
    jp nc, Jump_03d_639d                          ; $52da: $d2 $9d $63

    or a                                          ; $52dd: $b7
    adc e                                         ; $52de: $8b
    ld a, d                                       ; $52df: $7a
    db $ed                                        ; $52e0: $ed
    adc d                                         ; $52e1: $8a
    di                                            ; $52e2: $f3
    rst $08                                       ; $52e3: $cf
    jp hl                                         ; $52e4: $e9


    dec b                                         ; $52e5: $05
    ld e, a                                       ; $52e6: $5f
    rst $28                                       ; $52e7: $ef
    ld c, e                                       ; $52e8: $4b
    db $ed                                        ; $52e9: $ed
    ld a, d                                       ; $52ea: $7a
    ld e, l                                       ; $52eb: $5d
    ld a, d                                       ; $52ec: $7a
    ld a, [$ef2e]                                 ; $52ed: $fa $2e $ef
    cp e                                          ; $52f0: $bb
    cp [hl]                                       ; $52f1: $be
    sub a                                         ; $52f2: $97
    db $db                                        ; $52f3: $db
    ld e, l                                       ; $52f4: $5d
    ld [hl], c                                    ; $52f5: $71
    pop af                                        ; $52f6: $f1
    ld a, d                                       ; $52f7: $7a
    ld e, a                                       ; $52f8: $5f
    ld l, [hl]                                    ; $52f9: $6e
    ld [hl], a                                    ; $52fa: $77
    ld l, c                                       ; $52fb: $69
    ret nz                                        ; $52fc: $c0

    push bc                                       ; $52fd: $c5
    dec bc                                        ; $52fe: $0b
    add sp, $75                                   ; $52ff: $e8 $75
    ld l, c                                       ; $5301: $69
    xor a                                         ; $5302: $af
    push af                                       ; $5303: $f5
    add hl, sp                                    ; $5304: $39
    db $e3                                        ; $5305: $e3
    ld e, [hl]                                    ; $5306: $5e
    cpl                                           ; $5307: $2f
    ei                                            ; $5308: $fb
    adc e                                         ; $5309: $8b
    cpl                                           ; $530a: $2f
    db $ed                                        ; $530b: $ed
    or l                                          ; $530c: $b5
    ld [hl], e                                    ; $530d: $73
    ld a, d                                       ; $530e: $7a
    push af                                       ; $530f: $f5
    or c                                          ; $5310: $b1
    db $db                                        ; $5311: $db
    ld b, l                                       ; $5312: $45
    cp l                                          ; $5313: $bd
    ld d, $70                                     ; $5314: $16 $70
    cp [hl]                                       ; $5316: $be
    db $dd                                        ; $5317: $dd
    add hl, sp                                    ; $5318: $39
    sub a                                         ; $5319: $97
    or $da                                        ; $531a: $f6 $da
    push bc                                       ; $531c: $c5
    db $eb                                        ; $531d: $eb
    ld [hl], e                                    ; $531e: $73
    pop af                                        ; $531f: $f1
    and l                                         ; $5320: $a5
    rst $20                                       ; $5321: $e7
    ld e, a                                       ; $5322: $5f
    ld a, d                                       ; $5323: $7a
    ld c, b                                       ; $5324: $48
    ldh [$7a], a                                  ; $5325: $e0 $7a
    ld e, a                                       ; $5327: $5f
    call c, $e2e7                                 ; $5328: $dc $e7 $e2
    ld e, l                                       ; $532b: $5d
    halt                                          ; $532c: $76
    ld a, c                                       ; $532d: $79
    ldh [rSC], a                                  ; $532e: $e0 $02
    ld a, d                                       ; $5330: $7a
    sbc l                                         ; $5331: $9d
    ld [hl], e                                    ; $5332: $73
    xor c                                         ; $5333: $a9
    ld e, l                                       ; $5334: $5d
    ldh [$7d], a                                  ; $5335: $e0 $7d
    rst $18                                       ; $5337: $df

jr_03d_5338:
    add c                                         ; $5338: $81
    sub a                                         ; $5339: $97
    rlca                                          ; $533a: $07
    ld e, h                                       ; $533b: $5c
    ld [hl], h                                    ; $533c: $74
    ld a, [hl]                                    ; $533d: $7e
    rst $28                                       ; $533e: $ef
    ld e, [hl]                                    ; $533f: $5e
    ld a, l                                       ; $5340: $7d
    rst $08                                       ; $5341: $cf
    cp c                                          ; $5342: $b9
    ld hl, sp+$06                                 ; $5343: $f8 $06
    db $dd                                        ; $5345: $dd
    ld a, [$6310]                                 ; $5346: $fa $10 $63
    sub e                                         ; $5349: $93
    rst $28                                       ; $534a: $ef
    ld bc, $6700                                  ; $534b: $01 $00 $67
    dec sp                                        ; $534e: $3b
    ld [c], a                                     ; $534f: $e2
    db $eb                                        ; $5350: $eb
    ld [c], a                                     ; $5351: $e2
    adc e                                         ; $5352: $8b
    and a                                         ; $5353: $a7
    jp nz, $ff67                                  ; $5354: $c2 $67 $ff

    ld [hl+], a                                   ; $5357: $22
    sub $1b                                       ; $5358: $d6 $1b
    nop                                           ; $535a: $00
    db $dd                                        ; $535b: $dd
    ld l, $fa                                     ; $535c: $2e $fa
    add l                                         ; $535e: $85
    adc l                                         ; $535f: $8d
    ld e, [hl]                                    ; $5360: $5e
    cp [hl]                                       ; $5361: $be
    rst $00                                       ; $5362: $c7
    cp d                                          ; $5363: $ba
    ld e, l                                       ; $5364: $5d
    db $f4                                        ; $5365: $f4
    adc e                                         ; $5366: $8b
    adc l                                         ; $5367: $8d
    ret z                                         ; $5368: $c8

    ld e, l                                       ; $5369: $5d
    ld [c], a                                     ; $536a: $e2
    sbc d                                         ; $536b: $9a
    ld [$e94b], sp                                ; $536c: $08 $4b $e9
    ld bc, $7d00                                  ; $536f: $01 $00 $7d
    inc de                                        ; $5372: $13
    cp [hl]                                       ; $5373: $be
    ld d, d                                       ; $5374: $52
    ld [$aab9], sp                                ; $5375: $08 $b9 $aa
    ei                                            ; $5378: $fb
    push bc                                       ; $5379: $c5
    add $3a                                       ; $537a: $c6 $3a
    call z, $2f85                                 ; $537c: $cc $85 $2f
    ccf                                           ; $537f: $3f
    ld d, [hl]                                    ; $5380: $56
    ld e, d                                       ; $5381: $5a
    ld a, h                                       ; $5382: $7c
    add hl, hl                                    ; $5383: $29
    add hl, bc                                    ; $5384: $09
    rst $18                                       ; $5385: $df
    dec sp                                        ; $5386: $3b
    or h                                          ; $5387: $b4
    jr c, jr_03d_5338                             ; $5388: $38 $ae

    db $e4                                        ; $538a: $e4
    xor b                                         ; $538b: $a8
    pop af                                        ; $538c: $f1
    dec sp                                        ; $538d: $3b
    xor a                                         ; $538e: $af
    dec bc                                        ; $538f: $0b
    cp [hl]                                       ; $5390: $be
    ld l, c                                       ; $5391: $69
    ld b, h                                       ; $5392: $44
    sbc a                                         ; $5393: $9f
    xor e                                         ; $5394: $ab
    sbc l                                         ; $5395: $9d
    ld [hl], l                                    ; $5396: $75
    sbc l                                         ; $5397: $9d

Call_03d_5398:
    ld b, [hl]                                    ; $5398: $46
    sbc h                                         ; $5399: $9c
    ld h, [hl]                                    ; $539a: $66
    ret                                           ; $539b: $c9


    dec de                                        ; $539c: $1b
    nop                                           ; $539d: $00
    sub a                                         ; $539e: $97
    ld de, $dca1                                  ; $539f: $11 $a1 $dc
    rla                                           ; $53a2: $17
    ret z                                         ; $53a3: $c8

    pop hl                                        ; $53a4: $e1
    db $eb                                        ; $53a5: $eb
    ld b, d                                       ; $53a6: $42
    ld hl, $30e4                                  ; $53a7: $21 $e4 $30
    cp [hl]                                       ; $53aa: $be
    sbc $eb                                       ; $53ab: $de $eb
    ld l, [hl]                                    ; $53ad: $6e
    and a                                         ; $53ae: $a7
    or c                                          ; $53af: $b1
    ld l, e                                       ; $53b0: $6b
    or l                                          ; $53b1: $b5
    and e                                         ; $53b2: $a3
    call nz, Call_000_15dc                        ; $53b3: $c4 $dc $15
    ld e, c                                       ; $53b6: $59
    inc a                                         ; $53b7: $3c
    db $eb                                        ; $53b8: $eb
    sub h                                         ; $53b9: $94
    ret c                                         ; $53ba: $d8

    inc de                                        ; $53bb: $13
    nop                                           ; $53bc: $00
    ld a, l                                       ; $53bd: $7d
    di                                            ; $53be: $f3
    ld e, [hl]                                    ; $53bf: $5e
    xor a                                         ; $53c0: $af
    ld [hl-], a                                   ; $53c1: $32
    call z, $e351                                 ; $53c2: $cc $51 $e3
    sra d                                         ; $53c5: $cb $2a
    xor l                                         ; $53c7: $ad
    sub d                                         ; $53c8: $92
    di                                            ; $53c9: $f3
    ld e, h                                       ; $53ca: $5c
    add l                                         ; $53cb: $85

jr_03d_53cc:
    ld [c], a                                     ; $53cc: $e2
    rst $18                                       ; $53cd: $df
    jp $b987                                      ; $53ce: $c3 $87 $b9


    ret nc                                        ; $53d1: $d0

    pop de                                        ; $53d2: $d1
    ld [hl], e                                    ; $53d3: $73
    ld [hl], l                                    ; $53d4: $75
    ld c, d                                       ; $53d5: $4a
    sub e                                         ; $53d6: $93
    ld a, e                                       ; $53d7: $7b
    halt                                          ; $53d8: $76
    ld a, [de]                                    ; $53d9: $1a
    cp e                                          ; $53da: $bb
    ld d, $a6                                     ; $53db: $16 $a6
    db $ec                                        ; $53dd: $ec
    add e                                         ; $53de: $83
    ld [hl], $f0                                  ; $53df: $36 $f0
    ld de, $05f7                                  ; $53e1: $11 $f7 $05
    ld a, [hl-]                                   ; $53e4: $3a
    nop                                           ; $53e5: $00
    and a                                         ; $53e6: $a7
    dec l                                         ; $53e7: $2d
    or [hl]                                       ; $53e8: $b6
    cp h                                          ; $53e9: $bc
    rst $28                                       ; $53ea: $ef
    dec de                                        ; $53eb: $1b
    nop                                           ; $53ec: $00
    ld d, a                                       ; $53ed: $57
    xor a                                         ; $53ee: $af
    db $fc                                        ; $53ef: $fc
    ld a, d                                       ; $53f0: $7a
    ld a, a                                       ; $53f1: $7f
    ld hl, sp-$0d                                 ; $53f2: $f8 $f3
    ld e, h                                       ; $53f4: $5c
    jp $d34a                                      ; $53f5: $c3 $4a $d3


    sub $69                                       ; $53f8: $d6 $69
    and l                                         ; $53fa: $a5
    ld sp, hl                                     ; $53fb: $f9
    rst $30                                       ; $53fc: $f7
    ldh a, [$75]                                  ; $53fd: $f0 $75
    rst $10                                       ; $53ff: $d7
    rst $28                                       ; $5400: $ef
    ld [hl], b                                    ; $5401: $70
    ld d, $d7                                     ; $5402: $16 $d7
    xor d                                         ; $5404: $aa
    ld [c], a                                     ; $5405: $e2
    ld l, d                                       ; $5406: $6a
    xor [hl]                                      ; $5407: $ae
    db $fc                                        ; $5408: $fc
    adc b                                         ; $5409: $88
    sub l                                         ; $540a: $95
    ld h, [hl]                                    ; $540b: $66
    db $db                                        ; $540c: $db
    inc de                                        ; $540d: $13
    nop                                           ; $540e: $00
    sub a                                         ; $540f: $97
    cp c                                          ; $5410: $b9
    add l                                         ; $5411: $85
    rst $28                                       ; $5412: $ef
    add l                                         ; $5413: $85
    xor e                                         ; $5414: $ab
    cp c                                          ; $5415: $b9
    ld a, [c]                                     ; $5416: $f2
    di                                            ; $5417: $f3
    db $ec                                        ; $5418: $ec
    ld h, a                                       ; $5419: $67
    ld a, e                                       ; $541a: $7b
    cpl                                           ; $541b: $2f
    add b                                         ; $541c: $80
    xor b                                         ; $541d: $a8
    ld d, l                                       ; $541e: $55
    ld h, a                                       ; $541f: $67
    ld [hl], c                                    ; $5420: $71
    ld e, h                                       ; $5421: $5c
    db $e4                                        ; $5422: $e4
    jr nz, jr_03d_53cc                            ; $5423: $20 $a7

    pop af                                        ; $5425: $f1
    push bc                                       ; $5426: $c5
    and $17                                       ; $5427: $e6 $17
    adc c                                         ; $5429: $89
    sub h                                         ; $542a: $94
    ld a, [c]                                     ; $542b: $f2
    scf                                           ; $542c: $37
    nop                                           ; $542d: $00
    ld d, a                                       ; $542e: $57
    rst $08                                       ; $542f: $cf
    pop hl                                        ; $5430: $e1
    rst $08                                       ; $5431: $cf
    and h                                         ; $5432: $a4
    cp $ea                                        ; $5433: $fe $ea
    ld l, $bd                                     ; $5435: $2e $bd
    rst $28                                       ; $5437: $ef
    dec de                                        ; $5438: $1b
    nop                                           ; $5439: $00
    rst $20                                       ; $543a: $e7
    inc [hl]                                      ; $543b: $34
    dec c                                         ; $543c: $0d
    ld e, a                                       ; $543d: $5f
    cp $06                                        ; $543e: $fe $06
    db $dd                                        ; $5440: $dd
    inc bc                                        ; $5441: $03
    ld d, d                                       ; $5442: $52
    ld h, [hl]                                    ; $5443: $66
    ld [hl], c                                    ; $5444: $71
    ld d, l                                       ; $5445: $55
    ld d, a                                       ; $5446: $57
    ld [hl], e                                    ; $5447: $73
    jp hl                                         ; $5448: $e9


    db $db                                        ; $5449: $db
    adc a                                         ; $544a: $8f
    ld h, l                                       ; $544b: $65
    and c                                         ; $544c: $a1
    ld h, h                                       ; $544d: $64
    dec [hl]                                      ; $544e: $35
    dec [hl]                                      ; $544f: $35
    ld h, l                                       ; $5450: $65
    add c                                         ; $5451: $81
    ld hl, sp+$21                                 ; $5452: $f8 $21
    ld a, e                                       ; $5454: $7b
    ld [bc], a                                    ; $5455: $02
    sub a                                         ; $5456: $97
    cp c                                          ; $5457: $b9
    add l                                         ; $5458: $85
    rst $28                                       ; $5459: $ef
    add l                                         ; $545a: $85
    dec hl                                        ; $545b: $2b
    sbc h                                         ; $545c: $9c
    ld a, [hl]                                    ; $545d: $7e
    xor c                                         ; $545e: $a9
    ret c                                         ; $545f: $d8

    xor [hl]                                      ; $5460: $ae
    db $fc                                        ; $5461: $fc
    ld a, [hl+]                                   ; $5462: $2a
    call $acff                                    ; $5463: $cd $ff $ac
    ld c, e                                       ; $5466: $4b
    rst $18                                       ; $5467: $df
    ld a, [hl]                                    ; $5468: $7e
    call nc, Call_000_32f8                        ; $5469: $d4 $f8 $32
    ld [c], a                                     ; $546c: $e2
    inc a                                         ; $546d: $3c
    sbc l                                         ; $546e: $9d
    rst $38                                       ; $546f: $ff
    add l                                         ; $5470: $85
    add hl, hl                                    ; $5471: $29
    ld h, e                                       ; $5472: $63
    add hl, hl                                    ; $5473: $29
    ld a, c                                       ; $5474: $79
    xor a                                         ; $5475: $af
    or a                                          ; $5476: $b7
    jr nc, jr_03d_54e0                            ; $5477: $30 $67

    ld [hl], c                                    ; $5479: $71
    ld e, h                                       ; $547a: $5c
    sbc b                                         ; $547b: $98
    ld [hl-], a                                   ; $547c: $32
    ld l, d                                       ; $547d: $6a
    ld l, $72                                     ; $547e: $2e $72
    pop bc                                        ; $5480: $c1
    ld e, a                                       ; $5481: $5f
    jr z, jr_03d_549d                             ; $5482: $28 $19

    add hl, bc                                    ; $5484: $09
    dec [hl]                                      ; $5485: $35
    sbc a                                         ; $5486: $9f
    adc e                                         ; $5487: $8b
    jp hl                                         ; $5488: $e9


    ld [hl], e                                    ; $5489: $73
    inc l                                         ; $548a: $2c
    ei                                            ; $548b: $fb
    add e                                         ; $548c: $83
    di                                            ; $548d: $f3
    sbc [hl]                                      ; $548e: $9e
    dec e                                         ; $548f: $1d
    ld c, [hl]                                    ; $5490: $4e
    db $dd                                        ; $5491: $dd
    ld l, d                                       ; $5492: $6a
    ld h, d                                       ; $5493: $62
    db $e4                                        ; $5494: $e4
    xor b                                         ; $5495: $a8
    pop af                                        ; $5496: $f1
    push bc                                       ; $5497: $c5
    and $47                                       ; $5498: $e6 $47
    ld e, h                                       ; $549a: $5c
    ld hl, sp-$03                                 ; $549b: $f8 $fd

jr_03d_549d:
    ld h, a                                       ; $549d: $67
    ld [de], a                                    ; $549e: $12
    ld d, a                                       ; $549f: $57
    or l                                          ; $54a0: $b5
    call z, $e8ba                                 ; $54a1: $cc $ba $e8
    ld d, $be                                     ; $54a4: $16 $be
    rla                                           ; $54a6: $17
    sbc $00                                       ; $54a7: $de $00
    db $dd                                        ; $54a9: $dd
    ld a, e                                       ; $54aa: $7b
    db $db                                        ; $54ab: $db
    sub $39                                       ; $54ac: $d6 $39
    sub e                                         ; $54ae: $93
    xor b                                         ; $54af: $a8
    add h                                         ; $54b0: $84
    sbc h                                         ; $54b1: $9c
    call $cdf4                                    ; $54b2: $cd $f4 $cd
    set 1, d                                      ; $54b5: $cb $ca
    cpl                                           ; $54b7: $2f
    and b                                         ; $54b8: $a0
    pop de                                        ; $54b9: $d1
    set 1, a                                      ; $54ba: $cb $cf
    or e                                          ; $54bc: $b3
    adc h                                         ; $54bd: $8c
    ld a, [de]                                    ; $54be: $1a
    or d                                          ; $54bf: $b2
    ld e, a                                       ; $54c0: $5f
    or $04                                        ; $54c1: $f6 $04
    rla                                           ; $54c3: $17
    dec a                                         ; $54c4: $3d
    sbc d                                         ; $54c5: $9a
    xor d                                         ; $54c6: $aa
    ld [hl], e                                    ; $54c7: $73
    cp b                                          ; $54c8: $b8
    jr nz, jr_03d_5518                            ; $54c9: $20 $4d

    or b                                          ; $54cb: $b0
    push af                                       ; $54cc: $f5
    rst $08                                       ; $54cd: $cf
    ld l, c                                       ; $54ce: $69
    halt                                          ; $54cf: $76
    add h                                         ; $54d0: $84
    ld h, e                                       ; $54d1: $63
    add hl, de                                    ; $54d2: $19
    dec [hl]                                      ; $54d3: $35
    ld h, h                                       ; $54d4: $64

jr_03d_54d5:
    cp a                                          ; $54d5: $bf
    ld e, h                                       ; $54d6: $5c
    ld hl, sp-$0e                                 ; $54d7: $f8 $f2
    or e                                          ; $54d9: $b3
    jr c, jr_03d_552a                             ; $54da: $38 $4e

jr_03d_54dc:
    or e                                          ; $54dc: $b3
    db $e4                                        ; $54dd: $e4
    sbc $e2                                       ; $54de: $de $e2

jr_03d_54e0:
    ld e, b                                       ; $54e0: $58
    ld h, [hl]                                    ; $54e1: $66
    ld [hl], c                                    ; $54e2: $71
    sbc h                                         ; $54e3: $9c
    push bc                                       ; $54e4: $c5
    dec [hl]                                      ; $54e5: $35
    ld l, l                                       ; $54e6: $6d
    sub h                                         ; $54e7: $94
    rra                                           ; $54e8: $1f
    pop de                                        ; $54e9: $d1
    inc h                                         ; $54ea: $24
    ld b, [hl]                                    ; $54eb: $46
    ld a, c                                       ; $54ec: $79
    ld e, c                                       ; $54ed: $59
    ld sp, hl                                     ; $54ee: $f9

jr_03d_54ef:
    dec b                                         ; $54ef: $05
    inc [hl]                                      ; $54f0: $34
    ld a, d                                       ; $54f1: $7a
    ld sp, hl                                     ; $54f2: $f9
    dec e                                         ; $54f3: $1d
    ld b, [hl]                                    ; $54f4: $46
    inc [hl]                                      ; $54f5: $34
    adc c                                         ; $54f6: $89
    ld d, c                                       ; $54f7: $51
    ld e, [hl]                                    ; $54f8: $5e
    jp z, $87c3                                   ; $54f9: $ca $c3 $87

    add hl, sp                                    ; $54fc: $39
    and a                                         ; $54fd: $a7
    cpl                                           ; $54fe: $2f
    push hl                                       ; $54ff: $e5
    rrca                                          ; $5500: $0f
    ld e, a                                       ; $5501: $5f
    add sp, $7c                                   ; $5502: $e8 $7c
    and e                                         ; $5504: $a3
    db $fc                                        ; $5505: $fc
    add d                                         ; $5506: $82
    ld l, a                                       ; $5507: $6f
    jr z, jr_03d_54ef                             ; $5508: $28 $e5

    and a                                         ; $550a: $a7
    ld e, a                                       ; $550b: $5f
    sbc d                                         ; $550c: $9a
    call c, $15eb                                 ; $550d: $dc $eb $15
    ld c, h                                       ; $5510: $4c
    ld sp, hl                                     ; $5511: $f9
    ld a, c                                       ; $5512: $79
    xor d                                         ; $5513: $aa
    ld a, c                                       ; $5514: $79
    call nc, $c39f                                ; $5515: $d4 $9f $c3

jr_03d_5518:
    add l                                         ; $5518: $85

jr_03d_5519:
    ld l, c                                       ; $5519: $69
    ld [de], a                                    ; $551a: $12
    ld a, $fb                                     ; $551b: $3e $fb
    rla                                           ; $551d: $17
    or c                                          ; $551e: $b1
    sbc $0b                                       ; $551f: $de $0b
    sub b                                         ; $5521: $90
    call nz, Call_03d_5398                        ; $5522: $c4 $98 $53
    ld c, d                                       ; $5525: $4a
    rst $10                                       ; $5526: $d7
    jp z, $baaf                                   ; $5527: $ca $af $ba

jr_03d_552a:
    ld d, c                                       ; $552a: $51
    db $e3                                        ; $552b: $e3
    rst $08                                       ; $552c: $cf
    ld [hl], e                                    ; $552d: $73
    push de                                       ; $552e: $d5
    dec c                                         ; $552f: $0d
    rst $20                                       ; $5530: $e7
    cp c                                          ; $5531: $b9

Jump_03d_5532:
    ccf                                           ; $5532: $3f
    jr c, jr_03d_55a4                             ; $5533: $38 $6f

    nop                                           ; $5535: $00
    cp l                                          ; $5536: $bd
    jr nc, @+$54                                  ; $5537: $30 $52

    rst $20                                       ; $5539: $e7
    add hl, sp                                    ; $553a: $39
    adc e                                         ; $553b: $8b
    db $e3                                        ; $553c: $e3
    ld e, b                                       ; $553d: $58
    add a                                         ; $553e: $87
    adc l                                         ; $553f: $8d
    add [hl]                                      ; $5540: $86
    ld h, e                                       ; $5541: $63
    ld e, c                                       ; $5542: $59
    rst $20                                       ; $5543: $e7
    pop de                                        ; $5544: $d1
    ld [c], a                                     ; $5545: $e2
    jr jr_03d_5551                                ; $5546: $18 $09

    ld e, a                                       ; $5548: $5f
    ldh a, [$ad]                                  ; $5549: $f0 $ad
    or e                                          ; $554b: $b3
    jr c, jr_03d_54dc                             ; $554c: $38 $8e

    jr jr_03d_54d5                                ; $554e: $18 $85

    ret nc                                        ; $5550: $d0

jr_03d_5551:
    sra [hl]                                      ; $5551: $cb $2e
    ld a, [$0c99]                                 ; $5553: $fa $99 $0c
    ld a, a                                       ; $5556: $7f
    sbc [hl]                                      ; $5557: $9e
    dec hl                                        ; $5558: $2b
    ccf                                           ; $5559: $3f
    di                                            ; $555a: $f3
    ld a, [$02f7]                                 ; $555b: $fa $f7 $02
    jr z, jr_03d_5519                             ; $555e: $28 $b9

    ld d, b                                       ; $5560: $50
    ld e, d                                       ; $5561: $5a
    ld c, l                                       ; $5562: $4d
    ret                                           ; $5563: $c9


    dec b                                         ; $5564: $05
    rst $18                                       ; $5565: $df
    ld a, [hl-]                                   ; $5566: $3a
    adc e                                         ; $5567: $8b
    db $e3                                        ; $5568: $e3
    ld [hl+], a                                   ; $5569: $22
    sub c                                         ; $556a: $91
    ld [hl-], a                                   ; $556b: $32
    ld [c], a                                     ; $556c: $e2
    adc h                                         ; $556d: $8c
    inc hl                                        ; $556e: $23
    add $5f                                       ; $556f: $c6 $5f
    ld c, c                                       ; $5571: $49
    db $dd                                        ; $5572: $dd
    ld bc, $b625                                  ; $5573: $01 $25 $b6
    ld a, [hl-]                                   ; $5576: $3a
    ld [hl], l                                    ; $5577: $75
    ld l, a                                       ; $5578: $6f
    ld [de], a                                    ; $5579: $12
    inc hl                                        ; $557a: $23
    ld c, l                                       ; $557b: $4d
    xor e                                         ; $557c: $ab
    dec de                                        ; $557d: $1b
    ld sp, $cea6                                  ; $557e: $31 $a6 $ce
    ld a, [hl-]                                   ; $5581: $3a
    sub e                                         ; $5582: $93
    ld l, b                                       ; $5583: $68
    add sp, $29                                   ; $5584: $e8 $29
    dec hl                                        ; $5586: $2b
    xor c                                         ; $5587: $a9
    dec bc                                        ; $5588: $0b
    dec e                                         ; $5589: $1d
    add $d4                                       ; $558a: $c6 $d4
    add l                                         ; $558c: $85
    cpl                                           ; $558d: $2f
    cp a                                          ; $558e: $bf
    ld a, [c]                                     ; $558f: $f2
    ld a, [hl-]                                   ; $5590: $3a
    di                                            ; $5591: $f3
    ld a, [$037a]                                 ; $5592: $fa $7a $03
    cp l                                          ; $5595: $bd
    jr nc, @+$54                                  ; $5596: $30 $52

jr_03d_5598:
    rst $20                                       ; $5598: $e7
    add hl, sp                                    ; $5599: $39
    sub $21                                       ; $559a: $d6 $21
    ei                                            ; $559c: $fb
    cp a                                          ; $559d: $bf
    adc h                                         ; $559e: $8c
    ld h, l                                       ; $559f: $65
    sbc l                                         ; $55a0: $9d
    ld b, a                                       ; $55a1: $47
    adc e                                         ; $55a2: $8b
    ld h, e                                       ; $55a3: $63

jr_03d_55a4:
    inc h                                         ; $55a4: $24
    ld a, h                                       ; $55a5: $7c
    sbc [hl]                                      ; $55a6: $9e
    sbc l                                         ; $55a7: $9d
    inc e                                         ; $55a8: $1c
    ld sp, $a10a                                  ; $55a9: $31 $0a $a1
    sub a                                         ; $55ac: $97
    ld e, l                                       ; $55ad: $5d
    db $f4                                        ; $55ae: $f4
    inc sp                                        ; $55af: $33
    add hl, de                                    ; $55b0: $19
    cp $3c                                        ; $55b1: $fe $3c
    ld d, a                                       ; $55b3: $57
    ld a, [hl]                                    ; $55b4: $7e
    and $f5                                       ; $55b5: $e6 $f5
    rst $28                                       ; $55b7: $ef
    dec b                                         ; $55b8: $05
    and h                                         ; $55b9: $a4
    db $ec                                        ; $55ba: $ec
    add e                                         ; $55bb: $83
    add hl, hl                                    ; $55bc: $29
    cp a                                          ; $55bd: $bf
    ret nz                                        ; $55be: $c0

    ld h, d                                       ; $55bf: $62
    adc l                                         ; $55c0: $8d
    ld b, c                                       ; $55c1: $41
    ld c, d                                       ; $55c2: $4a
    jp Jump_03d_7e55                              ; $55c3: $c3 $55 $7e


    call nz, $ef99                                ; $55c6: $c4 $99 $ef
    or b                                          ; $55c9: $b0
    rst $38                                       ; $55ca: $ff
    rst $18                                       ; $55cb: $df
    dec bc                                        ; $55cc: $0b
    and b                                         ; $55cd: $a0
    db $e4                                        ; $55ce: $e4
    add d                                         ; $55cf: $82

Call_03d_55d0:
    ld l, a                                       ; $55d0: $6f
    sbc l                                         ; $55d1: $9d
    push bc                                       ; $55d2: $c5
    ld [hl], c                                    ; $55d3: $71
    sub c                                         ; $55d4: $91
    ld c, b                                       ; $55d5: $48
    add hl, de                                    ; $55d6: $19
    ld [hl], c                                    ; $55d7: $71
    add $11                                       ; $55d8: $c6 $11
    db $e3                                        ; $55da: $e3
    xor a                                         ; $55db: $af
    and h                                         ; $55dc: $a4
    xor $80                                       ; $55dd: $ee $80
    ld [de], a                                    ; $55df: $12
    ld e, e                                       ; $55e0: $5b
    sbc l                                         ; $55e1: $9d
    cp d                                          ; $55e2: $ba
    scf                                           ; $55e3: $37
    adc c                                         ; $55e4: $89
    sub c                                         ; $55e5: $91
    and [hl]                                      ; $55e6: $a6
    push de                                       ; $55e7: $d5
    adc l                                         ; $55e8: $8d
    jr jr_03d_563e                                ; $55e9: $18 $53

    ld h, a                                       ; $55eb: $67
    sbc l                                         ; $55ec: $9d
    ld c, c                                       ; $55ed: $49
    inc [hl]                                      ; $55ee: $34
    db $f4                                        ; $55ef: $f4
    sub h                                         ; $55f0: $94
    sub l                                         ; $55f1: $95
    call nc, $0e85                                ; $55f2: $d4 $85 $0e
    ld h, e                                       ; $55f5: $63
    ld [$000d], a                                 ; $55f6: $ea $0d $00
    cp l                                          ; $55f9: $bd
    jr nc, @+$54                                  ; $55fa: $30 $52

    rst $20                                       ; $55fc: $e7
    add hl, sp                                    ; $55fd: $39
    sub $21                                       ; $55fe: $d6 $21
    ei                                            ; $5600: $fb
    cp a                                          ; $5601: $bf
    adc h                                         ; $5602: $8c
    ld h, l                                       ; $5603: $65
    sbc l                                         ; $5604: $9d
    ld b, a                                       ; $5605: $47
    adc e                                         ; $5606: $8b
    ld h, e                                       ; $5607: $63
    inc h                                         ; $5608: $24
    ld a, h                                       ; $5609: $7c
    and c                                         ; $560a: $a1
    and h                                         ; $560b: $a4
    and c                                         ; $560c: $a1
    and a                                         ; $560d: $a7
    ld d, h                                       ; $560e: $54
    db $dd                                        ; $560f: $dd
    adc a                                         ; $5610: $8f
    jr jr_03d_5598                                ; $5611: $18 $85

    ret nc                                        ; $5613: $d0

    sra [hl]                                      ; $5614: $cb $2e
    ld a, [$0c99]                                 ; $5616: $fa $99 $0c
    ld a, a                                       ; $5619: $7f
    sbc [hl]                                      ; $561a: $9e
    dec hl                                        ; $561b: $2b
    cp a                                          ; $561c: $bf
    sbc $af                                       ; $561d: $de $af
    ld a, a                                       ; $561f: $7f
    cpl                                           ; $5620: $2f
    jr nz, jr_03d_5688                            ; $5621: $20 $65

    rra                                           ; $5623: $1f
    ld c, h                                       ; $5624: $4c
    ld a, c                                       ; $5625: $79
    ld hl, sp+$2e                                 ; $5626: $f8 $2e
    db $fd                                        ; $5628: $fd
    ld a, [bc]                                    ; $5629: $0a
    pop de                                        ; $562a: $d1
    sub h                                         ; $562b: $94
    add a                                         ; $562c: $87
    cp c                                          ; $562d: $b9
    jp z, Jump_000_388f                           ; $562e: $ca $8f $38

    di                                            ; $5631: $f3
    dec e                                         ; $5632: $1d
    or $ff                                        ; $5633: $f6 $ff
    ld a, e                                       ; $5635: $7b
    ld bc, $5c94                                  ; $5636: $01 $94 $5c
    ldh a, [$ad]                                  ; $5639: $f0 $ad
    or e                                          ; $563b: $b3
    jr c, jr_03d_566c                             ; $563c: $38 $2e

jr_03d_563e:
    ld [de], a                                    ; $563e: $12
    add hl, hl                                    ; $563f: $29
    inc hl                                        ; $5640: $23
    adc $38                                       ; $5641: $ce $38
    ld h, d                                       ; $5643: $62
    db $fc                                        ; $5644: $fc
    sub l                                         ; $5645: $95
    call nc, Call_03d_501d                        ; $5646: $d4 $1d $50
    ld h, d                                       ; $5649: $62
    xor e                                         ; $564a: $ab
    ld d, e                                       ; $564b: $53
    rst $30                                       ; $564c: $f7
    ld h, $31                                     ; $564d: $26 $31
    jp nc, $bab4                                  ; $564f: $d2 $b4 $ba

    ld de, $ea63                                  ; $5652: $11 $63 $ea
    dec c                                         ; $5655: $0d
    nop                                           ; $5656: $00
    cp l                                          ; $5657: $bd
    jr nc, jr_03d_56ac                            ; $5658: $30 $52

    rst $20                                       ; $565a: $e7
    add hl, sp                                    ; $565b: $39
    sub $21                                       ; $565c: $d6 $21
    ei                                            ; $565e: $fb
    cp a                                          ; $565f: $bf
    adc h                                         ; $5660: $8c
    ld h, l                                       ; $5661: $65
    sbc l                                         ; $5662: $9d
    ld b, a                                       ; $5663: $47
    adc e                                         ; $5664: $8b
    ld h, e                                       ; $5665: $63
    inc h                                         ; $5666: $24
    ld a, h                                       ; $5667: $7c
    pop bc                                        ; $5668: $c1
    or a                                          ; $5669: $b7
    adc $e2                                       ; $566a: $ce $e2

jr_03d_566c:
    jr c, jr_03d_56d0                             ; $566c: $38 $62

    inc d                                         ; $566e: $14
    ld b, d                                       ; $566f: $42
    cpl                                           ; $5670: $2f
    cp e                                          ; $5671: $bb
    add sp, $67                                   ; $5672: $e8 $67
    ld [hl-], a                                   ; $5674: $32
    db $fc                                        ; $5675: $fc
    ld a, c                                       ; $5676: $79
    xor [hl]                                      ; $5677: $ae
    db $fc                                        ; $5678: $fc
    call z, $dfeb                                 ; $5679: $cc $eb $df
    dec bc                                        ; $567c: $0b
    ld c, b                                       ; $567d: $48
    reti                                          ; $567e: $d9


    rlca                                          ; $567f: $07
    ld d, e                                       ; $5680: $53
    ld a, [hl]                                    ; $5681: $7e
    or $ae                                        ; $5682: $f6 $ae
    cp d                                          ; $5684: $ba
    cp d                                          ; $5685: $ba
    jr nc, jr_03d_56fc                            ; $5686: $30 $74

jr_03d_5688:
    push de                                       ; $5688: $d5
    push de                                       ; $5689: $d5
    xor e                                         ; $568a: $ab
    db $fc                                        ; $568b: $fc
    adc b                                         ; $568c: $88
    inc sp                                        ; $568d: $33
    rst $18                                       ; $568e: $df
    ld h, c                                       ; $568f: $61
    rst $38                                       ; $5690: $ff
    cp a                                          ; $5691: $bf
    rla                                           ; $5692: $17
    ld b, b                                       ; $5693: $40
    ret                                           ; $5694: $c9


    dec b                                         ; $5695: $05
    rst $18                                       ; $5696: $df
    ld a, [hl-]                                   ; $5697: $3a
    adc e                                         ; $5698: $8b
    db $e3                                        ; $5699: $e3
    ld [hl+], a                                   ; $569a: $22
    sub c                                         ; $569b: $91
    ld [hl-], a                                   ; $569c: $32
    ld [c], a                                     ; $569d: $e2
    adc h                                         ; $569e: $8c
    inc hl                                        ; $569f: $23
    add $5f                                       ; $56a0: $c6 $5f
    ld c, c                                       ; $56a2: $49
    db $dd                                        ; $56a3: $dd
    ld bc, $b625                                  ; $56a4: $01 $25 $b6
    ld a, [hl-]                                   ; $56a7: $3a
    ld [hl], l                                    ; $56a8: $75
    ld l, a                                       ; $56a9: $6f
    ld [de], a                                    ; $56aa: $12
    inc hl                                        ; $56ab: $23

jr_03d_56ac:
    ld c, l                                       ; $56ac: $4d
    xor e                                         ; $56ad: $ab
    dec de                                        ; $56ae: $1b
    ld sp, $dea6                                  ; $56af: $31 $a6 $de
    nop                                           ; $56b2: $00
    ld bc, $bf2f                                  ; $56b3: $01 $2f $bf
    ld c, e                                       ; $56b6: $4b
    inc de                                        ; $56b7: $13
    ld [hl], a                                    ; $56b8: $77
    dec h                                         ; $56b9: $25
    ld e, a                                       ; $56ba: $5f
    dec bc                                        ; $56bb: $0b
    xor l                                         ; $56bc: $ad
    ldh a, [$85]                                  ; $56bd: $f0 $85
    add hl, hl                                    ; $56bf: $29
    ld d, e                                       ; $56c0: $53
    scf                                           ; $56c1: $37
    ld l, d                                       ; $56c2: $6a
    ld [hl], h                                    ; $56c3: $74
    ld hl, $ffd1                                  ; $56c4: $21 $d1 $ff

Jump_03d_56c7:
    xor b                                         ; $56c7: $a8
    ld d, c                                       ; $56c8: $51
    ld a, $12                                     ; $56c9: $3e $12
    ld l, d                                       ; $56cb: $6a
    ccf                                           ; $56cc: $3f
    rst $08                                       ; $56cd: $cf
    ld a, l                                       ; $56ce: $7d
    ccf                                           ; $56cf: $3f

jr_03d_56d0:
    ld a, d                                       ; $56d0: $7a
    ld h, c                                       ; $56d1: $61
    ld a, a                                       ; $56d2: $7f
    ld hl, sp+$42                                 ; $56d3: $f8 $42
    ld h, c                                       ; $56d5: $61
    db $dd                                        ; $56d6: $dd
    ld [hl], d                                    ; $56d7: $72
    cp a                                          ; $56d8: $bf
    ld a, [c]                                     ; $56d9: $f2
    inc sp                                        ; $56da: $33
    xor a                                         ; $56db: $af
    cp a                                          ; $56dc: $bf
    di                                            ; $56dd: $f3
    call nz, $5d5a                                ; $56de: $c4 $5a $5d
    db $dd                                        ; $56e1: $dd
    ret nc                                        ; $56e2: $d0

    and a                                         ; $56e3: $a7
    call z, $ee24                                 ; $56e4: $cc $24 $ee
    add h                                         ; $56e7: $84
    and e                                         ; $56e8: $a3
    rla                                           ; $56e9: $17
    ld a, [hl-]                                   ; $56ea: $3a
    adc h                                         ; $56eb: $8c
    xor c                                         ; $56ec: $a9
    scf                                           ; $56ed: $37
    nop                                           ; $56ee: $00
    ld bc, $3f2f                                  ; $56ef: $01 $2f $3f
    ld a, e                                       ; $56f2: $7b
    ld c, d                                       ; $56f3: $4a
    db $dd                                        ; $56f4: $dd
    ld [de], a                                    ; $56f5: $12
    cp c                                          ; $56f6: $b9
    di                                            ; $56f7: $f3
    db $e4                                        ; $56f8: $e4
    ld de, $c0a2                                  ; $56f9: $11 $a2 $c0

jr_03d_56fc:
    rla                                           ; $56fc: $17
    and [hl]                                      ; $56fd: $a6
    call z, $cbe9                                 ; $56fe: $cc $e9 $cb
    jp z, Jump_03d_5aaf                           ; $5701: $ca $af $5a

    ld l, h                                       ; $5704: $6c
    ld a, [hl]                                    ; $5705: $7e
    push bc                                       ; $5706: $c5
    ld d, $6a                                     ; $5707: $16 $6a
    and $f7                                       ; $5709: $e6 $f7
    ld h, l                                       ; $570b: $65
    call nz, Call_000_216a                        ; $570c: $c4 $6a $21
    add $17                                       ; $570f: $c6 $17

Call_03d_5711:
    push hl                                       ; $5711: $e5
    ld c, h                                       ; $5712: $4c
    ld [c], a                                     ; $5713: $e2
    ld e, b                                       ; $5714: $58
    ld d, [hl]                                    ; $5715: $56
    db $ed                                        ; $5716: $ed
    ld [$7c25], sp                                ; $5717: $08 $25 $7c
    and c                                         ; $571a: $a1
    or b                                          ; $571b: $b0
    ld l, [hl]                                    ; $571c: $6e
    cp c                                          ; $571d: $b9
    ld e, a                                       ; $571e: $5f
    ld sp, hl                                     ; $571f: $f9
    sbc c                                         ; $5720: $99
    rst $10                                       ; $5721: $d7
    rst $18                                       ; $5722: $df
    ld a, c                                       ; $5723: $79
    ld h, d                                       ; $5724: $62
    xor l                                         ; $5725: $ad
    xor [hl]                                      ; $5726: $ae
    ld l, [hl]                                    ; $5727: $6e
    add sp, $53                                   ; $5728: $e8 $53
    ld h, [hl]                                    ; $572a: $66
    ld [de], a                                    ; $572b: $12
    ld [hl], a                                    ; $572c: $77
    jp nz, $0bd1                                  ; $572d: $c2 $d1 $0b

    dec e                                         ; $5730: $1d
    add $d4                                       ; $5731: $c6 $d4
    dec de                                        ; $5733: $1b
    nop                                           ; $5734: $00
    cp l                                          ; $5735: $bd
    ld h, [hl]                                    ; $5736: $66
    rst $38                                       ; $5737: $ff
    ld [hl+], a                                   ; $5738: $22
    sub $05                                       ; $5739: $d6 $05
    ld h, h                                       ; $573b: $64
    adc h                                         ; $573c: $8c
    inc d                                         ; $573d: $14
    ld hl, sp-$3e                                 ; $573e: $f8 $c2
    sub h                                         ; $5740: $94
    xor c                                         ; $5741: $a9
    sbc e                                         ; $5742: $9b
    and a                                         ; $5743: $a7
    add $37                                       ; $5744: $c6 $37
    rst $28                                       ; $5746: $ef
    ld [hl], e                                    ; $5747: $73
    sub l                                         ; $5748: $95
    cpl                                           ; $5749: $2f
    add hl, hl                                    ; $574a: $29
    ldh a, [$85]                                  ; $574b: $f0 $85
    jp nz, $e5ba                                  ; $574d: $c2 $ba $e5

    ld a, [hl]                                    ; $5750: $7e

Jump_03d_5751:
    push hl                                       ; $5751: $e5
    ld h, a                                       ; $5752: $67
    ld e, [hl]                                    ; $5753: $5e
    ld a, a                                       ; $5754: $7f
    rst $20                                       ; $5755: $e7
    adc c                                         ; $5756: $89
    or l                                          ; $5757: $b5
    cp d                                          ; $5758: $ba
    cp d                                          ; $5759: $ba
    and c                                         ; $575a: $a1
    ld c, a                                       ; $575b: $4f
    sbc c                                         ; $575c: $99
    ld c, c                                       ; $575d: $49
    call c, $4789                                 ; $575e: $dc $89 $47
    cpl                                           ; $5761: $2f
    ld [hl], h                                    ; $5762: $74
    jr jr_03d_57b8                                ; $5763: $18 $53

    ld l, a                                       ; $5765: $6f
    nop                                           ; $5766: $00
    ld d, a                                       ; $5767: $57
    cpl                                           ; $5768: $2f
    ld c, h                                       ; $5769: $4c
    or c                                          ; $576a: $b1
    jr c, jr_03d_579b                             ; $576b: $38 $2e

    ld hl, sp-$7a                                 ; $576d: $f8 $86
    xor e                                         ; $576f: $ab
    cp $12                                        ; $5770: $fe $12

Jump_03d_5772:
    ld a, a                                       ; $5772: $7f
    or l                                          ; $5773: $b5
    inc sp                                        ; $5774: $33
    pop bc                                        ; $5775: $c1
    sbc h                                         ; $5776: $9c
    ld c, c                                       ; $5777: $49
    ld sp, hl                                     ; $5778: $f9
    ld a, [hl]                                    ; $5779: $7e
    ld e, h                                       ; $577a: $5c
    ld hl, sp-$0e                                 ; $577b: $f8 $f2
    swap b                                        ; $577d: $cb $30
    sub c                                         ; $577f: $91
    and d                                         ; $5780: $a2
    call c, Call_000_1d0f                         ; $5781: $dc $0f $1d
    dec [hl]                                      ; $5784: $35
    ld c, d                                       ; $5785: $4a
    ld [$ac88], a                                 ; $5786: $ea $88 $ac
    dec de                                        ; $5789: $1b
    sub h                                         ; $578a: $94
    ld a, [bc]                                    ; $578b: $0a
    ld e, a                                       ; $578c: $5f
    ld c, b                                       ; $578d: $48
    ret                                           ; $578e: $c9


    or c                                          ; $578f: $b1
    xor h                                         ; $5790: $ac
    ld l, [hl]                                    ; $5791: $6e
    ld e, d                                       ; $5792: $5a
    rst $20                                       ; $5793: $e7
    ld a, [hl+]                                   ; $5794: $2a
    ld e, a                                       ; $5795: $5f
    ld d, d                                       ; $5796: $52
    ld d, $be                                     ; $5797: $16 $be
    db $fc                                        ; $5799: $fc
    add d                                         ; $579a: $82

jr_03d_579b:
    ld l, a                                       ; $579b: $6f
    jr z, jr_03d_57c3                             ; $579c: $28 $25

    ld h, a                                       ; $579e: $67
    ld [de], a                                    ; $579f: $12
    ld d, a                                       ; $57a0: $57

jr_03d_57a1:
    ld d, d                                       ; $57a1: $52
    rst $30                                       ; $57a2: $f7
    ld [hl], l                                    ; $57a3: $75
    add e                                         ; $57a4: $83
    ld d, d                                       ; $57a5: $52
    pop hl                                        ; $57a6: $e1
    dec bc                                        ; $57a7: $0b
    add l                                         ; $57a8: $85
    ld [hl], l                                    ; $57a9: $75
    res 3, c                                      ; $57aa: $cb $99
    call nz, $c6f9                                ; $57ac: $c4 $f9 $c6
    cp $0b                                        ; $57af: $fe $0b
    dec e                                         ; $57b1: $1d
    add $d4                                       ; $57b2: $c6 $d4
    db $fd                                        ; $57b4: $fd
    ld a, [$d2b2]                                 ; $57b5: $fa $b2 $d2

jr_03d_57b8:
    ld c, d                                       ; $57b8: $4a
    pop hl                                        ; $57b9: $e1
    ld l, $4a                                     ; $57ba: $2e $4a
    add h                                         ; $57bc: $84
    ld a, [hl-]                                   ; $57bd: $3a
    add hl, de                                    ; $57be: $19
    ld h, e                                       ; $57bf: $63
    sub $37                                       ; $57c0: $d6 $37
    nop                                           ; $57c2: $00

Call_03d_57c3:
jr_03d_57c3:
    db $dd                                        ; $57c3: $dd
    adc $7b                                       ; $57c4: $ce $7b
    db $fc                                        ; $57c6: $fc
    sbc l                                         ; $57c7: $9d
    daa                                           ; $57c8: $27
    sub $ea                                       ; $57c9: $d6 $ea
    ld [$3e86], a                                 ; $57cb: $ea $86 $3e
    and l                                         ; $57ce: $a5
    rlca                                          ; $57cf: $07
    nop                                           ; $57d0: $00
    db $dd                                        ; $57d1: $dd
    cpl                                           ; $57d2: $2f
    ld [hl], c                                    ; $57d3: $71
    ld d, l                                       ; $57d4: $55
    ld a, e                                       ; $57d5: $7b
    or $00                                        ; $57d6: $f6 $00
    db $dd                                        ; $57d8: $dd
    ld a, d                                       ; $57d9: $7a
    rlca                                          ; $57da: $07
    rrca                                          ; $57db: $0f
    ld [$723f], sp                                ; $57dc: $08 $3f $72
    call nc, $af87                                ; $57df: $d4 $87 $af
    rst $08                                       ; $57e2: $cf
    sub a                                         ; $57e3: $97
    ld [$f6b4], a                                 ; $57e4: $ea $b4 $f6
    nop                                           ; $57e7: $00
    db $dd                                        ; $57e8: $dd
    ld [bc], a                                    ; $57e9: $02
    cp c                                          ; $57ea: $b9
    ret c                                         ; $57eb: $d8

    adc b                                         ; $57ec: $88
    sbc h                                         ; $57ed: $9c
    ld a, [hl-]                                   ; $57ee: $3a
    ld c, d                                       ; $57ef: $4a
    db $e4                                        ; $57f0: $e4
    adc h                                         ; $57f1: $8c
    ld a, e                                       ; $57f2: $7b
    db $f4                                        ; $57f3: $f4
    add hl, sp                                    ; $57f4: $39
    add a                                         ; $57f5: $87
    add hl, sp                                    ; $57f6: $39
    push hl                                       ; $57f7: $e5
    jp z, $a6af                                   ; $57f8: $ca $af $a6

    ret nc                                        ; $57fb: $d0

    db $10                                        ; $57fc: $10
    cp [hl]                                       ; $57fd: $be
    ld a, $5f                                     ; $57fe: $3e $5f
    xor d                                         ; $5800: $aa
    db $d3                                        ; $5801: $d3
    jp c, $0003                                   ; $5802: $da $03 $00

    db $dd                                        ; $5805: $dd
    db $ec                                        ; $5806: $ec
    jr nc, jr_03d_57a1                            ; $5807: $30 $98

    ld a, [c]                                     ; $5809: $f2
    dec e                                         ; $580a: $1d
    ld b, a                                       ; $580b: $47
    ld a, h                                       ; $580c: $7c
    ld hl, sp-$32                                 ; $580d: $f8 $ce
    inc de                                        ; $580f: $13
    ld l, e                                       ; $5810: $6b
    ld [hl], l                                    ; $5811: $75
    ld [hl], l                                    ; $5812: $75
    ld b, e                                       ; $5813: $43
    sbc a                                         ; $5814: $9f
    jp nc, $0003                                  ; $5815: $d2 $03 $00

    ld a, l                                       ; $5818: $7d
    adc b                                         ; $5819: $88
    xor c                                         ; $581a: $a9
    xor e                                         ; $581b: $ab
    cp a                                          ; $581c: $bf
    call z, $38e2                                 ; $581d: $cc $e2 $38
    call z, $8f41                                 ; $5820: $cc $41 $8f
    or [hl]                                       ; $5823: $b6
    dec bc                                        ; $5824: $0b
    inc l                                         ; $5825: $2c
    sub $18                                       ; $5826: $d6 $18
    and h                                         ; $5828: $a4
    inc [hl]                                      ; $5829: $34
    cp h                                          ; $582a: $bc
    ld bc, $ecdd                                  ; $582b: $01 $dd $ec
    ld e, a                                       ; $582e: $5f
    call nz, Call_03d_5f0a                        ; $582f: $c4 $0a $5f
    ret                                           ; $5832: $c9


    sub l                                         ; $5833: $95
    add h                                         ; $5834: $84
    db $e4                                        ; $5835: $e4
    dec [hl]                                      ; $5836: $35
    or d                                          ; $5837: $b2
    rlca                                          ; $5838: $07
    nop                                           ; $5839: $00
    ld a, l                                       ; $583a: $7d
    ld [hl], e                                    ; $583b: $73
    pop bc                                        ; $583c: $c1
    rst $28                                       ; $583d: $ef
    adc b                                         ; $583e: $88
    call $9b4f                                    ; $583f: $cd $4f $9b
    rst $08                                       ; $5842: $cf
    add l                                         ; $5843: $85
    xor c                                         ; $5844: $a9
    xor l                                         ; $5845: $ad
    ld d, e                                       ; $5846: $53
    jr c, @+$6f                                   ; $5847: $38 $6d

    cp b                                          ; $5849: $b8
    ret c                                         ; $584a: $d8

    ldh [$eb], a                                  ; $584b: $e0 $eb
    bit 1, d                                      ; $584d: $cb $4a
    dec hl                                        ; $584f: $2b
    add l                                         ; $5850: $85
    scf                                           ; $5851: $37
    nop                                           ; $5852: $00
    db $dd                                        ; $5853: $dd
    ld l, $71                                     ; $5854: $2e $71
    inc e                                         ; $5856: $1c
    db $eb                                        ; $5857: $eb
    or b                                          ; $5858: $b0
    pop de                                        ; $5859: $d1
    ld [hl], b                                    ; $585a: $70
    inc l                                         ; $585b: $2c
    db $eb                                        ; $585c: $eb
    inc a                                         ; $585d: $3c
    ld e, d                                       ; $585e: $5a
    inc e                                         ; $585f: $1c
    inc hl                                        ; $5860: $23
    ld a, e                                       ; $5861: $7b
    nop                                           ; $5862: $00
    ld a, l                                       ; $5863: $7d
    ld [hl], e                                    ; $5864: $73
    ld [hl], l                                    ; $5865: $75
    ld d, $6a                                     ; $5866: $16 $6a
    ld a, h                                       ; $5868: $7c
    cp c                                          ; $5869: $b9
    ld [hl], a                                    ; $586a: $77
    or c                                          ; $586b: $b1
    ld [hl], h                                    ; $586c: $74
    cp b                                          ; $586d: $b8
    cp d                                          ; $586e: $ba
    ret                                           ; $586f: $c9


    and e                                         ; $5870: $a3
    rst $08                                       ; $5871: $cf
    dec de                                        ; $5872: $1b
    nop                                           ; $5873: $00
    add c                                         ; $5874: $81
    dec c                                         ; $5875: $0d
    rst $00                                       ; $5876: $c7
    cp d                                          ; $5877: $ba
    di                                            ; $5878: $f3
    ld [bc], a                                    ; $5879: $02
    dec h                                         ; $587a: $25
    ld a, h                                       ; $587b: $7c
    db $dd                                        ; $587c: $dd
    xor b                                         ; $587d: $a8
    ld sp, $b987                                  ; $587e: $31 $87 $b9
    cpl                                           ; $5881: $2f
    sub c                                         ; $5882: $91
    ld a, [c]                                     ; $5883: $f2
    ld h, e                                       ; $5884: $63
    ld e, c                                       ; $5885: $59
    ld l, c                                       ; $5886: $69
    sbc [hl]                                      ; $5887: $9e
    ld a, [c]                                     ; $5888: $f2
    db $fd                                        ; $5889: $fd
    and c                                         ; $588a: $a1
    inc e                                         ; $588b: $1c
    ld [hl], c                                    ; $588c: $71
    push hl                                       ; $588d: $e5
    rla                                           ; $588e: $17
    ld a, [hl-]                                   ; $588f: $3a
    adc h                                         ; $5890: $8c
    xor $4d                                       ; $5891: $ee $4d
    or e                                          ; $5893: $b3
    push bc                                       ; $5894: $c5
    ld a, c                                       ; $5895: $79
    adc $de                                       ; $5896: $ce $de
    ld d, l                                       ; $5898: $55
    ld d, a                                       ; $5899: $57
    rla                                           ; $589a: $17
    add [hl]                                      ; $589b: $86
    xor [hl]                                      ; $589c: $ae
    cp d                                          ; $589d: $ba
    cp d                                          ; $589e: $ba
    rlca                                          ; $589f: $07
    nop                                           ; $58a0: $00
    db $dd                                        ; $58a1: $dd
    cpl                                           ; $58a2: $2f
    ld [hl], c                                    ; $58a3: $71
    ld d, l                                       ; $58a4: $55
    ld a, e                                       ; $58a5: $7b
    xor [hl]                                      ; $58a6: $ae
    ld a, e                                       ; $58a7: $7b
    ld l, a                                       ; $58a8: $6f
    db $db                                        ; $58a9: $db
    ld a, [hl-]                                   ; $58aa: $3a
    rla                                           ; $58ab: $17
    db $fc                                        ; $58ac: $fc
    add l                                         ; $58ad: $85
    jp hl                                         ; $58ae: $e9


    sbc e                                         ; $58af: $9b
    rst $08                                       ; $58b0: $cf
    add l                                         ; $58b1: $85
    xor a                                         ; $58b2: $af
    cpl                                           ; $58b3: $2f
    and e                                         ; $58b4: $a3
    add $ec                                       ; $58b5: $c6 $ec
    add hl, bc                                    ; $58b7: $09
    nop                                           ; $58b8: $00
    ld h, a                                       ; $58b9: $67
    dec sp                                        ; $58ba: $3b

Call_03d_58bb:
    ld h, d                                       ; $58bb: $62
    jp nz, $65f7                                  ; $58bc: $c2 $f7 $65

    dec [hl]                                      ; $58bf: $35
    ld sp, $9875                                  ; $58c0: $31 $75 $98
    xor e                                         ; $58c3: $ab
    halt                                          ; $58c4: $76
    ld e, h                                       ; $58c5: $5c
    ld h, b                                       ; $58c6: $60
    or c                                          ; $58c7: $b1
    add $20                                       ; $58c8: $c6 $20
    and l                                         ; $58ca: $a5
    pop hl                                        ; $58cb: $e1
    dec c                                         ; $58cc: $0d
    nop                                           ; $58cd: $00
    halt                                          ; $58ce: $76
    jr jr_03d_591d                                ; $58cf: $18 $4c

    ld sp, hl                                     ; $58d1: $f9
    adc [hl]                                      ; $58d2: $8e
    inc hl                                        ; $58d3: $23
    cp $0d                                        ; $58d4: $fe $0d
    nop                                           ; $58d6: $00
    rst $20                                       ; $58d7: $e7
    ret                                           ; $58d8: $c9


    sbc e                                         ; $58d9: $9b
    or $0a                                        ; $58da: $f6 $0a
    sbc a                                         ; $58dc: $9f
    db $fd                                        ; $58dd: $fd
    adc e                                         ; $58de: $8b
    ld e, b                                       ; $58df: $58
    rst $28                                       ; $58e0: $ef
    dec b                                         ; $58e1: $05
    ld a, [hl-]                                   ; $58e2: $3a
    ld c, d                                       ; $58e3: $4a
    db $e4                                        ; $58e4: $e4
    jp nz, Jump_000_1f97                          ; $58e5: $c2 $97 $1f

    set 7, [hl]                                   ; $58e8: $cb $fe
    ldh [$9c], a                                  ; $58ea: $e0 $9c
    push bc                                       ; $58ec: $c5
    ld [hl], c                                    ; $58ed: $71
    sub l                                         ; $58ee: $95
    ld b, [hl]                                    ; $58ef: $46
    db $e4                                        ; $58f0: $e4
    dec c                                         ; $58f1: $0d
    nop                                           ; $58f2: $00
    add c                                         ; $58f3: $81
    dec c                                         ; $58f4: $0d
    rst $00                                       ; $58f5: $c7
    cp d                                          ; $58f6: $ba
    di                                            ; $58f7: $f3
    ld [bc], a                                    ; $58f8: $02
    dec h                                         ; $58f9: $25
    ld a, h                                       ; $58fa: $7c
    db $dd                                        ; $58fb: $dd
    xor b                                         ; $58fc: $a8
    ld sp, $b987                                  ; $58fd: $31 $87 $b9
    cpl                                           ; $5900: $2f
    sub c                                         ; $5901: $91
    ld a, [c]                                     ; $5902: $f2
    ld h, e                                       ; $5903: $63
    ld e, c                                       ; $5904: $59
    ld l, c                                       ; $5905: $69
    sbc [hl]                                      ; $5906: $9e
    ld a, [c]                                     ; $5907: $f2
    db $fd                                        ; $5908: $fd
    and c                                         ; $5909: $a1
    inc e                                         ; $590a: $1c
    ld [hl], c                                    ; $590b: $71
    push hl                                       ; $590c: $e5
    rla                                           ; $590d: $17
    ld a, [hl-]                                   ; $590e: $3a
    adc h                                         ; $590f: $8c
    xor $4d                                       ; $5910: $ee $4d
    or e                                          ; $5912: $b3
    push bc                                       ; $5913: $c5
    ld a, c                                       ; $5914: $79
    xor $d2                                       ; $5915: $ee $d2
    xor a                                         ; $5917: $af
    db $10                                        ; $5918: $10
    ld c, l                                       ; $5919: $4d
    ld a, c                                       ; $591a: $79
    sbc b                                         ; $591b: $98

jr_03d_591c:
    dec a                                         ; $591c: $3d

jr_03d_591d:
    nop                                           ; $591d: $00
    db $dd                                        ; $591e: $dd
    cpl                                           ; $591f: $2f
    db $fd                                        ; $5920: $fd
    ld a, [bc]                                    ; $5921: $0a
    pop de                                        ; $5922: $d1
    sub h                                         ; $5923: $94
    add a                                         ; $5924: $87
    reti                                          ; $5925: $d9


    ld [hl], e                                    ; $5926: $73
    halt                                          ; $5927: $76
    cp d                                          ; $5928: $ba
    sub b                                         ; $5929: $90
    add hl, hl                                    ; $592a: $29
    or e                                          ; $592b: $b3
    jr c, jr_03d_591c                             ; $592c: $38 $ee

    inc a                                         ; $592e: $3c
    or c                                          ; $592f: $b1
    ld d, [hl]                                    ; $5930: $56
    ld d, a                                       ; $5931: $57
    scf                                           ; $5932: $37
    db $f4                                        ; $5933: $f4
    add hl, hl                                    ; $5934: $29
    scf                                           ; $5935: $37
    nop                                           ; $5936: $00
    halt                                          ; $5937: $76
    cp d                                          ; $5938: $ba
    jr nc, jr_03d_59a0                            ; $5939: $30 $65

    ld [hl], l                                    ; $593b: $75
    sbc e                                         ; $593c: $9b
    ld [hl], c                                    ; $593d: $71
    dec h                                         ; $593e: $25
    db $fc                                        ; $593f: $fc
    ld a, e                                       ; $5940: $7b
    sub a                                         ; $5941: $97
    ld de, $d8bd                                  ; $5942: $11 $bd $d8
    db $fc                                        ; $5945: $fc
    inc l                                         ; $5946: $2c
    adc [hl]                                      ; $5947: $8e
    dec bc                                        ; $5948: $0b
    ld a, [hl]                                    ; $5949: $7e
    add a                                         ; $594a: $87
    ld [hl-], a                                   ; $594b: $32
    sub e                                         ; $594c: $93
    xor b                                         ; $594d: $a8
    add h                                         ; $594e: $84
    ld e, h                                       ; $594f: $5c
    di                                            ; $5950: $f3
    add hl, sp                                    ; $5951: $39
    rst $08                                       ; $5952: $cf
    ld c, b                                       ; $5953: $48
    and h                                         ; $5954: $a4
    and h                                         ; $5955: $a4
    adc [hl]                                      ; $5956: $8e
    ld a, [$34c3]                                 ; $5957: $fa $c3 $34
    ld b, c                                       ; $595a: $41
    sbc $00                                       ; $595b: $de $00
    add c                                         ; $595d: $81
    ld l, l                                       ; $595e: $6d
    dec h                                         ; $595f: $25
    rla                                           ; $5960: $17
    ld [hl], h                                    ; $5961: $74
    sbc l                                         ; $5962: $9d
    ld b, [hl]                                    ; $5963: $46
    ld a, c                                       ; $5964: $79
    ld e, l                                       ; $5965: $5d
    sub b                                         ; $5966: $90
    ld h, $98                                     ; $5967: $26 $98
    ldh a, [rTIMA]                                ; $5969: $f0 $05
    cp a                                          ; $596b: $bf
    inc hl                                        ; $596c: $23
    ld [hl], $5f                                  ; $596d: $36 $5f
    and a                                         ; $596f: $a7
    ld l, $a4                                     ; $5970: $2e $a4
    ld hl, sp-$1a                                 ; $5972: $f8 $e6
    ld [hl], e                                    ; $5974: $73
    ld [hl], l                                    ; $5975: $75
    sub a                                         ; $5976: $97
    ld l, $74                                     ; $5977: $2e $74
    jr @+$55                                      ; $5979: $18 $53

    rst $30                                       ; $597b: $f7
    rlca                                          ; $597c: $07

Call_03d_597d:
    ldh [$0d], a                                  ; $597d: $e0 $0d
    nop                                           ; $597f: $00
    add c                                         ; $5980: $81
    dec c                                         ; $5981: $0d
    rst $00                                       ; $5982: $c7
    cp d                                          ; $5983: $ba
    di                                            ; $5984: $f3

Call_03d_5985:
    ld [bc], a                                    ; $5985: $02
    dec h                                         ; $5986: $25
    ld a, h                                       ; $5987: $7c
    db $dd                                        ; $5988: $dd
    xor b                                         ; $5989: $a8
    ld sp, $b987                                  ; $598a: $31 $87 $b9
    cpl                                           ; $598d: $2f
    sub c                                         ; $598e: $91
    ld a, [c]                                     ; $598f: $f2
    ld h, e                                       ; $5990: $63
    ld e, c                                       ; $5991: $59
    ld l, c                                       ; $5992: $69
    sbc [hl]                                      ; $5993: $9e
    ld a, [c]                                     ; $5994: $f2
    db $fd                                        ; $5995: $fd
    and c                                         ; $5996: $a1
    inc e                                         ; $5997: $1c
    ld [hl], c                                    ; $5998: $71
    push hl                                       ; $5999: $e5
    rla                                           ; $599a: $17
    ld a, [hl-]                                   ; $599b: $3a
    adc h                                         ; $599c: $8c
    xor $4d                                       ; $599d: $ee $4d
    or e                                          ; $599f: $b3

jr_03d_59a0:
    push bc                                       ; $59a0: $c5
    ld a, c                                       ; $59a1: $79
    ld l, $b0                                     ; $59a2: $2e $b0
    ld e, b                                       ; $59a4: $58
    ld h, e                                       ; $59a5: $63
    sub b                                         ; $59a6: $90
    jp nc, Jump_03d_5ef0                          ; $59a7: $d2 $f0 $5e

    cpl                                           ; $59aa: $2f
    or l                                          ; $59ab: $b5
    ld e, c                                       ; $59ac: $59
    sbc b                                         ; $59ad: $98
    ld [hl-], a                                   ; $59ae: $32
    adc e                                         ; $59af: $8b
    db $e3                                        ; $59b0: $e3
    or h                                          ; $59b1: $b4
    ld l, d                                       ; $59b2: $6a
    jr jr_03d_5a10                                ; $59b3: $18 $5b

    sbc l                                         ; $59b5: $9d
    ei                                            ; $59b6: $fb
    add e                                         ; $59b7: $83
    ld [hl], e                                    ; $59b8: $73
    ld h, $51                                     ; $59b9: $26 $51
    ld l, c                                       ; $59bb: $69
    ld e, h                                       ; $59bc: $5c
    ld l, h                                       ; $59bd: $6c
    sub l                                         ; $59be: $95
    add h                                         ; $59bf: $84
    cpl                                           ; $59c0: $2f
    or b                                          ; $59c1: $b0
    ld e, b                                       ; $59c2: $58
    ld h, e                                       ; $59c3: $63
    sub b                                         ; $59c4: $90
    jp nc, $d070                                  ; $59c5: $d2 $70 $d0

    db $e3                                        ; $59c8: $e3
    rst $28                                       ; $59c9: $ef
    and d                                         ; $59ca: $a2
    sbc a                                         ; $59cb: $9f
    ret                                           ; $59cc: $c9


    ldh a, [$e7]                                  ; $59cd: $f0 $e7
    cp c                                          ; $59cf: $b9
    ld a, [c]                                     ; $59d0: $f2
    inc sp                                        ; $59d1: $33
    xor a                                         ; $59d2: $af
    ld a, a                                       ; $59d3: $7f

Jump_03d_59d4:
    inc bc                                        ; $59d4: $03
    cp l                                          ; $59d5: $bd
    inc de                                        ; $59d6: $13
    xor e                                         ; $59d7: $ab
    ld e, e                                       ; $59d8: $5b
    ld d, a                                       ; $59d9: $57
    rst $20                                       ; $59da: $e7
    db $eb                                        ; $59db: $eb
    call nc, $1711                                ; $59dc: $d4 $11 $17
    dec de                                        ; $59df: $1b
    ld a, h                                       ; $59e0: $7c
    or $2f                                        ; $59e1: $f6 $2f
    ld h, d                                       ; $59e3: $62
    add l                                         ; $59e4: $85
    xor a                                         ; $59e5: $af
    sbc e                                         ; $59e6: $9b
    ld [hl], l                                    ; $59e7: $75
    sbc b                                         ; $59e8: $98
    cp d                                          ; $59e9: $ba
    ldh [$eb], a                                  ; $59ea: $e0 $eb
    inc a                                         ; $59ec: $3c
    xor e                                         ; $59ed: $ab
    push hl                                       ; $59ee: $e5
    sbc l                                         ; $59ef: $9d
    ld a, a                                       ; $59f0: $7f
    sbc a                                         ; $59f1: $9f
    dec a                                         ; $59f2: $3d
    nop                                           ; $59f3: $00
    ld a, l                                       ; $59f4: $7d
    sbc h                                         ; $59f5: $9c
    add hl, bc                                    ; $59f6: $09
    cp [hl]                                       ; $59f7: $be
    ld c, $92                                     ; $59f8: $0e $92
    scf                                           ; $59fa: $37
    db $ed                                        ; $59fb: $ed
    dec d                                         ; $59fc: $15
    ld a, $fb                                     ; $59fd: $3e $fb
    rla                                           ; $59ff: $17
    or c                                          ; $5a00: $b1
    sbc $eb                                       ; $5a01: $de $eb
    dec d                                         ; $5a03: $15
    ld c, h                                       ; $5a04: $4c
    ld sp, hl                                     ; $5a05: $f9
    add hl, hl                                    ; $5a06: $29
    and l                                         ; $5a07: $a5
    dec bc                                        ; $5a08: $0b
    rst $30                                       ; $5a09: $f7
    rlca                                          ; $5a0a: $07
    ldh [rSCY], a                                 ; $5a0b: $e0 $42
    and [hl]                                      ; $5a0d: $a6
    ld d, b                                       ; $5a0e: $50
    rst $30                                       ; $5a0f: $f7

jr_03d_5a10:
    ld h, l                                       ; $5a10: $65
    ld a, a                                       ; $5a11: $7f
    ld [hl], b                                    ; $5a12: $70
    adc $e2                                       ; $5a13: $ce $e2
    cp b                                          ; $5a15: $b8
    ld c, d                                       ; $5a16: $4a
    inc hl                                        ; $5a17: $23
    ld a, [c]                                     ; $5a18: $f2
    ld b, $67                                     ; $5a19: $06 $67
    dec sp                                        ; $5a1b: $3b
    ld [c], a                                     ; $5a1c: $e2
    ld a, [de]                                    ; $5a1d: $1a
    ld b, [hl]                                    ; $5a1e: $46
    ld h, d                                       ; $5a1f: $62
    call z, Call_03d_597d                         ; $5a20: $cc $7d $59
    ld [hl], l                                    ; $5a23: $75
    jp $f02f                                      ; $5a24: $c3 $2f $f0


    dec b                                         ; $5a27: $05
    ld h, h                                       ; $5a28: $64
    adc h                                         ; $5a29: $8c
    sub h                                         ; $5a2a: $94
    ld a, e                                       ; $5a2b: $7b
    ld bc, $1c94                                  ; $5a2c: $01 $94 $1c
    dec [hl]                                      ; $5a2f: $35
    and $28                                       ; $5a30: $e6 $28
    cp a                                          ; $5a32: $bf
    add [hl]                                      ; $5a33: $86
    xor h                                         ; $5a34: $ac
    or h                                          ; $5a35: $b4
    ld hl, sp-$63                                 ; $5a36: $f8 $9d
    jp nz, $001b                                  ; $5a38: $c2 $1b $00

    add c                                         ; $5a3b: $81
    adc [hl]                                      ; $5a3c: $8e
    ld [de], a                                    ; $5a3d: $12
    cp c                                          ; $5a3e: $b9
    ldh a, [$e5]                                  ; $5a3f: $f0 $e5
    rst $00                                       ; $5a41: $c7
    or d                                          ; $5a42: $b2
    ccf                                           ; $5a43: $3f
    jr c, @+$69                                   ; $5a44: $38 $67

    ld [hl], c                                    ; $5a46: $71
    ld e, h                                       ; $5a47: $5c
    and l                                         ; $5a48: $a5
    ld de, $9f09                                  ; $5a49: $11 $09 $9f
    db $fd                                        ; $5a4c: $fd
    adc e                                         ; $5a4d: $8b
    ld e, b                                       ; $5a4e: $58
    rla                                           ; $5a4f: $17
    sub b                                         ; $5a50: $90
    ld sp, $ee52                                  ; $5a51: $31 $52 $ee
    dec b                                         ; $5a54: $05
    or [hl]                                       ; $5a55: $b6
    ld d, l                                       ; $5a56: $55

Jump_03d_5a57:
    inc e                                         ; $5a57: $1c
    ld c, e                                       ; $5a58: $4b
    add l                                         ; $5a59: $85
    ld a, [bc]                                    ; $5a5a: $0a
    sbc a                                         ; $5a5b: $9f

jr_03d_5a5c:
    add hl, hl                                    ; $5a5c: $29
    cpl                                           ; $5a5d: $2f
    ld a, c                                       ; $5a5e: $79
    inc bc                                        ; $5a5f: $03
    ld h, a                                       ; $5a60: $67
    dec sp                                        ; $5a61: $3b
    ld h, d                                       ; $5a62: $62
    sbc $f7                                       ; $5a63: $de $f7
    db $fd                                        ; $5a65: $fd
    ld h, l                                       ; $5a66: $65
    dec [hl]                                      ; $5a67: $35
    ld sp, $2575                                  ; $5a68: $31 $75 $25
    rla                                           ; $5a6b: $17
    db $e4                                        ; $5a6c: $e4
    ld a, [de]                                    ; $5a6d: $1a
    ld b, [hl]                                    ; $5a6e: $46

Call_03d_5a6f:
    ld h, d                                       ; $5a6f: $62
    ld a, h                                       ; $5a70: $7c
    sbc a                                         ; $5a71: $9f
    scf                                           ; $5a72: $37
    nop                                           ; $5a73: $00
    or $59                                        ; $5a74: $f6 $59
    ld e, $3e                                     ; $5a76: $1e $3e

jr_03d_5a78:
    ei                                            ; $5a78: $fb
    rla                                           ; $5a79: $17
    or c                                          ; $5a7a: $b1
    sbc $00                                       ; $5a7b: $de $00
    ld d, a                                       ; $5a7d: $57
    jr nc, jr_03d_5ae7                            ; $5a7e: $30 $67

    ld [hl], c                                    ; $5a80: $71
    inc e                                         ; $5a81: $1c
    dec [hl]                                      ; $5a82: $35
    halt                                          ; $5a83: $76
    jp hl                                         ; $5a84: $e9


    add d                                         ; $5a85: $82
    sub h                                         ; $5a86: $94
    and $f3                                       ; $5a87: $e6 $f3
    ld e, [hl]                                    ; $5a89: $5e
    rst $30                                       ; $5a8a: $f7
    ld c, e                                       ; $5a8b: $4b
    ld e, h                                       ; $5a8c: $5c
    and e                                         ; $5a8d: $a3
    ld d, b                                       ; $5a8e: $50
    ld h, a                                       ; $5a8f: $67
    ld [hl], c                                    ; $5a90: $71
    ld e, h                                       ; $5a91: $5c
    db $e4                                        ; $5a92: $e4
    adc h                                         ; $5a93: $8c
    inc de                                        ; $5a94: $13
    or $04                                        ; $5a95: $f6 $04
    db $dd                                        ; $5a97: $dd
    ld [bc], a                                    ; $5a98: $02
    ld l, l                                       ; $5a99: $6d
    ldh [$0b], a                                  ; $5a9a: $e0 $0b
    ld d, e                                       ; $5a9c: $53
    ld d, [hl]                                    ; $5a9d: $56
    db $fd                                        ; $5a9e: $fd
    sub l                                         ; $5a9f: $95
    sub h                                         ; $5aa0: $94
    ld e, $00                                     ; $5aa1: $1e $00
    cp l                                          ; $5aa3: $bd
    add d                                         ; $5aa4: $82
    add hl, hl                                    ; $5aa5: $29
    cp a                                          ; $5aa6: $bf
    ret z                                         ; $5aa7: $c8

    add hl, hl                                    ; $5aa8: $29
    ld sp, $e936                                  ; $5aa9: $31 $36 $e9
    jp nc, $ecd5                                  ; $5aac: $d2 $d5 $ec

Jump_03d_5aaf:
    sub a                                         ; $5aaf: $97
    ld [hl], d                                    ; $5ab0: $72
    inc bc                                        ; $5ab1: $03
    rst $20                                       ; $5ab2: $e7
    ret                                           ; $5ab3: $c9


    sbc e                                         ; $5ab4: $9b
    or $0a                                        ; $5ab5: $f6 $0a
    sbc a                                         ; $5ab7: $9f
    ld a, [c]                                     ; $5ab8: $f2
    ldh [$94], a                                  ; $5ab9: $e0 $94
    ld e, a                                       ; $5abb: $5f
    ld b, b                                       ; $5abc: $40
    sub $d5                                       ; $5abd: $d6 $d5
    ld b, d                                       ; $5abf: $42
    db $eb                                        ; $5ac0: $eb
    dec c                                         ; $5ac1: $0d
    nop                                           ; $5ac2: $00
    ld d, a                                       ; $5ac3: $57
    jr c, jr_03d_5a5c                             ; $5ac4: $38 $96

    ld a, [bc]                                    ; $5ac6: $0a
    ld h, a                                       ; $5ac7: $67
    call c, $cfa3                                 ; $5ac8: $dc $a3 $cf
    ld e, c                                       ; $5acb: $59
    ld e, h                                       ; $5acc: $5c
    and e                                         ; $5acd: $a3
    cp h                                          ; $5ace: $bc
    sbc $00                                       ; $5acf: $de $00
    ld a, l                                       ; $5ad1: $7d
    cp b                                          ; $5ad2: $b8
    cpl                                           ; $5ad3: $2f
    add h                                         ; $5ad4: $84
    inc h                                         ; $5ad5: $24
    rst $20                                       ; $5ad6: $e7
    add hl, sp                                    ; $5ad7: $39
    adc e                                         ; $5ad8: $8b
    db $e3                                        ; $5ad9: $e3
    add d                                         ; $5ada: $82
    ld l, a                                       ; $5adb: $6f
    ld a, l                                       ; $5adc: $7d
    ld e, l                                       ; $5add: $5d
    ld hl, sp-$06                                 ; $5ade: $f8 $fa
    ld a, $f7                                     ; $5ae0: $3e $f7
    xor e                                         ; $5ae2: $ab
    ld d, b                                       ; $5ae3: $50
    ld l, d                                       ; $5ae4: $6a
    sbc $00                                       ; $5ae5: $de $00

jr_03d_5ae7:
    db $dd                                        ; $5ae7: $dd
    adc $7b                                       ; $5ae8: $ce $7b
    ld a, h                                       ; $5aea: $7c
    db $dd                                        ; $5aeb: $dd
    ld e, c                                       ; $5aec: $59
    rst $00                                       ; $5aed: $c7
    inc l                                         ; $5aee: $2c
    or b                                          ; $5aef: $b0
    add hl, de                                    ; $5af0: $19
    jr jr_03d_5a78                                ; $5af1: $18 $85

    jp c, $0003                                   ; $5af3: $da $03 $00

    sub a                                         ; $5af6: $97
    jp nc, $0eb4                                  ; $5af7: $d2 $b4 $0e

    push af                                       ; $5afa: $f5
    ld d, h                                       ; $5afb: $54
    nop                                           ; $5afc: $00
    db $dd                                        ; $5afd: $dd
    db $ec                                        ; $5afe: $ec
    inc [hl]                                      ; $5aff: $34
    halt                                          ; $5b00: $76
    jp hl                                         ; $5b01: $e9


    ld h, d                                       ; $5b02: $62
    add $2f                                       ; $5b03: $c6 $2f
    dec [hl]                                      ; $5b05: $35
    ld sp, $c672                                  ; $5b06: $31 $72 $c6
    ret                                           ; $5b09: $c9


    ei                                            ; $5b0a: $fb
    db $ec                                        ; $5b0b: $ec
    ld bc, $7600                                  ; $5b0c: $01 $00 $76
    ld a, [de]                                    ; $5b0f: $1a
    rst $18                                       ; $5b10: $df
    rst $20                                       ; $5b11: $e7
    adc [hl]                                      ; $5b12: $8e
    sbc d                                         ; $5b13: $9a
    sbc l                                         ; $5b14: $9d
    push bc                                       ; $5b15: $c5
    or l                                          ; $5b16: $b5
    jr nc, jr_03d_5b1a                            ; $5b17: $30 $01

    rla                                           ; $5b19: $17

jr_03d_5b1a:
    ld [hl], a                                    ; $5b1a: $77
    ld a, [$2631]                                 ; $5b1b: $fa $31 $26
    nop                                           ; $5b1e: $00
    halt                                          ; $5b1f: $76
    ld l, b                                       ; $5b20: $68
    sbc d                                         ; $5b21: $9a
    add hl, hl                                    ; $5b22: $29
    add hl, de                                    ; $5b23: $19
    jp nc, $9fb7                                  ; $5b24: $d2 $b7 $9f

    rst $20                                       ; $5b27: $e7
    ld a, [de]                                    ; $5b28: $1a
    ld b, d                                       ; $5b29: $42
    ld b, d                                       ; $5b2a: $42
    rst $18                                       ; $5b2b: $df
    adc b                                         ; $5b2c: $88
    sub c                                         ; $5b2d: $91
    ld a, [bc]                                    ; $5b2e: $0a
    nop                                           ; $5b2f: $00
    rst $20                                       ; $5b30: $e7
    ld h, [hl]                                    ; $5b31: $66
    ld l, c                                       ; $5b32: $69
    cp c                                          ; $5b33: $b9
    ld a, $0f                                     ; $5b34: $3e $0f
    dec [hl]                                      ; $5b36: $35
    nop                                           ; $5b37: $00
    rst $20                                       ; $5b38: $e7
    ld h, [hl]                                    ; $5b39: $66
    ld l, c                                       ; $5b3a: $69

jr_03d_5b3b:
    cp c                                          ; $5b3b: $b9
    res 4, h                                      ; $5b3c: $cb $a4
    add l                                         ; $5b3e: $85
    and l                                         ; $5b3f: $a5
    add hl, de                                    ; $5b40: $19
    and a                                         ; $5b41: $a7
    nop                                           ; $5b42: $00
    rst $20                                       ; $5b43: $e7
    cp c                                          ; $5b44: $b9
    rla                                           ; $5b45: $17
    rst $38                                       ; $5b46: $ff
    or d                                          ; $5b47: $b2
    ldh a, [rNR51]                                ; $5b48: $f0 $25
    ld [hl], $ff                                  ; $5b4a: $36 $ff
    inc bc                                        ; $5b4c: $03
    ld a, l                                       ; $5b4d: $7d
    ld e, e                                       ; $5b4e: $5b
    add l                                         ; $5b4f: $85
    dec b                                         ; $5b50: $05
    nop                                           ; $5b51: $00
    halt                                          ; $5b52: $76
    or b                                          ; $5b53: $b0
    ld b, d                                       ; $5b54: $42
    ld c, d                                       ; $5b55: $4a
    inc hl                                        ; $5b56: $23
    sbc d                                         ; $5b57: $9a
    or $00                                        ; $5b58: $f6 $00
    add c                                         ; $5b5a: $81
    dec c                                         ; $5b5b: $0d
    cp d                                          ; $5b5c: $ba
    rst $10                                       ; $5b5d: $d7
    or a                                          ; $5b5e: $b7
    ld d, l                                       ; $5b5f: $55
    ld e, b                                       ; $5b60: $58
    nop                                           ; $5b61: $00
    add c                                         ; $5b62: $81
    call $28c0                                    ; $5b63: $cd $c0 $28
    ld d, h                                       ; $5b66: $54
    nop                                           ; $5b67: $00
    sub a                                         ; $5b68: $97
    ld d, d                                       ; $5b69: $52
    sbc e                                         ; $5b6a: $9b
    add $1b                                       ; $5b6b: $c6 $1b
    nop                                           ; $5b6d: $00
    ld a, l                                       ; $5b6e: $7d
    ld e, $6a                                     ; $5b6f: $1e $6a
    rrca                                          ; $5b71: $0f
    nop                                           ; $5b72: $00
    rst $20                                       ; $5b73: $e7
    ld a, [hl-]                                   ; $5b74: $3a
    ld c, d                                       ; $5b75: $4a
    rst $38                                       ; $5b76: $ff
    rlca                                          ; $5b77: $07
    rst $20                                       ; $5b78: $e7

Jump_03d_5b79:
    or b                                          ; $5b79: $b0
    sbc d                                         ; $5b7a: $9a
    xor b                                         ; $5b7b: $a8
    rrca                                          ; $5b7c: $0f
    nop                                           ; $5b7d: $00
    cp l                                          ; $5b7e: $bd
    and b                                         ; $5b7f: $a0
    ld d, [hl]                                    ; $5b80: $56
    sbc d                                         ; $5b81: $9a
    ld a, a                                       ; $5b82: $7f
    rrca                                          ; $5b83: $0f
    nop                                           ; $5b84: $00
    rst $20                                       ; $5b85: $e7
    ld a, [hl-]                                   ; $5b86: $3a
    xor [hl]                                      ; $5b87: $ae
    xor $82                                       ; $5b88: $ee $82
    sbc d                                         ; $5b8a: $9a
    ld a, c                                       ; $5b8b: $79
    nop                                           ; $5b8c: $00
    rst $20                                       ; $5b8d: $e7
    or b                                          ; $5b8e: $b0
    ld a, d                                       ; $5b8f: $7a
    ld [hl], l                                    ; $5b90: $75
    rla                                           ; $5b91: $17

jr_03d_5b92:
    call nc, $03cc                                ; $5b92: $d4 $cc $03
    ld h, a                                       ; $5b95: $67
    dec e                                         ; $5b96: $1d
    ld [hl], e                                    ; $5b97: $73
    call nc, $c759                                ; $5b98: $d4 $59 $c7
    ld c, $00                                     ; $5b9b: $0e $00

Jump_03d_5b9d:
    sub a                                         ; $5b9d: $97
    jr c, jr_03d_5b3b                             ; $5b9e: $38 $9b

    ld hl, sp-$6f                                 ; $5ba0: $f8 $91
    dec hl                                        ; $5ba2: $2b
    xor c                                         ; $5ba3: $a9
    add e                                         ; $5ba4: $83
    call c, $a463                                 ; $5ba5: $dc $63 $a4
    ld [bc], a                                    ; $5ba8: $02
    rst $20                                       ; $5ba9: $e7
    cp c                                          ; $5baa: $b9
    rst $00                                       ; $5bab: $c7
    ld c, b                                       ; $5bac: $48
    sbc l                                         ; $5bad: $9d
    rst $20                                       ; $5bae: $e7
    jp nz, Jump_000_32c6                          ; $5baf: $c2 $c6 $32

    rst $08                                       ; $5bb2: $cf
    ld a, c                                       ; $5bb3: $79
    ld a, c                                       ; $5bb4: $79
    ret z                                         ; $5bb5: $c8

    ld d, $01                                     ; $5bb6: $16 $01
    rst $20                                       ; $5bb8: $e7
    cp c                                          ; $5bb9: $b9
    rst $00                                       ; $5bba: $c7
    ld c, b                                       ; $5bbb: $48
    sbc l                                         ; $5bbc: $9d
    cp d                                          ; $5bbd: $ba
    sub b                                         ; $5bbe: $90
    jp nc, $a852                                  ; $5bbf: $d2 $52 $a8

    nop                                           ; $5bc2: $00
    rst $20                                       ; $5bc3: $e7
    cp c                                          ; $5bc4: $b9
    rst $00                                       ; $5bc5: $c7
    ld c, b                                       ; $5bc6: $48
    sbc l                                         ; $5bc7: $9d
    rst $20                                       ; $5bc8: $e7
    and b                                         ; $5bc9: $a0
    rla                                           ; $5bca: $17
    ld sp, hl                                     ; $5bcb: $f9
    ld a, c                                       ; $5bcc: $79
    adc $cb                                       ; $5bcd: $ce $cb
    ld b, e                                       ; $5bcf: $43
    or [hl]                                       ; $5bd0: $b6
    ld [$e700], sp                                ; $5bd1: $08 $00 $e7
    cp c                                          ; $5bd4: $b9
    rst $00                                       ; $5bd5: $c7
    ld c, b                                       ; $5bd6: $48
    ld e, l                                       ; $5bd7: $5d
    rla                                           ; $5bd8: $17
    call nc, $150a                                ; $5bd9: $d4 $0a $15
    nop                                           ; $5bdc: $00
    rst $20                                       ; $5bdd: $e7
    cp c                                          ; $5bde: $b9
    rst $00                                       ; $5bdf: $c7
    ld c, b                                       ; $5be0: $48
    ld e, l                                       ; $5be1: $5d
    db $fd                                        ; $5be2: $fd
    ld d, b                                       ; $5be3: $50
    ld a, [hl+]                                   ; $5be4: $2a
    nop                                           ; $5be5: $00
    rst $20                                       ; $5be6: $e7
    cp c                                          ; $5be7: $b9
    rst $00                                       ; $5be8: $c7
    ld c, b                                       ; $5be9: $48

jr_03d_5bea:
    ld e, l                                       ; $5bea: $5d
    db $ed                                        ; $5beb: $ed
    ld e, b                                       ; $5bec: $58
    pop hl                                        ; $5bed: $e1
    sub c                                         ; $5bee: $91
    sub l                                         ; $5bef: $95
    sub a                                         ; $5bf0: $97
    ld d, $1f                                     ; $5bf1: $16 $1f
    nop                                           ; $5bf3: $00
    sub a                                         ; $5bf4: $97
    jr c, jr_03d_5b92                             ; $5bf5: $38 $9b

    ld hl, sp-$6f                                 ; $5bf7: $f8 $91
    ld h, e                                       ; $5bf9: $63
    sbc c                                         ; $5bfa: $99
    ld h, [hl]                                    ; $5bfb: $66
    db $dd                                        ; $5bfc: $dd
    ld de, $024a                                  ; $5bfd: $11 $4a $02
    add c                                         ; $5c00: $81
    ld e, c                                       ; $5c01: $59
    ld [hl], a                                    ; $5c02: $77
    add h                                         ; $5c03: $84
    sub d                                         ; $5c04: $92
    dec bc                                        ; $5c05: $0b
    dec e                                         ; $5c06: $1d
    add $f6                                       ; $5c07: $c6 $f6
    sub b                                         ; $5c09: $90
    di                                            ; $5c0a: $f3
    add hl, bc                                    ; $5c0b: $09
    nop                                           ; $5c0c: $00
    add c                                         ; $5c0d: $81
    ld e, c                                       ; $5c0e: $59
    ld [hl], a                                    ; $5c0f: $77
    add h                                         ; $5c10: $84
    sub d                                         ; $5c11: $92
    dec bc                                        ; $5c12: $0b
    dec e                                         ; $5c13: $1d
    add $f6                                       ; $5c14: $c6 $f6
    sub b                                         ; $5c16: $90
    di                                            ; $5c17: $f3
    add hl, sp                                    ; $5c18: $39
    ld [hl], l                                    ; $5c19: $75
    ld hl, $a5a5                                  ; $5c1a: $21 $a5 $a5
    nop                                           ; $5c1d: $00
    add c                                         ; $5c1e: $81
    ld e, c                                       ; $5c1f: $59
    ld [hl], a                                    ; $5c20: $77
    add h                                         ; $5c21: $84
    sub d                                         ; $5c22: $92
    xor e                                         ; $5c23: $ab
    ld c, [hl]                                    ; $5c24: $4e
    sub c                                         ; $5c25: $91
    rst $30                                       ; $5c26: $f7
    add hl, bc                                    ; $5c27: $09
    nop                                           ; $5c28: $00
    add c                                         ; $5c29: $81
    ld e, c                                       ; $5c2a: $59
    ld [hl], a                                    ; $5c2b: $77
    add h                                         ; $5c2c: $84
    sub d                                         ; $5c2d: $92
    ld d, e                                       ; $5c2e: $53
    rla                                           ; $5c2f: $17
    ld d, d                                       ; $5c30: $52
    jp z, Jump_03d_56c7                           ; $5c31: $ca $c7 $56

    ld c, c                                       ; $5c34: $49
    nop                                           ; $5c35: $00
    add c                                         ; $5c36: $81
    ld e, c                                       ; $5c37: $59
    ld [hl], a                                    ; $5c38: $77
    add h                                         ; $5c39: $84
    sub d                                         ; $5c3a: $92
    di                                            ; $5c3b: $f3
    ld c, [hl]                                    ; $5c3c: $4e
    ld [hl], d                                    ; $5c3d: $72
    ld e, a                                       ; $5c3e: $5f
    ld h, d                                       ; $5c3f: $62
    ld [bc], a                                    ; $5c40: $02
    add c                                         ; $5c41: $81
    ld e, c                                       ; $5c42: $59
    ld [hl], a                                    ; $5c43: $77
    add h                                         ; $5c44: $84
    sub d                                         ; $5c45: $92
    or e                                          ; $5c46: $b3
    dec c                                         ; $5c47: $0d
    ld h, e                                       ; $5c48: $63

jr_03d_5c49:
    xor e                                         ; $5c49: $ab
    inc de                                        ; $5c4a: $13
    nop                                           ; $5c4b: $00
    sub a                                         ; $5c4c: $97
    jr c, jr_03d_5bea                             ; $5c4d: $38 $9b

    ld hl, sp-$6f                                 ; $5c4f: $f8 $91
    dec hl                                        ; $5c51: $2b

jr_03d_5c52:
    cp a                                          ; $5c52: $bf
    ld a, b                                       ; $5c53: $78
    nop                                           ; $5c54: $00
    ld [hl], $f3                                  ; $5c55: $36 $f3
    nop                                           ; $5c57: $00
    sub a                                         ; $5c58: $97
    dec e                                         ; $5c59: $1d
    add b                                         ; $5c5a: $80
    call $94fc                                    ; $5c5b: $cd $fc $94
    ld l, b                                       ; $5c5e: $68
    ld e, d                                       ; $5c5f: $5a
    add hl, hl                                    ; $5c60: $29
    ccf                                           ; $5c61: $3f
    rst $08                                       ; $5c62: $cf
    ld b, l                                       ; $5c63: $45
    ld sp, hl                                     ; $5c64: $f9
    adc $f7                                       ; $5c65: $ce $f7
    ld c, e                                       ; $5c67: $4b
    nop                                           ; $5c68: $00
    cp l                                          ; $5c69: $bd
    ccf                                           ; $5c6a: $3f
    db $fc                                        ; $5c6b: $fc
    ld a, c                                       ; $5c6c: $79
    xor [hl]                                      ; $5c6d: $ae
    ld h, c                                       ; $5c6e: $61
    and l                                         ; $5c6f: $a5
    ld d, c                                       ; $5c70: $51
    jr nc, jr_03d_5c74                            ; $5c71: $30 $01

    sub a                                         ; $5c73: $97

jr_03d_5c74:
    dec e                                         ; $5c74: $1d
    add b                                         ; $5c75: $80
    call $3cfc                                    ; $5c76: $cd $fc $3c
    rla                                           ; $5c79: $17
    push hl                                       ; $5c7a: $e5
    dec sp                                        ; $5c7b: $3b
    rst $18                                       ; $5c7c: $df

jr_03d_5c7d:
    cpl                                           ; $5c7d: $2f
    and a                                         ; $5c7e: $a7
    ld l, $a4                                     ; $5c7f: $2e $a4
    or h                                          ; $5c81: $b4
    inc d                                         ; $5c82: $14
    nop                                           ; $5c83: $00
    cp l                                          ; $5c84: $bd
    ccf                                           ; $5c85: $3f
    db $fc                                        ; $5c86: $fc
    ld a, c                                       ; $5c87: $79
    xor $7c                                       ; $5c88: $ee $7c
    xor h                                         ; $5c8a: $ac
    inc [hl]                                      ; $5c8b: $34
    ld a, [bc]                                    ; $5c8c: $0a
    and $02                                       ; $5c8d: $e6 $02
    ld e, l                                       ; $5c8f: $5d
    ld c, b                                       ; $5c90: $48
    ld l, c                                       ; $5c91: $69
    add hl, hl                                    ; $5c92: $29
    nop                                           ; $5c93: $00
    sub a                                         ; $5c94: $97
    dec e                                         ; $5c95: $1d
    add b                                         ; $5c96: $80
    call Call_000_3afc                            ; $5c97: $cd $fc $3a
    adc $bc                                       ; $5c9a: $ce $bc
    ld [hl], h                                    ; $5c9c: $74
    ld hl, $9700                                  ; $5c9d: $21 $00 $97
    dec e                                         ; $5ca0: $1d
    add b                                         ; $5ca1: $80
    call $3cfc                                    ; $5ca2: $cd $fc $3c
    ld d, a                                       ; $5ca5: $57
    ld hl, $a6c6                                  ; $5ca6: $21 $c6 $a6
    and $01                                       ; $5ca9: $e6 $01
    sub a                                         ; $5cab: $97

jr_03d_5cac:
    jr c, jr_03d_5c49                             ; $5cac: $38 $9b

    ld hl, sp-$6f                                 ; $5cae: $f8 $91
    ld h, e                                       ; $5cb0: $63
    sbc c                                         ; $5cb1: $99
    ld l, c                                       ; $5cb2: $69
    jr jr_03d_5c52                                ; $5cb3: $18 $9d

    ret c                                         ; $5cb5: $d8

    ld [hl+], a                                   ; $5cb6: $22
    nop                                           ; $5cb7: $00
    cp l                                          ; $5cb8: $bd
    dec de                                        ; $5cb9: $1b
    ld b, [hl]                                    ; $5cba: $46
    daa                                           ; $5cbb: $27
    or [hl]                                       ; $5cbc: $b6
    jr c, @-$2f                                   ; $5cbd: $38 $cf

    add hl, de                                    ; $5cbf: $19
    ld b, a                                       ; $5cc0: $47
    ld c, c                                       ; $5cc1: $49
    nop                                           ; $5cc2: $00
    cp l                                          ; $5cc3: $bd
    dec de                                        ; $5cc4: $1b
    ld b, [hl]                                    ; $5cc5: $46
    daa                                           ; $5cc6: $27
    or [hl]                                       ; $5cc7: $b6
    jr c, jr_03d_5cac                             ; $5cc8: $38 $e2

    ld a, [hl-]                                   ; $5cca: $3a
    adc [hl]                                      ; $5ccb: $8e
    ld hl, sp+$3a                                 ; $5ccc: $f8 $3a
    sub e                                         ; $5cce: $93
    add sp, -$65                                  ; $5ccf: $e8 $9b
    ld l, c                                       ; $5cd1: $69
    adc c                                         ; $5cd2: $89
    ld d, h                                       ; $5cd3: $54
    nop                                           ; $5cd4: $00
    cp l                                          ; $5cd5: $bd
    dec de                                        ; $5cd6: $1b
    ld b, [hl]                                    ; $5cd7: $46
    daa                                           ; $5cd8: $27
    or [hl]                                       ; $5cd9: $b6
    jr c, jr_03d_5c7d                             ; $5cda: $38 $a1

    ld [hl], $8d                                  ; $5cdc: $36 $8d
    ld b, h                                       ; $5cde: $44
    db $d3                                        ; $5cdf: $d3
    ld e, $00                                     ; $5ce0: $1e $00
    cp l                                          ; $5ce2: $bd
    dec de                                        ; $5ce3: $1b
    ld b, [hl]                                    ; $5ce4: $46
    daa                                           ; $5ce5: $27
    or [hl]                                       ; $5ce6: $b6
    cp b                                          ; $5ce7: $b8
    ld c, d                                       ; $5ce8: $4a
    add e                                         ; $5ce9: $83
    ld d, d                                       ; $5cea: $52
    ld d, d                                       ; $5ceb: $52
    inc de                                        ; $5cec: $13
    nop                                           ; $5ced: $00
    cp l                                          ; $5cee: $bd
    dec de                                        ; $5cef: $1b
    ld b, [hl]                                    ; $5cf0: $46
    daa                                           ; $5cf1: $27
    or [hl]                                       ; $5cf2: $b6
    jr c, @-$35                                   ; $5cf3: $38 $c9

    adc [hl]                                      ; $5cf5: $8e
    db $d3                                        ; $5cf6: $d3
    sbc b                                         ; $5cf7: $98
    nop                                           ; $5cf8: $00
    cp l                                          ; $5cf9: $bd
    dec de                                        ; $5cfa: $1b
    ld b, [hl]                                    ; $5cfb: $46
    daa                                           ; $5cfc: $27
    or [hl]                                       ; $5cfd: $b6
    cp b                                          ; $5cfe: $b8
    adc $6b                                       ; $5cff: $ce $6b
    ld l, h                                       ; $5d01: $6c
    or [hl]                                       ; $5d02: $b6
    ld [$9700], sp                                ; $5d03: $08 $00 $97
    jr c, @-$63                                   ; $5d06: $38 $9b

    ld hl, sp-$6f                                 ; $5d08: $f8 $91
    dec hl                                        ; $5d0a: $2b
    xor a                                         ; $5d0b: $af
    db $eb                                        ; $5d0c: $eb
    ld h, h                                       ; $5d0d: $64
    ld a, h                                       ; $5d0e: $7c
    dec b                                         ; $5d0f: $05
    ld h, a                                       ; $5d10: $67
    ld h, a                                       ; $5d11: $67
    ld a, h                                       ; $5d12: $7c
    sbc l                                         ; $5d13: $9d
    ld [de], a                                    ; $5d14: $12
    ld c, l                                       ; $5d15: $4d
    dec hl                                        ; $5d16: $2b
    push hl                                       ; $5d17: $e5
    dec d                                         ; $5d18: $15
    nop                                           ; $5d19: $00
    ld h, a                                       ; $5d1a: $67
    ld h, a                                       ; $5d1b: $67
    ld a, h                                       ; $5d1c: $7c
    sbc l                                         ; $5d1d: $9d
    cp d                                          ; $5d1e: $ba
    sub b                                         ; $5d1f: $90
    jp nc, $a852                                  ; $5d20: $d2 $52 $a8

    nop                                           ; $5d23: $00
    ld h, a                                       ; $5d24: $67
    ld h, a                                       ; $5d25: $67
    ld a, h                                       ; $5d26: $7c
    dec e                                         ; $5d27: $1d
    pop de                                        ; $5d28: $d1
    dec sp                                        ; $5d29: $3b
    and c                                         ; $5d2a: $a1
    ld l, c                                       ; $5d2b: $69
    cp $15                                        ; $5d2c: $fe $15
    nop                                           ; $5d2e: $00
    ld h, a                                       ; $5d2f: $67
    ld h, a                                       ; $5d30: $67
    ld a, h                                       ; $5d31: $7c
    sbc l                                         ; $5d32: $9d
    cp d                                          ; $5d33: $ba
    sub b                                         ; $5d34: $90
    ld d, d                                       ; $5d35: $52
    ld a, $b6                                     ; $5d36: $3e $b6
    jp z, $002b                                   ; $5d38: $ca $2b $00

    ld h, a                                       ; $5d3b: $67
    ld h, a                                       ; $5d3c: $67
    ld a, h                                       ; $5d3d: $7c
    ld e, l                                       ; $5d3e: $5d
    rst $20                                       ; $5d3f: $e7
    adc e                                         ; $5d40: $8b
    ld a, e                                       ; $5d41: $7b
    adc c                                         ; $5d42: $89

jr_03d_5d43:
    inc b                                         ; $5d43: $04
    ld h, a                                       ; $5d44: $67
    ld h, a                                       ; $5d45: $67
    ld a, h                                       ; $5d46: $7c
    sbc l                                         ; $5d47: $9d
    ld l, l                                       ; $5d48: $6d
    jr @+$5d                                      ; $5d49: $18 $5b

    db $fd                                        ; $5d4b: $fd
    ld a, [bc]                                    ; $5d4c: $0a
    nop                                           ; $5d4d: $00
    rla                                           ; $5d4e: $17
    dec [hl]                                      ; $5d4f: $35
    adc l                                         ; $5d50: $8d
    cp a                                          ; $5d51: $bf
    ld a, $1f                                     ; $5d52: $3e $1f
    add hl, hl                                    ; $5d54: $29
    db $ed                                        ; $5d55: $ed
    bit 7, d                                      ; $5d56: $cb $7a
    ld h, a                                       ; $5d58: $67
    ld hl, $12d4                                  ; $5d59: $21 $d4 $12
    nop                                           ; $5d5c: $00
    rla                                           ; $5d5d: $17
    dec [hl]                                      ; $5d5e: $35
    adc l                                         ; $5d5f: $8d
    ccf                                           ; $5d60: $3f
    ld d, e                                       ; $5d61: $53
    ld e, [hl]                                    ; $5d62: $5e
    xor c                                         ; $5d63: $a9
    nop                                           ; $5d64: $00
    rla                                           ; $5d65: $17
    dec [hl]                                      ; $5d66: $35
    adc l                                         ; $5d67: $8d
    ccf                                           ; $5d68: $3f
    rst $08                                       ; $5d69: $cf
    reti                                          ; $5d6a: $d9


    scf                                           ; $5d6b: $37
    ld c, d                                       ; $5d6c: $4a
    rst $20                                       ; $5d6d: $e7
    dec d                                         ; $5d6e: $15
    nop                                           ; $5d6f: $00
    rla                                           ; $5d70: $17
    or [hl]                                       ; $5d71: $b6
    jr c, jr_03d_5d43                             ; $5d72: $38 $cf

    push de                                       ; $5d74: $d5
    adc a                                         ; $5d75: $8f
    sub c                                         ; $5d76: $91
    ret c                                         ; $5d77: $d8

    ld [$8c46], a                                 ; $5d78: $ea $46 $8c

jr_03d_5d7b:
    add hl, sp                                    ; $5d7b: $39
    rst $08                                       ; $5d7c: $cf
    ld d, c                                       ; $5d7d: $51
    ld c, l                                       ; $5d7e: $4d
    halt                                          ; $5d7f: $76
    ld e, [hl]                                    ; $5d80: $5e
    ld bc, $6f01                                  ; $5d81: $01 $01 $6f
    ld h, b                                       ; $5d84: $60
    call z, Call_000_0d73                         ; $5d85: $cc $73 $0d
    or l                                          ; $5d88: $b5
    ld b, c                                       ; $5d89: $41
    ret c                                         ; $5d8a: $d8

    ld e, [hl]                                    ; $5d8b: $5e
    ld bc, $3e7d                                  ; $5d8c: $01 $7d $3e
    db $fc                                        ; $5d8f: $fc
    ld a, c                                       ; $5d90: $79
    adc [hl]                                      ; $5d91: $8e
    ld a, [de]                                    ; $5d92: $1a
    add l                                         ; $5d93: $85
    and l                                         ; $5d94: $a5
    cp h                                          ; $5d95: $bc
    ld [bc], a                                    ; $5d96: $02
    ld bc, $e814                                  ; $5d97: $01 $14 $e8
    db $eb                                        ; $5d9a: $eb
    add [hl]                                      ; $5d9b: $86
    add hl, bc                                    ; $5d9c: $09
    nop                                           ; $5d9d: $00
    cp l                                          ; $5d9e: $bd
    jr nc, jr_03d_5d7b                            ; $5d9f: $30 $da

    ld hl, sp-$74                                 ; $5da1: $f8 $8c
    add hl, bc                                    ; $5da3: $09
    nop                                           ; $5da4: $00
    ld bc, $9a69                                  ; $5da5: $01 $69 $9a
    dec l                                         ; $5da8: $2d
    adc $9e                                       ; $5da9: $ce $9e
    jp nc, Jump_03d_4ac9                          ; $5dab: $d2 $c9 $4a

    adc e                                         ; $5dae: $8b
    ld e, a                                       ; $5daf: $5f
    ld e, d                                       ; $5db0: $5a
    rst $38                                       ; $5db1: $ff
    rst $00                                       ; $5db2: $c7
    ld c, b                                       ; $5db3: $48
    nop                                           ; $5db4: $00
    rst $20                                       ; $5db5: $e7
    ret                                           ; $5db6: $c9


    db $e3                                        ; $5db7: $e3
    jp nz, $cd34                                  ; $5db8: $c2 $34 $cd

    ld d, $67                                     ; $5dbb: $16 $67
    ld c, a                                       ; $5dbd: $4f
    jp hl                                         ; $5dbe: $e9


    ld h, h                                       ; $5dbf: $64
    and l                                         ; $5dc0: $a5
    push bc                                       ; $5dc1: $c5
    cpl                                           ; $5dc2: $2f
    xor l                                         ; $5dc3: $ad
    rst $38                                       ; $5dc4: $ff
    ld h, e                                       ; $5dc5: $63
    inc h                                         ; $5dc6: $24
    nop                                           ; $5dc7: $00
    ld bc, $9a69                                  ; $5dc8: $01 $69 $9a
    dec l                                         ; $5dcb: $2d
    ld l, $48                                     ; $5dcc: $2e $48
    jp hl                                         ; $5dce: $e9


    inc [hl]                                      ; $5dcf: $34
    db $d3                                        ; $5dd0: $d3
    db $fc                                        ; $5dd1: $fc
    inc bc                                        ; $5dd2: $03
    ld bc, $9a69                                  ; $5dd3: $01 $69 $9a
    dec l                                         ; $5dd6: $2d
    xor [hl]                                      ; $5dd7: $ae
    jp nc, $d7e2                                  ; $5dd8: $d2 $e2 $d7

    dec c                                         ; $5ddb: $0d
    ld d, $00                                     ; $5ddc: $16 $00
    ld bc, $9a69                                  ; $5dde: $01 $69 $9a
    dec l                                         ; $5de1: $2d
    ld l, $6c                                     ; $5de2: $2e $6c
    dec [hl]                                      ; $5de4: $35
    ld sp, $62da                                  ; $5de5: $31 $da $62
    inc sp                                        ; $5de8: $33
    rrca                                          ; $5de9: $0f
    nop                                           ; $5dea: $00
    rst $20                                       ; $5deb: $e7
    ret                                           ; $5dec: $c9


    db $e3                                        ; $5ded: $e3
    jp nz, $cd34                                  ; $5dee: $c2 $34 $cd

    ld d, $17                                     ; $5df1: $16 $17
    or [hl]                                       ; $5df3: $b6
    sbc d                                         ; $5df4: $9a
    jr jr_03d_5e64                                ; $5df5: $18 $6d

    or c                                          ; $5df7: $b1
    sbc c                                         ; $5df8: $99
    rlca                                          ; $5df9: $07
    ld h, a                                       ; $5dfa: $67
    ld h, a                                       ; $5dfb: $67
    pop de                                        ; $5dfc: $d1
    rra                                           ; $5dfd: $1f
    adc h                                         ; $5dfe: $8c
    ld d, $17                                     ; $5dff: $16 $17
    and [hl]                                      ; $5e01: $a6
    ld l, c                                       ; $5e02: $69

Jump_03d_5e03:
    adc c                                         ; $5e03: $89
    ld d, h                                       ; $5e04: $54
    nop                                           ; $5e05: $00
    cp l                                          ; $5e06: $bd
    cp a                                          ; $5e07: $bf
    ld a, b                                       ; $5e08: $78
    ld c, d                                       ; $5e09: $4a
    ld l, $2c                                     ; $5e0a: $2e $2c
    add h                                         ; $5e0c: $84
    cp [hl]                                       ; $5e0d: $be
    ld d, e                                       ; $5e0e: $53
    ld [$bd00], sp                                ; $5e0f: $08 $00 $bd
    cp a                                          ; $5e12: $bf
    ld a, b                                       ; $5e13: $78
    ld c, d                                       ; $5e14: $4a
    adc $73                                       ; $5e15: $ce $73
    ld h, $3b                                     ; $5e17: $26 $3b
    ld b, d                                       ; $5e19: $42
    nop                                           ; $5e1a: $00
    cp l                                          ; $5e1b: $bd
    cp a                                          ; $5e1c: $bf
    ld a, b                                       ; $5e1d: $78
    ld c, d                                       ; $5e1e: $4a
    adc $73                                       ; $5e1f: $ce $73
    push hl                                       ; $5e21: $e5
    and e                                         ; $5e22: $a3
    dec l                                         ; $5e23: $2d
    ld [bc], a                                    ; $5e24: $02
    cp l                                          ; $5e25: $bd
    cp a                                          ; $5e26: $bf
    ld a, b                                       ; $5e27: $78
    ld c, d                                       ; $5e28: $4a
    adc $73                                       ; $5e29: $ce $73
    ld h, c                                       ; $5e2b: $61
    ld sp, hl                                     ; $5e2c: $f9
    ld hl, sp+$00                                 ; $5e2d: $f8 $00
    cp l                                          ; $5e2f: $bd
    cp a                                          ; $5e30: $bf
    ld a, b                                       ; $5e31: $78
    ld c, d                                       ; $5e32: $4a
    xor $5d                                       ; $5e33: $ee $5d
    call z, $2bba                                 ; $5e35: $cc $ba $2b
    ld [hl], $93                                  ; $5e38: $36 $93
    nop                                           ; $5e3a: $00
    rla                                           ; $5e3b: $17
    or l                                          ; $5e3c: $b5
    adc [hl]                                      ; $5e3d: $8e
    db $e4                                        ; $5e3e: $e4
    inc a                                         ; $5e3f: $3c
    rla                                           ; $5e40: $17
    and h                                         ; $5e41: $a4
    add hl, bc                                    ; $5e42: $09
    or [hl]                                       ; $5e43: $b6
    cp $a9                                        ; $5e44: $fe $a9
    nop                                           ; $5e46: $00
    rla                                           ; $5e47: $17
    or l                                          ; $5e48: $b5
    adc [hl]                                      ; $5e49: $8e
    and h                                         ; $5e4a: $a4
    adc $b3                                       ; $5e4b: $ce $b3
    call z, $2164                                 ; $5e4d: $cc $64 $21
    call nc, Call_000_0012                        ; $5e50: $d4 $12 $00
    rst $20                                       ; $5e53: $e7
    ld h, [hl]                                    ; $5e54: $66
    ld l, c                                       ; $5e55: $69
    cp c                                          ; $5e56: $b9
    res 4, h                                      ; $5e57: $cb $a4
    add l                                         ; $5e59: $85
    and l                                         ; $5e5a: $a5
    add hl, de                                    ; $5e5b: $19
    and a                                         ; $5e5c: $a7
    nop                                           ; $5e5d: $00
    rst $20                                       ; $5e5e: $e7
    ld h, [hl]                                    ; $5e5f: $66
    ld l, c                                       ; $5e60: $69
    cp c                                          ; $5e61: $b9
    ld a, $0f                                     ; $5e62: $3e $0f

jr_03d_5e64:
    dec [hl]                                      ; $5e64: $35
    nop                                           ; $5e65: $00
    cp l                                          ; $5e66: $bd
    db $dd                                        ; $5e67: $dd
    ld a, e                                       ; $5e68: $7b
    ld a, [bc]                                    ; $5e69: $0a
    ld h, $00                                     ; $5e6a: $26 $00
    rla                                           ; $5e6c: $17
    or l                                          ; $5e6d: $b5
    adc [hl]                                      ; $5e6e: $8e
    db $e4                                        ; $5e6f: $e4
    inc a                                         ; $5e70: $3c
    ld d, a                                       ; $5e71: $57
    ld a, a                                       ; $5e72: $7f
    pop af                                        ; $5e73: $f1
    call Call_03d_44b4                            ; $5e74: $cd $b4 $44
    ld a, [hl+]                                   ; $5e77: $2a
    nop                                           ; $5e78: $00
    ld d, a                                       ; $5e79: $57
    cp h                                          ; $5e7a: $bc
    or h                                          ; $5e7b: $b4
    ld hl, sp-$0d                                 ; $5e7c: $f8 $f3
    sbc h                                         ; $5e7e: $9c
    db $fd                                        ; $5e7f: $fd
    adc e                                         ; $5e80: $8b
    ld e, b                                       ; $5e81: $58
    ld bc, $6a76                                  ; $5e82: $01 $76 $6a
    or d                                          ; $5e85: $b2
    di                                            ; $5e86: $f3
    jp $fa94                                      ; $5e87: $c3 $94 $fa


    dec bc                                        ; $5e8a: $0b
    nop                                           ; $5e8b: $00
    cp l                                          ; $5e8c: $bd
    or e                                          ; $5e8d: $b3
    ld h, [hl]                                    ; $5e8e: $66
    call c, Call_000_27b1                         ; $5e8f: $dc $b1 $27
    ld e, $0d                                     ; $5e92: $1e $0d
    nop                                           ; $5e94: $00
    halt                                          ; $5e95: $76
    ld a, [de]                                    ; $5e96: $1a
    add l                                         ; $5e97: $85
    and l                                         ; $5e98: $a5
    db $fc                                        ; $5e99: $fc
    xor d                                         ; $5e9a: $aa
    dec e                                         ; $5e9b: $1d
    db $f4                                        ; $5e9c: $f4
    db $fd                                        ; $5e9d: $fd
    ld bc, $5b7d                                  ; $5e9e: $01 $7d $5b
    db $dd                                        ; $5ea1: $dd
    ld [hl], c                                    ; $5ea2: $71
    cp d                                          ; $5ea3: $ba
    ld h, e                                       ; $5ea4: $63
    adc a                                         ; $5ea5: $8f
    ld a, $fa                                     ; $5ea6: $3e $fa
    ld l, b                                       ; $5ea8: $68
    nop                                           ; $5ea9: $00
    sub a                                         ; $5eaa: $97
    cp [hl]                                       ; $5eab: $be
    ld c, l                                       ; $5eac: $4d
    rst $38                                       ; $5ead: $ff
    ld a, c                                       ; $5eae: $79
    xor $b5                                       ; $5eaf: $ee $b5
    jp c, $b3d6                                   ; $5eb1: $da $d6 $b3

    inc h                                         ; $5eb4: $24
    nop                                           ; $5eb5: $00
    cp l                                          ; $5eb6: $bd
    ldh a, [rSCX]                                 ; $5eb7: $f0 $43
    sub [hl]                                      ; $5eb9: $96
    inc b                                         ; $5eba: $04
    rla                                           ; $5ebb: $17
    ld c, e                                       ; $5ebc: $4b
    ld l, h                                       ; $5ebd: $6c
    ret nc                                        ; $5ebe: $d0

    db $eb                                        ; $5ebf: $eb
    sub h                                         ; $5ec0: $94
    and $15                                       ; $5ec1: $e6 $15
    nop                                           ; $5ec3: $00
    rst $20                                       ; $5ec4: $e7
    ret c                                         ; $5ec5: $d8

    sbc b                                         ; $5ec6: $98
    ld hl, sp+$75                                 ; $5ec7: $f8 $75
    ld [bc], a                                    ; $5ec9: $02
    cp l                                          ; $5eca: $bd
    ld a, [$fb11]                                 ; $5ecb: $fa $11 $fb
    dec h                                         ; $5ece: $25
    nop                                           ; $5ecf: $00
    sub a                                         ; $5ed0: $97
    cp [hl]                                       ; $5ed1: $be
    ld c, l                                       ; $5ed2: $4d
    rst $38                                       ; $5ed3: $ff
    ld a, c                                       ; $5ed4: $79
    xor [hl]                                      ; $5ed5: $ae
    ld a, [hl]                                    ; $5ed6: $7e
    db $f4                                        ; $5ed7: $f4
    jp nc, $a505                                  ; $5ed8: $d2 $05 $a5

    inc a                                         ; $5edb: $3c
    nop                                           ; $5edc: $00
    ld bc, $658d                                  ; $5edd: $01 $8d $65
    sbc [hl]                                      ; $5ee0: $9e
    db $eb                                        ; $5ee1: $eb
    ld h, h                                       ; $5ee2: $64
    sub $5a                                       ; $5ee3: $d6 $5a
    ld e, $21                                     ; $5ee5: $1e $21
    nop                                           ; $5ee7: $00
    ld bc, $bc07                                  ; $5ee8: $01 $07 $bc
    adc $73                                       ; $5eeb: $ce $73
    and c                                         ; $5eed: $a1
    and e                                         ; $5eee: $a3
    sbc b                                         ; $5eef: $98

Jump_03d_5ef0:
    and h                                         ; $5ef0: $a4
    add [hl]                                      ; $5ef1: $86
    ld [hl], $08                                  ; $5ef2: $36 $08
    nop                                           ; $5ef4: $00
    ld bc, $2a59                                  ; $5ef5: $01 $59 $2a
    add hl, sp                                    ; $5ef8: $39
    rst $08                                       ; $5ef9: $cf
    add l                                         ; $5efa: $85
    xor [hl]                                      ; $5efb: $ae
    add h                                         ; $5efc: $84
    add hl, bc                                    ; $5efd: $09
    nop                                           ; $5efe: $00
    rla                                           ; $5eff: $17
    rst $30                                       ; $5f00: $f7
    ld c, e                                       ; $5f01: $4b
    sbc l                                         ; $5f02: $9d
    rst $20                                       ; $5f03: $e7
    xor b                                         ; $5f04: $a8
    and $e5                                       ; $5f05: $e6 $e5
    dec sp                                        ; $5f07: $3b
    rst $18                                       ; $5f08: $df
    cpl                                           ; $5f09: $2f

Call_03d_5f0a:
    ld bc, $1dbd                                  ; $5f0a: $01 $bd $1d
    dec b                                         ; $5f0d: $05
    ld [hl], e                                    ; $5f0e: $73
    sbc [hl]                                      ; $5f0f: $9e
    db $eb                                        ; $5f10: $eb
    inc [hl]                                      ; $5f11: $34
    sub e                                         ; $5f12: $93
    add d                                         ; $5f13: $82
    dec l                                         ; $5f14: $2d
    ld bc, $b3bd                                  ; $5f15: $01 $bd $b3
    call nc, $94ad                                ; $5f18: $d4 $ad $94
    call nc, Call_03d_4e79                        ; $5f1b: $d4 $79 $4e
    add hl, hl                                    ; $5f1e: $29
    ld h, c                                       ; $5f1f: $61
    inc hl                                        ; $5f20: $23
    ld b, [hl]                                    ; $5f21: $46
    ld [bc], a                                    ; $5f22: $02
    ld bc, $5e8d                                  ; $5f23: $01 $8d $5e
    ld a, [hl]                                    ; $5f26: $7e
    dec e                                         ; $5f27: $1d
    or $cf                                        ; $5f28: $f6 $cf
    rla                                           ; $5f2a: $17
    nop                                           ; $5f2b: $00
    cp l                                          ; $5f2c: $bd
    dec e                                         ; $5f2d: $1d
    dec b                                         ; $5f2e: $05
    ld [hl], e                                    ; $5f2f: $73
    sbc [hl]                                      ; $5f30: $9e
    ld [hl], e                                    ; $5f31: $73
    ret c                                         ; $5f32: $d8

    ld c, h                                       ; $5f33: $4c
    ld a, [bc]                                    ; $5f34: $0a
    or [hl]                                       ; $5f35: $b6
    ld e, h                                       ; $5f36: $5c
    ld e, b                                       ; $5f37: $58
    ld a, $f2                                     ; $5f38: $3e $f2
    ld a, l                                       ; $5f3a: $7d
    ld [bc], a                                    ; $5f3b: $02
    rla                                           ; $5f3c: $17
    cp c                                          ; $5f3d: $b9
    ldh a, [$a5]                                  ; $5f3e: $f0 $a5
    dec a                                         ; $5f40: $3d
    nop                                           ; $5f41: $00
    cp l                                          ; $5f42: $bd
    adc h                                         ; $5f43: $8c
    dec l                                         ; $5f44: $2d
    or [hl]                                       ; $5f45: $b6
    sbc b                                         ; $5f46: $98
    nop                                           ; $5f47: $00
    rst $20                                       ; $5f48: $e7
    ret                                           ; $5f49: $c9


    ld b, e                                       ; $5f4a: $43
    ld a, h                                       ; $5f4b: $7c
    db $dd                                        ; $5f4c: $dd
    ld h, l                                       ; $5f4d: $65
    jp hl                                         ; $5f4e: $e9


    ld d, e                                       ; $5f4f: $53
    rla                                           ; $5f50: $17
    ld hl, sp-$63                                 ; $5f51: $f8 $9d
    inc d                                         ; $5f53: $14
    ld a, [hl+]                                   ; $5f54: $2a
    nop                                           ; $5f55: $00
    sub a                                         ; $5f56: $97
    ld a, $be                                     ; $5f57: $3e $be
    adc $73                                       ; $5f59: $ce $73
    ld h, $98                                     ; $5f5b: $26 $98
    ld h, $cb                                     ; $5f5d: $26 $cb
    ld b, a                                       ; $5f5f: $47
    ld [bc], a                                    ; $5f60: $02
    cp l                                          ; $5f61: $bd
    add e                                         ; $5f62: $83
    call Call_000_0214                            ; $5f63: $cd $14 $02
    halt                                          ; $5f66: $76
    ld [hl], l                                    ; $5f67: $75
    ld hl, sp-$08                                 ; $5f68: $f8 $f8
    cp $e7                                        ; $5f6a: $fe $e7
    add hl, sp                                    ; $5f6c: $39
    di                                            ; $5f6d: $f3
    push hl                                       ; $5f6e: $e5
    dec sp                                        ; $5f6f: $3b
    rst $18                                       ; $5f70: $df
    rst $38                                       ; $5f71: $ff
    ld bc, $af01                                  ; $5f72: $01 $01 $af
    sub c                                         ; $5f75: $91
    add l                                         ; $5f76: $85
    ld a, [hl-]                                   ; $5f77: $3a
    rst $08                                       ; $5f78: $cf
    sbc c                                         ; $5f79: $99
    cpl                                           ; $5f7a: $2f
    sbc [hl]                                      ; $5f7b: $9e
    sub d                                         ; $5f7c: $92
    nop                                           ; $5f7d: $00
    ld d, a                                       ; $5f7e: $57
    cp h                                          ; $5f7f: $bc
    or h                                          ; $5f80: $b4
    ld hl, sp+$3a                                 ; $5f81: $f8 $3a
    rst $08                                       ; $5f83: $cf
    add hl, bc                                    ; $5f84: $09
    and c                                         ; $5f85: $a1
    cpl                                           ; $5f86: $2f
    xor l                                         ; $5f87: $ad
    ccf                                           ; $5f88: $3f
    nop                                           ; $5f89: $00
    rla                                           ; $5f8a: $17
    db $fd                                        ; $5f8b: $fd
    ld l, $a2                                     ; $5f8c: $2e $a2
    add hl, bc                                    ; $5f8e: $09
    cp d                                          ; $5f8f: $ba
    cp $3f                                        ; $5f90: $fe $3f
    ld a, e                                       ; $5f92: $7b
    ld a, d                                       ; $5f93: $7a
    sbc b                                         ; $5f94: $98

Call_03d_5f95:
    dec c                                         ; $5f95: $0d
    ld [bc], a                                    ; $5f96: $02

Jump_03d_5f97:
    cp l                                          ; $5f97: $bd
    cp a                                          ; $5f98: $bf
    inc d                                         ; $5f99: $14
    or $b3                                        ; $5f9a: $f6 $b3
    push bc                                       ; $5f9c: $c5
    sbc l                                         ; $5f9d: $9d
    db $d3                                        ; $5f9e: $d3
    ld e, $4a                                     ; $5f9f: $1e $4a
    inc b                                         ; $5fa1: $04
    cp l                                          ; $5fa2: $bd
    inc de                                        ; $5fa3: $13
    reti                                          ; $5fa4: $d9


    cpl                                           ; $5fa5: $2f
    rla                                           ; $5fa6: $17
    ld e, $20                                     ; $5fa7: $1e $20
    and c                                         ; $5fa9: $a1
    sub e                                         ; $5faa: $93
    rlca                                          ; $5fab: $07
    sub a                                         ; $5fac: $97
    jp nc, Jump_03d_4424                          ; $5fad: $d2 $24 $44

    sbc a                                         ; $5fb0: $9f
    ld [bc], a                                    ; $5fb1: $02
    nop                                           ; $5fb2: $00
    cp l                                          ; $5fb3: $bd
    ld e, a                                       ; $5fb4: $5f
    ld a, [hl-]                                   ; $5fb5: $3a
    or [hl]                                       ; $5fb6: $b6
    ld [$0e00], sp                                ; $5fb7: $08 $00 $0e
    ld a, a                                       ; $5fba: $7f
    rst $20                                       ; $5fbb: $e7
    ld a, l                                       ; $5fbc: $7d
    add hl, hl                                    ; $5fbd: $29
    dec c                                         ; $5fbe: $0d
    rra                                           ; $5fbf: $1f
    nop                                           ; $5fc0: $00
    ld bc, $d5c5                                  ; $5fc1: $01 $c5 $d5
    ccf                                           ; $5fc4: $3f
    rst $08                                       ; $5fc5: $cf
    ld a, l                                       ; $5fc6: $7d
    add l                                         ; $5fc7: $85
    ld a, [de]                                    ; $5fc8: $1a
    push bc                                       ; $5fc9: $c5
    push af                                       ; $5fca: $f5
    rlca                                          ; $5fcb: $07
    ld bc, $e0ed                                  ; $5fcc: $01 $ed $e0
    adc a                                         ; $5fcf: $8f
    ccf                                           ; $5fd0: $3f
    rst $08                                       ; $5fd1: $cf
    ld d, l                                       ; $5fd2: $55
    scf                                           ; $5fd3: $37
    ld l, d                                       ; $5fd4: $6a
    ld a, h                                       ; $5fd5: $7c
    nop                                           ; $5fd6: $00
    halt                                          ; $5fd7: $76
    ld h, l                                       ; $5fd8: $65
    ld bc, $d592                                  ; $5fd9: $01 $92 $d5
    adc h                                         ; $5fdc: $8c
    rrca                                          ; $5fdd: $0f
    nop                                           ; $5fde: $00
    ld d, a                                       ; $5fdf: $57
    inc [hl]                                      ; $5fe0: $34
    or $fb                                        ; $5fe1: $f6 $fb
    sbc c                                         ; $5fe3: $99
    sub h                                         ; $5fe4: $94
    adc $c7                                       ; $5fe5: $ce $c7
    sbc a                                         ; $5fe7: $9f
    rst $20                                       ; $5fe8: $e7
    ld c, h                                       ; $5fe9: $4c
    ld d, $42                                     ; $5fea: $16 $42
    dec l                                         ; $5fec: $2d
    ld bc, $0ff6                                  ; $5fed: $01 $f6 $0f
    db $fd                                        ; $5ff0: $fd
    adc h                                         ; $5ff1: $8c
    ret nc                                        ; $5ff2: $d0

    ld d, b                                       ; $5ff3: $50
    ld d, [hl]                                    ; $5ff4: $56
    and c                                         ; $5ff5: $a1
    adc b                                         ; $5ff6: $88
    add e                                         ; $5ff7: $83
    ld e, [hl]                                    ; $5ff8: $5e
    ld bc, $1c27                                  ; $5ff9: $01 $27 $1c
    cp l                                          ; $5ffc: $bd
    sub b                                         ; $5ffd: $90
    ret c                                         ; $5ffe: $d8

    inc l                                         ; $5fff: $2c
    adc [hl]                                      ; $6000: $8e
    ld a, [bc]                                    ; $6001: $0a
    nop                                           ; $6002: $00
    rst $20                                       ; $6003: $e7
    sub l                                         ; $6004: $95
    db $ec                                        ; $6005: $ec
    and h                                         ; $6006: $a4
    xor [hl]                                      ; $6007: $ae
    cp b                                          ; $6008: $b8
    cp d                                          ; $6009: $ba
    ld h, c                                       ; $600a: $61
    ld l, d                                       ; $600b: $6a
    ld a, [hl+]                                   ; $600c: $2a
    nop                                           ; $600d: $00
    ld bc, $716f                                  ; $600e: $01 $6f $71
    adc h                                         ; $6011: $8c
    sbc h                                         ; $6012: $9c
    rst $20                                       ; $6013: $e7
    ld a, [$a57e]                                 ; $6014: $fa $7e $a5
    ld sp, hl                                     ; $6017: $f9
    rst $30                                       ; $6018: $f7
    nop                                           ; $6019: $00
    ld bc, $0f2f                                  ; $601a: $01 $2f $0f
    cp c                                          ; $601d: $b9
    rst $10                                       ; $601e: $d7
    ld a, c                                       ; $601f: $79
    adc $fe                                       ; $6020: $ce $fe
    ld hl, $1e69                                  ; $6022: $21 $69 $1e
    nop                                           ; $6025: $00
    ld bc, $5e8d                                  ; $6026: $01 $8d $5e
    ld a, [hl]                                    ; $6029: $7e
    rst $20                                       ; $602a: $e7
    or [hl]                                       ; $602b: $b6
    sub d                                         ; $602c: $92
    sbc d                                         ; $602d: $9a
    push de                                       ; $602e: $d5
    ld e, a                                       ; $602f: $5f
    nop                                           ; $6030: $00
    sub a                                         ; $6031: $97
    jp nc, $f8a4                                  ; $6032: $d2 $a4 $f8

    rst $30                                       ; $6035: $f7
    add hl, hl                                    ; $6036: $29
    rrca                                          ; $6037: $0f
    nop                                           ; $6038: $00
    halt                                          ; $6039: $76
    ld l, b                                       ; $603a: $68
    sbc d                                         ; $603b: $9a
    add hl, hl                                    ; $603c: $29
    add hl, de                                    ; $603d: $19
    jp nc, $9fb7                                  ; $603e: $d2 $b7 $9f

    rst $20                                       ; $6041: $e7
    ld a, [de]                                    ; $6042: $1a
    ld b, d                                       ; $6043: $42
    ld b, d                                       ; $6044: $42
    rst $18                                       ; $6045: $df
    adc b                                         ; $6046: $88
    sub c                                         ; $6047: $91
    ld a, [bc]                                    ; $6048: $0a
    nop                                           ; $6049: $00
    rst $20                                       ; $604a: $e7
    sub [hl]                                      ; $604b: $96
    ld [hl], a                                    ; $604c: $77
    pop af                                        ; $604d: $f1
    ld bc, $9517                                  ; $604e: $01 $17 $95
    xor a                                         ; $6051: $af
    ld [hl], b                                    ; $6052: $70
    ld e, a                                       ; $6053: $5f
    sbc $3f                                       ; $6054: $de $3f
    nop                                           ; $6056: $00
    add c                                         ; $6057: $81
    call $28c0                                    ; $6058: $cd $c0 $28
    ld d, h                                       ; $605b: $54
    nop                                           ; $605c: $00
    cp l                                          ; $605d: $bd
    add e                                         ; $605e: $83
    ld c, l                                       ; $605f: $4d
    jp Jump_03d_719f                              ; $6060: $c3 $9f $71


    ld a, [c]                                     ; $6063: $f2
    or c                                          ; $6064: $b1
    ld d, l                                       ; $6065: $55
    ld e, $00                                     ; $6066: $1e $00
    cp l                                          ; $6068: $bd
    ccf                                           ; $6069: $3f
    db $fc                                        ; $606a: $fc
    dec [hl]                                      ; $606b: $35
    xor h                                         ; $606c: $ac
    inc [hl]                                      ; $606d: $34
    ld l, l                                       ; $606e: $6d
    sbc l                                         ; $606f: $9d
    ld b, d                                       ; $6070: $42
    nop                                           ; $6071: $00
    cp l                                          ; $6072: $bd
    or e                                          ; $6073: $b3
    xor $34                                       ; $6074: $ee $34
    ld a, h                                       ; $6076: $7c
    db $d3                                        ; $6077: $d3
    ld l, h                                       ; $6078: $6c
    ld [hl], c                                    ; $6079: $71
    sbc [hl]                                      ; $607a: $9e

jr_03d_607b:
    inc sp                                        ; $607b: $33
    sub d                                         ; $607c: $92
    ld [hl], l                                    ; $607d: $75
    ld a, [hl+]                                   ; $607e: $2a
    nop                                           ; $607f: $00
    db $dd                                        ; $6080: $dd
    ld a, [$62e6]                                 ; $6081: $fa $e6 $62
    inc hl                                        ; $6084: $23
    ld d, d                                       ; $6085: $52
    sub a                                         ; $6086: $97
    sbc l                                         ; $6087: $9d
    ld a, [hl]                                    ; $6088: $7e
    adc h                                         ; $6089: $8c
    xor c                                         ; $608a: $a9
    dec a                                         ; $608b: $3d
    nop                                           ; $608c: $00
    cp l                                          ; $608d: $bd
    dec h                                         ; $608e: $25
    db $eb                                        ; $608f: $eb
    call nc, $ae79                                ; $6090: $d4 $79 $ae
    inc hl                                        ; $6093: $23
    xor [hl]                                      ; $6094: $ae
    rst $18                                       ; $6095: $df
    db $eb                                        ; $6096: $eb

jr_03d_6097:
    xor h                                         ; $6097: $ac
    xor e                                         ; $6098: $ab
    rra                                           ; $6099: $1f
    ld c, d                                       ; $609a: $4a
    ld e, l                                       ; $609b: $5d
    push af                                       ; $609c: $f5
    rst $10                                       ; $609d: $d7
    xor c                                         ; $609e: $a9
    xor c                                         ; $609f: $a9
    nop                                           ; $60a0: $00
    db $dd                                        ; $60a1: $dd
    cpl                                           ; $60a2: $2f
    rst $10                                       ; $60a3: $d7

Call_03d_60a4:
jr_03d_60a4:
    sub a                                         ; $60a4: $97
    ld d, c                                       ; $60a5: $51
    inc hl                                        ; $60a6: $23
    sub a                                         ; $60a7: $97
    sbc l                                         ; $60a8: $9d
    ld a, [hl]                                    ; $60a9: $7e
    adc h                                         ; $60aa: $8c
    reti                                          ; $60ab: $d9


    inc de                                        ; $60ac: $13
    nop                                           ; $60ad: $00
    or b                                          ; $60ae: $b0
    adc $3a                                       ; $60af: $ce $3a
    ld h, [hl]                                    ; $60b1: $66
    nop                                           ; $60b2: $00
    db $dd                                        ; $60b3: $dd
    ld a, [$c2e6]                                 ; $60b4: $fa $e6 $c2
    rst $10                                       ; $60b7: $d7
    rra                                           ; $60b8: $1f
    cp [hl]                                       ; $60b9: $be
    rst $38                                       ; $60ba: $ff
    ld e, $00                                     ; $60bb: $1e $00
    db $dd                                        ; $60bd: $dd
    ld [bc], a                                    ; $60be: $02
    inc e                                         ; $60bf: $1c
    dec a                                         ; $60c0: $3d
    ld [hl], l                                    ; $60c1: $75
    ld c, [hl]                                    ; $60c2: $4e
    ld e, a                                       ; $60c3: $5f
    ld c, d                                       ; $60c4: $4a
    adc $fa                                       ; $60c5: $ce $fa
    dec a                                         ; $60c7: $3d
    nop                                           ; $60c8: $00
    ld bc, $6d42                                  ; $60c9: $01 $42 $6d
    adc c                                         ; $60cc: $89
    ccf                                           ; $60cd: $3f
    db $e3                                        ; $60ce: $e3
    cp [hl]                                       ; $60cf: $be
    ld e, b                                       ; $60d0: $58
    ld e, h                                       ; $60d1: $5c
    and e                                         ; $60d2: $a3
    db $ec                                        ; $60d3: $ec
    db $ec                                        ; $60d4: $ec
    adc h                                         ; $60d5: $8c
    or [hl]                                       ; $60d6: $b6
    cp b                                          ; $60d7: $b8
    ldh a, [$e5]                                  ; $60d8: $f0 $e5
    ld h, a                                       ; $60da: $67
    ld [de], a                                    ; $60db: $12
    ld h, e                                       ; $60dc: $63
    ld b, e                                       ; $60dd: $43
    rst $30                                       ; $60de: $f7
    ld [hl], d                                    ; $60df: $72
    inc bc                                        ; $60e0: $03
    or $2f                                        ; $60e1: $f6 $2f
    ld h, d                                       ; $60e3: $62
    sbc l                                         ; $60e4: $9d
    ret nc                                        ; $60e5: $d0

    cp b                                          ; $60e6: $b8
    sub b                                         ; $60e7: $90
    ld a, [c]                                     ; $60e8: $f2
    dec sp                                        ; $60e9: $3b
    db $eb                                        ; $60ea: $eb
    sbc b                                         ; $60eb: $98
    dec b                                         ; $60ec: $05
    jr c, jr_03d_607b                             ; $60ed: $38 $8c

    cp c                                          ; $60ef: $b9
    jp $f0f4                                      ; $60f0: $c3 $f4 $f0


    ld a, c                                       ; $60f3: $79
    xor $52                                       ; $60f4: $ee $52
    ld l, d                                       ; $60f6: $6a
    db $d3                                        ; $60f7: $d3
    ld c, b                                       ; $60f8: $48
    inc [hl]                                      ; $60f9: $34
    db $ed                                        ; $60fa: $ed
    ld l, a                                       ; $60fb: $6f
    nop                                           ; $60fc: $00
    or $2f                                        ; $60fd: $f6 $2f
    ld h, d                                       ; $60ff: $62
    sbc l                                         ; $6100: $9d
    ret nc                                        ; $6101: $d0

    cp b                                          ; $6102: $b8
    sub b                                         ; $6103: $90
    ld a, [c]                                     ; $6104: $f2
    dec sp                                        ; $6105: $3b
    db $eb                                        ; $6106: $eb
    sbc b                                         ; $6107: $98
    dec b                                         ; $6108: $05
    jr c, jr_03d_6097                             ; $6109: $38 $8c

    xor c                                         ; $610b: $a9
    db $eb                                        ; $610c: $eb
    db $d3                                        ; $610d: $d3
    dec b                                         ; $610e: $05
    dec [hl]                                      ; $610f: $35
    sub e                                         ; $6110: $93
    ld a, d                                       ; $6111: $7a
    inc bc                                        ; $6112: $03
    db $dd                                        ; $6113: $dd
    ld [bc], a                                    ; $6114: $02
    ld e, [hl]                                    ; $6115: $5e
    ld l, b                                       ; $6116: $68
    jr c, jr_03d_60a4                             ; $6117: $38 $8b

    db $e3                                        ; $6119: $e3
    ret nc                                        ; $611a: $d0

    and c                                         ; $611b: $a1
    ld sp, hl                                     ; $611c: $f9
    add l                                         ; $611d: $85
    adc l                                         ; $611e: $8d
    ld [c], a                                     ; $611f: $e2
    add hl, sp                                    ; $6120: $39
    ld [hl], l                                    ; $6121: $75
    db $d3                                        ; $6122: $d3
    rst $28                                       ; $6123: $ef
    and h                                         ; $6124: $a4
    db $f4                                        ; $6125: $f4
    ret c                                         ; $6126: $d8

    ld c, $3b                                     ; $6127: $0e $3b
    ld [c], a                                     ; $6129: $e2
    xor h                                         ; $612a: $ac
    ld h, e                                       ; $612b: $63
    ld d, $18                                     ; $612c: $16 $18
    ld [hl], b                                    ; $612e: $70
    jr c, jr_03d_6131                             ; $612f: $38 $00

jr_03d_6131:
    db $dd                                        ; $6131: $dd
    ld a, [$5fb0]                                 ; $6132: $fa $b0 $5f
    jp z, $8e2c                                   ; $6135: $ca $2c $8e

    ld h, e                                       ; $6138: $63
    ld e, c                                       ; $6139: $59
    call Call_000_297e                            ; $613a: $cd $7e $29
    dec bc                                        ; $613d: $0b
    ld e, a                                       ; $613e: $5f
    inc hl                                        ; $613f: $23
    srl h                                         ; $6140: $cb $3c
    ld h, a                                       ; $6142: $67
    cp [hl]                                       ; $6143: $be
    ld a, h                                       ; $6144: $7c
    rst $20                                       ; $6145: $e7
    ei                                            ; $6146: $fb
    ld a, a                                       ; $6147: $7f

jr_03d_6148:
    adc a                                         ; $6148: $8f
    db $ed                                        ; $6149: $ed

Jump_03d_614a:
    or b                                          ; $614a: $b0
    inc hl                                        ; $614b: $23
    adc $3a                                       ; $614c: $ce $3a
    ld h, [hl]                                    ; $614e: $66
    add c                                         ; $614f: $81
    ld bc, $0387                                  ; $6150: $01 $87 $03
    db $dd                                        ; $6153: $dd
    db $ec                                        ; $6154: $ec
    inc [hl]                                      ; $6155: $34
    halt                                          ; $6156: $76
    dec l                                         ; $6157: $2d
    ld a, $ae                                     ; $6158: $3e $ae
    db $e3                                        ; $615a: $e3
    adc b                                         ; $615b: $88
    add hl, sp                                    ; $615c: $39
    adc e                                         ; $615d: $8b
    db $e3                                        ; $615e: $e3
    jr nc, jr_03d_6148                            ; $615f: $30 $e7

    reti                                          ; $6161: $d9


    rst $28                                       ; $6162: $ef
    ld [hl], l                                    ; $6163: $75
    ld hl, sp-$02                                 ; $6164: $f8 $fe
    ld a, e                                       ; $6166: $7b
    ld l, h                                       ; $6167: $6c
    add a                                         ; $6168: $87
    dec e                                         ; $6169: $1d
    ld [hl], c                                    ; $616a: $71
    sub $31                                       ; $616b: $d6 $31
    dec bc                                        ; $616d: $0b
    inc c                                         ; $616e: $0c
    jr c, @+$1e                                   ; $616f: $38 $1c

jr_03d_6171:
    nop                                           ; $6171: $00
    db $dd                                        ; $6172: $dd
    db $ec                                        ; $6173: $ec
    jp z, Jump_000_3bf4                           ; $6174: $ca $f4 $3b

    add hl, hl                                    ; $6177: $29
    and e                                         ; $6178: $a3
    xor [hl]                                      ; $6179: $ae
    ld a, [hl]                                    ; $617a: $7e
    ld [$aa6d], sp                                ; $617b: $08 $6d $aa
    sbc e                                         ; $617e: $9b
    ret                                           ; $617f: $c9


    ld e, $db                                     ; $6180: $1e $db
    ld h, c                                       ; $6182: $61
    ld b, a                                       ; $6183: $47
    sbc h                                         ; $6184: $9c
    ld [hl], l                                    ; $6185: $75
    call z, Call_000_0302                         ; $6186: $cc $02 $03
    ld c, $07                                     ; $6189: $0e $07

jr_03d_618b:
    db $dd                                        ; $618b: $dd
    ld l, $ca                                     ; $618c: $2e $ca
    push de                                       ; $618e: $d5
    db $ec                                        ; $618f: $ec
    sub a                                         ; $6190: $97
    ld [hl-], a                                   ; $6191: $32
    adc e                                         ; $6192: $8b
    db $e3                                        ; $6193: $e3
    add d                                         ; $6194: $82
    ld e, h                                       ; $6195: $5c
    jr z, jr_03d_6171                             ; $6196: $28 $d9

    ld a, c                                       ; $6198: $79
    sbc a                                         ; $6199: $9f

jr_03d_619a:
    dec a                                         ; $619a: $3d
    halt                                          ; $619b: $76
    ret c                                         ; $619c: $d8

    ld de, $1d67                                  ; $619d: $11 $67 $1d
    or e                                          ; $61a0: $b3
    ret nz                                        ; $61a1: $c0

    add b                                         ; $61a2: $80
    jp $dd01                                      ; $61a3: $c3 $01 $dd


    ld l, $ca                                     ; $61a6: $2e $ca
    push de                                       ; $61a8: $d5
    db $ec                                        ; $61a9: $ec
    sub a                                         ; $61aa: $97
    ld [hl-], a                                   ; $61ab: $32
    adc e                                         ; $61ac: $8b
    db $e3                                        ; $61ad: $e3
    add d                                         ; $61ae: $82
    ld e, h                                       ; $61af: $5c
    jr z, jr_03d_618b                             ; $61b0: $28 $d9

    ld a, c                                       ; $61b2: $79
    sbc a                                         ; $61b3: $9f
    dec a                                         ; $61b4: $3d
    halt                                          ; $61b5: $76
    ret c                                         ; $61b6: $d8

    ld de, $1d67                                  ; $61b7: $11 $67 $1d
    or e                                          ; $61ba: $b3
    ret nz                                        ; $61bb: $c0

    add b                                         ; $61bc: $80
    jp $8101                                      ; $61bd: $c3 $01 $81


    ld [hl], $00                                  ; $61c0: $36 $00
    ld a, l                                       ; $61c2: $7d
    inc de                                        ; $61c3: $13
    nop                                           ; $61c4: $00
    ld h, a                                       ; $61c5: $67
    dec e                                         ; $61c6: $1d
    or e                                          ; $61c7: $b3
    ld b, b                                       ; $61c8: $40
    inc bc                                        ; $61c9: $03
    nop                                           ; $61ca: $00
    add c                                         ; $61cb: $81
    ld b, $00                                     ; $61cc: $06 $00
    cp l                                          ; $61ce: $bd
    or e                                          ; $61cf: $b3
    ld c, $e5                                     ; $61d0: $0e $e5
    dec b                                         ; $61d2: $05
    nop                                           ; $61d3: $00
    ld d, a                                       ; $61d4: $57
    db $10                                        ; $61d5: $10
    dec a                                         ; $61d6: $3d
    dec b                                         ; $61d7: $05
    nop                                           ; $61d8: $00
    add c                                         ; $61d9: $81
    ld e, a                                       ; $61da: $5f
    sbc d                                         ; $61db: $9a
    nop                                           ; $61dc: $00
    cp l                                          ; $61dd: $bd
    cp a                                          ; $61de: $bf
    ld a, b                                       ; $61df: $78
    ld c, d                                       ; $61e0: $4a
    ld [$3202], a                                 ; $61e1: $ea $02 $32
    ld a, $44                                     ; $61e4: $3e $44
    nop                                           ; $61e6: $00
    ld h, a                                       ; $61e7: $67
    scf                                           ; $61e8: $37
    ld h, d                                       ; $61e9: $62
    add l                                         ; $61ea: $85
    ret c                                         ; $61eb: $d8

    ld a, h                                       ; $61ec: $7c
    xor $d7                                       ; $61ed: $ee $d7
    ei                                            ; $61ef: $fb
    adc e                                         ; $61f0: $8b
    and a                                         ; $61f1: $a7
    and h                                         ; $61f2: $a4
    ld l, $20                                     ; $61f3: $2e $20
    db $e3                                        ; $61f5: $e3
    ld b, e                                       ; $61f6: $43
    cp h                                          ; $61f7: $bc
    ld bc, $8d81                                  ; $61f8: $01 $81 $8d
    ld [hl], l                                    ; $61fb: $75
    jr z, jr_03d_619a                             ; $61fc: $28 $9c

    ret                                           ; $61fe: $c9


    ld a, [hl-]                                   ; $61ff: $3a
    sub h                                         ; $6200: $94
    xor a                                         ; $6201: $af
    ld d, e                                       ; $6202: $53
    rst $10                                       ; $6203: $d7
    ld [hl], c                                    ; $6204: $71
    call nz, Call_03d_4d5f                        ; $6205: $c4 $5f $4d
    ld sp, $c68f                                  ; $6208: $31 $8f $c6
    and $e7                                       ; $620b: $e6 $e7
    add hl, sp                                    ; $620d: $39
    dec h                                         ; $620e: $25
    db $e4                                        ; $620f: $e4
    ret nc                                        ; $6210: $d0

    rst $38                                       ; $6211: $ff
    ld [$04c7], a                                 ; $6212: $ea $c7 $04
    db $dd                                        ; $6215: $dd
    cpl                                           ; $6216: $2f
    ld [hl], c                                    ; $6217: $71
    ld d, l                                       ; $6218: $55
    rst $20                                       ; $6219: $e7
    xor c                                         ; $621a: $a9
    ld a, h                                       ; $621b: $7c
    db $ed                                        ; $621c: $ed
    add hl, bc                                    ; $621d: $09
    nop                                           ; $621e: $00
    sub a                                         ; $621f: $97
    db $e3                                        ; $6220: $e3
    cpl                                           ; $6221: $2f
    ld b, e                                       ; $6222: $43
    db $d3                                        ; $6223: $d3
    ld l, h                                       ; $6224: $6c
    ld [hl], c                                    ; $6225: $71
    ld c, d                                       ; $6226: $4a
    call nc, Call_000_2d37                        ; $6227: $d4 $37 $2d
    pop af                                        ; $622a: $f1
    res 7, l                                      ; $622b: $cb $bd
    xor $bd                                       ; $622d: $ee $bd
    ld a, [bc]                                    ; $622f: $0a
    sub h                                         ; $6230: $94
    xor e                                         ; $6231: $ab
    cp e                                          ; $6232: $bb
    or h                                          ; $6233: $b4
    daa                                           ; $6234: $27

Jump_03d_6235:
jr_03d_6235:
    nop                                           ; $6235: $00
    sub a                                         ; $6236: $97
    db $e3                                        ; $6237: $e3
    cpl                                           ; $6238: $2f
    inc h                                         ; $6239: $24
    cp $bd                                        ; $623a: $fe $bd
    xor $bd                                       ; $623c: $ee $bd
    ld a, [bc]                                    ; $623e: $0a
    sub h                                         ; $623f: $94
    xor e                                         ; $6240: $ab
    cp e                                          ; $6241: $bb
    or h                                          ; $6242: $b4
    daa                                           ; $6243: $27
    nop                                           ; $6244: $00
    halt                                          ; $6245: $76
    jp z, Jump_000_2f99                           ; $6246: $ca $99 $2f

    sbc [hl]                                      ; $6249: $9e
    sub d                                         ; $624a: $92
    inc sp                                        ; $624b: $33

Jump_03d_624c:
    adc [hl]                                      ; $624c: $8e
    ld a, [de]                                    ; $624d: $1a
    ld a, a                                       ; $624e: $7f
    ld h, a                                       ; $624f: $67
    dec e                                         ; $6250: $1d
    or e                                          ; $6251: $b3
    ld b, b                                       ; $6252: $40
    ld [hl], e                                    ; $6253: $73
    inc bc                                        ; $6254: $03
    cp l                                          ; $6255: $bd
    or e                                          ; $6256: $b3
    adc $51                                       ; $6257: $ce $51
    ld h, e                                       ; $6259: $63
    rst $10                                       ; $625a: $d7
    sbc h                                         ; $625b: $9c
    cp [hl]                                       ; $625c: $be
    ld c, a                                       ; $625d: $4f
    ld hl, sp+$22                                 ; $625e: $f8 $22
    rst $20                                       ; $6260: $e7
    ld e, a                                       ; $6261: $5f
    xor d                                         ; $6262: $aa
    xor $ac                                       ; $6263: $ee $ac
    ld h, e                                       ; $6265: $63
    ld d, $68                                     ; $6266: $16 $68
    ld l, [hl]                                    ; $6268: $6e
    nop                                           ; $6269: $00
    db $dd                                        ; $626a: $dd
    cpl                                           ; $626b: $2f
    sub e                                         ; $626c: $93
    adc a                                         ; $626d: $8f
    cp c                                          ; $626e: $b9
    jr nz, jr_03d_62be                            ; $626f: $20 $4d

    jr nc, jr_03d_62ee                            ; $6271: $30 $7b

    ld [bc], a                                    ; $6273: $02
    ld a, l                                       ; $6274: $7d
    ld [hl], e                                    ; $6275: $73
    or c                                          ; $6276: $b1
    ld de, $2ba9                                  ; $6277: $11 $a9 $2b
    call $9ae2                                    ; $627a: $cd $e2 $9a
    ld h, a                                       ; $627d: $67
    rst $38                                       ; $627e: $ff
    add l                                         ; $627f: $85
    cpl                                           ; $6280: $2f
    ccf                                           ; $6281: $3f
    ld l, d                                       ; $6282: $6a
    sbc $00                                       ; $6283: $de $00
    rst $20                                       ; $6285: $e7
    ld c, b                                       ; $6286: $48
    ld b, d                                       ; $6287: $42
    adc [hl]                                      ; $6288: $8e
    ld h, d                                       ; $6289: $62
    di                                            ; $628a: $f3
    db $eb                                        ; $628b: $eb
    db $e3                                        ; $628c: $e3
    ld c, d                                       ; $628d: $4a
    ret z                                         ; $628e: $c8

    jr nc, jr_03d_6235                            ; $628f: $30 $a4

    nop                                           ; $6291: $00
    cp l                                          ; $6292: $bd
    ret nc                                        ; $6293: $d0

    ld a, a                                       ; $6294: $7f
    sbc l                                         ; $6295: $9d
    cp d                                          ; $6296: $ba
    cpl                                           ; $6297: $2f
    ld d, b                                       ; $6298: $50
    adc [hl]                                      ; $6299: $8e
    ld l, d                                       ; $629a: $6a
    ld e, [hl]                                    ; $629b: $5e
    ld d, e                                       ; $629c: $53
    rst $20                                       ; $629d: $e7
    add hl, sp                                    ; $629e: $39
    adc l                                         ; $629f: $8d
    ld l, c                                       ; $62a0: $69
    ld h, b                                       ; $62a1: $60
    db $ec                                        ; $62a2: $ec
    add e                                         ; $62a3: $83
    add hl, hl                                    ; $62a4: $29
    cp a                                          ; $62a5: $bf
    cp d                                          ; $62a6: $ba
    ld l, c                                       ; $62a7: $69
    sbc l                                         ; $62a8: $9d
    rst $30                                       ; $62a9: $f7
    ld a, l                                       ; $62aa: $7d
    inc bc                                        ; $62ab: $03
    db $dd                                        ; $62ac: $dd
    cpl                                           ; $62ad: $2f
    ld [hl], c                                    ; $62ae: $71

Jump_03d_62af:
    ld d, l                                       ; $62af: $55
    rla                                           ; $62b0: $17
    dec de                                        ; $62b1: $1b
    sub c                                         ; $62b2: $91
    cp d                                          ; $62b3: $ba
    ldh a, [$e5]                                  ; $62b4: $f0 $e5
    ld d, a                                       ; $62b6: $57
    ld hl, $0a7a                                  ; $62b7: $21 $7a $0a
    and [hl]                                      ; $62ba: $a6
    or $04                                        ; $62bb: $f6 $04
    cp l                                          ; $62bd: $bd

jr_03d_62be:
    add d                                         ; $62be: $82
    add hl, hl                                    ; $62bf: $29

jr_03d_62c0:
    cp a                                          ; $62c0: $bf
    cp d                                          ; $62c1: $ba
    ld l, c                                       ; $62c2: $69
    sbc l                                         ; $62c3: $9d
    ld h, e                                       ; $62c4: $63
    sbc c                                         ; $62c5: $99
    add $34                                       ; $62c6: $c6 $34
    jr nc, jr_03d_62c0                            ; $62c8: $30 $f6

    add sp, $7f                                   ; $62ca: $e8 $7f
    ld e, a                                       ; $62cc: $5f
    and b                                         ; $62cd: $a0
    inc e                                         ; $62ce: $1c
    push de                                       ; $62cf: $d5
    cp h                                          ; $62d0: $bc
    and $7d                                       ; $62d1: $e6 $7d
    rst $18                                       ; $62d3: $df
    nop                                           ; $62d4: $00
    ld a, l                                       ; $62d5: $7d
    cp b                                          ; $62d6: $b8
    cpl                                           ; $62d7: $2f
    add h                                         ; $62d8: $84
    inc h                                         ; $62d9: $24
    rst $20                                       ; $62da: $e7
    add hl, sp                                    ; $62db: $39
    adc e                                         ; $62dc: $8b
    db $e3                                        ; $62dd: $e3
    add d                                         ; $62de: $82
    ld l, a                                       ; $62df: $6f
    ld a, l                                       ; $62e0: $7d
    sbc l                                         ; $62e1: $9d
    ret                                           ; $62e2: $c9


    ld a, [hl-]                                   ; $62e3: $3a
    sub h                                         ; $62e4: $94
    rst $30                                       ; $62e5: $f7
    cp c                                          ; $62e6: $b9
    cpl                                           ; $62e7: $2f
    ld d, b                                       ; $62e8: $50
    sbc $00                                       ; $62e9: $de $00
    halt                                          ; $62eb: $76
    ld a, [hl-]                                   ; $62ec: $3a
    add a                                         ; $62ed: $87

jr_03d_62ee:
    cp a                                          ; $62ee: $bf
    sub b                                         ; $62ef: $90
    ld hl, sp-$09                                 ; $62f0: $f8 $f7
    cp d                                          ; $62f2: $ba
    rlca                                          ; $62f3: $07
    ld [de], a                                    ; $62f4: $12
    ld [hl], d                                    ; $62f5: $72
    sub d                                         ; $62f6: $92
    or e                                          ; $62f7: $b3
    jr c, jr_03d_6308                             ; $62f8: $38 $0e

    ld [hl], e                                    ; $62fa: $73
    and $eb                                       ; $62fb: $e6 $eb
    ld c, [hl]                                    ; $62fd: $4e
    ld a, e                                       ; $62fe: $7b
    jp hl                                         ; $62ff: $e9


    jp nc, Jump_000_2e79                          ; $6300: $d2 $79 $2e

    jp $cd86                                      ; $6303: $c3 $86 $cd


    ld d, $7b                                     ; $6306: $16 $7b

jr_03d_6308:
    ld [bc], a                                    ; $6308: $02
    halt                                          ; $6309: $76
    ld h, l                                       ; $630a: $65
    and c                                         ; $630b: $a1
    ret nc                                        ; $630c: $d0

    or h                                          ; $630d: $b4
    inc e                                         ; $630e: $1c
    and [hl]                                      ; $630f: $a6
    call nc, Call_03d_465f                        ; $6310: $d4 $5f $46
    db $dd                                        ; $6313: $dd
    ld e, c                                       ; $6314: $59
    rst $00                                       ; $6315: $c7
    inc l                                         ; $6316: $2c
    ret nc                                        ; $6317: $d0

    call c, Call_03d_7d00                         ; $6318: $dc $00 $7d
    ld [hl], e                                    ; $631b: $73
    call nc, Call_03d_63a1                        ; $631c: $d4 $a1 $63
    dec h                                         ; $631f: $25
    rst $28                                       ; $6320: $ef
    ei                                            ; $6321: $fb
    sbc $65                                       ; $6322: $de $65
    sbc h                                         ; $6324: $9c
    ld a, a                                       ; $6325: $7f
    xor c                                         ; $6326: $a9
    cp d                                          ; $6327: $ba
    or e                                          ; $6328: $b3
    adc [hl]                                      ; $6329: $8e
    ld e, c                                       ; $632a: $59
    and b                                         ; $632b: $a0
    cp c                                          ; $632c: $b9
    ld bc, $eddd                                  ; $632d: $01 $dd $ed
    inc [hl]                                      ; $6330: $34
    ld a, [hl]                                    ; $6331: $7e
    sbc l                                         ; $6332: $9d
    ld a, [hl-]                                   ; $6333: $3a
    rst $08                                       ; $6334: $cf
    cp l                                          ; $6335: $bd
    ld [hl], c                                    ; $6336: $71
    inc d                                         ; $6337: $14
    sbc a                                         ; $6338: $9f
    dec a                                         ; $6339: $3d
    ld bc, $737d                                  ; $633a: $01 $7d $73
    or c                                          ; $633d: $b1
    ld de, $8ba9                                  ; $633e: $11 $a9 $8b
    adc a                                         ; $6341: $8f
    ld sp, $da75                                  ; $6342: $31 $75 $da
    inc c                                         ; $6345: $0c
    adc h                                         ; $6346: $8c
    ld b, d                                       ; $6347: $42
    cp l                                          ; $6348: $bd
    ld bc, $5fbd                                  ; $6349: $01 $bd $5f
    cp [hl]                                       ; $634c: $be
    ld h, [hl]                                    ; $634d: $66
    ld c, c                                       ; $634e: $49
    ld e, l                                       ; $634f: $5d
    and b                                         ; $6350: $a0
    add e                                         ; $6351: $83
    ld e, [hl]                                    ; $6352: $5e
    jp nz, Jump_03d_6ae2                          ; $6353: $c2 $e2 $6a

    nop                                           ; $6356: $00
    ld h, a                                       ; $6357: $67
    scf                                           ; $6358: $37
    ld h, d                                       ; $6359: $62
    add l                                         ; $635a: $85
    ret c                                         ; $635b: $d8

    ld a, h                                       ; $635c: $7c
    xor $d7                                       ; $635d: $ee $d7
    ei                                            ; $635f: $fb
    push hl                                       ; $6360: $e5
    ld l, e                                       ; $6361: $6b
    sub [hl]                                      ; $6362: $96
    call nc, $e9f5                                ; $6363: $d4 $f5 $e9
    add d                                         ; $6366: $82
    sbc d                                         ; $6367: $9a
    ld c, c                                       ; $6368: $49
    ld e, l                                       ; $6369: $5d
    and b                                         ; $636a: $a0
    add e                                         ; $636b: $83
    ld e, [hl]                                    ; $636c: $5e
    jp nz, Jump_03d_6ae2                          ; $636d: $c2 $e2 $6a

    nop                                           ; $6370: $00
    ld a, l                                       ; $6371: $7d
    ld [hl], e                                    ; $6372: $73
    ld [$7258], a                                 ; $6373: $ea $58 $72
    ld h, $eb                                     ; $6376: $26 $eb
    ld d, b                                       ; $6378: $50
    ld e, [hl]                                    ; $6379: $5e
    ld h, [hl]                                    ; $637a: $66
    ld e, [hl]                                    ; $637b: $5e
    cp [hl]                                       ; $637c: $be
    ld h, [hl]                                    ; $637d: $66
    ld c, c                                       ; $637e: $49
    cp l                                          ; $637f: $bd
    rst $28                                       ; $6380: $ef
    xor $16                                       ; $6381: $ee $16
    ld d, a                                       ; $6383: $57
    ld [hl], l                                    ; $6384: $75
    and l                                         ; $6385: $a5
    or b                                          ; $6386: $b0
    ld a, [c]                                     ; $6387: $f2
    jp c, Jump_000_0013                           ; $6388: $da $13 $00

    db $dd                                        ; $638b: $dd
    cpl                                           ; $638c: $2f
    ld [hl], c                                    ; $638d: $71
    ld d, l                                       ; $638e: $55
    rst $20                                       ; $638f: $e7
    xor c                                         ; $6390: $a9
    ld a, h                                       ; $6391: $7c
    db $ed                                        ; $6392: $ed
    add hl, bc                                    ; $6393: $09
    nop                                           ; $6394: $00
    db $dd                                        ; $6395: $dd
    ld l, $c7                                     ; $6396: $2e $c7
    sbc h                                         ; $6398: $9c
    rst $20                                       ; $6399: $e7
    ld [$aba6], a                                 ; $639a: $ea $a6 $ab

Jump_03d_639d:
    cp $4a                                        ; $639d: $fe $4a
    ld c, d                                       ; $639f: $4a
    adc e                                         ; $63a0: $8b

Call_03d_63a1:
    xor c                                         ; $63a1: $a9
    dec a                                         ; $63a2: $3d
    sub $bd                                       ; $63a3: $d6 $bd
    ld d, a                                       ; $63a5: $57
    add c                                         ; $63a6: $81
    ld [hl], d                                    ; $63a7: $72
    ld [hl], l                                    ; $63a8: $75
    sub a                                         ; $63a9: $97
    or $04                                        ; $63aa: $f6 $04
    ld h, a                                       ; $63ac: $67
    dec sp                                        ; $63ad: $3b
    ld h, d                                       ; $63ae: $62
    jp nz, $f0e7                                  ; $63af: $c2 $e7 $f0

    add a                                         ; $63b2: $87
    add hl, de                                    ; $63b3: $19
    ld a, a                                       ; $63b4: $7f
    ld e, a                                       ; $63b5: $5f
    cp a                                          ; $63b6: $bf
    ld b, b                                       ; $63b7: $40
    ld a, a                                       ; $63b8: $7f
    xor a                                         ; $63b9: $af
    ld a, e                                       ; $63ba: $7b
    xor a                                         ; $63bb: $af
    ld [bc], a                                    ; $63bc: $02
    push hl                                       ; $63bd: $e5
    ld [$ed2e], a                                 ; $63be: $ea $2e $ed
    add hl, bc                                    ; $63c1: $09
    nop                                           ; $63c2: $00
    sub a                                         ; $63c3: $97
    db $e3                                        ; $63c4: $e3
    adc $3a                                       ; $63c5: $ce $3a
    ld h, [hl]                                    ; $63c7: $66
    add c                                         ; $63c8: $81
    ld h, [hl]                                    ; $63c9: $66
    sbc [hl]                                      ; $63ca: $9e
    jp Jump_03d_7ff7                              ; $63cb: $c3 $f7 $7f


    inc bc                                        ; $63ce: $03
    sub a                                         ; $63cf: $97
    ld [hl], c                                    ; $63d0: $71
    and c                                         ; $63d1: $a1
    and e                                         ; $63d2: $a3
    rst $08                                       ; $63d3: $cf
    ld sp, hl                                     ; $63d4: $f9
    sub a                                         ; $63d5: $97
    sub l                                         ; $63d6: $95
    sbc a                                         ; $63d7: $9f
    ld a, c                                       ; $63d8: $79
    adc h                                         ; $63d9: $8c
    call $9fbf                                    ; $63da: $cd $bf $9f
    rst $20                                       ; $63dd: $e7
    adc $3a                                       ; $63de: $ce $3a
    ld h, [hl]                                    ; $63e0: $66
    add c                                         ; $63e1: $81
    and $06                                       ; $63e2: $e6 $06
    db $dd                                        ; $63e4: $dd
    cpl                                           ; $63e5: $2f
    db $e3                                        ; $63e6: $e3
    jp nz, Jump_000_1a17                          ; $63e7: $c2 $17 $1a

    xor [hl]                                      ; $63ea: $ae
    db $d3                                        ; $63eb: $d3
    adc b                                         ; $63ec: $88
    dec a                                         ; $63ed: $3d
    ld bc, $85bd                                  ; $63ee: $01 $bd $85
    add hl, sp                                    ; $63f1: $39
    adc e                                         ; $63f2: $8b
    db $e3                                        ; $63f3: $e3
    xor b                                         ; $63f4: $a8
    di                                            ; $63f5: $f3
    xor h                                         ; $63f6: $ac
    ld e, a                                       ; $63f7: $5f
    db $db                                        ; $63f8: $db
    ei                                            ; $63f9: $fb
    call c, $eaa1                                 ; $63fa: $dc $a1 $ea
    inc [hl]                                      ; $63fd: $34
    ld a, $9a                                     ; $63fe: $3e $9a
    sub [hl]                                      ; $6400: $96
    sbc d                                         ; $6401: $9a
    add a                                         ; $6402: $87
    ld l, $7c                                     ; $6403: $2e $7c
    ld sp, hl                                     ; $6405: $f9
    ld b, l                                       ; $6406: $45
    and a                                         ; $6407: $a7
    add e                                         ; $6408: $83
    sbc h                                         ; $6409: $9c
    add $d4                                       ; $640a: $c6 $d4
    ld a, e                                       ; $640c: $7b
    db $dd                                        ; $640d: $dd
    ld a, e                                       ; $640e: $7b
    dec d                                         ; $640f: $15
    jr z, jr_03d_6469                             ; $6410: $28 $57

    ld [hl], a                                    ; $6412: $77
    ld l, c                                       ; $6413: $69
    ld c, a                                       ; $6414: $4f
    nop                                           ; $6415: $00
    ld a, l                                       ; $6416: $7d
    sbc $7f                                       ; $6417: $de $7f
    cp l                                          ; $6419: $bd
    ld a, $5f                                     ; $641a: $3e $5f
    ld h, b                                       ; $641c: $60
    inc [hl]                                      ; $641d: $34
    inc b                                         ; $641e: $04
    ld h, a                                       ; $641f: $67
    scf                                           ; $6420: $37
    ld h, d                                       ; $6421: $62
    add l                                         ; $6422: $85
    ret c                                         ; $6423: $d8

    ld a, h                                       ; $6424: $7c
    xor $d7                                       ; $6425: $ee $d7
    rst $20                                       ; $6427: $e7
    db $fd                                        ; $6428: $fd
    rst $10                                       ; $6429: $d7
    db $eb                                        ; $642a: $eb
    di                                            ; $642b: $f3
    dec b                                         ; $642c: $05
    ld b, [hl]                                    ; $642d: $46
    ld b, e                                       ; $642e: $43
    ld hl, sp-$1e                                 ; $642f: $f8 $e2
    ld bc, $ccd8                                  ; $6431: $01 $d8 $cc
    db $eb                                        ; $6434: $eb
    jp nz, Jump_03d_5f97                          ; $6435: $c2 $97 $5f

    ld c, h                                       ; $6438: $4c
    rst $38                                       ; $6439: $ff
    cp d                                          ; $643a: $ba
    ld a, [c]                                     ; $643b: $f2
    cp d                                          ; $643c: $ba
    inc [hl]                                      ; $643d: $34
    xor a                                         ; $643e: $af
    dec l                                         ; $643f: $2d
    sub c                                         ; $6440: $91
    ld a, d                                       ; $6441: $7a
    inc bc                                        ; $6442: $03
    db $dd                                        ; $6443: $dd
    xor a                                         ; $6444: $af
    ld l, b                                       ; $6445: $68
    ld b, h                                       ; $6446: $44
    ld [$157e], a                                 ; $6447: $ea $7e $15
    and d                                         ; $644a: $a2
    and a                                         ; $644b: $a7
    call nc, $17dc                                ; $644c: $d4 $dc $17
    jr z, @-$1d                                   ; $644f: $28 $e1

    or e                                          ; $6451: $b3
    jr c, jr_03d_649e                             ; $6452: $38 $4a

    di                                            ; $6454: $f3
    reti                                          ; $6455: $d9


    ld [hl], e                                    ; $6456: $73
    halt                                          ; $6457: $76
    ld h, $f8                                     ; $6458: $26 $f8
    ld d, d                                       ; $645a: $52
    ld [hl], l                                    ; $645b: $75
    ld c, $57                                     ; $645c: $0e $57
    ld l, c                                       ; $645e: $69
    ld a, [de]                                    ; $645f: $1a
    cp a                                          ; $6460: $bf
    ld a, a                                       ; $6461: $7f
    sbc $00                                       ; $6462: $de $00
    db $dd                                        ; $6464: $dd
    cpl                                           ; $6465: $2f
    ld [hl], c                                    ; $6466: $71
    ld d, l                                       ; $6467: $55
    add a                                         ; $6468: $87

jr_03d_6469:
    inc [hl]                                      ; $6469: $34
    call nc, $5f16                                ; $646a: $d4 $16 $5f
    ld a, e                                       ; $646d: $7b
    ld l, $90                                     ; $646e: $2e $90
    sub b                                         ; $6470: $90
    sub e                                         ; $6471: $93
    sbc h                                         ; $6472: $9c
    push bc                                       ; $6473: $c5
    ld [hl], c                                    ; $6474: $71
    sub c                                         ; $6475: $91
    ret z                                         ; $6476: $c8

    ld a, [hl-]                                   ; $6477: $3a
    ld [hl], l                                    ; $6478: $75
    pop de                                        ; $6479: $d1
    dec l                                         ; $647a: $2d
    ld a, [hl]                                    ; $647b: $7e
    add hl, hl                                    ; $647c: $29
    ld a, a                                       ; $647d: $7f
    inc bc                                        ; $647e: $03
    add c                                         ; $647f: $81
    add h                                         ; $6480: $84
    sbc h                                         ; $6481: $9c
    db $e4                                        ; $6482: $e4
    inc l                                         ; $6483: $2c
    adc [hl]                                      ; $6484: $8e
    adc e                                         ; $6485: $8b
    sbc h                                         ; $6486: $9c
    push bc                                       ; $6487: $c5
    pop de                                        ; $6488: $d1
    rst $38                                       ; $6489: $ff
    ld a, [hl-]                                   ; $648a: $3a
    adc l                                         ; $648b: $8d
    cp b                                          ; $648c: $b8
    ret nc                                        ; $648d: $d0

    ld d, c                                       ; $648e: $51
    ld h, e                                       ; $648f: $63
    sbc $eb                                       ; $6490: $de $eb
    sbc $ab                                       ; $6492: $de $ab
    ld b, b                                       ; $6494: $40
    cp c                                          ; $6495: $b9
    cp d                                          ; $6496: $ba
    ld c, e                                       ; $6497: $4b
    ld a, e                                       ; $6498: $7b
    ld [bc], a                                    ; $6499: $02
    halt                                          ; $649a: $76
    ld a, [hl-]                                   ; $649b: $3a
    add a                                         ; $649c: $87
    cp a                                          ; $649d: $bf

jr_03d_649e:
    sub b                                         ; $649e: $90
    ld hl, sp-$10                                 ; $649f: $f8 $f0
    ld e, c                                       ; $64a1: $59
    inc e                                         ; $64a2: $1c
    and l                                         ; $64a3: $a5
    ld sp, hl                                     ; $64a4: $f9
    cp h                                          ; $64a5: $bc
    rst $10                                       ; $64a6: $d7
    cp l                                          ; $64a7: $bd
    ld d, a                                       ; $64a8: $57
    add c                                         ; $64a9: $81
    ld [hl], d                                    ; $64aa: $72
    ld [hl], l                                    ; $64ab: $75
    sub a                                         ; $64ac: $97
    or $04                                        ; $64ad: $f6 $04
    sub a                                         ; $64af: $97
    ld [hl], c                                    ; $64b0: $71
    ld h, $35                                     ; $64b1: $26 $35
    cp [hl]                                       ; $64b3: $be
    ld [hl], h                                    ; $64b4: $74
    db $ed                                        ; $64b5: $ed
    xor h                                         ; $64b6: $ac
    ld h, e                                       ; $64b7: $63
    ld d, $68                                     ; $64b8: $16 $68
    ld l, [hl]                                    ; $64ba: $6e
    nop                                           ; $64bb: $00
    add c                                         ; $64bc: $81
    ld l, $4c                                     ; $64bd: $2e $4c
    add h                                         ; $64bf: $84
    ld [hl], d                                    ; $64c0: $72
    ld d, $c7                                     ; $64c1: $16 $c7
    add l                                         ; $64c3: $85
    jp hl                                         ; $64c4: $e9


    push bc                                       ; $64c5: $c5
    and $e7                                       ; $64c6: $e6 $e7
    ld e, a                                       ; $64c8: $5f
    ld [hl+], a                                   ; $64c9: $22
    ld [hl], a                                    ; $64ca: $77
    sub $31                                       ; $64cb: $d6 $31
    dec bc                                        ; $64cd: $0b
    inc [hl]                                      ; $64ce: $34
    scf                                           ; $64cf: $37
    nop                                           ; $64d0: $00
    db $dd                                        ; $64d1: $dd
    cpl                                           ; $64d2: $2f
    db $e3                                        ; $64d3: $e3
    ld a, [hl+]                                   ; $64d4: $2a
    cp a                                          ; $64d5: $bf
    ld c, [hl]                                    ; $64d6: $4e
    inc hl                                        ; $64d7: $23
    or $04                                        ; $64d8: $f6 $04
    add c                                         ; $64da: $81
    ld l, $4c                                     ; $64db: $2e $4c
    add h                                         ; $64dd: $84
    ld [hl], d                                    ; $64de: $72
    ld d, $c7                                     ; $64df: $16 $c7
    ld d, c                                       ; $64e1: $51
    ld d, a                                       ; $64e2: $57
    ld [hl], a                                    ; $64e3: $77
    jp hl                                         ; $64e4: $e9


    inc a                                         ; $64e5: $3c
    ld d, a                                       ; $64e6: $57
    ld [hl], d                                    ; $64e7: $72
    ld d, $c7                                     ; $64e8: $16 $c7
    push bc                                       ; $64ea: $c5
    ld b, [hl]                                    ; $64eb: $46
    and h                                         ; $64ec: $a4
    jp nz, $bdd7                                  ; $64ed: $c2 $d7 $bd

    ld b, d                                       ; $64f0: $42
    pop af                                        ; $64f1: $f1
    rst $28                                       ; $64f2: $ef
    ld a, e                                       ; $64f3: $7b
    xor [hl]                                      ; $64f4: $ae
    ld a, e                                       ; $64f5: $7b
    xor a                                         ; $64f6: $af
    ld [bc], a                                    ; $64f7: $02
    push hl                                       ; $64f8: $e5
    ld [$ed2e], a                                 ; $64f9: $ea $2e $ed
    add hl, bc                                    ; $64fc: $09
    nop                                           ; $64fd: $00
    cp l                                          ; $64fe: $bd
    ld e, a                                       ; $64ff: $5f
    and h                                         ; $6500: $a4
    push bc                                       ; $6501: $c5
    sbc h                                         ; $6502: $9c
    rst $20                                       ; $6503: $e7
    adc $cb                                       ; $6504: $ce $cb
    sub d                                         ; $6506: $92
    jp c, $15f0                                   ; $6507: $da $f0 $15

    nop                                           ; $650a: $00
    db $dd                                        ; $650b: $dd
    cpl                                           ; $650c: $2f
    ld [hl], c                                    ; $650d: $71
    adc l                                         ; $650e: $8d
    ld b, d                                       ; $650f: $42
    sbc l                                         ; $6510: $9d
    ld a, c                                       ; $6511: $79
    ld sp, hl                                     ; $6512: $f9
    sbc d                                         ; $6513: $9a
    dec h                                         ; $6514: $25
    or l                                          ; $6515: $b5
    rst $20                                       ; $6516: $e7
    db $ec                                        ; $6517: $ec
    inc [hl]                                      ; $6518: $34
    halt                                          ; $6519: $76
    pop hl                                        ; $651a: $e1
    ld l, d                                       ; $651b: $6a
    ld h, a                                       ; $651c: $67
    sbc l                                         ; $651d: $9d
    inc [hl]                                      ; $651e: $34
    sub e                                         ; $651f: $93
    ld a, d                                       ; $6520: $7a
    inc bc                                        ; $6521: $03
    ld d, a                                       ; $6522: $57
    ld a, h                                       ; $6523: $7c
    sbc l                                         ; $6524: $9d
    cp d                                          ; $6525: $ba
    ld e, a                                       ; $6526: $5f
    add l                                         ; $6527: $85
    ld [hl-], a                                   ; $6528: $32
    adc e                                         ; $6529: $8b
    xor e                                         ; $652a: $ab
    cp d                                          ; $652b: $ba
    sbc d                                         ; $652c: $9a
    bit 5, d                                      ; $652d: $cb $6a
    and c                                         ; $652f: $a1
    and c                                         ; $6530: $a1
    sbc $00                                       ; $6531: $de $00
    db $dd                                        ; $6533: $dd
    cpl                                           ; $6534: $2f
    ld [hl], c                                    ; $6535: $71
    ld d, l                                       ; $6536: $55
    rla                                           ; $6537: $17
    dec de                                        ; $6538: $1b
    sub c                                         ; $6539: $91
    cp d                                          ; $653a: $ba
    ldh a, [$e5]                                  ; $653b: $f0 $e5
    ld d, a                                       ; $653d: $57
    db $db                                        ; $653e: $db
    ret nz                                        ; $653f: $c0

    ld h, a                                       ; $6540: $67
    ld [hl], c                                    ; $6541: $71
    sub h                                         ; $6542: $94
    and $b3                                       ; $6543: $e6 $b3
    daa                                           ; $6545: $27
    nop                                           ; $6546: $00
    add c                                         ; $6547: $81
    add h                                         ; $6548: $84
    sbc h                                         ; $6549: $9c
    db $e4                                        ; $654a: $e4
    inc l                                         ; $654b: $2c
    adc [hl]                                      ; $654c: $8e
    db $d3                                        ; $654d: $d3
    adc a                                         ; $654e: $8f
    ld c, l                                       ; $654f: $4d
    xor e                                         ; $6550: $ab
    rst $18                                       ; $6551: $df
    ld [hl], b                                    ; $6552: $70
    pop de                                        ; $6553: $d1
    dec c                                         ; $6554: $0d
    jp z, $9a92                                   ; $6555: $ca $92 $9a

    dec bc                                        ; $6558: $0b
    cp a                                          ; $6559: $bf
    cp h                                          ; $655a: $bc
    ld a, a                                       ; $655b: $7f
    cp c                                          ; $655c: $b9
    rst $10                                       ; $655d: $d7
    cp l                                          ; $655e: $bd
    ld d, a                                       ; $655f: $57
    add c                                         ; $6560: $81
    ld [hl], d                                    ; $6561: $72
    ld [hl], l                                    ; $6562: $75
    sub a                                         ; $6563: $97
    or $04                                        ; $6564: $f6 $04
    ld h, a                                       ; $6566: $67
    dec sp                                        ; $6567: $3b
    ld h, d                                       ; $6568: $62
    jp nz, $9d47                                  ; $6569: $c2 $47 $9d

    jp Jump_03d_485f                              ; $656c: $c3 $5f $48


    db $fc                                        ; $656f: $fc
    ld a, e                                       ; $6570: $7b
    db $dd                                        ; $6571: $dd
    ld a, e                                       ; $6572: $7b
    dec d                                         ; $6573: $15
    jr z, jr_03d_65cd                             ; $6574: $28 $57

    ld [hl], a                                    ; $6576: $77
    ld l, c                                       ; $6577: $69
    ld c, a                                       ; $6578: $4f
    nop                                           ; $6579: $00
    ld a, l                                       ; $657a: $7d
    sbc h                                         ; $657b: $9c
    ld [hl], l                                    ; $657c: $75
    jp nc, $ce4c                                  ; $657d: $d2 $4c $ce

    ld a, [hl-]                                   ; $6580: $3a
    or l                                          ; $6581: $b5
    dec l                                         ; $6582: $2d
    cp c                                          ; $6583: $b9
    or e                                          ; $6584: $b3
    adc [hl]                                      ; $6585: $8e

jr_03d_6586:
    ld e, c                                       ; $6586: $59
    and b                                         ; $6587: $a0
    cp c                                          ; $6588: $b9
    ld bc, $7197                                  ; $6589: $01 $97 $71
    dec h                                         ; $658c: $25
    ld h, a                                       ; $658d: $67
    or d                                          ; $658e: $b2
    ld c, $e5                                     ; $658f: $0e $e5
    and l                                         ; $6591: $a5
    ld [$94c2], a                                 ; $6592: $ea $c2 $94
    sbc l                                         ; $6595: $9d
    ld [hl], l                                    ; $6596: $75
    call z, $cd02                                 ; $6597: $cc $02 $cd
    dec c                                         ; $659a: $0d
    nop                                           ; $659b: $00
    db $dd                                        ; $659c: $dd
    cpl                                           ; $659d: $2f
    sub e                                         ; $659e: $93
    adc a                                         ; $659f: $8f
    cp c                                          ; $65a0: $b9
    jr nz, jr_03d_65f0                            ; $65a1: $20 $4d

    jr nc, jr_03d_6586                            ; $65a3: $30 $e1

    inc hl                                        ; $65a5: $23
    add $44                                       ; $65a6: $c6 $44
    ld b, e                                       ; $65a8: $43
    db $ed                                        ; $65a9: $ed
    add hl, bc                                    ; $65aa: $09
    nop                                           ; $65ab: $00
    rla                                           ; $65ac: $17
    rlca                                          ; $65ad: $07
    pop hl                                        ; $65ae: $e1
    jp $119c                                      ; $65af: $c3 $9c $11


    and $2c                                       ; $65b2: $e6 $2c
    adc [hl]                                      ; $65b4: $8e
    adc e                                         ; $65b5: $8b
    ld b, h                                       ; $65b6: $44
    add sp, $75                                   ; $65b7: $e8 $75
    ld [$9baa], a                                 ; $65b9: $ea $aa $9b
    ld l, c                                       ; $65bc: $69
    call nz, $85c8                                ; $65bd: $c4 $c8 $85
    cpl                                           ; $65c0: $2f
    ccf                                           ; $65c1: $3f
    ld l, d                                       ; $65c2: $6a
    sbc $00                                       ; $65c3: $de $00
    halt                                          ; $65c5: $76
    ld [hl], l                                    ; $65c6: $75
    sbc b                                         ; $65c7: $98
    jp nc, Jump_03d_5772                          ; $65c8: $d2 $72 $57

    ld a, [c]                                     ; $65cb: $f2
    or l                                          ; $65cc: $b5

jr_03d_65cd:
    ret nc                                        ; $65cd: $d0

    ld a, [bc]                                    ; $65ce: $0a
    nop                                           ; $65cf: $00
    ld h, a                                       ; $65d0: $67
    scf                                           ; $65d1: $37
    ld h, d                                       ; $65d2: $62
    add l                                         ; $65d3: $85
    ret c                                         ; $65d4: $d8

    ld a, h                                       ; $65d5: $7c
    xor $cb                                       ; $65d6: $ee $cb
    db $ec                                        ; $65d8: $ec
    ld [$a530], a                                 ; $65d9: $ea $30 $a5
    push hl                                       ; $65dc: $e5
    inc a                                         ; $65dd: $3c
    ld d, a                                       ; $65de: $57
    ld e, [hl]                                    ; $65df: $5e
    ld [hl], a                                    ; $65e0: $77
    ld e, [hl]                                    ; $65e1: $5e
    sub [hl]                                      ; $65e2: $96
    call nc, $af86                                ; $65e3: $d4 $86 $af
    di                                            ; $65e6: $f3
    call c, $7c95                                 ; $65e7: $dc $95 $7c
    dec l                                         ; $65ea: $2d
    or h                                          ; $65eb: $b4
    sbc $00                                       ; $65ec: $de $00
    db $dd                                        ; $65ee: $dd
    cpl                                           ; $65ef: $2f

jr_03d_65f0:
    ld [hl], c                                    ; $65f0: $71
    ld d, l                                       ; $65f1: $55
    rla                                           ; $65f2: $17
    dec de                                        ; $65f3: $1b
    sub c                                         ; $65f4: $91
    jp c, Jump_000_0013                           ; $65f5: $da $13 $00

    db $dd                                        ; $65f8: $dd
    cpl                                           ; $65f9: $2f
    ld [hl], c                                    ; $65fa: $71
    ld d, l                                       ; $65fb: $55
    rst $20                                       ; $65fc: $e7
    xor c                                         ; $65fd: $a9
    ld a, h                                       ; $65fe: $7c
    db $ed                                        ; $65ff: $ed
    add hl, bc                                    ; $6600: $09
    nop                                           ; $6601: $00
    cp l                                          ; $6602: $bd
    ld a, [bc]                                    ; $6603: $0a
    sub h                                         ; $6604: $94
    xor e                                         ; $6605: $ab
    sbc l                                         ; $6606: $9d
    ld [hl], l                                    ; $6607: $75
    ld h, c                                       ; $6608: $61
    add [hl]                                      ; $6609: $86
    xor [hl]                                      ; $660a: $ae
    cp h                                          ; $660b: $bc
    call c, $deeb                                 ; $660c: $dc $eb $de
    xor e                                         ; $660f: $ab
    ld b, b                                       ; $6610: $40
    cp c                                          ; $6611: $b9
    cp d                                          ; $6612: $ba
    ld c, e                                       ; $6613: $4b
    ld a, e                                       ; $6614: $7b
    ld [bc], a                                    ; $6615: $02
    sub a                                         ; $6616: $97
    ld a, l                                       ; $6617: $7d
    ld e, c                                       ; $6618: $59
    add l                                         ; $6619: $85
    db $fd                                        ; $661a: $fd
    ld d, a                                       ; $661b: $57
    inc e                                         ; $661c: $1c
    and c                                         ; $661d: $a1
    sbc h                                         ; $661e: $9c
    ld sp, hl                                     ; $661f: $f9
    cp d                                          ; $6620: $ba
    db $d3                                        ; $6621: $d3
    xor b                                         ; $6622: $a8
    di                                            ; $6623: $f3
    ld e, h                                       ; $6624: $5c
    add [hl]                                      ; $6625: $86
    dec c                                         ; $6626: $0d
    sbc e                                         ; $6627: $9b
    dec l                                         ; $6628: $2d
    sbc $eb                                       ; $6629: $de $eb
    sbc $ab                                       ; $662b: $de $ab
    ld b, b                                       ; $662d: $40
    cp c                                          ; $662e: $b9
    cp d                                          ; $662f: $ba
    ld c, e                                       ; $6630: $4b
    ld a, e                                       ; $6631: $7b
    ld [bc], a                                    ; $6632: $02
    halt                                          ; $6633: $76
    sbc d                                         ; $6634: $9a
    inc sp                                        ; $6635: $33
    adc [hl]                                      ; $6636: $8e
    ld a, [de]                                    ; $6637: $1a
    ld a, a                                       ; $6638: $7f
    ld h, a                                       ; $6639: $67
    dec e                                         ; $663a: $1d
    or e                                          ; $663b: $b3
    ld b, b                                       ; $663c: $40
    ld [hl], e                                    ; $663d: $73
    inc bc                                        ; $663e: $03
    cp l                                          ; $663f: $bd
    or e                                          ; $6640: $b3
    adc $51                                       ; $6641: $ce $51
    ld h, e                                       ; $6643: $63
    rst $10                                       ; $6644: $d7
    sbc h                                         ; $6645: $9c
    cp [hl]                                       ; $6646: $be
    ld c, a                                       ; $6647: $4f
    ld hl, sp+$22                                 ; $6648: $f8 $22
    rst $20                                       ; $664a: $e7
    ld e, a                                       ; $664b: $5f
    xor d                                         ; $664c: $aa
    xor $ac                                       ; $664d: $ee $ac
    ld h, e                                       ; $664f: $63
    ld d, $68                                     ; $6650: $16 $68
    ld l, [hl]                                    ; $6652: $6e
    nop                                           ; $6653: $00
    db $dd                                        ; $6654: $dd
    cpl                                           ; $6655: $2f
    sub e                                         ; $6656: $93
    adc a                                         ; $6657: $8f
    cp c                                          ; $6658: $b9
    jr nz, jr_03d_66a8                            ; $6659: $20 $4d

    jr nc, jr_03d_66d8                            ; $665b: $30 $7b

    ld [bc], a                                    ; $665d: $02
    ld a, l                                       ; $665e: $7d
    ld [hl], e                                    ; $665f: $73
    and c                                         ; $6660: $a1
    and e                                         ; $6661: $a3
    and a                                         ; $6662: $a7
    ld l, $7c                                     ; $6663: $2e $7c
    add sp, $65                                   ; $6665: $e8 $65
    call nc, $cf84                                ; $6667: $d4 $84 $cf
    cp $45                                        ; $666a: $fe $45
    xor h                                         ; $666c: $ac
    scf                                           ; $666d: $37
    nop                                           ; $666e: $00
    rst $20                                       ; $666f: $e7
    dec a                                         ; $6670: $3d
    ld b, d                                       ; $6671: $42
    xor a                                         ; $6672: $af
    di                                            ; $6673: $f3
    ld e, h                                       ; $6674: $5c
    ld c, c                                       ; $6675: $49
    db $dd                                        ; $6676: $dd
    ld a, c                                       ; $6677: $79
    xor h                                         ; $6678: $ac
    ld e, c                                       ; $6679: $59
    ld d, d                                       ; $667a: $52
    ld [hl], a                                    ; $667b: $77
    dec h                                         ; $667c: $25
    ld e, a                                       ; $667d: $5f
    dec bc                                        ; $667e: $0b

jr_03d_667f:
    xor l                                         ; $667f: $ad
    nop                                           ; $6680: $00
    ld h, a                                       ; $6681: $67
    scf                                           ; $6682: $37
    ld h, d                                       ; $6683: $62
    add l                                         ; $6684: $85
    ret c                                         ; $6685: $d8

    ld a, h                                       ; $6686: $7c
    xor $57                                       ; $6687: $ee $57
    ld a, [hl]                                    ; $6689: $7e
    sub a                                         ; $668a: $97
    dec [hl]                                      ; $668b: $35
    and d                                         ; $668c: $a2
    rst $38                                       ; $668d: $ff
    ld a, c                                       ; $668e: $79
    xor $bc                                       ; $668f: $ee $bc
    ld b, a                                       ; $6691: $47
    add sp, $75                                   ; $6692: $e8 $75
    sbc [hl]                                      ; $6694: $9e
    dec hl                                        ; $6695: $2b
    xor c                                         ; $6696: $a9
    cp e                                          ; $6697: $bb
    sub d                                         ; $6698: $92
    xor a                                         ; $6699: $af
    add l                                         ; $669a: $85
    sub $1b                                       ; $669b: $d6 $1b
    nop                                           ; $669d: $00
    db $dd                                        ; $669e: $dd
    cpl                                           ; $669f: $2f
    ld [hl], c                                    ; $66a0: $71
    ld d, l                                       ; $66a1: $55
    rla                                           ; $66a2: $17
    dec de                                        ; $66a3: $1b
    sub c                                         ; $66a4: $91
    jp c, Jump_000_0013                           ; $66a5: $da $13 $00

jr_03d_66a8:
    db $dd                                        ; $66a8: $dd
    cpl                                           ; $66a9: $2f
    ld [hl], c                                    ; $66aa: $71
    ld d, l                                       ; $66ab: $55
    rst $20                                       ; $66ac: $e7
    xor c                                         ; $66ad: $a9
    ld a, h                                       ; $66ae: $7c
    db $ed                                        ; $66af: $ed
    add hl, bc                                    ; $66b0: $09
    nop                                           ; $66b1: $00
    halt                                          ; $66b2: $76
    jp z, Jump_03d_5751                           ; $66b3: $ca $51 $57

    or a                                          ; $66b6: $b7
    ld d, l                                       ; $66b7: $55
    ld a, a                                       ; $66b8: $7f
    dec h                                         ; $66b9: $25
    and l                                         ; $66ba: $a5
    push bc                                       ; $66bb: $c5
    cp h                                          ; $66bc: $bc
    rst $10                                       ; $66bd: $d7
    cp l                                          ; $66be: $bd
    ld d, a                                       ; $66bf: $57
    add c                                         ; $66c0: $81
    ld [hl], d                                    ; $66c1: $72
    ld [hl], l                                    ; $66c2: $75
    sub a                                         ; $66c3: $97
    or $04                                        ; $66c4: $f6 $04
    sub a                                         ; $66c6: $97
    dec e                                         ; $66c7: $1d
    jr nc, jr_03d_667f                            ; $66c8: $30 $b5

    sbc c                                         ; $66ca: $99
    push bc                                       ; $66cb: $c5
    ld [hl], c                                    ; $66cc: $71
    ld a, [$ea1d]                                 ; $66cd: $fa $1d $ea
    cp l                                          ; $66d0: $bd
    xor $bd                                       ; $66d1: $ee $bd
    ld a, [bc]                                    ; $66d3: $0a
    sub h                                         ; $66d4: $94
    xor e                                         ; $66d5: $ab
    cp e                                          ; $66d6: $bb
    or h                                          ; $66d7: $b4

jr_03d_66d8:
    daa                                           ; $66d8: $27
    nop                                           ; $66d9: $00
    halt                                          ; $66da: $76
    sbc d                                         ; $66db: $9a
    inc sp                                        ; $66dc: $33
    adc [hl]                                      ; $66dd: $8e
    ld a, [de]                                    ; $66de: $1a
    ld a, a                                       ; $66df: $7f
    ld h, a                                       ; $66e0: $67
    dec e                                         ; $66e1: $1d
    or e                                          ; $66e2: $b3
    ld b, b                                       ; $66e3: $40
    ld [hl], e                                    ; $66e4: $73
    inc bc                                        ; $66e5: $03
    cp l                                          ; $66e6: $bd
    or e                                          ; $66e7: $b3
    adc $51                                       ; $66e8: $ce $51
    db $e3                                        ; $66ea: $e3
    rst $08                                       ; $66eb: $cf
    jp hl                                         ; $66ec: $e9


    ei                                            ; $66ed: $fb
    add h                                         ; $66ee: $84
    cpl                                           ; $66ef: $2f
    ld [hl], d                                    ; $66f0: $72
    cp $a5                                        ; $66f1: $fe $a5
    ld [$3ace], a                                 ; $66f3: $ea $ce $3a
    ld h, [hl]                                    ; $66f6: $66
    add c                                         ; $66f7: $81
    and $06                                       ; $66f8: $e6 $06
    db $dd                                        ; $66fa: $dd
    cpl                                           ; $66fb: $2f
    sub e                                         ; $66fc: $93
    adc a                                         ; $66fd: $8f
    cp c                                          ; $66fe: $b9
    jr nz, jr_03d_674e                            ; $66ff: $20 $4d

    jr nc, jr_03d_677e                            ; $6701: $30 $7b

    ld [bc], a                                    ; $6703: $02
    cp l                                          ; $6704: $bd
    inc l                                         ; $6705: $2c
    adc $66                                       ; $6706: $ce $66
    sbc b                                         ; $6708: $98
    ld d, e                                       ; $6709: $53
    xor [hl]                                      ; $670a: $ae
    jp c, $efe6                                   ; $670b: $da $e6 $ef

    ei                                            ; $670e: $fb
    xor $86                                       ; $670f: $ee $86
    ld l, l                                       ; $6711: $6d
    jp c, $ae2c                                   ; $6712: $da $2c $ae

    ld d, c                                       ; $6715: $51
    ld a, [hl]                                    ; $6716: $7e
    ccf                                           ; $6717: $3f
    add a                                         ; $6718: $87
    dec sp                                        ; $6719: $3b
    ld c, a                                       ; $671a: $4f
    xor h                                         ; $671b: $ac
    push de                                       ; $671c: $d5
    push de                                       ; $671d: $d5
    dec c                                         ; $671e: $0d
    ld a, l                                       ; $671f: $7d
    ld c, d                                       ; $6720: $4a
    rrca                                          ; $6721: $0f
    nop                                           ; $6722: $00
    sub a                                         ; $6723: $97
    ld a, l                                       ; $6724: $7d
    db $dd                                        ; $6725: $dd
    ld l, c                                       ; $6726: $69
    ld d, l                                       ; $6727: $55
    ld [hl], c                                    ; $6728: $71
    and l                                         ; $6729: $a5
    ld a, h                                       ; $672a: $7c
    db $fd                                        ; $672b: $fd
    cp $17                                        ; $672c: $fe $17
    ldh a, [$a5]                                  ; $672e: $f0 $a5
    cp $5d                                        ; $6730: $fe $5d
    jp z, $f72f                                   ; $6732: $ca $2f $f7

    ld [bc], a                                    ; $6735: $02
    add hl, sp                                    ; $6736: $39
    and d                                         ; $6737: $a2
    ld [hl], c                                    ; $6738: $71
    call nz, Call_000_3f28                        ; $6739: $c4 $28 $3f
    ld [c], a                                     ; $673c: $e2
    ld h, d                                       ; $673d: $62
    ld a, [$cb1c]                                 ; $673e: $fa $1c $cb
    ld l, d                                       ; $6741: $6a
    add a                                         ; $6742: $87
    ld a, $67                                     ; $6743: $3e $67
    ld e, l                                       ; $6745: $5d
    ld l, h                                       ; $6746: $6c
    ld b, h                                       ; $6747: $44
    xor [hl]                                      ; $6748: $ae
    halt                                          ; $6749: $76
    ld h, $98                                     ; $674a: $26 $98
    ld a, [hl-]                                   ; $674c: $3a
    and a                                         ; $674d: $a7

jr_03d_674e:
    xor c                                         ; $674e: $a9
    jp $dd5c                                      ; $674f: $c3 $5c $dd


    dec b                                         ; $6752: $05
    dec [hl]                                      ; $6753: $35
    sub e                                         ; $6754: $93
    ld a, d                                       ; $6755: $7a
    inc bc                                        ; $6756: $03
    or $6f                                        ; $6757: $f6 $6f

Call_03d_6759:
    sbc l                                         ; $6759: $9d
    push bc                                       ; $675a: $c5
    ld [hl], c                                    ; $675b: $71
    push af                                       ; $675c: $f5
    ld h, e                                       ; $675d: $63

jr_03d_675e:
    dec bc                                        ; $675e: $0b
    ld e, l                                       ; $675f: $5d
    ld a, c                                       ; $6760: $79
    add hl, de                                    ; $6761: $19
    dec [hl]                                      ; $6762: $35
    ld [hl], d                                    ; $6763: $72
    dec c                                         ; $6764: $0d
    ld hl, $6fa1                                  ; $6765: $21 $a1 $6f
    call nz, $99c8                                ; $6768: $c4 $c8 $99
    call nz, $ced5                                ; $676b: $c4 $d5 $ce
    inc b                                         ; $676e: $04
    ld [hl], e                                    ; $676f: $73
    add $35                                       ; $6770: $c6 $35
    rst $38                                       ; $6772: $ff
    ld a, $67                                     ; $6773: $3e $67
    ld e, l                                       ; $6775: $5d
    jr z, jr_03d_6784                             ; $6776: $28 $0c

    ld e, a                                       ; $6778: $5f
    ld e, [hl]                                    ; $6779: $5e
    ld c, d                                       ; $677a: $4a
    xor [hl]                                      ; $677b: $ae
    db $d3                                        ; $677c: $d3
    adc b                                         ; $677d: $88

jr_03d_677e:
    ldh a, [$85]                                  ; $677e: $f0 $85
    adc [hl]                                      ; $6780: $8e
    cp d                                          ; $6781: $ba
    ret nc                                        ; $6782: $d0

    pop de                                        ; $6783: $d1

jr_03d_6784:
    ld [hl], e                                    ; $6784: $73
    ld c, d                                       ; $6785: $4a
    ld e, c                                       ; $6786: $59
    add l                                         ; $6787: $85
    ld c, b                                       ; $6788: $48
    ld c, h                                       ; $6789: $4c
    call $001b                                    ; $678a: $cd $1b $00
    sub a                                         ; $678d: $97
    db $e3                                        ; $678e: $e3
    cpl                                           ; $678f: $2f
    inc l                                         ; $6790: $2c
    adc a                                         ; $6791: $8f
    pop af                                        ; $6792: $f1
    ld b, a                                       ; $6793: $47
    ld e, b                                       ; $6794: $58
    sub c                                         ; $6795: $91
    add sp, -$65                                  ; $6796: $e8 $9b
    rst $38                                       ; $6798: $ff
    ld d, l                                       ; $6799: $55
    ld a, a                                       ; $679a: $7f
    sbc l                                         ; $679b: $9d
    ld a, [$530b]                                 ; $679c: $fa $0b $53
    ld d, [hl]                                    ; $679f: $56
    ld d, d                                       ; $67a0: $52
    rla                                           ; $67a1: $17
    or d                                          ; $67a2: $b2
    and h                                         ; $67a3: $a4
    adc $49                                       ; $67a4: $ce $49
    ld l, h                                       ; $67a6: $6c
    and $31                                       ; $67a7: $e6 $31
    ld d, d                                       ; $67a9: $52
    ld h, a                                       ; $67aa: $67
    ld [hl], c                                    ; $67ab: $71
    sbc h                                         ; $67ac: $9c
    ld de, $e21a                                  ; $67ad: $11 $1a $e2
    adc b                                         ; $67b0: $88
    ld d, e                                       ; $67b1: $53
    and a                                         ; $67b2: $a7
    dec bc                                        ; $67b3: $0b
    ld h, [hl]                                    ; $67b4: $66
    cp a                                          ; $67b5: $bf
    rst $10                                       ; $67b6: $d7
    dec de                                        ; $67b7: $1b
    nop                                           ; $67b8: $00
    sub a                                         ; $67b9: $97
    ld a, l                                       ; $67ba: $7d
    db $dd                                        ; $67bb: $dd
    ld l, c                                       ; $67bc: $69
    ld d, l                                       ; $67bd: $55
    ld [hl], c                                    ; $67be: $71
    ld h, $31                                     ; $67bf: $26 $31
    ld c, l                                       ; $67c1: $4d
    di                                            ; $67c2: $f3
    ccf                                           ; $67c3: $3f
    sub e                                         ; $67c4: $93
    ld [hl], l                                    ; $67c5: $75
    xor $ec                                       ; $67c6: $ee $ec
    ld b, h                                       ; $67c8: $44
    ld b, [hl]                                    ; $67c9: $46
    ld c, d                                       ; $67ca: $4a
    jp nz, $abf7                                  ; $67cb: $c2 $f7 $ab

    ret nc                                        ; $67ce: $d0

    ld d, b                                       ; $67cf: $50
    rst $20                                       ; $67d0: $e7
    xor c                                         ; $67d1: $a9
    and c                                         ; $67d2: $a1
    db $10                                        ; $67d3: $10
    dec a                                         ; $67d4: $3d
    ld d, a                                       ; $67d5: $57
    ld sp, hl                                     ; $67d6: $f9
    jr nc, jr_03d_675e                            ; $67d7: $30 $85

    ld a, [hl-]                                   ; $67d9: $3a
    di                                            ; $67da: $f3
    and l                                         ; $67db: $a5
    ld de, $f523                                  ; $67dc: $11 $23 $f5
    ld e, [hl]                                    ; $67df: $5e
    ld b, b                                       ; $67e0: $40
    jp z, $b9a8                                   ; $67e1: $ca $a8 $b9

    ldh [$5b], a                                  ; $67e4: $e0 $5b
    ld h, a                                       ; $67e6: $67
    ld [hl], c                                    ; $67e7: $71
    ld e, h                                       ; $67e8: $5c
    db $fd                                        ; $67e9: $fd
    ret c                                         ; $67ea: $d8

    ld b, d                                       ; $67eb: $42
    ld d, a                                       ; $67ec: $57
    ld e, [hl]                                    ; $67ed: $5e
    jp z, $24cf                                   ; $67ee: $ca $cf $24

    adc $b8                                       ; $67f1: $ce $b8
    and $df                                       ; $67f3: $e6 $df
    rst $20                                       ; $67f5: $e7
    dec c                                         ; $67f6: $0d
    nop                                           ; $67f7: $00
    sub a                                         ; $67f8: $97
    db $e3                                        ; $67f9: $e3
    cpl                                           ; $67fa: $2f
    inc l                                         ; $67fb: $2c
    adc a                                         ; $67fc: $8f
    pop af                                        ; $67fd: $f1
    ld d, a                                       ; $67fe: $57
    dec sp                                        ; $67ff: $3b
    db $eb                                        ; $6800: $eb
    cp [hl]                                       ; $6801: $be
    ld a, [hl]                                    ; $6802: $7e
    add c                                         ; $6803: $81
    ld a, [hl]                                    ; $6804: $7e
    ld d, $c7                                     ; $6805: $16 $c7
    add hl, hl                                    ; $6807: $29
    rst $20                                       ; $6808: $e7
    db $f4                                        ; $6809: $f4
    rst $20                                       ; $680a: $e7
    xor c                                         ; $680b: $a9
    sbc [hl]                                      ; $680c: $9e
    dec hl                                        ; $680d: $2b
    cp a                                          ; $680e: $bf
    rst $00                                       ; $680f: $c7
    ret c                                         ; $6810: $d8

    and b                                         ; $6811: $a0
    inc bc                                        ; $6812: $03
    jp hl                                         ; $6813: $e9


    rst $18                                       ; $6814: $df
    rst $18                                       ; $6815: $df
    nop                                           ; $6816: $00
    sub a                                         ; $6817: $97
    db $e3                                        ; $6818: $e3
    ld a, [de]                                    ; $6819: $1a
    ld b, d                                       ; $681a: $42
    ld b, d                                       ; $681b: $42
    rst $18                                       ; $681c: $df
    adc b                                         ; $681d: $88
    sub c                                         ; $681e: $91
    dec bc                                        ; $681f: $0b
    db $d3                                        ; $6820: $d3
    ld d, e                                       ; $6821: $53
    ld d, d                                       ; $6822: $52
    ld [hl], e                                    ; $6823: $73
    ld d, $c7                                     ; $6824: $16 $c7
    ld d, c                                       ; $6826: $51
    sub a                                         ; $6827: $97
    sbc l                                         ; $6828: $9d
    ld a, [hl]                                    ; $6829: $7e
    adc h                                         ; $682a: $8c
    add hl, sp                                    ; $682b: $39
    rst $08                                       ; $682c: $cf
    push de                                       ; $682d: $d5
    adc $04                                       ; $682e: $ce $04
    ld e, a                                       ; $6830: $5f
    and a                                         ; $6831: $a7
    ld l, $a4                                     ; $6832: $2e $a4
    ld l, b                                       ; $6834: $68
    ld l, h                                       ; $6835: $6c
    and [hl]                                      ; $6836: $a6
    dec h                                         ; $6837: $25
    ld d, d                                       ; $6838: $52
    ld d, a                                       ; $6839: $57
    dec sp                                        ; $683a: $3b
    ld [$bc2a], sp                                ; $683b: $08 $2a $bc
    ld bc, $fd17                                  ; $683e: $01 $17 $fd
    adc $ce                                       ; $6841: $ce $ce
    xor h                                         ; $6843: $ac
    or l                                          ; $6844: $b5
    inc a                                         ; $6845: $3c
    ld b, d                                       ; $6846: $42
    and e                                         ; $6847: $a3
    adc $e1                                       ; $6848: $ce $e1
    ld c, a                                       ; $684a: $4f
    add hl, hl                                    ; $684b: $29
    ld h, c                                       ; $684c: $61
    inc hl                                        ; $684d: $23
    ld b, [hl]                                    ; $684e: $46
    xor $a5                                       ; $684f: $ee $a5
    ld h, e                                       ; $6851: $63
    dec hl                                        ; $6852: $2b
    db $fc                                        ; $6853: $fc
    ld d, l                                       ; $6854: $55
    adc b                                         ; $6855: $88
    call nz, $9fd4                                ; $6856: $c4 $d4 $9f
    push bc                                       ; $6859: $c5
    ld [hl], c                                    ; $685a: $71
    sub l                                         ; $685b: $95
    ld d, [hl]                                    ; $685c: $56
    pop hl                                        ; $685d: $e1
    adc b                                         ; $685e: $88
    dec sp                                        ; $685f: $3b
    and h                                         ; $6860: $a4
    ld e, d                                       ; $6861: $5a
    sbc d                                         ; $6862: $9a
    ld sp, hl                                     ; $6863: $f9
    ld a, e                                       ; $6864: $7b
    or $6f                                        ; $6865: $f6 $6f
    sbc l                                         ; $6867: $9d
    push bc                                       ; $6868: $c5
    ld [hl], c                                    ; $6869: $71
    ld b, d                                       ; $686a: $42
    sub e                                         ; $686b: $93
    db $10                                        ; $686c: $10
    ld h, l                                       ; $686d: $65
    push hl                                       ; $686e: $e5
    rla                                           ; $686f: $17
    ld [hl], $96                                  ; $6870: $36 $96
    dec [hl]                                      ; $6872: $35
    xor h                                         ; $6873: $ac
    jp hl                                         ; $6874: $e9


    db $db                                        ; $6875: $db
    rst $00                                       ; $6876: $c7
    xor a                                         ; $6877: $af
    adc c                                         ; $6878: $89
    sub c                                         ; $6879: $91
    di                                            ; $687a: $f3
    call nc, Call_03d_55d0                        ; $687b: $d4 $d0 $55
    push de                                       ; $687e: $d5
    ld a, c                                       ; $687f: $79
    xor [hl]                                      ; $6880: $ae
    db $fc                                        ; $6881: $fc
    ld l, d                                       ; $6882: $6a
    rst $20                                       ; $6883: $e7
    rst $38                                       ; $6884: $ff
    ld b, $17                                     ; $6885: $06 $17
    cp l                                          ; $6887: $bd
    ld l, $3c                                     ; $6888: $2e $3c
    ldh [$75], a                                  ; $688a: $e0 $75
    sbc [hl]                                      ; $688c: $9e
    dec bc                                        ; $688d: $0b
    dec e                                         ; $688e: $1d
    push bc                                       ; $688f: $c5
    inc h                                         ; $6890: $24
    dec [hl]                                      ; $6891: $35
    or h                                          ; $6892: $b4
    pop bc                                        ; $6893: $c1
    ld a, l                                       ; $6894: $7d
    rst $00                                       ; $6895: $c7
    and c                                         ; $6896: $a1
    ld a, a                                       ; $6897: $7f
    add h                                         ; $6898: $84
    rst $08                                       ; $6899: $cf
    ld a, [$38b3]                                 ; $689a: $fa $b3 $38
    xor [hl]                                      ; $689d: $ae
    and h                                         ; $689e: $a4
    xor $b1                                       ; $689f: $ee $b1
    push de                                       ; $68a1: $d5
    ld e, a                                       ; $68a2: $5f
    xor b                                         ; $68a3: $a8
    dec hl                                        ; $68a4: $2b
    xor a                                         ; $68a5: $af
    inc de                                        ; $68a6: $13
    add [hl]                                      ; $68a7: $86

jr_03d_68a8:
    adc c                                         ; $68a8: $89
    call nz, $c499                                ; $68a9: $c4 $99 $c4
    ret c                                         ; $68ac: $d8

    ret nc                                        ; $68ad: $d0

    ld a, l                                       ; $68ae: $7d
    ld c, l                                       ; $68af: $4d
    adc h                                         ; $68b0: $8c
    cp h                                          ; $68b1: $bc
    ld [hl], a                                    ; $68b2: $77
    pop de                                        ; $68b3: $d1
    db $eb                                        ; $68b4: $eb
    jp nz, Jump_03d_5e03                          ; $68b5: $c2 $03 $5e

    ld h, a                                       ; $68b8: $67
    ld [hl], c                                    ; $68b9: $71
    inc e                                         ; $68ba: $1c
    and $82                                       ; $68bb: $e6 $82
    adc a                                         ; $68bd: $8f
    inc sp                                        ; $68be: $33
    rst $28                                       ; $68bf: $ef
    db $f4                                        ; $68c0: $f4
    ld a, l                                       ; $68c1: $7d
    adc $ff                                       ; $68c2: $ce $ff
    pop bc                                        ; $68c4: $c1
    xor c                                         ; $68c5: $a9
    ld d, e                                       ; $68c6: $53
    adc $24                                       ; $68c7: $ce $24
    ld l, d                                       ; $68c9: $6a
    di                                            ; $68ca: $f3
    sub h                                         ; $68cb: $94
    rst $00                                       ; $68cc: $c7
    sub l                                         ; $68cd: $95
    rst $10                                       ; $68ce: $d7
    push de                                       ; $68cf: $d5
    db $ec                                        ; $68d0: $ec
    sub a                                         ; $68d1: $97
    ld b, d                                       ; $68d2: $42
    cp l                                          ; $68d3: $bd
    ld bc, $5f81                                  ; $68d4: $01 $81 $5f
    jr c, jr_03d_68a8                             ; $68d7: $38 $cf

    sub l                                         ; $68d9: $95
    sbc a                                         ; $68da: $9f
    ld a, c                                       ; $68db: $79
    ld b, c                                       ; $68dc: $41
    ld c, [hl]                                    ; $68dd: $4e
    ld l, c                                       ; $68de: $69
    ld a, [hl]                                    ; $68df: $7e
    sbc [hl]                                      ; $68e0: $9e
    ld h, l                                       ; $68e1: $65
    and c                                         ; $68e2: $a1
    dec hl                                        ; $68e3: $2b
    ld h, c                                       ; $68e4: $61
    sbc $0b                                       ; $68e5: $de $0b
    inc h                                         ; $68e7: $24
    ld [hl], h                                    ; $68e8: $74
    nop                                           ; $68e9: $00
    adc $37                                       ; $68ea: $ce $37
    ld b, e                                       ; $68ec: $43
    call c, $9abb                                 ; $68ed: $dc $bb $9a
    jr jr_03d_6971                                ; $68f0: $18 $7f

    push hl                                       ; $68f2: $e5
    rla                                           ; $68f3: $17
    ld h, [hl]                                    ; $68f4: $66
    inc h                                         ; $68f5: $24
    sbc d                                         ; $68f6: $9a
    or $f3                                        ; $68f7: $f6 $f3
    ld e, h                                       ; $68f9: $5c
    ld a, c                                       ; $68fa: $79
    ld e, l                                       ; $68fb: $5d
    sbc b                                         ; $68fc: $98
    and [hl]                                      ; $68fd: $a6
    dec h                                         ; $68fe: $25
    ld d, d                                       ; $68ff: $52
    ld l, a                                       ; $6900: $6f
    nop                                           ; $6901: $00
    rla                                           ; $6902: $17
    and l                                         ; $6903: $a5
    ld l, $fb                                     ; $6904: $2e $fb
    and l                                         ; $6906: $a5
    adc $73                                       ; $6907: $ce $73
    dec h                                         ; $6909: $25
    ld [hl], l                                    ; $690a: $75
    ld d, h                                       ; $690b: $54
    di                                            ; $690c: $f3
    ld a, [c]                                     ; $690d: $f2
    sbc l                                         ; $690e: $9d
    rst $28                                       ; $690f: $ef
    sub a                                         ; $6910: $97
    ld a, [hl-]                                   ; $6911: $3a
    ld c, l                                       ; $6912: $4d
    ld e, h                                       ; $6913: $5c
    di                                            ; $6914: $f3
    or [hl]                                       ; $6915: $b6
    ret z                                         ; $6916: $c8

    call nc, $2f85                                ; $6917: $d4 $85 $2f
    cp a                                          ; $691a: $bf
    ld [$48ef], a                                 ; $691b: $ea $ef $48
    inc sp                                        ; $691e: $33
    cpl                                           ; $691f: $2f
    dec bc                                        ; $6920: $0b
    db $d3                                        ; $6921: $d3
    or h                                          ; $6922: $b4
    ld b, h                                       ; $6923: $44
    ld [$000d], a                                 ; $6924: $ea $0d $00
    rla                                           ; $6927: $17
    and l                                         ; $6928: $a5
    xor [hl]                                      ; $6929: $ae

Jump_03d_692a:
    db $d3                                        ; $692a: $d3
    ld c, h                                       ; $692b: $4c
    ld a, [bc]                                    ; $692c: $0a
    or [hl]                                       ; $692d: $b6
    call nc, $e269                                ; $692e: $d4 $69 $e2
    ld b, d                                       ; $6931: $42
    sub [hl]                                      ; $6932: $96
    ld b, $49                                     ; $6933: $06 $49
    ld [$8ceb], a                                 ; $6935: $ea $eb $8c
    or h                                          ; $6938: $b4
    adc a                                         ; $6939: $8f
    ld c, [hl]                                    ; $693a: $4e
    ld e, [hl]                                    ; $693b: $5e
    ld d, a                                       ; $693c: $57
    ld [hl], a                                    ; $693d: $77
    ld b, c                                       ; $693e: $41
    call $cebc                                    ; $693f: $cd $bc $ce
    inc h                                         ; $6942: $24
    xor $35                                       ; $6943: $ee $35
    and h                                         ; $6945: $a4
    adc c                                         ; $6946: $89
    add hl, sp                                    ; $6947: $39
    rst $08                                       ; $6948: $cf
    ld d, l                                       ; $6949: $55
    sbc $fc                                       ; $694a: $de $fc
    cp l                                          ; $694c: $bd
    ld a, $ce                                     ; $694d: $3e $ce
    ccf                                           ; $694f: $3f
    xor [hl]                                      ; $6950: $ae
    and h                                         ; $6951: $a4
    adc $38                                       ; $6952: $ce $38
    ld a, [bc]                                    ; $6954: $0a
    and [hl]                                      ; $6955: $a6
    adc $e1                                       ; $6956: $ce $e1
    xor a                                         ; $6958: $af
    jp nz, $fbfe                                  ; $6959: $c2 $fe $fb

    or d                                          ; $695c: $b2
    ccf                                           ; $695d: $3f
    jr c, @+$69                                   ; $695e: $38 $67

    sbc l                                         ; $6960: $9d
    ld [hl], d                                    ; $6961: $72
    ld b, d                                       ; $6962: $42
    sub e                                         ; $6963: $93
    db $10                                        ; $6964: $10
    ld [hl], c                                    ; $6965: $71
    add $3d                                       ; $6966: $c6 $3d
    ld a, [$cb1c]                                 ; $6968: $fa $1c $cb
    ld a, [hl-]                                   ; $696b: $3a
    call Call_03d_60a4                            ; $696c: $cd $a4 $60
    bit 4, c                                      ; $696f: $cb $61

jr_03d_6971:
    xor [hl]                                      ; $6971: $ae
    ld l, [hl]                                    ; $6972: $6e
    ld a, [c]                                     ; $6973: $f2

jr_03d_6974:
    scf                                           ; $6974: $37
    nop                                           ; $6975: $00
    rst $20                                       ; $6976: $e7
    inc hl                                        ; $6977: $23
    inc h                                         ; $6978: $24
    db $f4                                        ; $6979: $f4
    adc l                                         ; $697a: $8d
    jr @-$45                                      ; $697b: $18 $b9

    rst $28                                       ; $697d: $ef
    jr c, jr_03d_6974                             ; $697e: $38 $f4

    adc a                                         ; $6980: $8f
    sub c                                         ; $6981: $91
    ldh a, [$59]                                  ; $6982: $f0 $59
    inc e                                         ; $6984: $1c
    add a                                         ; $6985: $87
    add hl, sp                                    ; $6986: $39
    rst $08                                       ; $6987: $cf
    ld c, $17                                     ; $6988: $0e $17
    ld c, d                                       ; $698a: $4a
    ld a, [de]                                    ; $698b: $1a
    ld a, d                                       ; $698c: $7a
    jp z, $a73c                                   ; $698d: $ca $3c $a7

    sub h                                         ; $6990: $94
    or b                                          ; $6991: $b0
    ld de, $7523                                  ; $6992: $11 $23 $75
    dec d                                         ; $6995: $15
    ld [hl+], a                                   ; $6996: $22
    ld sp, $f5f5                                  ; $6997: $31 $f5 $f5
    ld b, $17                                     ; $699a: $06 $17
    cp l                                          ; $699c: $bd
    ld l, $6c                                     ; $699d: $2e $6c
    db $f4                                        ; $699f: $f4
    ld a, [c]                                     ; $69a0: $f2
    cp d                                          ; $69a1: $ba
    ld c, $fb                                     ; $69a2: $0e $fb
    rst $20                                       ; $69a4: $e7
    res 2, h                                      ; $69a5: $cb $94
    xor e                                         ; $69a7: $ab
    ld c, [hl]                                    ; $69a8: $4e
    xor c                                         ; $69a9: $a9
    rra                                           ; $69aa: $1f
    ld b, a                                       ; $69ab: $47
    ld e, h                                       ; $69ac: $5c
    ld c, c                                       ; $69ad: $49
    db $dd                                        ; $69ae: $dd
    add a                                         ; $69af: $87
    cpl                                           ; $69b0: $2f
    rra                                           ; $69b1: $1f
    ld d, e                                       ; $69b2: $53
    rst $20                                       ; $69b3: $e7
    dec de                                        ; $69b4: $1b
    ld b, h                                       ; $69b5: $44
    adc l                                         ; $69b6: $8d
    xor l                                         ; $69b7: $ad
    sub d                                         ; $69b8: $92
    ld a, [hl-]                                   ; $69b9: $3a
    rst $08                                       ; $69ba: $cf
    sub l                                         ; $69bb: $95
    rst $10                                       ; $69bc: $d7
    sbc c                                         ; $69bd: $99
    rst $28                                       ; $69be: $ef
    ret z                                         ; $69bf: $c8

    db $eb                                        ; $69c0: $eb
    cp l                                          ; $69c1: $bd
    ld b, b                                       ; $69c2: $40
    adc $37                                       ; $69c3: $ce $37
    jp Jump_000_1c59                              ; $69c5: $c3 $59 $1c


    ld h, a                                       ; $69c8: $67
    ld [de], a                                    ; $69c9: $12
    and e                                         ; $69ca: $a3
    cp h                                          ; $69cb: $bc
    ld [$3e35], sp                                ; $69cc: $08 $35 $3e
    xor [hl]                                      ; $69cf: $ae
    and h                                         ; $69d0: $a4
    adc [hl]                                      ; $69d1: $8e
    push de                                       ; $69d2: $d5
    inc [hl]                                      ; $69d3: $34
    ld sp, $9e75                                  ; $69d4: $31 $75 $9e
    dec hl                                        ; $69d7: $2b
    xor c                                         ; $69d8: $a9
    xor e                                         ; $69d9: $ab
    db $10                                        ; $69da: $10
    adc c                                         ; $69db: $89
    xor c                                         ; $69dc: $a9
    scf                                           ; $69dd: $37
    nop                                           ; $69de: $00
    ld a, l                                       ; $69df: $7d
    sbc h                                         ; $69e0: $9c
    ld [hl], l                                    ; $69e1: $75
    ld a, [c]                                     ; $69e2: $f2
    sub d                                         ; $69e3: $92
    ld a, [bc]                                    ; $69e4: $0a
    ld e, a                                       ; $69e5: $5f
    add sp, -$58                                  ; $69e6: $e8 $a8
    ld d, e                                       ; $69e8: $53
    db $db                                        ; $69e9: $db
    sub d                                         ; $69ea: $92
    inc sp                                        ; $69eb: $33
    ld b, d                                       ; $69ec: $42
    ld b, e                                       ; $69ed: $43
    inc e                                         ; $69ee: $1c
    ld [hl], c                                    ; $69ef: $71
    dec h                                         ; $69f0: $25
    ld [hl], l                                    ; $69f1: $75
    ld c, $9b                                     ; $69f2: $0e $9b
    ld c, c                                       ; $69f4: $49
    pop bc                                        ; $69f5: $c1
    sub [hl]                                      ; $69f6: $96
    cp d                                          ; $69f7: $ba
    cp d                                          ; $69f8: $ba
    ld c, e                                       ; $69f9: $4b
    rst $30                                       ; $69fa: $f7
    jr jr_03d_6a18                                ; $69fb: $18 $1b

    db $e4                                        ; $69fd: $e4
    ld d, d                                       ; $69fe: $52
    ld h, a                                       ; $69ff: $67
    ld e, l                                       ; $6a00: $5d
    ld c, c                                       ; $6a01: $49
    ld e, l                                       ; $6a02: $5d
    db $ed                                        ; $6a03: $ed
    db $fc                                        ; $6a04: $fc
    db $e3                                        ; $6a05: $e3
    ld l, d                                       ; $6a06: $6a
    ld h, a                                       ; $6a07: $67
    sbc l                                         ; $6a08: $9d
    rst $20                                       ; $6a09: $e7
    ld a, [hl+]                                   ; $6a0a: $2a
    db $ec                                        ; $6a0b: $ec
    ccf                                           ; $6a0c: $3f
    ld [c], a                                     ; $6a0d: $e2
    adc h                                         ; $6a0e: $8c
    ld a, e                                       ; $6a0f: $7b
    db $f4                                        ; $6a10: $f4
    ld a, c                                       ; $6a11: $79
    inc bc                                        ; $6a12: $03
    sub a                                         ; $6a13: $97
    db $e3                                        ; $6a14: $e3
    cpl                                           ; $6a15: $2f
    inc l                                         ; $6a16: $2c
    adc a                                         ; $6a17: $8f

jr_03d_6a18:
    pop af                                        ; $6a18: $f1
    daa                                           ; $6a19: $27
    cpl                                           ; $6a1a: $2f
    ccf                                           ; $6a1b: $3f
    adc e                                         ; $6a1c: $8b
    db $e3                                        ; $6a1d: $e3
    inc [hl]                                      ; $6a1e: $34
    ld c, e                                       ; $6a1f: $4b
    adc $08                                       ; $6a20: $ce $08

jr_03d_6a22:
    dec c                                         ; $6a22: $0d
    ld b, a                                       ; $6a23: $47
    ld e, h                                       ; $6a24: $5c
    rst $38                                       ; $6a25: $ff
    call nz, $85d7                                ; $6a26: $c4 $d7 $85
    db $f4                                        ; $6a29: $f4
    ld b, d                                       ; $6a2a: $42
    jr z, jr_03d_6a22                             ; $6a2b: $28 $f5

    push af                                       ; $6a2d: $f5
    ld e, [hl]                                    ; $6a2e: $5e
    rst $18                                       ; $6a2f: $df
    sbc h                                         ; $6a30: $9c
    ld [hl], d                                    ; $6a31: $72
    pop bc                                        ; $6a32: $c1
    sbc a                                         ; $6a33: $9f
    ld h, a                                       ; $6a34: $67

Jump_03d_6a35:
    sbc l                                         ; $6a35: $9d
    ld a, [de]                                    ; $6a36: $1a
    push hl                                       ; $6a37: $e5
    ld a, l                                       ; $6a38: $7d
    xor $0f                                       ; $6a39: $ee $0f
    ret nz                                        ; $6a3b: $c0

    ld e, c                                       ; $6a3c: $59
    inc e                                         ; $6a3d: $1c
    ld d, a                                       ; $6a3e: $57
    ld a, a                                       ; $6a3f: $7f
    db $e4                                        ; $6a40: $e4
    ld a, [hl]                                    ; $6a41: $7e
    dec h                                         ; $6a42: $25
    ld [hl], l                                    ; $6a43: $75
    pop bc                                        ; $6a44: $c1
    xor h                                         ; $6a45: $ac
    dec sp                                        ; $6a46: $3b
    ld b, d                                       ; $6a47: $42
    ld e, l                                       ; $6a48: $5d
    ret                                           ; $6a49: $c9


    ld c, [hl]                                    ; $6a4a: $4e
    sbc $00                                       ; $6a4b: $de $00
    cp l                                          ; $6a4d: $bd

jr_03d_6a4e:
    jr nc, jr_03d_6a4e                            ; $6a4e: $30 $fe

    pop bc                                        ; $6a50: $c1
    cp c                                          ; $6a51: $b9
    jp c, Jump_03d_4759                           ; $6a52: $da $59 $47

    ld e, b                                       ; $6a55: $58
    sub c                                         ; $6a56: $91
    add sp, -$65                                  ; $6a57: $e8 $9b
    ld a, a                                       ; $6a59: $7f
    ld hl, sp+$3e                                 ; $6a5a: $f8 $3e
    sbc b                                         ; $6a5c: $98
    ld a, [c]                                     ; $6a5d: $f2
    ld d, e                                       ; $6a5e: $53
    db $db                                        ; $6a5f: $db
    sub d                                         ; $6a60: $92
    ld d, e                                       ; $6a61: $53
    adc [hl]                                      ; $6a62: $8e
    ld l, b                                       ; $6a63: $68
    inc e                                         ; $6a64: $1c
    ld sp, $8fca                                  ; $6a65: $31 $ca $8f
    cp b                                          ; $6a68: $b8
    ld [c], a                                     ; $6a69: $e2
    and b                                         ; $6a6a: $a0
    rla                                           ; $6a6b: $17
    ld [$4bf4], a                                 ; $6a6c: $ea $f4 $4b
    push hl                                       ; $6a6f: $e5
    ei                                            ; $6a70: $fb
    ld d, c                                       ; $6a71: $51
    rst $28                                       ; $6a72: $ef
    dec b                                         ; $6a73: $05
    ld a, [hl-]                                   ; $6a74: $3a
    ld e, l                                       ; $6a75: $5d
    ld [hl], l                                    ; $6a76: $75
    ld c, c                                       ; $6a77: $49
    and c                                         ; $6a78: $a1

Jump_03d_6a79:
    ld c, [hl]                                    ; $6a79: $4e
    inc de                                        ; $6a7a: $13
    rst $20                                       ; $6a7b: $e7
    add hl, sp                                    ; $6a7c: $39
    rla                                           ; $6a7d: $17
    ld e, e                                       ; $6a7e: $5b
    ld l, c                                       ; $6a7f: $69
    cp $fd                                        ; $6a80: $fe $fd
    adc b                                         ; $6a82: $88
    dec hl                                        ; $6a83: $2b
    xor a                                         ; $6a84: $af
    dec bc                                        ; $6a85: $0b
    db $d3                                        ; $6a86: $d3
    or h                                          ; $6a87: $b4
    ld b, h                                       ; $6a88: $44
    ld a, [hl+]                                   ; $6a89: $2a
    ld a, h                                       ; $6a8a: $7c
    ld hl, $a725                                  ; $6a8b: $21 $25 $a7
    ld c, [hl]                                    ; $6a8e: $4e
    rla                                           ; $6a8f: $17
    call z, $af7e                                 ; $6a90: $cc $7e $af
    db $d3                                        ; $6a93: $d3
    call nz, $ced5                                ; $6a94: $c4 $d5 $ce
    cp d                                          ; $6a97: $ba
    ld l, b                                       ; $6a98: $68
    dec bc                                        ; $6a99: $0b
    xor e                                         ; $6a9a: $ab
    sbc c                                         ; $6a9b: $99
    rst $10                                       ; $6a9c: $d7
    dec de                                        ; $6a9d: $1b
    nop                                           ; $6a9e: $00
    or $d4                                        ; $6a9f: $f6 $d4
    sub b                                         ; $6aa1: $90
    or d                                          ; $6aa2: $b2
    ret nz                                        ; $6aa3: $c0

    ld hl, sp+$02                                 ; $6aa4: $f8 $02
    add e                                         ; $6aa6: $83
    ld d, [hl]                                    ; $6aa7: $56
    nop                                           ; $6aa8: $00
    ld bc, $6f2f                                  ; $6aa9: $01 $2f $6f
    ld e, b                                       ; $6aac: $58
    inc [hl]                                      ; $6aad: $34
    ld bc, $c4bd                                  ; $6aae: $01 $bd $c4
    inc b                                         ; $6ab1: $04
    ld e, e                                       ; $6ab2: $5b
    rst $20                                       ; $6ab3: $e7
    adc e                                         ; $6ab4: $8b
    ld e, a                                       ; $6ab5: $5f
    xor a                                         ; $6ab6: $af
    ld [c], a                                     ; $6ab7: $e2
    add hl, hl                                    ; $6ab8: $29
    ld sp, $0011                                  ; $6ab9: $31 $11 $00
    halt                                          ; $6abc: $76
    and l                                         ; $6abd: $a5
    cp h                                          ; $6abe: $bc
    ld c, a                                       ; $6abf: $4f
    ld sp, hl                                     ; $6ac0: $f9
    ld e, l                                       ; $6ac1: $5d
    ret z                                         ; $6ac2: $c8

    jr jr_03d_6aee                                ; $6ac3: $18 $29

    call $0443                                    ; $6ac5: $cd $43 $04
    rst $20                                       ; $6ac8: $e7
    cp l                                          ; $6ac9: $bd
    add [hl]                                      ; $6aca: $86
    cpl                                           ; $6acb: $2f
    ld a, [hl]                                    ; $6acc: $7e
    add c                                         ; $6acd: $81
    pop bc                                        ; $6ace: $c1
    add [hl]                                      ; $6acf: $86
    ld d, b                                       ; $6ad0: $50
    ld h, c                                       ; $6ad1: $61
    ld c, h                                       ; $6ad2: $4c
    inc b                                         ; $6ad3: $04
    rst $20                                       ; $6ad4: $e7
    sub l                                         ; $6ad5: $95
    xor h                                         ; $6ad6: $ac
    ld d, b                                       ; $6ad7: $50
    ld h, [hl]                                    ; $6ad8: $66
    rst $18                                       ; $6ad9: $df
    ld b, d                                       ; $6ada: $42
    sbc b                                         ; $6adb: $98
    add hl, hl                                    ; $6adc: $29
    ld sp, $0008                                  ; $6add: $31 $08 $00

jr_03d_6ae0:
    rst $20                                       ; $6ae0: $e7
    add hl, bc                                    ; $6ae1: $09

Jump_03d_6ae2:
    and c                                         ; $6ae2: $a1
    inc d                                         ; $6ae3: $14
    db $eb                                        ; $6ae4: $eb
    ld [bc], a                                    ; $6ae5: $02
    db $eb                                        ; $6ae6: $eb
    sub a                                         ; $6ae7: $97
    jp c, Jump_000_000a                           ; $6ae8: $da $0a $00

    rla                                           ; $6aeb: $17
    ld a, l                                       ; $6aec: $7d
    add l                                         ; $6aed: $85

jr_03d_6aee:
    add d                                         ; $6aee: $82
    call c, $ec39                                 ; $6aef: $dc $39 $ec
    sub e                                         ; $6af2: $93
    jr jr_03d_6ae0                                ; $6af3: $18 $eb

    inc d                                         ; $6af5: $14
    and d                                         ; $6af6: $a2
    or c                                          ; $6af7: $b1
    ld [bc], a                                    ; $6af8: $02
    rst $20                                       ; $6af9: $e7
    ld b, e                                       ; $6afa: $43
    ld hl, sp-$4f                                 ; $6afb: $f8 $b1
    db $fd                                        ; $6afd: $fd
    xor [hl]                                      ; $6afe: $ae
    ld l, h                                       ; $6aff: $6c
    push bc                                       ; $6b00: $c5
    ld l, e                                       ; $6b01: $6b
    db $dd                                        ; $6b02: $dd
    ld h, d                                       ; $6b03: $62
    stop                                          ; $6b04: $10 $00
    add c                                         ; $6b06: $81
    ld l, a                                       ; $6b07: $6f
    add d                                         ; $6b08: $82
    cpl                                           ; $6b09: $2f
    ld c, l                                       ; $6b0a: $4d
    push af                                       ; $6b0b: $f5
    ld [hl], a                                    ; $6b0c: $77
    sbc c                                         ; $6b0d: $99

jr_03d_6b0e:
    add e                                         ; $6b0e: $83
    ld h, b                                       ; $6b0f: $60
    ld h, [hl]                                    ; $6b10: $66
    ld a, d                                       ; $6b11: $7a
    nop                                           ; $6b12: $00
    rst $20                                       ; $6b13: $e7
    sub l                                         ; $6b14: $95
    rst $00                                       ; $6b15: $c7
    ld a, [hl-]                                   ; $6b16: $3a
    add l                                         ; $6b17: $85
    dec bc                                        ; $6b18: $0b
    ldh [$c3], a                                  ; $6b19: $e0 $c3
    and b                                         ; $6b1b: $a0
    ld [bc], a                                    ; $6b1c: $02
    ld h, a                                       ; $6b1d: $67
    ld a, a                                       ; $6b1e: $7f
    xor c                                         ; $6b1f: $a9
    ld c, [hl]                                    ; $6b20: $4e
    daa                                           ; $6b21: $27
    dec sp                                        ; $6b22: $3b
    cp e                                          ; $6b23: $bb
    inc a                                         ; $6b24: $3c
    ld [de], a                                    ; $6b25: $12
    nop                                           ; $6b26: $00
    rst $20                                       ; $6b27: $e7
    or d                                          ; $6b28: $b2
    inc [hl]                                      ; $6b29: $34
    ld e, b                                       ; $6b2a: $58
    dec bc                                        ; $6b2b: $0b
    ld [hl], h                                    ; $6b2c: $74
    ld [hl], l                                    ; $6b2d: $75
    ld c, l                                       ; $6b2e: $4d
    jp hl                                         ; $6b2f: $e9


    sub b                                         ; $6b30: $90
    nop                                           ; $6b31: $00
    rst $20                                       ; $6b32: $e7
    add hl, bc                                    ; $6b33: $09
    db $e3                                        ; $6b34: $e3
    xor a                                         ; $6b35: $af
    rst $30                                       ; $6b36: $f7
    ld b, a                                       ; $6b37: $47
    inc de                                        ; $6b38: $13
    inc l                                         ; $6b39: $2c
    ld e, c                                       ; $6b3a: $59
    ld hl, $f600                                  ; $6b3b: $21 $00 $f6
    adc c                                         ; $6b3e: $89
    jp hl                                         ; $6b3f: $e9


    and h                                         ; $6b40: $a4
    db $fd                                        ; $6b41: $fd
    ld a, [$68ba]                                 ; $6b42: $fa $ba $68
    or d                                          ; $6b45: $b2
    xor $10                                       ; $6b46: $ee $10
    nop                                           ; $6b48: $00
    rst $20                                       ; $6b49: $e7
    or l                                          ; $6b4a: $b5
    ld [$14ea], a                                 ; $6b4b: $ea $ea $14
    cp a                                          ; $6b4e: $bf
    adc e                                         ; $6b4f: $8b
    ld c, e                                       ; $6b50: $4b
    and c                                         ; $6b51: $a1
    call nz, $0044                                ; $6b52: $c4 $44 $00
    rla                                           ; $6b55: $17
    and h                                         ; $6b56: $a4
    ld [hl], c                                    ; $6b57: $71
    add sp, $7f                                   ; $6b58: $e8 $7f

jr_03d_6b5a:
    add c                                         ; $6b5a: $81
    ld d, [hl]                                    ; $6b5b: $56
    jr jr_03d_6bb2                                ; $6b5c: $18 $54

    nop                                           ; $6b5e: $00
    sub a                                         ; $6b5f: $97
    cp b                                          ; $6b60: $b8
    ld b, h                                       ; $6b61: $44
    ld l, b                                       ; $6b62: $68
    ld bc, $0009                                  ; $6b63: $01 $09 $00
    rst $20                                       ; $6b66: $e7
    and h                                         ; $6b67: $a4
    sbc b                                         ; $6b68: $98
    rst $10                                       ; $6b69: $d7
    ld e, l                                       ; $6b6a: $5d
    ret                                           ; $6b6b: $c9


    ld d, d                                       ; $6b6c: $52
    ld a, [hl-]                                   ; $6b6d: $3a
    inc l                                         ; $6b6e: $2c
    ld e, c                                       ; $6b6f: $59
    and c                                         ; $6b70: $a1
    rlca                                          ; $6b71: $07
    ld a, l                                       ; $6b72: $7d
    jr z, jr_03d_6ba5                             ; $6b73: $28 $30

    xor l                                         ; $6b75: $ad
    jr c, jr_03d_6b0e                             ; $6b76: $38 $96

    push af                                       ; $6b78: $f5
    ld sp, hl                                     ; $6b79: $f9
    jp nc, Jump_03d_4b4c                          ; $6b7a: $d2 $4c $4b

    ld c, l                                       ; $6b7d: $4d
    nop                                           ; $6b7e: $00
    ld a, l                                       ; $6b7f: $7d
    ld d, d                                       ; $6b80: $52
    and b                                         ; $6b81: $a0
    rst $00                                       ; $6b82: $c7
    dec d                                         ; $6b83: $15
    xor $dc                                       ; $6b84: $ee $dc
    or a                                          ; $6b86: $b7
    ld [bc], a                                    ; $6b87: $02
    cp l                                          ; $6b88: $bd
    and l                                         ; $6b89: $a5
    ld l, c                                       ; $6b8a: $69
    ret c                                         ; $6b8b: $d8

    ld [hl], b                                    ; $6b8c: $70
    cp l                                          ; $6b8d: $bd
    dec h                                         ; $6b8e: $25
    ld de, $0006                                  ; $6b8f: $11 $06 $00
    halt                                          ; $6b92: $76
    ld sp, $22c8                                  ; $6b93: $31 $c8 $22
    db $f4                                        ; $6b96: $f4
    ld h, e                                       ; $6b97: $63
    ld e, c                                       ; $6b98: $59
    and b                                         ; $6b99: $a0
    ld d, e                                       ; $6b9a: $53
    jp $b630                                      ; $6b9b: $c3 $30 $b6


    ld c, [hl]                                    ; $6b9e: $4e
    ld hl, $6700                                  ; $6b9f: $21 $00 $67
    di                                            ; $6ba2: $f3
    and e                                         ; $6ba3: $a3
    inc [hl]                                      ; $6ba4: $34

jr_03d_6ba5:
    ld e, b                                       ; $6ba5: $58
    dec sp                                        ; $6ba6: $3b
    cp e                                          ; $6ba7: $bb
    inc h                                         ; $6ba8: $24
    xor h                                         ; $6ba9: $ac
    xor a                                         ; $6baa: $af
    ld bc, $4abd                                  ; $6bab: $01 $bd $4a
    add a                                         ; $6bae: $87
    ld [de], a                                    ; $6baf: $12
    ld a, a                                       ; $6bb0: $7f
    sub a                                         ; $6bb1: $97

jr_03d_6bb2:
    ld h, l                                       ; $6bb2: $65
    add $60                                       ; $6bb3: $c6 $60
    dec hl                                        ; $6bb5: $2b
    dec b                                         ; $6bb6: $05
    nop                                           ; $6bb7: $00

jr_03d_6bb8:
    ld d, a                                       ; $6bb8: $57
    ld a, l                                       ; $6bb9: $7d
    and l                                         ; $6bba: $a5
    ld d, c                                       ; $6bbb: $51
    halt                                          ; $6bbc: $76
    jp hl                                         ; $6bbd: $e9


    ld l, e                                       ; $6bbe: $6b
    sub h                                         ; $6bbf: $94
    ld h, [hl]                                    ; $6bc0: $66
    ld h, b                                       ; $6bc1: $60
    nop                                           ; $6bc2: $00
    ld d, a                                       ; $6bc3: $57
    cp a                                          ; $6bc4: $bf
    ld hl, sp+$42                                 ; $6bc5: $f8 $42
    db $eb                                        ; $6bc7: $eb
    ld [bc], a                                    ; $6bc8: $02
    jp z, Jump_000_08c7                           ; $6bc9: $ca $c7 $08

    nop                                           ; $6bcc: $00

jr_03d_6bcd:
    rst $20                                       ; $6bcd: $e7
    ld e, b                                       ; $6bce: $58
    db $eb                                        ; $6bcf: $eb
    jr nc, jr_03d_6b5a                            ; $6bd0: $30 $88

    cp a                                          ; $6bd2: $bf
    ld [hl], e                                    ; $6bd3: $73
    sbc l                                         ; $6bd4: $9d
    call nc, Call_000_110f                        ; $6bd5: $d4 $0f $11
    nop                                           ; $6bd8: $00
    rst $20                                       ; $6bd9: $e7
    cp d                                          ; $6bda: $ba
    jp nc, $c4a1                                  ; $6bdb: $d2 $a1 $c4

    or c                                          ; $6bde: $b1
    db $ec                                        ; $6bdf: $ec
    ld [hl-], a                                   ; $6be0: $32
    adc d                                         ; $6be1: $8a
    or h                                          ; $6be2: $b4
    ld c, [hl]                                    ; $6be3: $4e

jr_03d_6be4:
    ld hl, $5700                                  ; $6be4: $21 $00 $57
    ld [de], a                                    ; $6be7: $12
    dec a                                         ; $6be8: $3d
    ld c, e                                       ; $6be9: $4b
    jp $9f95                                      ; $6bea: $c3 $95 $9f


    dec a                                         ; $6bed: $3d
    ld c, l                                       ; $6bee: $4d
    or b                                          ; $6bef: $b0
    add hl, de                                    ; $6bf0: $19
    jp z, $9703                                   ; $6bf1: $ca $03 $97

    or l                                          ; $6bf4: $b5
    ld d, d                                       ; $6bf5: $52
    xor h                                         ; $6bf6: $ac
    cp e                                          ; $6bf7: $bb
    inc l                                         ; $6bf8: $2c
    ld h, c                                       ; $6bf9: $61
    stop                                          ; $6bfa: $10 $00
    cp l                                          ; $6bfc: $bd
    ld e, a                                       ; $6bfd: $5f
    ld c, d                                       ; $6bfe: $4a
    add $f8                                       ; $6bff: $c6 $f8
    dec bc                                        ; $6c01: $0b
    ld l, b                                       ; $6c02: $68
    ld [$6343], sp                                ; $6c03: $08 $43 $63
    ld [hl+], a                                   ; $6c06: $22
    ld bc, $1e76                                  ; $6c07: $01 $76 $1e
    ld a, d                                       ; $6c0a: $7a
    ld e, c                                       ; $6c0b: $59
    ld h, b                                       ; $6c0c: $60
    sub h                                         ; $6c0d: $94
    ld [hl], h                                    ; $6c0e: $74
    dec b                                         ; $6c0f: $05
    and d                                         ; $6c10: $a2
    nop                                           ; $6c11: $00
    or $5f                                        ; $6c12: $f6 $5f
    ld h, c                                       ; $6c14: $61
    ld c, c                                       ; $6c15: $49
    inc bc                                        ; $6c16: $03
    ld h, e                                       ; $6c17: $63
    add c                                         ; $6c18: $81
    jr nc, jr_03d_6be4                            ; $6c19: $30 $c9

    ret c                                         ; $6c1b: $d8

    db $10                                        ; $6c1c: $10
    ld [bc], a                                    ; $6c1d: $02
    rst $20                                       ; $6c1e: $e7
    sub [hl]                                      ; $6c1f: $96

Jump_03d_6c20:
    xor a                                         ; $6c20: $af
    inc [hl]                                      ; $6c21: $34
    and a                                         ; $6c22: $a7
    dec sp                                        ; $6c23: $3b
    sbc e                                         ; $6c24: $9b
    and l                                         ; $6c25: $a5
    ld h, e                                       ; $6c26: $63
    dec b                                         ; $6c27: $05
    rla                                           ; $6c28: $17
    jr c, jr_03d_6bb8                             ; $6c29: $38 $8d

    ld c, [hl]                                    ; $6c2b: $4e
    rla                                           ; $6c2c: $17
    ret nc                                        ; $6c2d: $d0

    ld c, d                                       ; $6c2e: $4a
    ld l, c                                       ; $6c2f: $69
    jr nc, jr_03d_6bcd                            ; $6c30: $30 $9b

    add c                                         ; $6c32: $81
    ld d, c                                       ; $6c33: $51
    ld [$7d00], sp                                ; $6c34: $08 $00 $7d
    ld d, e                                       ; $6c37: $53
    ld a, [hl+]                                   ; $6c38: $2a
    inc l                                         ; $6c39: $2c
    cp e                                          ; $6c3a: $bb
    inc c                                         ; $6c3b: $0c
    ld h, [hl]                                    ; $6c3c: $66
    ld [hl+], a                                   ; $6c3d: $22
    inc c                                         ; $6c3e: $0c
    nop                                           ; $6c3f: $00
    rla                                           ; $6c40: $17
    dec hl                                        ; $6c41: $2b
    call z, Call_03d_7e2f                         ; $6c42: $cc $2f $7e
    ld h, a                                       ; $6c45: $67
    di                                            ; $6c46: $f3
    db $eb                                        ; $6c47: $eb
    and [hl]                                      ; $6c48: $a6

jr_03d_6c49:
    ld b, c                                       ; $6c49: $41
    nop                                           ; $6c4a: $00
    cp l                                          ; $6c4b: $bd
    ld d, e                                       ; $6c4c: $53
    sub b                                         ; $6c4d: $90
    and l                                         ; $6c4e: $a5
    add hl, sp                                    ; $6c4f: $39
    ld e, l                                       ; $6c50: $5d
    cpl                                           ; $6c51: $2f
    ld c, b                                       ; $6c52: $48
    ld e, d                                       ; $6c53: $5a
    jr jr_03d_6c94                                ; $6c54: $18 $3e

    nop                                           ; $6c56: $00
    rst $20                                       ; $6c57: $e7
    cp c                                          ; $6c58: $b9
    ld d, d                                       ; $6c59: $52
    ld e, d                                       ; $6c5a: $5a
    add l                                         ; $6c5b: $85
    or d                                          ; $6c5c: $b2
    add b                                         ; $6c5d: $80
    add h                                         ; $6c5e: $84
    pop bc                                        ; $6c5f: $c1
    adc [hl]                                      ; $6c60: $8e
    dec d                                         ; $6c61: $15
    nop                                           ; $6c62: $00
    ld a, l                                       ; $6c63: $7d
    add hl, bc                                    ; $6c64: $09
    inc sp                                        ; $6c65: $33
    ld l, $d0                                     ; $6c66: $2e $d0
    ld a, h                                       ; $6c68: $7c
    db $fd                                        ; $6c69: $fd
    add sp, $29                                   ; $6c6a: $e8 $29
    nop                                           ; $6c6c: $00
    rst $20                                       ; $6c6d: $e7
    dec d                                         ; $6c6e: $15
    and d                                         ; $6c6f: $a2
    rst $38                                       ; $6c70: $ff
    push af                                       ; $6c71: $f5
    ld c, $b6                                     ; $6c72: $0e $b6
    jr jr_03d_6c49                                ; $6c74: $18 $d3

    ret nz                                        ; $6c76: $c0

    nop                                           ; $6c77: $00
    cp l                                          ; $6c78: $bd
    db $fc                                        ; $6c79: $fc
    sub a                                         ; $6c7a: $97
    ld c, $25                                     ; $6c7b: $0e $25
    xor $ca                                       ; $6c7d: $ee $ca
    xor a                                         ; $6c7f: $af
    xor [hl]                                      ; $6c80: $ae

jr_03d_6c81:
    ld l, $0d                                     ; $6c81: $2e $0d
    ld hl, $0100                                  ; $6c83: $21 $00 $01
    sub h                                         ; $6c86: $94
    sub b                                         ; $6c87: $90
    pop de                                        ; $6c88: $d1
    db $fd                                        ; $6c89: $fd
    adc $7d                                       ; $6c8a: $ce $7d
    inc [hl]                                      ; $6c8c: $34
    jp hl                                         ; $6c8d: $e9


    inc h                                         ; $6c8e: $24
    ld [bc], a                                    ; $6c8f: $02
    cp l                                          ; $6c90: $bd
    ld e, a                                       ; $6c91: $5f
    push af                                       ; $6c92: $f5
    pop de                                        ; $6c93: $d1

jr_03d_6c94:
    set 5, a                                      ; $6c94: $cb $ef
    adc d                                         ; $6c96: $8a
    rst $28                                       ; $6c97: $ef
    sub h                                         ; $6c98: $94
    adc a                                         ; $6c99: $8f
    ld a, [bc]                                    ; $6c9a: $0a
    jp Jump_000_000a                              ; $6c9b: $c3 $0a $00


    ld a, l                                       ; $6c9e: $7d
    ld [hl-], a                                   ; $6c9f: $32
    ld d, h                                       ; $6ca0: $54
    and a                                         ; $6ca1: $a7
    nop                                           ; $6ca2: $00
    ld h, a                                       ; $6ca3: $67
    rla                                           ; $6ca4: $17
    ld h, d                                       ; $6ca5: $62
    sub b                                         ; $6ca6: $90
    xor l                                         ; $6ca7: $ad
    ld e, [hl]                                    ; $6ca8: $5e
    ld h, b                                       ; $6ca9: $60
    db $fc                                        ; $6caa: $fc
    ld [bc], a                                    ; $6cab: $02
    inc bc                                        ; $6cac: $03
    nop                                           ; $6cad: $00
    halt                                          ; $6cae: $76
    ld h, l                                       ; $6caf: $65
    sub a                                         ; $6cb0: $97
    jp nc, $c0ba                                  ; $6cb1: $d2 $ba $c0

    cpl                                           ; $6cb4: $2f
    ld e, c                                       ; $6cb5: $59
    db $db                                        ; $6cb6: $db
    ld [hl+], a                                   ; $6cb7: $22
    nop                                           ; $6cb8: $00
    ld a, l                                       ; $6cb9: $7d
    jr z, jr_03d_6c81                             ; $6cba: $28 $c5

    ld b, $01                                     ; $6cbc: $06 $01
    halt                                          ; $6cbe: $76
    and l                                         ; $6cbf: $a5
    ld e, d                                       ; $6cc0: $5a
    sbc d                                         ; $6cc1: $9a
    rst $38                                       ; $6cc2: $ff
    push af                                       ; $6cc3: $f5
    ld l, $0f                                     ; $6cc4: $2e $0f
    ld b, c                                       ; $6cc6: $41
    nop                                           ; $6cc7: $00
    rst $20                                       ; $6cc8: $e7
    ld c, c                                       ; $6cc9: $49
    ld b, d                                       ; $6cca: $42
    adc a                                         ; $6ccb: $8f
    dec bc                                        ; $6ccc: $0b
    adc h                                         ; $6ccd: $8c
    xor [hl]                                      ; $6cce: $ae
    ld c, $01                                     ; $6ccf: $0e $01
    ld h, a                                       ; $6cd1: $67
    dec sp                                        ; $6cd2: $3b
    pop af                                        ; $6cd3: $f1
    ld l, c                                       ; $6cd4: $69
    ld h, b                                       ; $6cd5: $60
    xor h                                         ; $6cd6: $ac
    adc a                                         ; $6cd7: $8f
    dec hl                                        ; $6cd8: $2b
    ld a, $13                                     ; $6cd9: $3e $13
    ld bc, $4abd                                  ; $6cdb: $01 $bd $4a
    ld c, l                                       ; $6cde: $4d
    ld l, c                                       ; $6cdf: $69
    ld b, $c6                                     ; $6ce0: $06 $c6
    ld [bc], a                                    ; $6ce2: $02
    rra                                           ; $6ce3: $1f
    ld h, [hl]                                    ; $6ce4: $66
    ld b, a                                       ; $6ce5: $47
    sbc d                                         ; $6ce6: $9a
    add a                                         ; $6ce7: $87
    ld [$bd00], sp                                ; $6ce8: $08 $00 $bd
    inc h                                         ; $6ceb: $24
    or d                                          ; $6cec: $b2
    ld l, [hl]                                    ; $6ced: $6e
    jp c, Jump_000_177e                           ; $6cee: $da $7e $17

    cp c                                          ; $6cf1: $b9
    ld l, d                                       ; $6cf2: $6a
    jr @+$0f                                      ; $6cf3: $18 $0d

    ld bc, $25e7                                  ; $6cf5: $01 $e7 $25
    ld a, [$0d2c]                                 ; $6cf8: $fa $2c $0d
    cp c                                          ; $6cfb: $b9
    adc e                                         ; $6cfc: $8b
    ld c, e                                       ; $6cfd: $4b
    dec bc                                        ; $6cfe: $0b
    add e                                         ; $6cff: $83
    adc a                                         ; $6d00: $8f
    ld de, $7d00                                  ; $6d01: $11 $00 $7d
    ld [de], a                                    ; $6d04: $12
    db $e3                                        ; $6d05: $e3
    ld b, e                                       ; $6d06: $43
    adc [hl]                                      ; $6d07: $8e
    cp e                                          ; $6d08: $bb
    db $10                                        ; $6d09: $10
    dec de                                        ; $6d0a: $1b
    inc d                                         ; $6d0b: $14
    adc h                                         ; $6d0c: $8c
    add l                                         ; $6d0d: $85
    ld d, [hl]                                    ; $6d0e: $56
    nop                                           ; $6d0f: $00
    or $2f                                        ; $6d10: $f6 $2f
    ld h, d                                       ; $6d12: $62
    ld e, l                                       ; $6d13: $5d
    ld b, b                                       ; $6d14: $40
    add $48                                       ; $6d15: $c6 $48
    ld bc, $50e7                                  ; $6d17: $01 $e7 $50
    ld h, b                                       ; $6d1a: $60
    ld [de], a                                    ; $6d1b: $12
    db $e3                                        ; $6d1c: $e3
    ld [bc], a                                    ; $6d1d: $02
    add e                                         ; $6d1e: $83
    xor l                                         ; $6d1f: $ad
    ld c, $4b                                     ; $6d20: $0e $4b
    ld b, e                                       ; $6d22: $43
    ld [$e700], sp                                ; $6d23: $08 $00 $e7
    add hl, sp                                    ; $6d26: $39
    inc c                                         ; $6d27: $0c
    or [hl]                                       ; $6d28: $b6
    ld [c], a                                     ; $6d29: $e2
    ld a, a                                       ; $6d2a: $7f
    ld e, c                                       ; $6d2b: $59
    cp l                                          ; $6d2c: $bd
    di                                            ; $6d2d: $f3
    ld d, d                                       ; $6d2e: $52
    sub h                                         ; $6d2f: $94
    ld [hl], l                                    ; $6d30: $75
    and [hl]                                      ; $6d31: $a6
    nop                                           ; $6d32: $00
    cp l                                          ; $6d33: $bd
    ld c, e                                       ; $6d34: $4b
    ld c, e                                       ; $6d35: $4b
    adc a                                         ; $6d36: $8f
    rrca                                          ; $6d37: $0f
    nop                                           ; $6d38: $00
    ld h, a                                       ; $6d39: $67
    di                                            ; $6d3a: $f3
    ld e, l                                       ; $6d3b: $5d
    sbc l                                         ; $6d3c: $9d
    jr @-$27                                      ; $6d3d: $18 $d7

    rst $20                                       ; $6d3f: $e7
    and l                                         ; $6d40: $a5
    ld e, a                                       ; $6d41: $5f
    ld c, d                                       ; $6d42: $4a
    db $eb                                        ; $6d43: $eb
    inc a                                         ; $6d44: $3c
    jp nz, TimerOverflowInterrupt                 ; $6d45: $c2 $50 $00

    cp l                                          ; $6d48: $bd
    add e                                         ; $6d49: $83
    rst $28                                       ; $6d4a: $ef
    ret nc                                        ; $6d4b: $d0

    ret nc                                        ; $6d4c: $d0

    cp d                                          ; $6d4d: $ba
    adc e                                         ; $6d4e: $8b
    adc e                                         ; $6d4f: $8b
    sub a                                         ; $6d50: $97
    and $21                                       ; $6d51: $e6 $21
    ld [bc], a                                    ; $6d53: $02
    ld a, l                                       ; $6d54: $7d
    inc e                                         ; $6d55: $1c
    ld b, d                                       ; $6d56: $42
    cp c                                          ; $6d57: $b9
    or e                                          ; $6d58: $b3
    inc de                                        ; $6d59: $13
    add e                                         ; $6d5a: $83
    ld e, a                                       ; $6d5b: $5f
    inc bc                                        ; $6d5c: $03
    ld d, a                                       ; $6d5d: $57
    or [hl]                                       ; $6d5e: $b6
    ld d, d                                       ; $6d5f: $52
    dec l                                         ; $6d60: $2d
    db $f4                                        ; $6d61: $f4
    or e                                          ; $6d62: $b3
    dec hl                                        ; $6d63: $2b
    ld h, c                                       ; $6d64: $61
    or b                                          ; $6d65: $b0
    add hl, de                                    ; $6d66: $19
    jr jr_03d_6d69                                ; $6d67: $18 $00

jr_03d_6d69:
    ld h, a                                       ; $6d69: $67
    ld c, e                                       ; $6d6a: $4b
    di                                            ; $6d6b: $f3
    db $10                                        ; $6d6c: $10
    db $e3                                        ; $6d6d: $e3
    xor [hl]                                      ; $6d6e: $ae
    inc h                                         ; $6d6f: $24
    sub [hl]                                      ; $6d70: $96
    inc [hl]                                      ; $6d71: $34
    jr nc, jr_03d_6d74                            ; $6d72: $30 $00

jr_03d_6d74:
    rst $20                                       ; $6d74: $e7
    and l                                         ; $6d75: $a5
    sub a                                         ; $6d76: $97
    ld h, [hl]                                    ; $6d77: $66
    halt                                          ; $6d78: $76
    sbc [hl]                                      ; $6d79: $9e
    ld e, b                                       ; $6d7a: $58
    xor e                                         ; $6d7b: $ab
    xor e                                         ; $6d7c: $ab
    dec de                                        ; $6d7d: $1b
    ld a, [$0014]                                 ; $6d7e: $fa $14 $00
    ld a, l                                       ; $6d81: $7d
    sbc d                                         ; $6d82: $9a
    inc a                                         ; $6d83: $3c
    ld a, [$79df]                                 ; $6d84: $fa $df $79
    xor c                                         ; $6d87: $a9
    pop bc                                        ; $6d88: $c1
    add a                                         ; $6d89: $87
    add hl, bc                                    ; $6d8a: $09
    inc bc                                        ; $6d8b: $03
    nop                                           ; $6d8c: $00
    add c                                         ; $6d8d: $81
    ld e, a                                       ; $6d8e: $5f
    cp [hl]                                       ; $6d8f: $be
    rst $38                                       ; $6d90: $ff
    rlc d                                         ; $6d91: $cb $02
    adc e                                         ; $6d93: $8b
    dec [hl]                                      ; $6d94: $35
    ld b, $29                                     ; $6d95: $06 $29
    dec c                                         ; $6d97: $0d
    ld bc, $3897                                  ; $6d98: $01 $97 $38
    ld [de], a                                    ; $6d9b: $12
    rst $10                                       ; $6d9c: $d7
    rst $20                                       ; $6d9d: $e7
    ld e, c                                       ; $6d9e: $59
    ld hl, $f600                                  ; $6d9f: $21 $00 $f6
    inc l                                         ; $6da2: $2c
    ret nc                                        ; $6da3: $d0

    rst $08                                       ; $6da4: $cf
    sbc $55                                       ; $6da5: $de $55
    ld d, a                                       ; $6da7: $57
    rla                                           ; $6da8: $17
    add [hl]                                      ; $6da9: $86
    xor [hl]                                      ; $6daa: $ae
    cp d                                          ; $6dab: $ba
    ld a, [de]                                    ; $6dac: $1a
    nop                                           ; $6dad: $00
    sub a                                         ; $6dae: $97
    ld h, $4c                                     ; $6daf: $26 $4c
    ld [c], a                                     ; $6db1: $e2
    rst $28                                       ; $6db2: $ef
    jp nc, $10af                                  ; $6db3: $d2 $af $10

    ld c, l                                       ; $6db6: $4d
    ld a, c                                       ; $6db7: $79
    sbc b                                         ; $6db8: $98
    nop                                           ; $6db9: $00
    sub a                                         ; $6dba: $97
    ld a, [hl]                                    ; $6dbb: $7e
    ld l, l                                       ; $6dbc: $6d
    adc e                                         ; $6dbd: $8b
    cp e                                          ; $6dbe: $bb
    ret z                                         ; $6dbf: $c8

    sub l                                         ; $6dc0: $95
    ld [bc], a                                    ; $6dc1: $02
    nop                                           ; $6dc2: $00
    rst $20                                       ; $6dc3: $e7
    ld a, h                                       ; $6dc4: $7c
    ld d, e                                       ; $6dc5: $53
    db $eb                                        ; $6dc6: $eb
    adc $49                                       ; $6dc7: $ce $49
    rst $28                                       ; $6dc9: $ef
    add hl, hl                                    ; $6dca: $29
    call $0443                                    ; $6dcb: $cd $43 $04
    cp l                                          ; $6dce: $bd
    ld c, d                                       ; $6dcf: $4a
    rst $00                                       ; $6dd0: $c7
    jp hl                                         ; $6dd1: $e9


    adc $71                                       ; $6dd2: $ce $71
    ld [hl], l                                    ; $6dd4: $75
    and a                                         ; $6dd5: $a7
    ret nc                                        ; $6dd6: $d0

    and a                                         ; $6dd7: $a7
    stop                                          ; $6dd8: $10 $00
    rst $20                                       ; $6dda: $e7
    inc h                                         ; $6ddb: $24
    ld a, $14                                     ; $6ddc: $3e $14
    ld a, h                                       ; $6dde: $7c
    call c, $c265                                 ; $6ddf: $dc $65 $c2
    cp d                                          ; $6de2: $ba
    jr nc, jr_03d_6e2b                            ; $6de3: $30 $46

    nop                                           ; $6de5: $00
    ld a, l                                       ; $6de6: $7d
    sbc h                                         ; $6de7: $9c
    ld [hl], $9f                                  ; $6de8: $36 $9f
    ld a, [c]                                     ; $6dea: $f2
    dec sp                                        ; $6deb: $3b
    ei                                            ; $6dec: $fb
    dec b                                         ; $6ded: $05
    ld b, $cc                                     ; $6dee: $06 $cc
    ld d, $83                                     ; $6df0: $16 $83
    nop                                           ; $6df2: $00
    rst $20                                       ; $6df3: $e7
    dec [hl]                                      ; $6df4: $35
    rst $08                                       ; $6df5: $cf
    call nz, $16f5                                ; $6df6: $c4 $f5 $16
    ld d, a                                       ; $6df9: $57
    ld [hl], a                                    ; $6dfa: $77
    nop                                           ; $6dfb: $00
    or $94                                        ; $6dfc: $f6 $94
    ld a, [$5771]                                 ; $6dfe: $fa $71 $57
    ld [hl], $8c                                  ; $6e01: $36 $8c
    jp nc, Jump_000_0a10                          ; $6e03: $d2 $10 $0a

    ld a, [hl]                                    ; $6e06: $7e
    dec c                                         ; $6e07: $0d
    nop                                           ; $6e08: $00
    rla                                           ; $6e09: $17
    ld [hl], $29                                  ; $6e0a: $36 $29
    or h                                          ; $6e0c: $b4
    xor $1c                                       ; $6e0d: $ee $1c
    rlca                                          ; $6e0f: $07
    add e                                         ; $6e10: $83
    nop                                           ; $6e11: $00
    ld a, l                                       ; $6e12: $7d
    xor h                                         ; $6e13: $ac
    sub d                                         ; $6e14: $92
    cp b                                          ; $6e15: $b8
    dec hl                                        ; $6e16: $2b
    rra                                           ; $6e17: $1f
    adc d                                         ; $6e18: $8a
    rst $18                                       ; $6e19: $df
    ld a, [bc]                                    ; $6e1a: $0a
    nop                                           ; $6e1b: $00
    rla                                           ; $6e1c: $17
    adc e                                         ; $6e1d: $8b
    ld [hl], $cc                                  ; $6e1e: $36 $cc
    ld e, l                                       ; $6e20: $5d
    ld d, $14                                     ; $6e21: $16 $14
    and a                                         ; $6e23: $a7
    ld sp, $0011                                  ; $6e24: $31 $11 $00
    cp l                                          ; $6e27: $bd
    ld e, c                                       ; $6e28: $59
    xor b                                         ; $6e29: $a8
    or c                                          ; $6e2a: $b1

jr_03d_6e2b:
    pop hl                                        ; $6e2b: $e1
    rst $28                                       ; $6e2c: $ef
    jp z, $0e97                                   ; $6e2d: $ca $97 $0e

    dec c                                         ; $6e30: $0d
    inc c                                         ; $6e31: $0c
    nop                                           ; $6e32: $00
    or $fc                                        ; $6e33: $f6 $fc
    jr jr_03d_6e6b                                ; $6e35: $18 $34

    add hl, de                                    ; $6e37: $19
    cp c                                          ; $6e38: $b9
    or e                                          ; $6e39: $b3
    ld e, a                                       ; $6e3a: $5f
    ld a, [hl-]                                   ; $6e3b: $3a
    cpl                                           ; $6e3c: $2f
    ld d, [hl]                                    ; $6e3d: $56
    nop                                           ; $6e3e: $00
    ld a, l                                       ; $6e3f: $7d
    jr z, jr_03d_6e73                             ; $6e40: $28 $31

    ld [hl], c                                    ; $6e42: $71
    rst $20                                       ; $6e43: $e7
    ret                                           ; $6e44: $c9


    ld d, a                                       ; $6e45: $57
    xor b                                         ; $6e46: $a8
    nop                                           ; $6e47: $00
    ld h, a                                       ; $6e48: $67
    daa                                           ; $6e49: $27
    call z, Call_03d_71fa                         ; $6e4a: $cc $fa $71
    ld d, a                                       ; $6e4d: $57
    ld c, d                                       ; $6e4e: $4a
    add e                                         ; $6e4f: $83
    add d                                         ; $6e50: $82
    ld de, $1700                                  ; $6e51: $11 $00 $17
    and h                                         ; $6e54: $a4
    ld a, [de]                                    ; $6e55: $1a
    sub [hl]                                      ; $6e56: $96
    add [hl]                                      ; $6e57: $86
    ld a, [hl]                                    ; $6e58: $7e
    ld d, a                                       ; $6e59: $57
    cp [hl]                                       ; $6e5a: $be
    scf                                           ; $6e5b: $37
    ld l, c                                       ; $6e5c: $69
    ld h, b                                       ; $6e5d: $60
    nop                                           ; $6e5e: $00
    rst $20                                       ; $6e5f: $e7
    pop bc                                        ; $6e60: $c1
    inc h                                         ; $6e61: $24
    ld h, $b4                                     ; $6e62: $26 $b4
    dec bc                                        ; $6e64: $0b
    ld [de], a                                    ; $6e65: $12
    xor c                                         ; $6e66: $a9
    nop                                           ; $6e67: $00
    cp l                                          ; $6e68: $bd
    xor l                                         ; $6e69: $ad
    and c                                         ; $6e6a: $a1

jr_03d_6e6b:
    or h                                          ; $6e6b: $b4
    rst $00                                       ; $6e6c: $c7

jr_03d_6e6d:
    ld e, l                                       ; $6e6d: $5d
    sbc l                                         ; $6e6e: $9d
    adc $17                                       ; $6e6f: $ce $17
    ld [bc], a                                    ; $6e71: $02
    rst $20                                       ; $6e72: $e7

jr_03d_6e73:
    or b                                          ; $6e73: $b0
    ld d, d                                       ; $6e74: $52
    ld a, [de]                                    ; $6e75: $1a
    xor $ca                                       ; $6e76: $ee $ca
    ld h, b                                       ; $6e78: $60

jr_03d_6e79:
    adc e                                         ; $6e79: $8b

jr_03d_6e7a:
    inc c                                         ; $6e7a: $0c
    and [hl]                                      ; $6e7b: $a6
    jr nz, jr_03d_6e7e                            ; $6e7c: $20 $00

jr_03d_6e7e:
    rst $20                                       ; $6e7e: $e7
    jr c, jr_03d_6e6d                             ; $6e7f: $38 $ec

    cp h                                          ; $6e81: $bc
    db $ec                                        ; $6e82: $ec
    ld h, d                                       ; $6e83: $62
    xor b                                         ; $6e84: $a8
    jr nc, @+$08                                  ; $6e85: $30 $06

    ld d, e                                       ; $6e87: $53
    ld b, d                                       ; $6e88: $42
    ld [bc], a                                    ; $6e89: $02
    rla                                           ; $6e8a: $17
    ld sp, $2cc3                                  ; $6e8b: $31 $c3 $2c
    cp [hl]                                       ; $6e8e: $be
    pop hl                                        ; $6e8f: $e1
    cpl                                           ; $6e90: $2f
    or b                                          ; $6e91: $b0
    ld h, [hl]                                    ; $6e92: $66
    inc c                                         ; $6e93: $0c
    jp nz, $1ab4                                  ; $6e94: $c2 $b4 $1a

    jr jr_03d_6e99                                ; $6e97: $18 $00

jr_03d_6e99:
    sub a                                         ; $6e99: $97
    and [hl]                                      ; $6e9a: $a6
    and a                                         ; $6e9b: $a7
    inc [hl]                                      ; $6e9c: $34
    inc bc                                        ; $6e9d: $03
    ld h, e                                       ; $6e9e: $63
    ld bc, $d5c5                                  ; $6e9f: $01 $c5 $d5
    ld h, c                                       ; $6ea2: $61
    ld c, h                                       ; $6ea3: $4c
    inc b                                         ; $6ea4: $04
    sub a                                         ; $6ea5: $97
    ld h, [hl]                                    ; $6ea6: $66
    ld a, c                                       ; $6ea7: $79
    db $f4                                        ; $6ea8: $f4
    cp e                                          ; $6ea9: $bb
    sub b                                         ; $6eaa: $90
    db $10                                        ; $6eab: $10
    inc b                                         ; $6eac: $04
    nop                                           ; $6ead: $00
    or $94                                        ; $6eae: $f6 $94
    jr nc, jr_03d_6e79                            ; $6eb0: $30 $c7

    or d                                          ; $6eb2: $b2
    ld b, b                                       ; $6eb3: $40
    ld h, a                                       ; $6eb4: $67
    ld e, d                                       ; $6eb5: $5a
    ld [bc], a                                    ; $6eb6: $02
    cp l                                          ; $6eb7: $bd
    ret nc                                        ; $6eb8: $d0

    ld c, e                                       ; $6eb9: $4b
    ld [$7658], a                                 ; $6eba: $ea $58 $76
    ld a, $56                                     ; $6ebd: $3e $56
    adc b                                         ; $6ebf: $88
    and [hl]                                      ; $6ec0: $a6
    ld [hl], l                                    ; $6ec1: $75
    ld a, [bc]                                    ; $6ec2: $0a
    ld bc, $1797                                  ; $6ec3: $01 $97 $17
    ld l, c                                       ; $6ec6: $69
    ld h, $c7                                     ; $6ec7: $26 $c7
    or d                                          ; $6ec9: $b2
    sbc $c1                                       ; $6eca: $de $c1
    ld d, [hl]                                    ; $6ecc: $56
    ld e, l                                       ; $6ecd: $5d
    sbc $27                                       ; $6ece: $de $27
    nop                                           ; $6ed0: $00
    rla                                           ; $6ed1: $17
    and l                                         ; $6ed2: $a5
    ld hl, sp+$05                                 ; $6ed3: $f8 $05
    add $f4                                       ; $6ed5: $c6 $f4
    cp $c5                                        ; $6ed7: $fe $c5
    rst $28                                       ; $6ed9: $ef
    jp z, $8316                                   ; $6eda: $ca $16 $83

    inc d                                         ; $6edd: $14
    dec b                                         ; $6ede: $05
    cp l                                          ; $6edf: $bd
    sbc e                                         ; $6ee0: $9b
    jr jr_03d_6ee5                                ; $6ee1: $18 $02

    ld a, l                                       ; $6ee3: $7d
    sbc d                                         ; $6ee4: $9a

jr_03d_6ee5:
    ld a, h                                       ; $6ee5: $7c
    add a                                         ; $6ee6: $87
    and l                                         ; $6ee7: $a5
    db $fc                                        ; $6ee8: $fc
    ld [bc], a                                    ; $6ee9: $02
    adc d                                         ; $6eea: $8a
    ld b, e                                       ; $6eeb: $43
    jr jr_03d_6e7a                                ; $6eec: $18 $8c

    ld de, $6700                                  ; $6eee: $11 $00 $67
    ld d, e                                       ; $6ef1: $53
    ld h, d                                       ; $6ef2: $62
    db $e3                                        ; $6ef3: $e3
    adc $ce                                       ; $6ef4: $ce $ce
    jr jr_03d_6ef9                                ; $6ef6: $18 $01

    sub a                                         ; $6ef8: $97

jr_03d_6ef9:
    dec b                                         ; $6ef9: $05
    rst $18                                       ; $6efa: $df
    ld a, e                                       ; $6efb: $7b
    ld a, [hl-]                                   ; $6efc: $3a
    db $dd                                        ; $6efd: $dd
    ld h, l                                       ; $6efe: $65
    ld b, c                                       ; $6eff: $41
    daa                                           ; $6f00: $27
    jr nc, jr_03d_6f5b                            ; $6f01: $30 $58

    ld a, [bc]                                    ; $6f03: $0a
    nop                                           ; $6f04: $00
    rst $20                                       ; $6f05: $e7
    ld d, b                                       ; $6f06: $50
    ld c, l                                       ; $6f07: $4d
    ld h, d                                       ; $6f08: $62
    sbc d                                         ; $6f09: $9a
    and $13                                       ; $6f0a: $e6 $13
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    halt                                          ; $6f0e: $76
    db $fd                                        ; $6f0f: $fd
    ld l, b                                       ; $6f10: $68
    ld e, h                                       ; $6f11: $5c
    ld a, h                                       ; $6f12: $7c
    ld e, c                                       ; $6f13: $59
    xor a                                         ; $6f14: $af
    ld hl, sp+$16                                 ; $6f15: $f8 $16
    ld b, a                                       ; $6f17: $47
    nop                                           ; $6f18: $00
    db $db                                        ; $6f19: $db
    ld [hl], l                                    ; $6f1a: $75
    halt                                          ; $6f1b: $76
    ld a, [de]                                    ; $6f1c: $1a
    sbc l                                         ; $6f1d: $9d
    ld l, a                                       ; $6f1e: $6f
    or [hl]                                       ; $6f1f: $b6
    inc sp                                        ; $6f20: $33
    or [hl]                                       ; $6f21: $b6
    ld [hl], l                                    ; $6f22: $75
    xor [hl]                                      ; $6f23: $ae
    cp h                                          ; $6f24: $bc
    xor [hl]                                      ; $6f25: $ae
    ld a, [$ba95]                                 ; $6f26: $fa $95 $ba
    ld [c], a                                     ; $6f29: $e2
    ldh a, [$85]                                  ; $6f2a: $f0 $85
    cp d                                          ; $6f2c: $ba
    xor a                                         ; $6f2d: $af
    and [hl]                                      ; $6f2e: $a6
    adc c                                         ; $6f2f: $89
    adc a                                         ; $6f30: $8f
    ei                                            ; $6f31: $fb
    sub l                                         ; $6f32: $95
    ld e, a                                       ; $6f33: $5f
    push af                                       ; $6f34: $f5
    ld [hl], a                                    ; $6f35: $77
    and h                                         ; $6f36: $a4
    sbc c                                         ; $6f37: $99
    scf                                           ; $6f38: $37
    call $e716                                    ; $6f39: $cd $16 $e7
    cp c                                          ; $6f3c: $b9
    jr nc, jr_03d_6f8c                            ; $6f3d: $30 $4d

    ld c, e                                       ; $6f3f: $4b
    and h                                         ; $6f40: $a4
    sbc $00                                       ; $6f41: $de $00
    db $db                                        ; $6f43: $db
    ld [hl], l                                    ; $6f44: $75
    halt                                          ; $6f45: $76
    ld h, l                                       ; $6f46: $65
    dec [hl]                                      ; $6f47: $35
    ei                                            ; $6f48: $fb
    and l                                         ; $6f49: $a5
    call z, Call_000_3173                         ; $6f4a: $cc $73 $31
    ld a, l                                       ; $6f4d: $7d
    ld [$ea4a], a                                 ; $6f4e: $ea $4a $ea
    cp [hl]                                       ; $6f51: $be
    ld e, b                                       ; $6f52: $58
    ld e, h                                       ; $6f53: $5c
    xor e                                         ; $6f54: $ab
    sbc e                                         ; $6f55: $9b
    add $d7                                       ; $6f56: $c6 $d7
    push de                                       ; $6f58: $d5
    db $f4                                        ; $6f59: $f4
    adc l                                         ; $6f5a: $8d

jr_03d_6f5b:
    sub l                                         ; $6f5b: $95
    cpl                                           ; $6f5c: $2f
    call nc, $001b                                ; $6f5d: $d4 $1b $00
    db $db                                        ; $6f60: $db
    ld [hl], l                                    ; $6f61: $75
    ld d, a                                       ; $6f62: $57
    ld h, h                                       ; $6f63: $64
    or c                                          ; $6f64: $b1
    ld e, l                                       ; $6f65: $5d
    sbc b                                         ; $6f66: $98
    or d                                          ; $6f67: $b2
    sub d                                         ; $6f68: $92
    cp d                                          ; $6f69: $ba
    ld l, a                                       ; $6f6a: $6f
    ld b, d                                       ; $6f6b: $42
    ld e, l                                       ; $6f6c: $5d
    ld sp, hl                                     ; $6f6d: $f9
    ld a, l                                       ; $6f6e: $7d
    pop af                                        ; $6f6f: $f1
    db $fc                                        ; $6f70: $fc
    ld e, l                                       ; $6f71: $5d
    call nc, $2c62                                ; $6f72: $d4 $62 $2c
    call c, $9239                                 ; $6f75: $dc $39 $92
    ld h, c                                       ; $6f78: $61
    ret c                                         ; $6f79: $d8

    db $10                                        ; $6f7a: $10
    ld e, d                                       ; $6f7b: $5a
    db $dd                                        ; $6f7c: $dd
    adc b                                         ; $6f7d: $88
    ld d, c                                       ; $6f7e: $51
    ld e, [hl]                                    ; $6f7f: $5e
    ld d, a                                       ; $6f80: $57
    or e                                          ; $6f81: $b3
    cp a                                          ; $6f82: $bf
    add hl, hl                                    ; $6f83: $29
    rst $18                                       ; $6f84: $df
    ld sp, hl                                     ; $6f85: $f9
    sbc c                                         ; $6f86: $99
    call nz, $0fd5                                ; $6f87: $c4 $d5 $0f
    or l                                          ; $6f8a: $b5
    sbc a                                         ; $6f8b: $9f

jr_03d_6f8c:
    jp $f85f                                      ; $6f8c: $c3 $5f $f8


    ld a, [de]                                    ; $6f8f: $1a
    ld e, c                                       ; $6f90: $59
    and $39                                       ; $6f91: $e6 $39
    db $e3                                        ; $6f93: $e3
    ld [$f0b0], a                                 ; $6f94: $ea $b0 $f0
    rrca                                          ; $6f97: $0f
    ld c, [hl]                                    ; $6f98: $4e
    cp l                                          ; $6f99: $bd
    ld bc, $75db                                  ; $6f9a: $01 $db $75
    rst $20                                       ; $6f9d: $e7
    ld d, b                                       ; $6f9e: $50
    adc l                                         ; $6f9f: $8d
    db $eb                                        ; $6fa0: $eb
    ld c, b                                       ; $6fa1: $48
    or e                                          ; $6fa2: $b3
    dec e                                         ; $6fa3: $1d
    res 3, h                                      ; $6fa4: $cb $9c
    and $3c                                       ; $6fa6: $e6 $3c
    ld d, a                                       ; $6fa8: $57
    ld a, [hl]                                    ; $6fa9: $7e
    ld h, a                                       ; $6faa: $67
    res 4, e                                      ; $6fab: $cb $a3
    push bc                                       ; $6fad: $c5
    or l                                          ; $6fae: $b5
    cpl                                           ; $6faf: $2f
    ret nc                                        ; $6fb0: $d0

    rst $08                                       ; $6fb1: $cf
    cp b                                          ; $6fb2: $b8
    ld b, a                                       ; $6fb3: $47
    sbc a                                         ; $6fb4: $9f
    ld d, e                                       ; $6fb5: $53
    xor [hl]                                      ; $6fb6: $ae
    ld [hl], b                                    ; $6fb7: $70
    rra                                           ; $6fb8: $1f
    ld e, a                                       ; $6fb9: $5f
    adc l                                         ; $6fba: $8d
    db $ed                                        ; $6fbb: $ed
    jp z, $7ccf                                   ; $6fbc: $ca $cf $7c

    add a                                         ; $6fbf: $87
    db $fd                                        ; $6fc0: $fd
    ld a, a                                       ; $6fc1: $7f
    call nz, $9c39                                ; $6fc2: $c4 $39 $9c
    ld [hl], c                                    ; $6fc5: $71
    sbc l                                         ; $6fc6: $9d
    sbc h                                         ; $6fc7: $9c
    rst $20                                       ; $6fc8: $e7
    ld e, $72                                     ; $6fc9: $1e $72
    ld a, a                                       ; $6fcb: $7f
    inc bc                                        ; $6fcc: $03
    db $db                                        ; $6fcd: $db
    ld [hl], l                                    ; $6fce: $75
    rst $20                                       ; $6fcf: $e7
    ld a, [hl]                                    ; $6fd0: $7e
    sbc l                                         ; $6fd1: $9d
    sbc d                                         ; $6fd2: $9a
    ld l, e                                       ; $6fd3: $6b
    ld e, b                                       ; $6fd4: $58
    ld hl, $94c6                                  ; $6fd5: $21 $c6 $94
    ld a, c                                       ; $6fd8: $79
    sub [hl]                                      ; $6fd9: $96
    push af                                       ; $6fda: $f5
    cp $e2                                        ; $6fdb: $fe $e2
    add hl, hl                                    ; $6fdd: $29
    cp c                                          ; $6fde: $b9
    ld e, [hl]                                    ; $6fdf: $5e
    ld l, $66                                     ; $6fe0: $2e $66
    db $dd                                        ; $6fe2: $dd
    dec d                                         ; $6fe3: $15
    sbc e                                         ; $6fe4: $9b
    ret                                           ; $6fe5: $c9


    dec de                                        ; $6fe6: $1b
    nop                                           ; $6fe7: $00
    db $db                                        ; $6fe8: $db
    ld [hl], l                                    ; $6fe9: $75
    rst $20                                       ; $6fea: $e7
    ld h, e                                       ; $6feb: $63
    add l                                         ; $6fec: $85
    jr jr_03d_7042                                ; $6fed: $18 $53

    and $b9                                       ; $6fef: $e6 $b9
    ld a, [c]                                     ; $6ff1: $f2
    dec bc                                        ; $6ff2: $0b
    ld c, b                                       ; $6ff3: $48
    db $d3                                        ; $6ff4: $d3
    ld l, h                                       ; $6ff5: $6c
    ld [hl], c                                    ; $6ff6: $71
    ld bc, $26ad                                  ; $6ff7: $01 $ad $26
    ld b, [hl]                                    ; $6ffa: $46
    ld e, e                                       ; $6ffb: $5b
    ld l, h                                       ; $6ffc: $6c
    and $e1                                       ; $6ffd: $e6 $e1
    inc sp                                        ; $6fff: $33
    ld c, [hl]                                    ; $7000: $4e
    ld a, [hl]                                    ; $7001: $7e
    pop hl                                        ; $7002: $e1
    res 1, a                                      ; $7003: $cb $8f
    ld h, l                                       ; $7005: $65
    ld b, d                                       ; $7006: $42
    xor l                                         ; $7007: $ad
    sub [hl]                                      ; $7008: $96
    or $3e                                        ; $7009: $f6 $3e
    ld h, a                                       ; $700b: $67
    or d                                          ; $700c: $b2
    ld a, $00                                     ; $700d: $3e $00
    ld l, a                                       ; $700f: $6f
    nop                                           ; $7010: $00
    db $db                                        ; $7011: $db
    ld [hl], l                                    ; $7012: $75
    rst $20                                       ; $7013: $e7
    ld a, [hl]                                    ; $7014: $7e
    sbc l                                         ; $7015: $9d
    sbc d                                         ; $7016: $9a
    inc sp                                        ; $7017: $33
    jp nz, $29f7                                  ; $7018: $c2 $f7 $29

    di                                            ; $701b: $f3
    inc l                                         ; $701c: $2c
    cp e                                          ; $701d: $bb
    inc e                                         ; $701e: $1c
    and c                                         ; $701f: $a1
    inc bc                                        ; $7020: $03
    adc c                                         ; $7021: $89
    ld sp, $9e77                                  ; $7022: $31 $77 $9e
    cp h                                          ; $7025: $bc
    ld [hl], $62                                  ; $7026: $36 $62
    call z, Call_000_279d                         ; $7028: $cc $9d $27
    add h                                         ; $702b: $84
    ld d, d                                       ; $702c: $52
    xor h                                         ; $702d: $ac
    scf                                           ; $702e: $37
    nop                                           ; $702f: $00
    db $db                                        ; $7030: $db
    ld [hl], l                                    ; $7031: $75
    rst $20                                       ; $7032: $e7
    ld h, e                                       ; $7033: $63
    add l                                         ; $7034: $85
    jr @+$6f                                      ; $7035: $18 $6d

    ld d, a                                       ; $7037: $57
    dec sp                                        ; $7038: $3b
    inc de                                        ; $7039: $13
    ld a, h                                       ; $703a: $7c
    ld e, l                                       ; $703b: $5d
    ld b, b                                       ; $703c: $40
    sbc d                                         ; $703d: $9a
    sub [hl]                                      ; $703e: $96
    ld c, b                                       ; $703f: $48
    sbc l                                         ; $7040: $9d
    ld h, a                                       ; $7041: $67

jr_03d_7042:
    ld e, c                                       ; $7042: $59
    xor a                                         ; $7043: $af
    ld a, [hl-]                                   ; $7044: $3a
    push hl                                       ; $7045: $e5
    ld b, $db                                     ; $7046: $06 $db
    ld [hl], l                                    ; $7048: $75
    rla                                           ; $7049: $17
    db $fd                                        ; $704a: $fd
    ld a, [hl-]                                   ; $704b: $3a
    ld [c], a                                     ; $704c: $e2
    ld a, [$2cfd]                                 ; $704d: $fa $fd $2c
    adc [hl]                                      ; $7050: $8e
    ld l, e                                       ; $7051: $6b
    ld e, b                                       ; $7052: $58
    ld hl, $db46                                  ; $7053: $21 $46 $db
    sub l                                         ; $7056: $95
    call nc, Call_03d_5985                        ; $7057: $d4 $85 $59
    ld a, [hl+]                                   ; $705a: $2a
    xor c                                         ; $705b: $a9
    xor e                                         ; $705c: $ab
    ld l, $ee                                     ; $705d: $2e $ee
    ld b, $db                                     ; $705f: $06 $db
    ld [hl], l                                    ; $7061: $75
    rst $20                                       ; $7062: $e7
    ld d, b                                       ; $7063: $50
    adc l                                         ; $7064: $8d
    db $eb                                        ; $7065: $eb
    ld c, b                                       ; $7066: $48
    or e                                          ; $7067: $b3
    ld e, l                                       ; $7068: $5d
    ld a, c                                       ; $7069: $79
    ld e, l                                       ; $706a: $5d
    jr z, jr_03d_7086                             ; $706b: $28 $19

    ld [hl], $fa                                  ; $706d: $36 $fa
    rst $30                                       ; $706f: $f7
    call nc, Call_000_2719                        ; $7070: $d4 $19 $27
    rra                                           ; $7073: $1f
    ld e, e                                       ; $7074: $5b
    push hl                                       ; $7075: $e5
    ld [hl], l                                    ; $7076: $75
    sbc [hl]                                      ; $7077: $9e
    ld h, l                                       ; $7078: $65
    and c                                         ; $7079: $a1
    db $d3                                        ; $707a: $d3
    ld a, c                                       ; $707b: $79
    xor [hl]                                      ; $707c: $ae
    db $e3                                        ; $707d: $e3
    ld a, [hl-]                                   ; $707e: $3a
    add hl, de                                    ; $707f: $19
    ld e, l                                       ; $7080: $5d
    and a                                         ; $7081: $a7
    xor d                                         ; $7082: $aa
    jr jr_03d_70dc                                ; $7083: $18 $57

    ld [hl], d                                    ; $7085: $72

jr_03d_7086:
    pop hl                                        ; $7086: $e1
    res 5, a                                      ; $7087: $cb $af
    and h                                         ; $7089: $a4
    ld c, $92                                     ; $708a: $0e $92
    rst $00                                       ; $708c: $c7
    call nc, $001b                                ; $708d: $d4 $1b $00
    db $db                                        ; $7090: $db
    ld [hl], l                                    ; $7091: $75
    rst $20                                       ; $7092: $e7
    ld a, [hl]                                    ; $7093: $7e
    sbc l                                         ; $7094: $9d

jr_03d_7095:
    sbc d                                         ; $7095: $9a
    dec bc                                        ; $7096: $0b
    ld d, e                                       ; $7097: $53
    ld d, $fc                                     ; $7098: $16 $fc
    ld c, $65                                     ; $709a: $0e $65
    cp $7d                                        ; $709c: $fe $7d
    xor [hl]                                      ; $709e: $ae
    halt                                          ; $709f: $76
    sub h                                         ; $70a0: $94
    ret z                                         ; $70a1: $c8

    db $fd                                        ; $70a2: $fd
    jp z, $902f                                   ; $70a3: $ca $2f $90

    ld [de], a                                    ; $70a6: $12
    ld [hl], $62                                  ; $70a7: $36 $62
    db $e4                                        ; $70a9: $e4
    ld a, [$34bc]                                 ; $70aa: $fa $bc $34
    db $fc                                        ; $70ad: $fc
    ld a, c                                       ; $70ae: $79
    xor [hl]                                      ; $70af: $ae
    or a                                          ; $70b0: $b7
    ld h, h                                       ; $70b1: $64
    ld c, l                                       ; $70b2: $4d
    cp c                                          ; $70b3: $b9
    ld bc, $75db                                  ; $70b4: $01 $db $75
    halt                                          ; $70b7: $76
    ld a, [de]                                    ; $70b8: $1a
    cp a                                          ; $70b9: $bf
    ld d, e                                       ; $70ba: $53
    ld l, b                                       ; $70bb: $68
    sbc d                                         ; $70bc: $9a
    db $ed                                        ; $70bd: $ed
    ld e, b                                       ; $70be: $58
    sub $3b                                       ; $70bf: $d6 $3b
    db $eb                                        ; $70c1: $eb
    ld d, $ab                                     ; $70c2: $16 $ab
    adc $73                                       ; $70c4: $ce $73
    halt                                          ; $70c6: $76
    ld l, b                                       ; $70c7: $68
    ld e, $e3                                     ; $70c8: $1e $e3
    rst $10                                       ; $70ca: $d7
    adc l                                         ; $70cb: $8d
    jr jr_03d_7121                                ; $70cc: $18 $53

    ld h, a                                       ; $70ce: $67
    rlca                                          ; $70cf: $07
    dec hl                                        ; $70d0: $2b
    and h                                         ; $70d1: $a4
    or h                                          ; $70d2: $b4
    sbc d                                         ; $70d3: $9a
    jr jr_03d_7095                                ; $70d4: $18 $bf

    ld d, b                                       ; $70d6: $50
    ld l, a                                       ; $70d7: $6f
    nop                                           ; $70d8: $00
    db $db                                        ; $70d9: $db
    ld [hl], l                                    ; $70da: $75
    rst $20                                       ; $70db: $e7

jr_03d_70dc:
    ld h, e                                       ; $70dc: $63
    add l                                         ; $70dd: $85
    jr jr_03d_7133                                ; $70de: $18 $53

    and $b9                                       ; $70e0: $e6 $b9
    sub d                                         ; $70e2: $92
    ld a, [hl-]                                   ; $70e3: $3a
    dec sp                                        ; $70e4: $3b
    inc [hl]                                      ; $70e5: $34
    adc a                                         ; $70e6: $8f
    pop af                                        ; $70e7: $f1
    db $eb                                        ; $70e8: $eb
    ld b, [hl]                                    ; $70e9: $46
    adc h                                         ; $70ea: $8c
    xor c                                         ; $70eb: $a9
    dec bc                                        ; $70ec: $0b
    ld e, a                                       ; $70ed: $5f
    ld a, [hl]                                    ; $70ee: $7e
    inc l                                         ; $70ef: $2c
    dec sp                                        ; $70f0: $3b
    inc b                                         ; $70f1: $04
    ld e, e                                       ; $70f2: $5b
    sbc l                                         ; $70f3: $9d
    scf                                           ; $70f4: $37
    nop                                           ; $70f5: $00
    db $db                                        ; $70f6: $db
    ld [hl], l                                    ; $70f7: $75
    cp l                                          ; $70f8: $bd
    ld e, h                                       ; $70f9: $5c
    ld c, h                                       ; $70fa: $4c
    ld sp, hl                                     ; $70fb: $f9
    ld a, c                                       ; $70fc: $79
    xor $d0                                       ; $70fd: $ee $d0
    adc e                                         ; $70ff: $8b
    ld a, [hl]                                    ; $7100: $7e
    inc l                                         ; $7101: $2c
    rst $18                                       ; $7102: $df
    ld c, c                                       ; $7103: $49
    ld a, c                                       ; $7104: $79
    db $d3                                        ; $7105: $d3
    ld l, h                                       ; $7106: $6c
    ld [hl], c                                    ; $7107: $71
    sbc [hl]                                      ; $7108: $9e
    ld h, l                                       ; $7109: $65
    ld d, $47                                     ; $710a: $16 $47
    call $f4d5                                    ; $710c: $cd $d5 $f4
    db $ed                                        ; $710f: $ed
    ld sp, $e572                                  ; $7110: $31 $72 $e5
    ld d, a                                       ; $7113: $57
    ccf                                           ; $7114: $3f
    call nc, $d0fe                                ; $7115: $d4 $fe $d0
    dec de                                        ; $7118: $1b
    nop                                           ; $7119: $00
    db $db                                        ; $711a: $db
    ld [hl], l                                    ; $711b: $75
    rst $20                                       ; $711c: $e7
    ld a, [hl-]                                   ; $711d: $3a
    db $f4                                        ; $711e: $f4
    or [hl]                                       ; $711f: $b6
    dec hl                                        ; $7120: $2b

jr_03d_7121:
    cp a                                          ; $7121: $bf
    ret nz                                        ; $7122: $c0

    inc [hl]                                      ; $7123: $34
    adc l                                         ; $7124: $8d
    cp $fd                                        ; $7125: $fe $fd
    jp nz, Jump_03d_5f97                          ; $7127: $c2 $97 $5f

    ld sp, hl                                     ; $712a: $f9
    ld e, l                                       ; $712b: $5d
    jp z, $94ea                                   ; $712c: $ca $ea $94

    ld a, [$b9e7]                                 ; $712f: $fa $e7 $b9
    ld a, [c]                                     ; $7132: $f2

jr_03d_7133:
    cp d                                          ; $7133: $ba
    or e                                          ; $7134: $b3
    push bc                                       ; $7135: $c5
    push af                                       ; $7136: $f5
    ld a, e                                       ; $7137: $7b
    cp l                                          ; $7138: $bd
    ld bc, $75db                                  ; $7139: $01 $db $75
    rst $20                                       ; $713c: $e7
    ld a, [hl]                                    ; $713d: $7e
    sbc l                                         ; $713e: $9d
    sbc d                                         ; $713f: $9a
    ld a, e                                       ; $7140: $7b
    and l                                         ; $7141: $a5
    ld [hl], $cc                                  ; $7142: $36 $cc
    ld a, c                                       ; $7144: $79
    ld c, $6a                                     ; $7145: $0e $6a
    ret nc                                        ; $7147: $d0

    ld h, e                                       ; $7148: $63
    and h                                         ; $7149: $a4
    sbc $eb                                       ; $714a: $de $eb
    di                                            ; $714c: $f3
    pop de                                        ; $714d: $d1
    halt                                          ; $714e: $76
    ld e, a                                       ; $714f: $5f
    ld b, $35                                     ; $7150: $06 $35
    add sp, $31                                   ; $7152: $e8 $31
    ld [hl], d                                    ; $7154: $72
    or $44                                        ; $7155: $f6 $44
    xor b                                         ; $7157: $a8
    ld l, c                                       ; $7158: $69
    sbc h                                         ; $7159: $9c
    rst $20                                       ; $715a: $e7
    adc $7e                                       ; $715b: $ce $7e
    pop bc                                        ; $715d: $c1
    sbc b                                         ; $715e: $98
    jr c, @-$2f                                   ; $715f: $38 $cf

    push af                                       ; $7161: $f5
    ld [de], a                                    ; $7162: $12
    ld l, c                                       ; $7163: $69
    sbc l                                         ; $7164: $9d
    cp a                                          ; $7165: $bf

Jump_03d_7166:
    ld bc, $75db                                  ; $7166: $01 $db $75
    ld bc, $6ad2                                  ; $7169: $01 $d2 $6a
    jp z, $a42f                                   ; $716c: $ca $2f $a4

    ld l, b                                       ; $716f: $68
    ld [c], a                                     ; $7170: $e2
    rst $08                                       ; $7171: $cf
    ld [c], a                                     ; $7172: $e2
    jr c, @+$25                                   ; $7173: $38 $23

    xor [hl]                                      ; $7175: $ae
    cp a                                          ; $7176: $bf
    db $ed                                        ; $7177: $ed
    ld a, [hl+]                                   ; $7178: $2a
    ld e, c                                       ; $7179: $59
    ld e, $7d                                     ; $717a: $1e $7d
    adc [hl]                                      ; $717c: $8e
    ld h, l                                       ; $717d: $65
    cp l                                          ; $717e: $bd
    ld h, d                                       ; $717f: $62
    jp hl                                         ; $7180: $e9


    jp nz, Jump_03d_4cd8                          ; $7181: $c2 $d8 $4c

    ld c, [hl]                                    ; $7184: $4e
    or e                                          ; $7185: $b3
    inc hl                                        ; $7186: $23
    sbc h                                         ; $7187: $9c
    jp $d51f                                      ; $7188: $c3 $1f $d5


    ld h, h                                       ; $718b: $64
    rst $20                                       ; $718c: $e7
    ld l, a                                       ; $718d: $6f
    nop                                           ; $718e: $00
    db $db                                        ; $718f: $db
    ld [hl], l                                    ; $7190: $75
    ld a, l                                       ; $7191: $7d
    ld e, $ca                                     ; $7192: $1e $ca
    sbc c                                         ; $7194: $99
    ld h, b                                       ; $7195: $60
    jp $c59c                                      ; $7196: $c3 $9c $c5


    ld [hl], c                                    ; $7199: $71
    sbc [hl]                                      ; $719a: $9e
    ld l, d                                       ; $719b: $6a
    ld e, h                                       ; $719c: $5c
    ld b, a                                       ; $719d: $47
    sbc d                                         ; $719e: $9a

Jump_03d_719f:
    db $ed                                        ; $719f: $ed
    ld c, d                                       ; $71a0: $4a
    ld [$a69c], a                                 ; $71a1: $ea $9c $a6
    adc $73                                       ; $71a4: $ce $73
    dec h                                         ; $71a6: $25
    ld [hl], l                                    ; $71a7: $75
    or $8e                                        ; $71a8: $f6 $8e
    sub l                                         ; $71aa: $95
    call nc, $9d9d                                ; $71ab: $d4 $9d $9d
    push hl                                       ; $71ae: $e5
    rst $20                                       ; $71af: $e7
    cp c                                          ; $71b0: $b9
    ld [hl], e                                    ; $71b1: $73
    dec e                                         ; $71b2: $1d
    and c                                         ; $71b3: $a1
    inc e                                         ; $71b4: $1c
    ld [hl], c                                    ; $71b5: $71
    ld bc, $2a59                                  ; $71b6: $01 $59 $2a
    ld a, c                                       ; $71b9: $79
    inc bc                                        ; $71ba: $03
    db $db                                        ; $71bb: $db
    ld [hl], l                                    ; $71bc: $75
    rst $20                                       ; $71bd: $e7
    ld a, [hl-]                                   ; $71be: $3a
    db $f4                                        ; $71bf: $f4
    rst $28                                       ; $71c0: $ef
    ld d, e                                       ; $71c1: $53
    and $b9                                       ; $71c2: $e6 $b9
    ld a, [c]                                     ; $71c4: $f2
    dec bc                                        ; $71c5: $0b
    ld c, h                                       ; $71c6: $4c
    db $d3                                        ; $71c7: $d3
    add sp, -$21                                  ; $71c8: $e8 $df
    cpl                                           ; $71ca: $2f
    ld a, h                                       ; $71cb: $7c
    ld sp, hl                                     ; $71cc: $f9
    sbc l                                         ; $71cd: $9d
    dec l                                         ; $71ce: $2d
    xor [hl]                                      ; $71cf: $ae
    rst $18                                       ; $71d0: $df
    db $eb                                        ; $71d1: $eb
    ld a, d                                       ; $71d2: $7a
    ld d, l                                       ; $71d3: $55
    sub a                                         ; $71d4: $97
    ld b, $35                                     ; $71d5: $06 $35
    rst $38                                       ; $71d7: $ff
    ld a, d                                       ; $71d8: $7a
    inc bc                                        ; $71d9: $03
    db $db                                        ; $71da: $db
    ld [hl], l                                    ; $71db: $75
    add c                                         ; $71dc: $81
    ld e, h                                       ; $71dd: $5c
    pop hl                                        ; $71de: $e1
    ld a, $4a                                     ; $71df: $3e $4a
    db $eb                                        ; $71e1: $eb
    jr c, @+$2d                                   ; $71e2: $38 $2b

    ld d, a                                       ; $71e4: $57
    ld a, [hl]                                    ; $71e5: $7e
    dec c                                         ; $71e6: $0d
    dec hl                                        ; $71e7: $2b
    ld b, h                                       ; $71e8: $44
    db $d3                                        ; $71e9: $d3
    ld l, h                                       ; $71ea: $6c
    ld [hl], c                                    ; $71eb: $71
    sbc [hl]                                      ; $71ec: $9e
    xor e                                         ; $71ed: $ab
    sbc l                                         ; $71ee: $9d
    add hl, bc                                    ; $71ef: $09
    and [hl]                                      ; $71f0: $a6
    xor [hl]                                      ; $71f1: $ae
    cp $c2                                        ; $71f2: $fe $c2
    ld [$5a66], a                                 ; $71f4: $ea $66 $5a
    ld [$abac], a                                 ; $71f7: $ea $ac $ab

Call_03d_71fa:
    cp a                                          ; $71fa: $bf
    ld d, b                                       ; $71fb: $50
    rst $20                                       ; $71fc: $e7
    cp c                                          ; $71fd: $b9
    db $ec                                        ; $71fe: $ec
    sub a                                         ; $71ff: $97
    di                                            ; $7200: $f3
    call nc, $e487                                ; $7201: $d4 $87 $e4
    db $fd                                        ; $7204: $fd
    ld [hl], a                                    ; $7205: $77
    ld a, [bc]                                    ; $7206: $0a
    push af                                       ; $7207: $f5
    ld b, $db                                     ; $7208: $06 $db
    ld [hl], l                                    ; $720a: $75
    or $94                                        ; $720b: $f6 $94
    ld a, [$35f1]                                 ; $720d: $fa $f1 $35
    jp z, $b3cf                                   ; $7210: $ca $cf $b3

    db $ec                                        ; $7213: $ec
    ld d, d                                       ; $7214: $52
    ld e, d                                       ; $7215: $5a
    rst $10                                       ; $7216: $d7
    ld c, e                                       ; $7217: $4b
    and d                                         ; $7218: $a2
    sub e                                         ; $7219: $93
    cp h                                          ; $721a: $bc
    ld h, a                                       ; $721b: $67
    ld c, a                                       ; $721c: $4f
    inc de                                        ; $721d: $13
    ld l, h                                       ; $721e: $6c
    add [hl]                                      ; $721f: $86
    ld a, [c]                                     ; $7220: $f2
    adc e                                         ; $7221: $8b
    ld b, h                                       ; $7222: $44
    halt                                          ; $7223: $76
    inc h                                         ; $7224: $24
    push af                                       ; $7225: $f5
    ld h, a                                       ; $7226: $67
    dec e                                         ; $7227: $1d
    sub c                                         ; $7228: $91
    ld [hl], l                                    ; $7229: $75
    add e                                         ; $722a: $83
    ld a, [hl]                                    ; $722b: $7e
    sbc [hl]                                      ; $722c: $9e
    db $eb                                        ; $722d: $eb
    ld b, e                                       ; $722e: $43
    add hl, hl                                    ; $722f: $29
    ld [hl], $78                                  ; $7230: $36 $78
    inc bc                                        ; $7232: $03
    db $db                                        ; $7233: $db
    ld [hl], l                                    ; $7234: $75
    halt                                          ; $7235: $76
    ld e, b                                       ; $7236: $58
    ld l, c                                       ; $7237: $69
    rst $28                                       ; $7238: $ef
    ld [hl], e                                    ; $7239: $73
    cp a                                          ; $723a: $bf
    ld e, [hl]                                    ; $723b: $5e
    db $fd                                        ; $723c: $fd
    ld h, c                                       ; $723d: $61
    ld a, h                                       ; $723e: $7c
    rst $20                                       ; $723f: $e7
    ld [hl], c                                    ; $7240: $71
    ld h, c                                       ; $7241: $61
    jp z, $9122                                   ; $7242: $ca $22 $91

    ld [hl-], a                                   ; $7245: $32
    dec sp                                        ; $7246: $3b
    xor l                                         ; $7247: $ad
    ld l, [hl]                                    ; $7248: $6e
    ld [$4751], sp                                ; $7249: $08 $51 $47
    sbc h                                         ; $724c: $9c
    cp d                                          ; $724d: $ba
    add l                                         ; $724e: $85
    rra                                           ; $724f: $1f
    ld e, e                                       ; $7250: $5b
    xor [hl]                                      ; $7251: $ae
    ld h, c                                       ; $7252: $61
    and h                                         ; $7253: $a4
    or h                                          ; $7254: $b4
    sub h                                         ; $7255: $94
    dec de                                        ; $7256: $1b
    nop                                           ; $7257: $00
    db $db                                        ; $7258: $db
    ld [hl], l                                    ; $7259: $75
    rst $20                                       ; $725a: $e7
    ld a, [hl]                                    ; $725b: $7e
    sbc l                                         ; $725c: $9d

jr_03d_725d:
    sbc d                                         ; $725d: $9a
    dec bc                                        ; $725e: $0b
    ld d, e                                       ; $725f: $53
    sub [hl]                                      ; $7260: $96
    push de                                       ; $7261: $d5
    ld b, h                                       ; $7262: $44
    ld c, a                                       ; $7263: $4f
    ld d, c                                       ; $7264: $51
    ld l, $4c                                     ; $7265: $2e $4c
    add hl, de                                    ; $7267: $19
    cp [hl]                                       ; $7268: $be
    rst $38                                       ; $7269: $ff
    ld e, c                                       ; $726a: $59
    ld d, a                                       ; $726b: $57
    ld a, a                                       ; $726c: $7f
    pop af                                        ; $726d: $f1
    inc [hl]                                      ; $726e: $34
    ld c, l                                       ; $726f: $4d
    or $0b                                        ; $7270: $f6 $0b
    add hl, hl                                    ; $7272: $29
    sbc d                                         ; $7273: $9a
    ld hl, sp-$46                                 ; $7274: $f8 $ba
    add [hl]                                      ; $7276: $86
    ld l, c                                       ; $7277: $69
    adc b                                         ; $7278: $88
    sub c                                         ; $7279: $91
    ld a, d                                       ; $727a: $7a
    inc bc                                        ; $727b: $03
    halt                                          ; $727c: $76
    ld l, d                                       ; $727d: $6a
    and h                                         ; $727e: $a4
    ld [hl], l                                    ; $727f: $75
    sbc d                                         ; $7280: $9a
    db $ed                                        ; $7281: $ed
    ld c, d                                       ; $7282: $4a
    ld [$3b7a], a                                 ; $7283: $ea $7a $3b
    ld h, d                                       ; $7286: $62
    ld c, h                                       ; $7287: $4c
    sbc l                                         ; $7288: $9d
    rst $20                                       ; $7289: $e7
    ld c, d                                       ; $728a: $4a
    ld [$13ec], a                                 ; $728b: $ea $ec $13
    and c                                         ; $728e: $a1
    call nc, Call_03d_415d                        ; $728f: $d4 $5d $41
    inc h                                         ; $7292: $24
    and [hl]                                      ; $7293: $a6
    and [hl]                                      ; $7294: $a6
    jp nz, Jump_03d_5a57                          ; $7295: $c2 $57 $5a

    ld b, a                                       ; $7298: $47
    ld d, d                                       ; $7299: $52
    rla                                           ; $729a: $17
    cp [hl]                                       ; $729b: $be
    db $fc                                        ; $729c: $fc
    or b                                          ; $729d: $b0
    dec e                                         ; $729e: $1d
    sbc h                                         ; $729f: $9c
    ld a, [hl-]                                   ; $72a0: $3a
    adc e                                         ; $72a1: $8b
    db $e3                                        ; $72a2: $e3
    ld a, $98                                     ; $72a3: $3e $98
    ld a, [c]                                     ; $72a5: $f2
    and e                                         ; $72a6: $a3
    add $2e                                       ; $72a7: $c6 $2e
    ld e, h                                       ; $72a9: $5c
    jr z, jr_03d_72c5                             ; $72aa: $28 $19

    ld l, h                                       ; $72ac: $6c
    sbc l                                         ; $72ad: $9d
    and $53                                       ; $72ae: $e6 $53
    rla                                           ; $72b0: $17
    and [hl]                                      ; $72b1: $a6
    ld e, b                                       ; $72b2: $58
    inc e                                         ; $72b3: $1c
    rla                                           ; $72b4: $17
    ld c, d                                       ; $72b5: $4a
    ld d, [hl]                                    ; $72b6: $56
    jp nc, $e77c                                  ; $72b7: $d2 $7c $e7

    ld [hl], c                                    ; $72ba: $71
    dec d                                         ; $72bb: $15
    db $db                                        ; $72bc: $db
    cp d                                          ; $72bd: $ba
    push bc                                       ; $72be: $c5
    call nc, $001b                                ; $72bf: $d4 $1b $00
    db $db                                        ; $72c2: $db
    ld [hl], l                                    ; $72c3: $75
    rst $20                                       ; $72c4: $e7

jr_03d_72c5:
    dec a                                         ; $72c5: $3d
    cp [hl]                                       ; $72c6: $be
    ld c, a                                       ; $72c7: $4f
    ld sp, hl                                     ; $72c8: $f9
    ld a, c                                       ; $72c9: $79
    sub [hl]                                      ; $72ca: $96
    push af                                       ; $72cb: $f5
    ld c, [hl]                                    ; $72cc: $4e
    inc [hl]                                      ; $72cd: $34
    ld c, [hl]                                    ; $72ce: $4e
    inc [hl]                                      ; $72cf: $34
    rst $20                                       ; $72d0: $e7

jr_03d_72d1:
    cp c                                          ; $72d1: $b9
    ld [hl], e                                    ; $72d2: $73
    inc e                                         ; $72d3: $1c
    ld c, e                                       ; $72d4: $4b
    adc [hl]                                      ; $72d5: $8e
    jr jr_03d_725d                                ; $72d6: $18 $85

    db $eb                                        ; $72d8: $eb
    di                                            ; $72d9: $f3
    ld d, b                                       ; $72da: $50
    ld [$bb88], a                                 ; $72db: $ea $88 $bb
    inc l                                         ; $72de: $2c
    db $fd                                        ; $72df: $fd
    rst $28                                       ; $72e0: $ef
    ld a, h                                       ; $72e1: $7c
    add h                                         ; $72e2: $84
    jp z, $8a47                                   ; $72e3: $ca $47 $8a

    db $fc                                        ; $72e6: $fc
    inc a                                         ; $72e7: $3c
    ld [hl], a                                    ; $72e8: $77
    call z, $c7f1                                 ; $72e9: $cc $f1 $c7
    dec e                                         ; $72ec: $1d
    ld a, l                                       ; $72ed: $7d
    inc bc                                        ; $72ee: $03
    db $db                                        ; $72ef: $db
    ld [hl], l                                    ; $72f0: $75
    halt                                          ; $72f1: $76
    or b                                          ; $72f2: $b0
    and d                                         ; $72f3: $a2
    ld a, h                                       ; $72f4: $7c
    push hl                                       ; $72f5: $e5
    and c                                         ; $72f6: $a1
    rst $00                                       ; $72f7: $c7
    ret z                                         ; $72f8: $c8

    cp l                                          ; $72f9: $bd
    call nz, $f1a6                                ; $72fa: $c4 $a6 $f1
    ld d, a                                       ; $72fd: $57
    ccf                                           ; $72fe: $3f
    sub h                                         ; $72ff: $94
    or e                                          ; $7300: $b3
    jr c, jr_03d_72d1                             ; $7301: $38 $ce

    ld d, e                                       ; $7303: $53
    ccf                                           ; $7304: $3f
    ld a, h                                       ; $7305: $7c
    and c                                         ; $7306: $a1
    ld l, c                                       ; $7307: $69
    or [hl]                                       ; $7308: $b6
    di                                            ; $7309: $f3
    ld e, h                                       ; $730a: $5c
    ld [hl], l                                    ; $730b: $75
    ld c, d                                       ; $730c: $4a
    db $fd                                        ; $730d: $fd
    ld l, e                                       ; $730e: $6b
    ld c, b                                       ; $730f: $48
    dec c                                         ; $7310: $0d
    add hl, hl                                    ; $7311: $29
    rst $28                                       ; $7312: $ef
    ld a, a                                       ; $7313: $7f
    ld [hl], l                                    ; $7314: $75
    inc hl                                        ; $7315: $23
    ld b, [hl]                                    ; $7316: $46
    ld a, c                                       ; $7317: $79
    dec e                                         ; $7318: $1d
    dec [hl]                                      ; $7319: $35

jr_03d_731a:
    ld a, [hl]                                    ; $731a: $7e
    rst $20                                       ; $731b: $e7
    rst $10                                       ; $731c: $d7
    rst $38                                       ; $731d: $ff
    jp Jump_03d_7c8f                              ; $731e: $c3 $8f $7c


    db $f4                                        ; $7321: $f4
    ld a, c                                       ; $7322: $79
    inc bc                                        ; $7323: $03
    db $db                                        ; $7324: $db
    ld [hl], l                                    ; $7325: $75
    cp l                                          ; $7326: $bd
    sub h                                         ; $7327: $94
    jp c, $4730                                   ; $7328: $da $30 $47

    sbc h                                         ; $732b: $9c
    ld d, d                                       ; $732c: $52
    ld a, [de]                                    ; $732d: $1a
    rst $20                                       ; $732e: $e7
    add hl, sp                                    ; $732f: $39
    ld [$4eb3], sp                                ; $7330: $08 $b3 $4e
    cp l                                          ; $7333: $bd
    ld bc, $737d                                  ; $7334: $01 $7d $73
    dec h                                         ; $7337: $25
    ld hl, $9db1                                  ; $7338: $21 $b1 $9d
    ld c, c                                       ; $733b: $49
    xor h                                         ; $733c: $ac
    db $10                                        ; $733d: $10
    dec c                                         ; $733e: $0d
    ld h, l                                       ; $733f: $65
    ld e, a                                       ; $7340: $5f
    sub $a7                                       ; $7341: $d6 $a7
    ld h, c                                       ; $7343: $61
    db $d3                                        ; $7344: $d3
    jr z, jr_03d_7380                             ; $7345: $28 $39

    rst $08                                       ; $7347: $cf
    push af                                       ; $7348: $f5
    ld a, c                                       ; $7349: $79
    xor b                                         ; $734a: $a8
    db $fd                                        ; $734b: $fd
    jp nz, $9f97                                  ; $734c: $c2 $97 $9f

    push bc                                       ; $734f: $c5
    ld [hl], c                                    ; $7350: $71
    jp z, Jump_03d_6a79                           ; $7351: $ca $79 $6a

    inc d                                         ; $7354: $14
    ld h, a                                       ; $7355: $67
    and l                                         ; $7356: $a5
    ld [de], a                                    ; $7357: $12
    rla                                           ; $7358: $17
    db $d3                                        ; $7359: $d3
    and a                                         ; $735a: $a7
    xor [hl]                                      ; $735b: $ae
    and h                                         ; $735c: $a4
    adc $3b                                       ; $735d: $ce $3b
    and d                                         ; $735f: $a2
    and a                                         ; $7360: $a7
    ld l, c                                       ; $7361: $69
    and l                                         ; $7362: $a5
    and h                                         ; $7363: $a4
    xor $57                                       ; $7364: $ee $57
    ccf                                           ; $7366: $3f
    and [hl]                                      ; $7367: $a6
    adc $73                                       ; $7368: $ce $73
    dec h                                         ; $736a: $25
    ld [hl], l                                    ; $736b: $75
    ld b, c                                       ; $736c: $41
    ld d, a                                       ; $736d: $57
    ccf                                           ; $736e: $3f
    and [hl]                                      ; $736f: $a6
    sbc $00                                       ; $7370: $de $00
    db $db                                        ; $7372: $db
    ld [hl], l                                    ; $7373: $75
    rst $20                                       ; $7374: $e7
    ld a, [hl]                                    ; $7375: $7e
    sbc l                                         ; $7376: $9d
    sbc d                                         ; $7377: $9a
    dec bc                                        ; $7378: $0b
    ld d, e                                       ; $7379: $53
    add [hl]                                      ; $737a: $86
    add hl, sp                                    ; $737b: $39
    db $fd                                        ; $737c: $fd
    jp nc, $e864                                  ; $737d: $d2 $64 $e8

jr_03d_7380:
    ret nc                                        ; $7380: $d0

    db $fc                                        ; $7381: $fc
    inc a                                         ; $7382: $3c
    ld h, a                                       ; $7383: $67
    ld e, [hl]                                    ; $7384: $5e
    ld a, a                                       ; $7385: $7f
    pop bc                                        ; $7386: $c1
    rst $10                                       ; $7387: $d7
    ld hl, sp-$4d                                 ; $7388: $f8 $b3
    jr c, jr_03d_731a                             ; $738a: $38 $8e

    ld a, [de]                                    ; $738c: $1a
    cp a                                          ; $738d: $bf
    sub h                                         ; $738e: $94
    ld d, a                                       ; $738f: $57
    adc $e1                                       ; $7390: $ce $e1
    db $ec                                        ; $7392: $ec
    ret nc                                        ; $7393: $d0

    inc a                                         ; $7394: $3c
    add $af                                       ; $7395: $c6 $af
    dec de                                        ; $7397: $1b
    ld sp, $ace6                                  ; $7398: $31 $e6 $ac
    ld h, e                                       ; $739b: $63
    ld e, c                                       ; $739c: $59
    ld h, h                                       ; $739d: $64
    cp a                                          ; $739e: $bf
    rst $30                                       ; $739f: $f7
    add hl, sp                                    ; $73a0: $39
    push hl                                       ; $73a1: $e5
    inc a                                         ; $73a2: $3c
    dec [hl]                                      ; $73a3: $35
    inc l                                         ; $73a4: $2c
    ld e, c                                       ; $73a5: $59
    cp a                                          ; $73a6: $bf
    ld a, [c]                                     ; $73a7: $f2
    ld b, $db                                     ; $73a8: $06 $db
    ld [hl], l                                    ; $73aa: $75
    rla                                           ; $73ab: $17
    ld [hl], c                                    ; $73ac: $71
    sub b                                         ; $73ad: $90
    db $d3                                        ; $73ae: $d3
    ld hl, sp-$63                                 ; $73af: $f8 $9d
    ld e, a                                       ; $73b1: $5f
    ld a, h                                       ; $73b2: $7c
    adc h                                         ; $73b3: $8c
    cp c                                          ; $73b4: $b9
    ld a, [hl-]                                   ; $73b5: $3a
    and l                                         ; $73b6: $a5
    ret                                           ; $73b7: $c9


    adc b                                         ; $73b8: $88
    dec hl                                        ; $73b9: $2b
    cp a                                          ; $73ba: $bf
    ld h, b                                       ; $73bb: $60
    ld b, d                                       ; $73bc: $42
    adc [hl]                                      ; $73bd: $8e
    ld a, [c]                                     ; $73be: $f2
    or e                                          ; $73bf: $b3
    jr c, jr_03d_7410                             ; $73c0: $38 $4e

    cp c                                          ; $73c2: $b9
    ld a, [c]                                     ; $73c3: $f2
    cp d                                          ; $73c4: $ba
    rla                                           ; $73c5: $17
    ld hl, $6c54                                  ; $73c6: $21 $54 $6c
    rla                                           ; $73c9: $17
    cp [hl]                                       ; $73ca: $be
    db $fc                                        ; $73cb: $fc
    inc l                                         ; $73cc: $2c
    adc [hl]                                      ; $73cd: $8e
    dec hl                                        ; $73ce: $2b

Call_03d_73cf:
Jump_03d_73cf:
    ccf                                           ; $73cf: $3f
    adc e                                         ; $73d0: $8b
    ld h, e                                       ; $73d1: $63
    db $fd                                        ; $73d2: $fd
    ld a, [c]                                     ; $73d3: $f2
    cp b                                          ; $73d4: $b8
    db $e3                                        ; $73d5: $e3
    ld c, a                                       ; $73d6: $4f
    ld e, d                                       ; $73d7: $5a
    add l                                         ; $73d8: $85
    add [hl]                                      ; $73d9: $86
    ld a, d                                       ; $73da: $7a
    inc bc                                        ; $73db: $03
    db $db                                        ; $73dc: $db
    ld [hl], l                                    ; $73dd: $75
    add c                                         ; $73de: $81
    ld e, a                                       ; $73df: $5f
    ld a, [hl+]                                   ; $73e0: $2a
    or [hl]                                       ; $73e1: $b6
    ei                                            ; $73e2: $fb
    push de                                       ; $73e3: $d5
    adc $04                                       ; $73e4: $ce $04
    ld d, e                                       ; $73e6: $53
    ld d, a                                       ; $73e7: $57
    dec sp                                        ; $73e8: $3b
    ld [$d42a], sp                                ; $73e9: $08 $2a $d4
    add hl, de                                    ; $73ec: $19
    rst $30                                       ; $73ed: $f7
    add sp, $73                                   ; $73ee: $e8 $73
    ld c, $e7                                     ; $73f0: $0e $e7
    push hl                                       ; $73f2: $e5
    ld hl, $5c5b                                  ; $73f3: $21 $5b $5c
    rst $20                                       ; $73f6: $e7
    ei                                            ; $73f7: $fb
    reti                                          ; $73f8: $d9


    adc [hl]                                      ; $73f9: $8e
    cp b                                          ; $73fa: $b8
    or b                                          ; $73fb: $b0
    sbc c                                         ; $73fc: $99
    rst $30                                       ; $73fd: $f7
    add hl, sp                                    ; $73fe: $39
    call $708e                                    ; $73ff: $cd $8e $70
    ld c, $7f                                     ; $7402: $0e $7f
    ld h, c                                       ; $7404: $61
    ld a, c                                       ; $7405: $79
    db $eb                                        ; $7406: $eb
    xor a                                         ; $7407: $af
    inc d                                         ; $7408: $14
    ld [c], a                                     ; $7409: $e2
    rst $08                                       ; $740a: $cf
    ld [hl], e                                    ; $740b: $73
    sbc l                                         ; $740c: $9d
    ccf                                           ; $740d: $3f
    cp b                                          ; $740e: $b8
    ld l, c                                       ; $740f: $69

jr_03d_7410:
    ld a, h                                       ; $7410: $7c
    cp l                                          ; $7411: $bd
    ld bc, $75db                                  ; $7412: $01 $db $75
    rla                                           ; $7415: $17
    add hl, sp                                    ; $7416: $39
    inc de                                        ; $7417: $13
    or h                                          ; $7418: $b4
    ld e, l                                       ; $7419: $5d
    sbc b                                         ; $741a: $98
    ld [hl-], a                                   ; $741b: $32
    ld c, d                                       ; $741c: $4a
    add e                                         ; $741d: $83
    sbc d                                         ; $741e: $9a
    xor h                                         ; $741f: $ac
    db $fc                                        ; $7420: $fc
    db $ec                                        ; $7421: $ec
    inc [hl]                                      ; $7422: $34
    ld a, [hl]                                    ; $7423: $7e
    ld [hl], h                                    ; $7424: $74
    ccf                                           ; $7425: $3f
    rst $08                                       ; $7426: $cf
    or d                                          ; $7427: $b2
    ld b, b                                       ; $7428: $40
    ld a, [de]                                    ; $7429: $1a
    ld h, c                                       ; $742a: $61
    call z, Call_03d_6759                         ; $742b: $cc $59 $67
    ld [de], a                                    ; $742e: $12
    db $e3                                        ; $742f: $e3
    ld c, e                                       ; $7430: $4b
    pop hl                                        ; $7431: $e1
    ld a, [hl]                                    ; $7432: $7e
    dec h                                         ; $7433: $25
    ld [hl], l                                    ; $7434: $75
    or l                                          ; $7435: $b5
    add e                                         ; $7436: $83
    and b                                         ; $7437: $a0
    ld b, d                                       ; $7438: $42
    sbc l                                         ; $7439: $9d
    push bc                                       ; $743a: $c5
    ld [hl], c                                    ; $743b: $71
    dec h                                         ; $743c: $25
    ld [hl], l                                    ; $743d: $75
    push af                                       ; $743e: $f5
    ld b, e                                       ; $743f: $43
    xor c                                         ; $7440: $a9
    inc hl                                        ; $7441: $23
    xor h                                         ; $7442: $ac
    and [hl]                                      ; $7443: $a6
    sub c                                         ; $7444: $91
    ld a, b                                       ; $7445: $78
    inc bc                                        ; $7446: $03
    db $db                                        ; $7447: $db
    ld [hl], l                                    ; $7448: $75
    rst $20                                       ; $7449: $e7
    ld h, e                                       ; $744a: $63
    add l                                         ; $744b: $85
    jr jr_03d_74a1                                ; $744c: $18 $53

    and $59                                       ; $744e: $e6 $59
    ld h, [hl]                                    ; $7450: $66
    add d                                         ; $7451: $82
    xor l                                         ; $7452: $ad
    ld a, [c]                                     ; $7453: $f2
    ld sp, $64d5                                  ; $7454: $31 $d5 $64
    ret c                                         ; $7457: $d8

    ld a, [c]                                     ; $7458: $f2
    ld b, $db                                     ; $7459: $06 $db
    ld [hl], l                                    ; $745b: $75
    halt                                          ; $745c: $76
    or b                                          ; $745d: $b0
    ld b, d                                       ; $745e: $42
    ld c, d                                       ; $745f: $4a
    call z, $e711                                 ; $7460: $cc $11 $e7
    or b                                          ; $7463: $b0
    sbc c                                         ; $7464: $99
    inc d                                         ; $7465: $14
    ld l, h                                       ; $7466: $6c
    xor c                                         ; $7467: $a9
    rst $30                                       ; $7468: $f7
    ld a, d                                       ; $7469: $7a
    ld e, c                                       ; $746a: $59
    sbc l                                         ; $746b: $9d
    or a                                          ; $746c: $b7
    db $dd                                        ; $746d: $dd
    rst $08                                       ; $746e: $cf
    inc h                                         ; $746f: $24
    ld l, d                                       ; $7470: $6a
    inc d                                         ; $7471: $14
    rst $10                                       ; $7472: $d7
    ld h, h                                       ; $7473: $64
    ld b, d                                       ; $7474: $42
    and l                                         ; $7475: $a5
    ld d, h                                       ; $7476: $54
    ld e, [hl]                                    ; $7477: $5e
    rst $20                                       ; $7478: $e7
    add hl, sp                                    ; $7479: $39
    add a                                         ; $747a: $87
    call Call_03d_60a4                            ; $747b: $cd $a4 $60
    ld c, e                                       ; $747e: $4b
    ld e, l                                       ; $747f: $5d
    sbc b                                         ; $7480: $98
    or d                                          ; $7481: $b2
    sbc b                                         ; $7482: $98
    cp $77                                        ; $7483: $fe $77
    or [hl]                                       ; $7485: $b6

jr_03d_7486:
    jr nc, jr_03d_7486                            ; $7486: $30 $fe

    pop bc                                        ; $7488: $c1
    ld a, a                                       ; $7489: $7f
    inc bc                                        ; $748a: $03
    db $db                                        ; $748b: $db
    ld [hl], l                                    ; $748c: $75
    rst $10                                       ; $748d: $d7
    ld h, d                                       ; $748e: $62
    inc sp                                        ; $748f: $33
    cp c                                          ; $7490: $b9
    ld a, [$9ca1]                                 ; $7491: $fa $a1 $9c
    push bc                                       ; $7494: $c5
    ld [hl], c                                    ; $7495: $71
    sbc d                                         ; $7496: $9a
    dec e                                         ; $7497: $1d
    ld h, c                                       ; $7498: $61
    and l                                         ; $7499: $a5
    ld d, l                                       ; $749a: $55
    sbc d                                         ; $749b: $9a
    db $ed                                        ; $749c: $ed
    cp [hl]                                       ; $749d: $be
    db $ec                                        ; $749e: $ec
    db $e3                                        ; $749f: $e3
    ld e, e                                       ; $74a0: $5b

jr_03d_74a1:
    inc e                                         ; $74a1: $1c
    rst $20                                       ; $74a2: $e7
    add hl, sp                                    ; $74a3: $39
    add a                                         ; $74a4: $87
    cp e                                          ; $74a5: $bb
    adc b                                         ; $74a6: $88
    ld sp, $aad8                                  ; $74a7: $31 $d8 $aa
    or e                                          ; $74aa: $b3
    ld hl, sp+$1b                                 ; $74ab: $f8 $1b
    nop                                           ; $74ad: $00
    db $db                                        ; $74ae: $db
    ld [hl], l                                    ; $74af: $75
    rst $20                                       ; $74b0: $e7
    ld a, [hl]                                    ; $74b1: $7e
    sbc l                                         ; $74b2: $9d
    sbc d                                         ; $74b3: $9a
    cp e                                          ; $74b4: $bb
    add b                                         ; $74b5: $80
    push de                                       ; $74b6: $d5
    sbc h                                         ; $74b7: $9c
    ld h, a                                       ; $74b8: $67
    reti                                          ; $74b9: $d9


    add hl, sp                                    ; $74ba: $39
    inc c                                         ; $74bb: $0c
    ld e, a                                       ; $74bc: $5f
    ld [c], a                                     ; $74bd: $e2
    rst $10                                       ; $74be: $d7
    call nz, Call_000_3398                        ; $74bf: $c4 $98 $33
    adc c                                         ; $74c2: $89
    ld d, c                                       ; $74c3: $51
    ld a, [hl]                                    ; $74c4: $7e
    inc l                                         ; $74c5: $2c
    ld [hl], e                                    ; $74c6: $73
    sbc d                                         ; $74c7: $9a
    ld l, e                                       ; $74c8: $6b
    add sp, -$27                                  ; $74c9: $e8 $d9
    ld l, c                                       ; $74cb: $69
    ld a, $e7                                     ; $74cc: $3e $e7
    cp c                                          ; $74ce: $b9
    ld a, [c]                                     ; $74cf: $f2
    xor e                                         ; $74d0: $ab
    rra                                           ; $74d1: $1f
    ld l, d                                       ; $74d2: $6a
    ld a, a                                       ; $74d3: $7f
    inc bc                                        ; $74d4: $03
    db $db                                        ; $74d5: $db
    ld [hl], l                                    ; $74d6: $75
    ld a, l                                       ; $74d7: $7d
    sbc h                                         ; $74d8: $9c
    inc [hl]                                      ; $74d9: $34
    db $db                                        ; $74da: $db
    ld a, l                                       ; $74db: $7d
    sbc c                                         ; $74dc: $99
    ld a, [hl]                                    ; $74dd: $7e
    xor c                                         ; $74de: $a9
    cp h                                          ; $74df: $bc
    db $ec                                        ; $74e0: $ec
    rst $20                                       ; $74e1: $e7
    ld [hl], b                                    ; $74e2: $70
    ret c                                         ; $74e3: $d8

    ld c, $ce                                     ; $74e4: $0e $ce
    push de                                       ; $74e6: $d5
    ld c, $82                                     ; $74e7: $0e $82
    ld a, [bc]                                    ; $74e9: $0a
    rst $20                                       ; $74ea: $e7
    add hl, sp                                    ; $74eb: $39
    add a                                         ; $74ec: $87
    cp a                                          ; $74ed: $bf
    ld a, [$da31]                                 ; $74ee: $fa $31 $da
    sbc b                                         ; $74f1: $98
    sub h                                         ; $74f2: $94
    ld e, a                                       ; $74f3: $5f
    or l                                          ; $74f4: $b5
    add e                                         ; $74f5: $83
    ld e, d                                       ; $74f6: $5a
    ld l, h                                       ; $74f7: $6c
    sub l                                         ; $74f8: $95
    cp a                                          ; $74f9: $bf
    ld bc, $75db                                  ; $74fa: $01 $db $75
    ld bc, $912d                                  ; $74fd: $01 $2d $91
    sub d                                         ; $7500: $92
    di                                            ; $7501: $f3
    ld e, h                                       ; $7502: $5c
    ld c, c                                       ; $7503: $49
    db $dd                                        ; $7504: $dd
    add hl, sp                                    ; $7505: $39
    inc d                                         ; $7506: $14
    sbc d                                         ; $7507: $9a
    ld h, b                                       ; $7508: $60
    ld [$573c], a                                 ; $7509: $ea $3c $57
    ld d, d                                       ; $750c: $52
    ld [hl], a                                    ; $750d: $77
    ld e, $66                                     ; $750e: $1e $66
    sbc l                                         ; $7510: $9d
    ld a, d                                       ; $7511: $7a
    inc bc                                        ; $7512: $03
    db $db                                        ; $7513: $db
    ld [hl], l                                    ; $7514: $75
    cp l                                          ; $7515: $bd
    xor e                                         ; $7516: $ab
    ld d, $76                                     ; $7517: $16 $76
    add h                                         ; $7519: $84
    xor e                                         ; $751a: $ab
    rra                                           ; $751b: $1f
    jp z, $997d                                   ; $751c: $ca $7d $99

    push bc                                       ; $751f: $c5
    ld [hl], c                                    ; $7520: $71
    ld b, h                                       ; $7521: $44
    di                                            ; $7522: $f3
    ld h, d                                       ; $7523: $62
    ld e, b                                       ; $7524: $58
    ld e, [hl]                                    ; $7525: $5e
    ld [de], a                                    ; $7526: $12
    ld d, a                                       ; $7527: $57
    ld d, d                                       ; $7528: $52
    ld d, a                                       ; $7529: $57
    dec sp                                        ; $752a: $3b
    ld [$d42a], sp                                ; $752b: $08 $2a $d4
    add l                                         ; $752e: $85
    add hl, hl                                    ; $752f: $29
    ld d, e                                       ; $7530: $53
    and a                                         ; $7531: $a7
    and e                                         ; $7532: $a3
    ld a, [de]                                    ; $7533: $1a
    ld l, c                                       ; $7534: $69
    ld sp, $06f5                                  ; $7535: $31 $f5 $06
    db $db                                        ; $7538: $db
    ld [hl], l                                    ; $7539: $75

Jump_03d_753a:
    halt                                          ; $753a: $76
    or b                                          ; $753b: $b0
    ld b, d                                       ; $753c: $42
    ld c, d                                       ; $753d: $4a
    call z, $1711                                 ; $753e: $cc $11 $17
    halt                                          ; $7541: $76
    push af                                       ; $7542: $f5
    ld a, e                                       ; $7543: $7b
    ld c, c                                       ; $7544: $49
    ld e, l                                       ; $7545: $5d
    db $dd                                        ; $7546: $dd
    dec b                                         ; $7547: $05
    dec [hl]                                      ; $7548: $35
    sub e                                         ; $7549: $93
    ld a, d                                       ; $754a: $7a
    cpl                                           ; $754b: $2f
    ld b, b                                       ; $754c: $40
    ld e, d                                       ; $754d: $5a
    ld c, l                                       ; $754e: $4d
    ret                                           ; $754f: $c9


    ld de, $bef7                                  ; $7550: $11 $f7 $be
    ld d, l                                       ; $7553: $55
    ld a, [de]                                    ; $7554: $1a
    cp [hl]                                       ; $7555: $be
    adc h                                         ; $7556: $8c
    ld h, l                                       ; $7557: $65
    jp c, Jump_03d_6c20                           ; $7558: $da $20 $6c

    push de                                       ; $755b: $d5
    call $cfbc                                    ; $755c: $cd $bc $cf
    ld a, c                                       ; $755f: $79
    xor [hl]                                      ; $7560: $ae
    db $fc                                        ; $7561: $fc
    call z, $69a3                                 ; $7562: $cc $a3 $69
    or [hl]                                       ; $7565: $b6

Jump_03d_7566:
    jr c, @-$2f                                   ; $7566: $38 $cf

    or d                                          ; $7568: $b2
    ld e, [hl]                                    ; $7569: $5e
    ld c, $72                                     ; $756a: $0e $72
    jp nc, $06f2                                  ; $756c: $d2 $f2 $06

    db $db                                        ; $756f: $db
    ld [hl], l                                    ; $7570: $75
    cp l                                          ; $7571: $bd
    xor e                                         ; $7572: $ab
    ld d, $76                                     ; $7573: $16 $76
    add h                                         ; $7575: $84
    ld a, e                                       ; $7576: $7b
    rla                                           ; $7577: $17
    ld d, e                                       ; $7578: $53
    and $b9                                       ; $7579: $e6 $b9
    ld b, e                                       ; $757b: $43
    ld a, e                                       ; $757c: $7b
    ld h, c                                       ; $757d: $61
    xor e                                         ; $757e: $ab
    cp a                                          ; $757f: $bf
    ld d, b                                       ; $7580: $50
    ld [hl], a                                    ; $7581: $77
    xor $63                                       ; $7582: $ee $63
    db $ec                                        ; $7584: $ec
    jp nc, Jump_03d_4cd8                          ; $7585: $d2 $d8 $4c

    ld [$f3ac], a                                 ; $7588: $ea $ac $f3
    or [hl]                                       ; $758b: $b6
    add sp, $39                                   ; $758c: $e8 $39
    and d                                         ; $758e: $a2
    ld c, c                                       ; $758f: $49
    adc h                                         ; $7590: $8c
    ld a, [c]                                     ; $7591: $f2
    ld d, d                                       ; $7592: $52
    ld d, d                                       ; $7593: $52
    rrca                                          ; $7594: $0f
    cp l                                          ; $7595: $bd
    ld bc, $75db                                  ; $7596: $01 $db $75
    ld bc, $2542                                  ; $7599: $01 $42 $25
    add $f7                                       ; $759c: $c6 $f7
    add hl, hl                                    ; $759e: $29
    ccf                                           ; $759f: $3f
    rst $08                                       ; $75a0: $cf
    or d                                          ; $75a1: $b2
    ld d, b                                       ; $75a2: $50
    ld [de], a                                    ; $75a3: $12
    sub d                                         ; $75a4: $92
    xor a                                         ; $75a5: $af
    ld a, a                                       ; $75a6: $7f
    add a                                         ; $75a7: $87
    ld e, [hl]                                    ; $75a8: $5e
    db $f4                                        ; $75a9: $f4
    or e                                          ; $75aa: $b3
    ld c, a                                       ; $75ab: $4f
    ld sp, hl                                     ; $75ac: $f9
    ld a, c                                       ; $75ad: $79
    xor [hl]                                      ; $75ae: $ae
    cp h                                          ; $75af: $bc
    xor $6c                                       ; $75b0: $ee $6c
    ld [hl], c                                    ; $75b2: $71
    db $fd                                        ; $75b3: $fd
    ld e, [hl]                                    ; $75b4: $5e
    rrca                                          ; $75b5: $0f
    dec e                                         ; $75b6: $1d
    ld [hl], c                                    ; $75b7: $71
    dec h                                         ; $75b8: $25
    ld [hl], l                                    ; $75b9: $75
    cp l                                          ; $75ba: $bd
    ei                                            ; $75bb: $fb
    db $ec                                        ; $75bc: $ec
    or b                                          ; $75bd: $b0
    sbc $ee                                       ; $75be: $de $ee
    add l                                         ; $75c0: $85
    jr @+$81                                      ; $75c1: $18 $7f

    ld a, l                                       ; $75c3: $7d
    ld e, $6a                                     ; $75c4: $1e $6a
    ld a, [de]                                    ; $75c6: $1a
    push hl                                       ; $75c7: $e5
    dec bc                                        ; $75c8: $0b
    push af                                       ; $75c9: $f5
    ldh a, [rNR31]                                ; $75ca: $f0 $1b
    nop                                           ; $75cc: $00
    db $db                                        ; $75cd: $db
    ld [hl], l                                    ; $75ce: $75
    rst $20                                       ; $75cf: $e7
    ld a, [hl]                                    ; $75d0: $7e
    sbc l                                         ; $75d1: $9d
    sbc d                                         ; $75d2: $9a
    adc e                                         ; $75d3: $8b
    or h                                          ; $75d4: $b4
    sub l                                         ; $75d5: $95
    ld h, [hl]                                    ; $75d6: $66
    ld [hl], d                                    ; $75d7: $72
    sbc [hl]                                      ; $75d8: $9e
    dec hl                                        ; $75d9: $2b

jr_03d_75da:
    cp a                                          ; $75da: $bf
    ld a, [$f6a1]                                 ; $75db: $fa $a1 $f6
    scf                                           ; $75de: $37
    nop                                           ; $75df: $00
    db $db                                        ; $75e0: $db
    ld [hl], l                                    ; $75e1: $75
    ld h, a                                       ; $75e2: $67
    adc e                                         ; $75e3: $8b
    db $eb                                        ; $75e4: $eb
    rst $30                                       ; $75e5: $f7
    or e                                          ; $75e6: $b3
    jr c, @-$50                                   ; $75e7: $38 $ae

    ld h, c                                       ; $75e9: $61
    add l                                         ; $75ea: $85
    jr @+$6f                                      ; $75eb: $18 $6d

    rst $00                                       ; $75ed: $c7
    or d                                          ; $75ee: $b2
    ld [c], a                                     ; $75ef: $e2
    ldh a, [$d5]                                  ; $75f0: $f0 $d5
    ld h, h                                       ; $75f2: $64
    ret c                                         ; $75f3: $d8

    ld a, [c]                                     ; $75f4: $f2
    ld b, $db                                     ; $75f5: $06 $db
    ld [hl], l                                    ; $75f7: $75
    rst $20                                       ; $75f8: $e7
    ld a, [hl]                                    ; $75f9: $7e
    sbc l                                         ; $75fa: $9d
    ld a, [$34ab]                                 ; $75fb: $fa $ab $34
    ld c, a                                       ; $75fe: $4f
    adc h                                         ; $75ff: $8c
    sbc h                                         ; $7600: $9c
    ld [hl], l                                    ; $7601: $75
    rst $28                                       ; $7602: $ef
    ld h, d                                       ; $7603: $62
    jp z, Jump_03d_73cf                           ; $7604: $ca $cf $73

    add a                                         ; $7607: $87
    sbc [hl]                                      ; $7608: $9e
    db $d3                                        ; $7609: $d3
    or h                                          ; $760a: $b4
    add l                                         ; $760b: $85
    cpl                                           ; $760c: $2f
    dec hl                                        ; $760d: $2b
    xor a                                         ; $760e: $af
    jp Jump_03d_4ec6                              ; $760f: $c3 $c6 $4e


    ld a, c                                       ; $7612: $79
    sbc l                                         ; $7613: $9d

jr_03d_7614:
    ld h, a                                       ; $7614: $67
    ld e, c                                       ; $7615: $59
    or l                                          ; $7616: $b5
    adc e                                         ; $7617: $8b
    ld c, [hl]                                    ; $7618: $4e
    ld a, [c]                                     ; $7619: $f2
    ret nc                                        ; $761a: $d0

    dec de                                        ; $761b: $1b

jr_03d_761c:
    nop                                           ; $761c: $00
    db $db                                        ; $761d: $db
    ld [hl], l                                    ; $761e: $75
    cp l                                          ; $761f: $bd
    jr nc, jr_03d_7658                            ; $7620: $30 $36

    ret z                                         ; $7622: $c8

    push hl                                       ; $7623: $e5
    ld a, d                                       ; $7624: $7a
    ld sp, hl                                     ; $7625: $f9
    ld d, [hl]                                    ; $7626: $56
    ld l, c                                       ; $7627: $69
    sbc b                                         ; $7628: $98
    or e                                          ; $7629: $b3
    jr c, jr_03d_75da                             ; $762a: $38 $ae

    ld b, d                                       ; $762c: $42
    inc [hl]                                      ; $762d: $34
    call $bf76                                    ; $762e: $cd $76 $bf
    ld a, [c]                                     ; $7631: $f2
    cp e                                          ; $7632: $bb
    and d                                         ; $7633: $a2
    ld a, c                                       ; $7634: $79
    ld h, d                                       ; $7635: $62
    db $e4                                        ; $7636: $e4
    ld a, d                                       ; $7637: $7a
    ld a, a                                       ; $7638: $7f
    ld sp, $d7c1                                  ; $7639: $31 $c1 $d7
    ld de, $70e7                                  ; $763c: $11 $e7 $70
    ld h, $d1                                     ; $763f: $26 $d1
    jr c, jr_03d_7614                             ; $7641: $38 $d1

    sbc h                                         ; $7643: $9c
    rst $20                                       ; $7644: $e7
    sbc $b7                                       ; $7645: $de $b7
    ld c, d                                       ; $7647: $4a
    jp $cd37                                      ; $7648: $c3 $37 $cd


    ld d, $6f                                     ; $764b: $16 $6f
    nop                                           ; $764d: $00
    db $db                                        ; $764e: $db
    ld [hl], l                                    ; $764f: $75
    halt                                          ; $7650: $76
    or b                                          ; $7651: $b0
    ld b, d                                       ; $7652: $42
    ld c, d                                       ; $7653: $4a
    call z, Call_03d_5711                         ; $7654: $cc $11 $57
    dec sp                                        ; $7657: $3b

jr_03d_7658:
    ld [$d42a], sp                                ; $7658: $08 $2a $d4
    ld e, c                                       ; $765b: $59
    rst $30                                       ; $765c: $f7
    ld l, $a6                                     ; $765d: $2e $a6
    call z, $b573                                 ; $765f: $cc $73 $b5
    inc sp                                        ; $7662: $33
    pop bc                                        ; $7663: $c1
    call nc, $d695                                ; $7664: $d4 $95 $d6
    sub c                                         ; $7667: $91
    ld d, h                                       ; $7668: $54

Call_03d_7669:
    ld hl, sp+$4c                                 ; $7669: $f8 $4c
    sub $b9                                       ; $766b: $d6 $b9
    ld b, e                                       ; $766d: $43
    cpl                                           ; $766e: $2f
    ld c, d                                       ; $766f: $4a
    ld e, l                                       ; $7670: $5d
    db $ed                                        ; $7671: $ed
    jr nz, jr_03d_761c                            ; $7672: $20 $a8

    ld d, b                                       ; $7674: $50
    and a                                         ; $7675: $a7
    sbc h                                         ; $7676: $9c
    ld a, a                                       ; $7677: $7f
    sbc h                                         ; $7678: $9c
    ld [hl], c                                    ; $7679: $71
    call nz, $87f8                                ; $767a: $c4 $f8 $87
    sbc $00                                       ; $767d: $de $00
    db $db                                        ; $767f: $db
    ld [hl], l                                    ; $7680: $75
    rst $20                                       ; $7681: $e7
    ld h, e                                       ; $7682: $63
    add l                                         ; $7683: $85
    jr jr_03d_76d9                                ; $7684: $18 $53

    and $b9                                       ; $7686: $e6 $b9
    ld a, [c]                                     ; $7688: $f2
    db $eb                                        ; $7689: $eb
    ld h, h                                       ; $768a: $64
    db $dd                                        ; $768b: $dd
    ld sp, hl                                     ; $768c: $f9
    ld d, l                                       ; $768d: $55
    ld d, a                                       ; $768e: $57
    adc l                                         ; $768f: $8d
    call Call_000_0dff                            ; $7690: $cd $ff $0d
    nop                                           ; $7693: $00
    db $db                                        ; $7694: $db
    ld [hl], l                                    ; $7695: $75
    halt                                          ; $7696: $76
    ld h, l                                       ; $7697: $65
    push af                                       ; $7698: $f5
    ld b, e                                       ; $7699: $43
    cp c                                          ; $769a: $b9
    cp d                                          ; $769b: $ba
    ld c, e                                       ; $769c: $4b
    ld d, a                                       ; $769d: $57
    db $fd                                        ; $769e: $fd
    ld [hl], l                                    ; $769f: $75
    ld l, d                                       ; $76a0: $6a
    adc $73                                       ; $76a1: $ce $73
    ld sp, $ea7d                                  ; $76a3: $31 $7d $ea
    ld c, d                                       ; $76a6: $4a
    ld [$6362], a                                 ; $76a7: $ea $62 $63
    dec e                                         ; $76aa: $1d
    and [hl]                                      ; $76ab: $a6
    sbc $eb                                       ; $76ac: $de $eb
    db $d3                                        ; $76ae: $d3
    ld e, b                                       ; $76af: $58
    ld [hl], a                                    ; $76b0: $77
    inc h                                         ; $76b1: $24
    rst $20                                       ; $76b2: $e7
    cp c                                          ; $76b3: $b9
    ld a, [c]                                     ; $76b4: $f2
    db $eb                                        ; $76b5: $eb
    sbc l                                         ; $76b6: $9d
    ld [de], a                                    ; $76b7: $12
    add hl, sp                                    ; $76b8: $39
    rst $08                                       ; $76b9: $cf
    or d                                          ; $76ba: $b2
    ld c, e                                       ; $76bb: $4b
    ld l, c                                       ; $76bc: $69
    ld e, l                                       ; $76bd: $5d
    cpl                                           ; $76be: $2f
    adc c                                         ; $76bf: $89
    ld c, [hl]                                    ; $76c0: $4e
    ld a, [c]                                     ; $76c1: $f2
    ld b, $db                                     ; $76c2: $06 $db
    ld [hl], l                                    ; $76c4: $75
    rla                                           ; $76c5: $17
    or b                                          ; $76c6: $b0
    sbc d                                         ; $76c7: $9a
    di                                            ; $76c8: $f3
    ld e, h                                       ; $76c9: $5c
    ld sp, hl                                     ; $76ca: $f9
    push af                                       ; $76cb: $f5
    ld c, [hl]                                    ; $76cc: $4e
    xor h                                         ; $76cd: $ac
    db $10                                        ; $76ce: $10
    ld c, l                                       ; $76cf: $4d
    or e                                          ; $76d0: $b3
    push bc                                       ; $76d1: $c5
    ld a, c                                       ; $76d2: $79
    xor [hl]                                      ; $76d3: $ae
    rst $08                                       ; $76d4: $cf
    ld b, e                                       ; $76d5: $43
    xor c                                         ; $76d6: $a9
    ldh a, [rNR33]                                ; $76d7: $f0 $1d

jr_03d_76d9:
    ld [hl], e                                    ; $76d9: $73
    ld [c], a                                     ; $76da: $e2
    ld sp, $eec7                                  ; $76db: $31 $c7 $ee
    ret z                                         ; $76de: $c8

    dec e                                         ; $76df: $1d
    ld [hl], e                                    ; $76e0: $73
    ld [c], a                                     ; $76e1: $e2
    ret                                           ; $76e2: $c9


    daa                                           ; $76e3: $27
    db $dd                                        ; $76e4: $dd
    nop                                           ; $76e5: $00
    db $db                                        ; $76e6: $db
    ld [hl], l                                    ; $76e7: $75
    rst $20                                       ; $76e8: $e7
    ld a, [hl]                                    ; $76e9: $7e
    sbc l                                         ; $76ea: $9d
    sbc d                                         ; $76eb: $9a
    db $eb                                        ; $76ec: $eb
    db $d3                                        ; $76ed: $d3
    or b                                          ; $76ee: $b0
    ld l, c                                       ; $76ef: $69
    sub h                                         ; $76f0: $94
    sbc h                                         ; $76f1: $9c
    rst $20                                       ; $76f2: $e7
    ld a, [$d43c]                                 ; $76f3: $fa $3c $d4
    ld e, $3e                                     ; $76f6: $1e $3e
    ld d, $42                                     ; $76f8: $16 $42
    call $88e7                                    ; $76fa: $cd $e7 $88
    dec sp                                        ; $76fd: $3b
    and $e4                                       ; $76fe: $e6 $e4
    ld h, e                                       ; $7700: $63
    adc [hl]                                      ; $7701: $8e
    cp c                                          ; $7702: $b9
    ld bc, $75db                                  ; $7703: $01 $db $75
    rla                                           ; $7706: $17
    or b                                          ; $7707: $b0
    sbc d                                         ; $7708: $9a
    di                                            ; $7709: $f3
    inc l                                         ; $770a: $2c
    db $eb                                        ; $770b: $eb
    sbc l                                         ; $770c: $9d
    xor b                                         ; $770d: $a8
    db $ec                                        ; $770e: $ec
    sub a                                         ; $770f: $97
    di                                            ; $7710: $f3
    ld e, h                                       ; $7711: $5c
    sbc a                                         ; $7712: $9f
    add a                                         ; $7713: $87
    ld d, d                                       ; $7714: $52
    ld [hl], a                                    ; $7715: $77
    call z, $c7f1                                 ; $7716: $cc $f1 $c7
    sbc a                                         ; $7719: $9f
    cp h                                          ; $771a: $bc
    inc hl                                        ; $771b: $23
    ld [hl], a                                    ; $771c: $77
    jp nz, $37d1                                  ; $771d: $c2 $d1 $37

    nop                                           ; $7720: $00
    db $db                                        ; $7721: $db
    ld [hl], l                                    ; $7722: $75
    rst $20                                       ; $7723: $e7
    ld a, [hl]                                    ; $7724: $7e
    sbc l                                         ; $7725: $9d
    sbc d                                         ; $7726: $9a
    dec bc                                        ; $7727: $0b
    ld d, e                                       ; $7728: $53
    and $29                                       ; $7729: $e6 $29
    sub d                                         ; $772b: $92
    pop af                                        ; $772c: $f1
    ld h, l                                       ; $772d: $65
    ccf                                           ; $772e: $3f
    add a                                         ; $772f: $87
    adc e                                         ; $7730: $8b
    sub d                                         ; $7731: $92
    ld h, l                                       ; $7732: $65
    ld d, $c7                                     ; $7733: $16 $c7
    ld a, l                                       ; $7735: $7d
    and h                                         ; $7736: $a4
    ld c, b                                       ; $7737: $48
    ld c, d                                       ; $7738: $4a
    db $eb                                        ; $7739: $eb
    rst $38                                       ; $773a: $ff
    sbc l                                         ; $773b: $9d
    rst $18                                       ; $773c: $df
    cpl                                           ; $773d: $2f
    and [hl]                                      ; $773e: $a6
    ld c, a                                       ; $773f: $4f
    ld e, l                                       ; $7740: $5d
    ld c, c                                       ; $7741: $49
    sbc l                                         ; $7742: $9d
    push bc                                       ; $7743: $c5
    ld [hl], c                                    ; $7744: $71
    ld b, [hl]                                    ; $7745: $46
    ld e, h                                       ; $7746: $5c
    rst $38                                       ; $7747: $ff
    rst $28                                       ; $7748: $ef
    inc a                                         ; $7749: $3c
    adc [hl]                                      ; $774a: $8e
    ld h, l                                       ; $774b: $65
    sub a                                         ; $774c: $97
    jp c, $aee4                                   ; $774d: $da $e4 $ae

    or h                                          ; $7750: $b4
    ld a, [c]                                     ; $7751: $f2
    ld b, $db                                     ; $7752: $06 $db
    ld [hl], l                                    ; $7754: $75
    ld bc, $6ad2                                  ; $7755: $01 $d2 $6a
    jp z, Jump_03d_4faf                           ; $7758: $ca $af $4f

    jp $51a6                                      ; $775b: $c3 $a6 $51


    ld a, [hl]                                    ; $775e: $7e
    sbc [hl]                                      ; $775f: $9e
    db $eb                                        ; $7760: $eb
    di                                            ; $7761: $f3
    ld d, b                                       ; $7762: $50
    ei                                            ; $7763: $fb
    ld [hl], l                                    ; $7764: $75
    call nz, $fbf5                                ; $7765: $c4 $f5 $fb
    dec de                                        ; $7768: $1b
    nop                                           ; $7769: $00
    db $db                                        ; $776a: $db
    ld [hl], l                                    ; $776b: $75
    rst $20                                       ; $776c: $e7
    ld a, [hl]                                    ; $776d: $7e
    sbc l                                         ; $776e: $9d
    ld a, [$530b]                                 ; $776f: $fa $0b $53
    and [hl]                                      ; $7772: $a6
    ld c, [hl]                                    ; $7773: $4e
    ld b, a                                       ; $7774: $47
    adc l                                         ; $7775: $8d
    adc $b7                                       ; $7776: $ce $b7
    call nc, Call_03d_7669                        ; $7778: $d4 $69 $76
    add h                                         ; $777b: $84
    dec hl                                        ; $777c: $2b
    xor c                                         ; $777d: $a9
    adc e                                         ; $777e: $8b
    sub d                                         ; $777f: $92
    and l                                         ; $7780: $a5
    add sp, -$43                                  ; $7781: $e8 $bd
    ld e, [hl]                                    ; $7783: $5e
    ld h, c                                       ; $7784: $61
    adc d                                         ; $7785: $8a
    ldh a, [$fd]                                  ; $7786: $f0 $fd
    cpl                                           ; $7788: $2f
    ld hl, sp+$1a                                 ; $7789: $f8 $1a
    ld a, a                                       ; $778b: $7f
    push hl                                       ; $778c: $e5
    ld d, a                                       ; $778d: $57
    dec sp                                        ; $778e: $3b
    ld c, d                                       ; $778f: $4a
    db $e4                                        ; $7790: $e4
    ld [$8c46], a                                 ; $7791: $ea $46 $8c
    ld a, [c]                                     ; $7794: $f2
    ld a, [hl-]                                   ; $7795: $3a
    rst $18                                       ; $7796: $df

jr_03d_7797:
    ld a, [hl-]                                   ; $7797: $3a
    xor [hl]                                      ; $7798: $ae
    rst $18                                       ; $7799: $df
    ld [hl], a                                    ; $779a: $77
    ld a, [hl]                                    ; $779b: $7e
    ccf                                           ; $779c: $3f
    add a                                         ; $779d: $87
    ld a, c                                       ; $779e: $79
    inc bc                                        ; $779f: $03
    db $db                                        ; $77a0: $db
    ld [hl], l                                    ; $77a1: $75
    ld a, l                                       ; $77a2: $7d
    ld e, $ca                                     ; $77a3: $1e $ca
    push af                                       ; $77a5: $f5
    cp $3a                                        ; $77a6: $fe $3a
    and h                                         ; $77a8: $a4
    dec l                                         ; $77a9: $2d
    adc $73                                       ; $77aa: $ce $73
    cp l                                          ; $77ac: $bd
    ld a, [$0bd1]                                 ; $77ad: $fa $d1 $0b
    ei                                            ; $77b0: $fb
    rst $28                                       ; $77b1: $ef
    sbc b                                         ; $77b2: $98
    inc de                                        ; $77b3: $13
    adc [hl]                                      ; $77b4: $8e
    ld a, $71                                     ; $77b5: $3e $71
    ld b, a                                       ; $77b7: $47
    xor $98                                       ; $77b8: $ee $98
    inc de                                        ; $77ba: $13
    ld c, [hl]                                    ; $77bb: $4e
    ld a, $f9                                     ; $77bc: $3e $f9
    ld b, $db                                     ; $77be: $06 $db
    ld [hl], l                                    ; $77c0: $75
    halt                                          ; $77c1: $76
    ld h, l                                       ; $77c2: $65
    ld h, $d8                                     ; $77c3: $26 $d8
    ld c, h                                       ; $77c5: $4c
    adc $e2                                       ; $77c6: $ce $e2
    jr c, jr_03d_7797                             ; $77c8: $38 $cd

    adc [hl]                                      ; $77ca: $8e
    or b                                          ; $77cb: $b0
    jp nc, $cd2a                                  ; $77cc: $d2 $2a $cd

    or $06                                        ; $77cf: $f6 $06
    db $db                                        ; $77d1: $db
    ld [hl], l                                    ; $77d2: $75
    add c                                         ; $77d3: $81
    sbc h                                         ; $77d4: $9c
    ret                                           ; $77d5: $c9


    cp d                                          ; $77d6: $ba
    reti                                          ; $77d7: $d9


    adc $e1                                       ; $77d8: $ce $e1
    rst $28                                       ; $77da: $ef
    ld [hl-], a                                   ; $77db: $32
    ld h, d                                       ; $77dc: $62
    db $ec                                        ; $77dd: $ec
    ld [hl-], a                                   ; $77de: $32
    xor [hl]                                      ; $77df: $ae
    db $fc                                        ; $77e0: $fc
    xor [hl]                                      ; $77e1: $ae

jr_03d_77e2:
    jr nz, jr_03d_77f6                            ; $77e2: $20 $12

    ld d, e                                       ; $77e4: $53
    ld a, a                                       ; $77e5: $7f
    call nz, $f948                                ; $77e6: $c4 $48 $f9
    ld e, c                                       ; $77e9: $59
    and a                                         ; $77ea: $a7
    reti                                          ; $77eb: $d9


    ld de, $5a56                                  ; $77ec: $11 $56 $5a
    and l                                         ; $77ef: $a5
    reti                                          ; $77f0: $d9


    jp nz, Jump_000_0ef7                          ; $77f1: $c2 $f7 $0e

    dec l                                         ; $77f4: $2d
    adc [hl]                                      ; $77f5: $8e

jr_03d_77f6:
    ld d, e                                       ; $77f6: $53
    ld l, $f8                                     ; $77f7: $2e $f8
    sub $9f                                       ; $77f9: $d6 $9f
    push bc                                       ; $77fb: $c5
    pop de                                        ; $77fc: $d1
    cp a                                          ; $77fd: $bf
    rst $08                                       ; $77fe: $cf
    add l                                         ; $77ff: $85
    rlca                                          ; $7800: $07
    ld c, b                                       ; $7801: $48
    add sp, -$1c                                  ; $7802: $e8 $e4
    ld l, a                                       ; $7804: $6f
    nop                                           ; $7805: $00
    db $db                                        ; $7806: $db
    ld [hl], l                                    ; $7807: $75
    ld h, a                                       ; $7808: $67
    adc e                                         ; $7809: $8b
    db $eb                                        ; $780a: $eb
    rst $30                                       ; $780b: $f7
    adc e                                         ; $780c: $8b
    adc [hl]                                      ; $780d: $8e
    ld [de], a                                    ; $780e: $12
    ld a, a                                       ; $780f: $7f
    sub $f5                                       ; $7810: $d6 $f5
    ld c, e                                       ; $7812: $4b
    ret                                           ; $7813: $c9


    adc $fb                                       ; $7814: $ce $fb
    sbc a                                         ; $7816: $9f
    push bc                                       ; $7817: $c5
    ld [hl], c                                    ; $7818: $71
    ld b, h                                       ; $7819: $44
    sub e                                         ; $781a: $93
    jr jr_03d_77e2                                ; $781b: $18 $c5

    halt                                          ; $781d: $76
    push hl                                       ; $781e: $e5
    ld d, a                                       ; $781f: $57
    ld a, c                                       ; $7820: $79
    db $e3                                        ; $7821: $e3
    ldh a, [rNR22]                                ; $7822: $f0 $17
    cp [hl]                                       ; $7824: $be
    db $fc                                        ; $7825: $fc
    jp z, $f2af                                   ; $7826: $ca $af $f2

    jp nc, $cb0c                                  ; $7829: $d2 $0c $cb

    rst $08                                       ; $782c: $cf
    res 3, e                                      ; $782d: $cb $9b
    call nz, $f8f6                                ; $782f: $c4 $f6 $f8
    scf                                           ; $7832: $37
    nop                                           ; $7833: $00
    db $db                                        ; $7834: $db
    ld [hl], l                                    ; $7835: $75
    rst $20                                       ; $7836: $e7
    adc b                                         ; $7837: $88
    ld l, e                                       ; $7838: $6b
    cp $d7                                        ; $7839: $fe $d7
    and h                                         ; $783b: $a4
    inc a                                         ; $783c: $3c
    ld a, d                                       ; $783d: $7a
    ld [$e2cf], a                                 ; $783e: $ea $cf $e2
    jr c, jr_03d_7892                             ; $7841: $38 $4f

    dec [hl]                                      ; $7843: $35
    xor [hl]                                      ; $7844: $ae
    inc hl                                        ; $7845: $23
    call $e576                                    ; $7846: $cd $76 $e5
    ld [hl], l                                    ; $7849: $75
    and c                                         ; $784a: $a1
    ld h, h                                       ; $784b: $64
    ret c                                         ; $784c: $d8

    add sp, -$21                                  ; $784d: $e8 $df
    ld d, e                                       ; $784f: $53
    rst $20                                       ; $7850: $e7
    ld e, c                                       ; $7851: $59
    halt                                          ; $7852: $76
    ld l, c                                       ; $7853: $69
    ld a, [de]                                    ; $7854: $1a
    sbc e                                         ; $7855: $9b
    db $f4                                        ; $7856: $f4
    inc l                                         ; $7857: $2c
    ld c, $ff                                     ; $7858: $0e $ff
    ld b, $db                                     ; $785a: $06 $db
    ld [hl], l                                    ; $785c: $75
    ld bc, $912d                                  ; $785d: $01 $2d $91
    sub d                                         ; $7860: $92
    di                                            ; $7861: $f3
    ld e, h                                       ; $7862: $5c
    ld sp, hl                                     ; $7863: $f9
    reti                                          ; $7864: $d9


    ld d, e                                       ; $7865: $53
    ld a, [hl-]                                   ; $7866: $3a
    ld e, c                                       ; $7867: $59
    ld [de], a                                    ; $7868: $12
    or d                                          ; $7869: $b2
    ld sp, hl                                     ; $786a: $f9
    ld e, c                                       ; $786b: $59
    ld h, a                                       ; $786c: $67
    or d                                          ; $786d: $b2
    ret nc                                        ; $786e: $d0

    sbc b                                         ; $786f: $98
    sub [hl]                                      ; $7870: $96
    ret c                                         ; $7871: $d8

    inc [hl]                                      ; $7872: $34
    cp $3c                                        ; $7873: $fe $3c
    ld d, a                                       ; $7875: $57
    dec sp                                        ; $7876: $3b
    inc de                                        ; $7877: $13
    ld a, h                                       ; $7878: $7c
    ld e, l                                       ; $7879: $5d
    ld [hl], l                                    ; $787a: $75
    ld c, c                                       ; $787b: $49
    and c                                         ; $787c: $a1
    xor [hl]                                      ; $787d: $ae
    xor $82                                       ; $787e: $ee $82
    sbc d                                         ; $7880: $9a
    ld a, c                                       ; $7881: $79
    cp l                                          ; $7882: $bd
    ld bc, $75db                                  ; $7883: $01 $db $75
    ld bc, $6ad2                                  ; $7886: $01 $d2 $6a
    jp z, Jump_03d_62af                           ; $7889: $ca $af $62

    ld h, e                                       ; $788c: $63
    ld h, d                                       ; $788d: $62
    xor e                                         ; $788e: $ab
    ld a, a                                       ; $788f: $7f
    ld h, $31                                     ; $7890: $26 $31

jr_03d_7892:
    ld c, l                                       ; $7892: $4d
    di                                            ; $7893: $f3
    ccf                                           ; $7894: $3f
    rst $08                                       ; $7895: $cf
    sub l                                         ; $7896: $95
    ld e, a                                       ; $7897: $5f
    push hl                                       ; $7898: $e5
    and l                                         ; $7899: $a5
    add hl, de                                    ; $789a: $19
    sub [hl]                                      ; $789b: $96
    sbc a                                         ; $789c: $9f
    sub a                                         ; $789d: $97
    scf                                           ; $789e: $37

jr_03d_789f:
    adc c                                         ; $789f: $89
    db $ed                                        ; $78a0: $ed
    pop af                                        ; $78a1: $f1
    ld l, a                                       ; $78a2: $6f
    nop                                           ; $78a3: $00
    db $db                                        ; $78a4: $db
    ld [hl], l                                    ; $78a5: $75
    rst $20                                       ; $78a6: $e7
    ld a, [hl-]                                   ; $78a7: $3a
    db $f4                                        ; $78a8: $f4
    or [hl]                                       ; $78a9: $b6
    ld h, e                                       ; $78aa: $63
    sbc c                                         ; $78ab: $99
    ld a, l                                       ; $78ac: $7d
    ld l, d                                       ; $78ad: $6a
    ret c                                         ; $78ae: $d8

    ld [c], a                                     ; $78af: $e2
    sub a                                         ; $78b0: $97
    dec b                                         ; $78b1: $05
    ld a, $ae                                     ; $78b2: $3e $ae
    adc a                                         ; $78b4: $8f
    ld b, e                                       ; $78b5: $43
    jr z, jr_03d_789f                             ; $78b6: $28 $e7

    add hl, sp                                    ; $78b8: $39
    dec sp                                        ; $78b9: $3b
    xor h                                         ; $78ba: $ac
    and [hl]                                      ; $78bb: $a6
    call nc, $eff4                                ; $78bc: $d4 $f4 $ef
    xor c                                         ; $78bf: $a9
    or e                                          ; $78c0: $b3
    adc $9e                                       ; $78c1: $ce $9e
    jp nc, $ebfc                                  ; $78c3: $d2 $fc $eb

    ld a, [$4174]                                 ; $78c6: $fa $74 $41
    call $debc                                    ; $78c9: $cd $bc $de
    nop                                           ; $78cc: $00
    db $db                                        ; $78cd: $db
    ld [hl], l                                    ; $78ce: $75
    ld bc, $6ad2                                  ; $78cf: $01 $d2 $6a
    jp z, $87ea                                   ; $78d2: $ca $ea $87

    ld [hl], d                                    ; $78d5: $72
    ld d, $c7                                     ; $78d6: $16 $c7
    ld d, l                                       ; $78d8: $55
    dec sp                                        ; $78d9: $3b
    adc $a4                                       ; $78da: $ce $a4
    jr nz, @-$1f                                  ; $78dc: $20 $df

    rst $20                                       ; $78de: $e7
    jp nz, Jump_000_3994                          ; $78df: $c2 $94 $39

    sbc h                                         ; $78e2: $9c
    sbc l                                         ; $78e3: $9d
    cp b                                          ; $78e4: $b8
    ld a, [hl-]                                   ; $78e5: $3a
    inc h                                         ; $78e6: $24
    add $7d                                       ; $78e7: $c6 $7d
    or l                                          ; $78e9: $b5
    inc [hl]                                      ; $78ea: $34
    di                                            ; $78eb: $f3
    sbc b                                         ; $78ec: $98
    scf                                           ; $78ed: $37
    nop                                           ; $78ee: $00
    db $db                                        ; $78ef: $db
    ld [hl], l                                    ; $78f0: $75
    ld bc, $6ad2                                  ; $78f1: $01 $d2 $6a
    jp z, $97af                                   ; $78f4: $ca $af $97

    or h                                          ; $78f7: $b4
    ld e, b                                       ; $78f8: $58
    ccf                                           ; $78f9: $3f
    ld b, [hl]                                    ; $78fa: $46
    adc $e2                                       ; $78fb: $ce $e2
    jr c, jr_03d_794e                             ; $78fd: $38 $4f

    dec [hl]                                      ; $78ff: $35
    xor [hl]                                      ; $7900: $ae
    inc hl                                        ; $7901: $23
    call $e576                                    ; $7902: $cd $76 $e5
    ld [hl], l                                    ; $7905: $75
    and c                                         ; $7906: $a1
    ld h, h                                       ; $7907: $64
    ret c                                         ; $7908: $d8

    add sp, -$21                                  ; $7909: $e8 $df
    ld d, e                                       ; $790b: $53
    ld d, a                                       ; $790c: $57
    ld [hl], a                                    ; $790d: $77
    ld b, c                                       ; $790e: $41

Call_03d_790f:
    call $cebc                                    ; $790f: $cd $bc $ce
    or e                                          ; $7912: $b3
    inc c                                         ; $7913: $0c
    rrca                                          ; $7914: $0f
    xor b                                         ; $7915: $a8
    add hl, hl                                    ; $7916: $29
    add hl, sp                                    ; $7917: $39
    ld l, l                                       ; $7918: $6d
    adc h                                         ; $7919: $8c
    cp h                                          ; $791a: $bc
    ld bc, $75db                                  ; $791b: $01 $db $75
    cp l                                          ; $791e: $bd
    or e                                          ; $791f: $b3
    jp c, Jump_03d_7fa1                           ; $7920: $da $a1 $7f

    sbc a                                         ; $7923: $9f
    ld [hl-], a                                   ; $7924: $32
    rst $08                                       ; $7925: $cf
    reti                                          ; $7926: $d9


    daa                                           ; $7927: $27
    inc b                                         ; $7928: $04
    di                                            ; $7929: $f3
    dec h                                         ; $792a: $25
    ld [$cbbd], a                                 ; $792b: $ea $bd $cb
    pop af                                        ; $792e: $f1
    rst $20                                       ; $792f: $e7
    cp c                                          ; $7930: $b9
    ld a, [c]                                     ; $7931: $f2
    ld a, [hl-]                                   ; $7932: $3a
    db $e3                                        ; $7933: $e3
    ld a, $4a                                     ; $7934: $3e $4a
    xor [hl]                                      ; $7936: $ae
    rst $30                                       ; $7937: $f7
    db $eb                                        ; $7938: $eb
    db $eb                                        ; $7939: $eb
    inc a                                         ; $793a: $3c
    ld h, a                                       ; $793b: $67
    sbc a                                         ; $793c: $9f
    db $10                                        ; $793d: $10
    call z, $a897                                 ; $793e: $cc $97 $a8
    dec hl                                        ; $7941: $2b
    add l                                         ; $7942: $85
    sub l                                         ; $7943: $95
    sbc a                                         ; $7944: $9f
    cp d                                          ; $7945: $ba
    ld h, c                                       ; $7946: $61
    sub $1d                                       ; $7947: $d6 $1d
    pop hl                                        ; $7949: $e1
    dec c                                         ; $794a: $0d
    nop                                           ; $794b: $00
    db $db                                        ; $794c: $db
    ld [hl], l                                    ; $794d: $75

jr_03d_794e:
    rst $20                                       ; $794e: $e7
    ld a, [hl]                                    ; $794f: $7e
    sbc l                                         ; $7950: $9d
    ld a, [$1aa3]                                 ; $7951: $fa $a3 $1a
    ld l, c                                       ; $7954: $69
    ld sp, $e7e5                                  ; $7955: $31 $e5 $e7
    cp c                                          ; $7958: $b9
    jp nc, $923a                                  ; $7959: $d2 $3a $92

    ld a, [hl-]                                   ; $795c: $3a
    rst $08                                       ; $795d: $cf
    dec b                                         ; $795e: $05
    ld l, c                                       ; $795f: $69
    add d                                         ; $7960: $82
    xor l                                         ; $7961: $ad
    ld a, a                                       ; $7962: $7f
    ld [$000d], a                                 ; $7963: $ea $0d $00
    db $db                                        ; $7966: $db
    ld [hl], l                                    ; $7967: $75
    cp l                                          ; $7968: $bd
    or e                                          ; $7969: $b3
    jp c, Jump_03d_7fa1                           ; $796a: $da $a1 $7f

    sbc a                                         ; $796d: $9f
    ld [hl-], a                                   ; $796e: $32
    rst $08                                       ; $796f: $cf
    reti                                          ; $7970: $d9


    daa                                           ; $7971: $27
    inc b                                         ; $7972: $04
    di                                            ; $7973: $f3
    dec h                                         ; $7974: $25
    ld [$cbbd], a                                 ; $7975: $ea $bd $cb
    pop af                                        ; $7978: $f1
    rst $20                                       ; $7979: $e7
    cp c                                          ; $797a: $b9
    ld a, [c]                                     ; $797b: $f2
    ld a, [hl-]                                   ; $797c: $3a
    db $e3                                        ; $797d: $e3
    ld a, $4a                                     ; $797e: $3e $4a
    xor [hl]                                      ; $7980: $ae
    rst $30                                       ; $7981: $f7
    db $eb                                        ; $7982: $eb
    db $eb                                        ; $7983: $eb
    inc a                                         ; $7984: $3c
    ld h, a                                       ; $7985: $67
    sbc a                                         ; $7986: $9f
    db $10                                        ; $7987: $10
    call z, $a897                                 ; $7988: $cc $97 $a8
    dec hl                                        ; $798b: $2b
    add l                                         ; $798c: $85
    sub l                                         ; $798d: $95
    sbc a                                         ; $798e: $9f
    cp d                                          ; $798f: $ba
    ld h, c                                       ; $7990: $61
    sub $1d                                       ; $7991: $d6 $1d
    pop hl                                        ; $7993: $e1
    dec c                                         ; $7994: $0d
    nop                                           ; $7995: $00
    db $db                                        ; $7996: $db
    ld [hl], l                                    ; $7997: $75
    ld h, a                                       ; $7998: $67
    adc e                                         ; $7999: $8b
    db $eb                                        ; $799a: $eb
    rst $30                                       ; $799b: $f7
    dec hl                                        ; $799c: $2b
    add h                                         ; $799d: $84
    adc b                                         ; $799e: $88
    cp $a5                                        ; $799f: $fe $a5
    db $fd                                        ; $79a1: $fd
    inc l                                         ; $79a2: $2c
    adc [hl]                                      ; $79a3: $8e
    inc hl                                        ; $79a4: $23
    ld b, [hl]                                    ; $79a5: $46
    ld hl, $e77e                                  ; $79a6: $21 $7e $e7
    rst $30                                       ; $79a9: $f7
    db $eb                                        ; $79aa: $eb
    ld h, a                                       ; $79ab: $67
    ld e, e                                       ; $79ac: $5b
    ld hl, $d752                                  ; $79ad: $21 $52 $d7
    ld de, $efd7                                  ; $79b0: $11 $d7 $ef
    ld [hl], l                                    ; $79b3: $75
    call nz, Call_000_2f9d                        ; $79b4: $c4 $9d $2f
    push hl                                       ; $79b7: $e5
    pop de                                        ; $79b8: $d1
    rst $38                                       ; $79b9: $ff
    dec c                                         ; $79ba: $0d
    nop                                           ; $79bb: $00
    db $db                                        ; $79bc: $db
    ld [hl], l                                    ; $79bd: $75
    cp l                                          ; $79be: $bd
    or e                                          ; $79bf: $b3
    jp c, Jump_03d_7fa1                           ; $79c0: $da $a1 $7f

    sbc a                                         ; $79c3: $9f
    ld a, [c]                                     ; $79c4: $f2
    di                                            ; $79c5: $f3
    sbc h                                         ; $79c6: $9c
    ld a, l                                       ; $79c7: $7d
    ld b, d                                       ; $79c8: $42
    jr nc, @+$61                                  ; $79c9: $30 $5f

    and d                                         ; $79cb: $a2
    sbc $bb                                       ; $79cc: $de $bb
    inc e                                         ; $79ce: $1c
    ld a, a                                       ; $79cf: $7f
    sbc [hl]                                      ; $79d0: $9e
    dec hl                                        ; $79d1: $2b
    xor a                                         ; $79d2: $af
    inc sp                                        ; $79d3: $33
    xor $a3                                       ; $79d4: $ee $a3
    db $e4                                        ; $79d6: $e4
    ld a, d                                       ; $79d7: $7a
    cp a                                          ; $79d8: $bf
    cp [hl]                                       ; $79d9: $be
    adc $73                                       ; $79da: $ce $73
    or $09                                        ; $79dc: $f6 $09
    pop bc                                        ; $79de: $c1
    ld a, h                                       ; $79df: $7c
    adc c                                         ; $79e0: $89
    cp d                                          ; $79e1: $ba
    ld d, d                                       ; $79e2: $52
    ld e, b                                       ; $79e3: $58
    ld sp, hl                                     ; $79e4: $f9
    xor c                                         ; $79e5: $a9
    dec de                                        ; $79e6: $1b
    ld h, [hl]                                    ; $79e7: $66
    db $dd                                        ; $79e8: $dd
    ld de, $00de                                  ; $79e9: $11 $de $00
    db $db                                        ; $79ec: $db

jr_03d_79ed:
    ld [hl], l                                    ; $79ed: $75
    cp l                                          ; $79ee: $bd
    or e                                          ; $79ef: $b3
    jp c, Jump_03d_7fa1                           ; $79f0: $da $a1 $7f

    sbc a                                         ; $79f3: $9f
    ld a, [c]                                     ; $79f4: $f2
    di                                            ; $79f5: $f3
    sbc h                                         ; $79f6: $9c
    ld a, l                                       ; $79f7: $7d
    ld b, d                                       ; $79f8: $42
    jr nc, @+$61                                  ; $79f9: $30 $5f

    and d                                         ; $79fb: $a2
    sbc $3b                                       ; $79fc: $de $3b
    and a                                         ; $79fe: $a7
    push hl                                       ; $79ff: $e5
    jr nc, jr_03d_79ed                            ; $7a00: $30 $eb

    adc [hl]                                      ; $7a02: $8e
    ld [hl], b                                    ; $7a03: $70
    ccf                                           ; $7a04: $3f
    add a                                         ; $7a05: $87
    ccf                                           ; $7a06: $3f
    rst $08                                       ; $7a07: $cf
    sub l                                         ; $7a08: $95
    rst $10                                       ; $7a09: $d7
    push af                                       ; $7a0a: $f5
    ld a, [hl]                                    ; $7a0b: $7e
    ld a, l                                       ; $7a0c: $7d
    sbc l                                         ; $7a0d: $9d
    rst $20                                       ; $7a0e: $e7
    db $ec                                        ; $7a0f: $ec
    inc de                                        ; $7a10: $13
    add d                                         ; $7a11: $82
    ld sp, hl                                     ; $7a12: $f9
    ld [de], a                                    ; $7a13: $12
    push af                                       ; $7a14: $f5
    ld b, $db                                     ; $7a15: $06 $db
    ld [hl], l                                    ; $7a17: $75
    rst $20                                       ; $7a18: $e7
    ld a, [hl-]                                   ; $7a19: $3a
    db $f4                                        ; $7a1a: $f4
    or [hl]                                       ; $7a1b: $b6
    ld h, e                                       ; $7a1c: $63
    ld e, c                                       ; $7a1d: $59
    add sp, -$28                                  ; $7a1e: $e8 $d8
    add hl, hl                                    ; $7a20: $29

jr_03d_7a21:
    add hl, sp                                    ; $7a21: $39
    rst $08                                       ; $7a22: $cf
    reti                                          ; $7a23: $d9


    daa                                           ; $7a24: $27
    and h                                         ; $7a25: $a4
    dec [hl]                                      ; $7a26: $35
    rst $18                                       ; $7a27: $df
    di                                            ; $7a28: $f3
    ld b, $db                                     ; $7a29: $06 $db
    ld [hl], l                                    ; $7a2b: $75
    ld bc, $6ad2                                  ; $7a2c: $01 $d2 $6a
    jp z, Jump_000_3bcf                           ; $7a2f: $ca $cf $3b

    ld e, $fc                                     ; $7a32: $1e $fc
    di                                            ; $7a34: $f3
    inc l                                         ; $7a35: $2c
    db $eb                                        ; $7a36: $eb
    db $fd                                        ; $7a37: $fd
    push bc                                       ; $7a38: $c5
    ld d, e                                       ; $7a39: $53
    ld [hl], d                                    ; $7a3a: $72
    cp l                                          ; $7a3b: $bd
    add e                                         ; $7a3c: $83
    add hl, hl                                    ; $7a3d: $29

jr_03d_7a3e:
    jp nz, $c8c7                                  ; $7a3e: $c2 $c7 $c8

    dec de                                        ; $7a41: $1b
    nop                                           ; $7a42: $00
    db $db                                        ; $7a43: $db
    ld [hl], l                                    ; $7a44: $75
    rst $20                                       ; $7a45: $e7
    inc [hl]                                      ; $7a46: $34
    and c                                         ; $7a47: $a1
    adc c                                         ; $7a48: $89
    add hl, hl                                    ; $7a49: $29
    di                                            ; $7a4a: $f3
    sbc h                                         ; $7a4b: $9c
    ld a, l                                       ; $7a4c: $7d
    ld b, d                                       ; $7a4d: $42
    jr nc, jr_03d_7aaf                            ; $7a4e: $30 $5f

    and d                                         ; $7a50: $a2
    sbc $eb                                       ; $7a51: $de $eb
    ld d, l                                       ; $7a53: $55
    scf                                           ; $7a54: $37
    jr z, jr_03d_7a3e                             ; $7a55: $28 $e7

    cp c                                          ; $7a57: $b9
    cp [hl]                                       ; $7a58: $be
    call $e964                                    ; $7a59: $cd $64 $e9
    jp nc, Jump_03d_5b9d                          ; $7a5c: $d2 $9d $5b

    cp [hl]                                       ; $7a5f: $be
    ld h, [hl]                                    ; $7a60: $66
    add c                                         ; $7a61: $81
    xor a                                         ; $7a62: $af
    ld h, c                                       ; $7a63: $61
    add l                                         ; $7a64: $85
    jr @+$55                                      ; $7a65: $18 $53

    and $b9                                       ; $7a67: $e6 $b9
    ld a, [c]                                     ; $7a69: $f2
    dec bc                                        ; $7a6a: $0b
    ld l, b                                       ; $7a6b: $68
    db $f4                                        ; $7a6c: $f4
    ld a, [c]                                     ; $7a6d: $f2
    dec sp                                        ; $7a6e: $3b
    or a                                          ; $7a6f: $b7
    sub l                                         ; $7a70: $95
    call nc, $feac                                ; $7a71: $d4 $ac $fe
    ld [hl], d                                    ; $7a74: $72
    inc bc                                        ; $7a75: $03
    db $db                                        ; $7a76: $db
    ld [hl], l                                    ; $7a77: $75
    ld h, a                                       ; $7a78: $67
    ld a, a                                       ; $7a79: $7f
    cp a                                          ; $7a7a: $bf
    sbc h                                         ; $7a7b: $9c
    ld h, a                                       ; $7a7c: $67
    ld e, c                                       ; $7a7d: $59
    sbc b                                         ; $7a7e: $98
    and c                                         ; $7a7f: $a1
    dec hl                                        ; $7a80: $2b
    cpl                                           ; $7a81: $2f
    inc sp                                        ; $7a82: $33
    adc c                                         ; $7a83: $89
    db $fd                                        ; $7a84: $fd
    inc e                                         ; $7a85: $1c
    add $5c                                       ; $7a86: $c6 $5c
    db $fd                                        ; $7a88: $fd
    ld d, b                                       ; $7a89: $50
    ld e, $59                                     ; $7a8a: $1e $59
    dec sp                                        ; $7a8c: $3b
    ld l, l                                       ; $7a8d: $6d
    and $cb                                       ; $7a8e: $e6 $cb
    ld l, $7a                                     ; $7a90: $2e $7a
    db $dd                                        ; $7a92: $dd
    reti                                          ; $7a93: $d9


    ld [c], a                                     ; $7a94: $e2
    ld a, [$cebd]                                 ; $7a95: $fa $bd $ce
    ld [hl], e                                    ; $7a98: $73
    ld a, l                                       ; $7a99: $7d
    sbc $74                                       ; $7a9a: $de $74
    jr jr_03d_7a21                                ; $7a9c: $18 $83

    scf                                           ; $7a9e: $37
    nop                                           ; $7a9f: $00
    db $db                                        ; $7aa0: $db
    ld [hl], l                                    ; $7aa1: $75
    cp l                                          ; $7aa2: $bd
    or e                                          ; $7aa3: $b3
    ld c, $53                                     ; $7aa4: $0e $53
    ld e, e                                       ; $7aa6: $5b
    ld c, h                                       ; $7aa7: $4c
    ld sp, hl                                     ; $7aa8: $f9
    ld a, c                                       ; $7aa9: $79
    xor [hl]                                      ; $7aaa: $ae
    db $fc                                        ; $7aab: $fc
    ld [bc], a                                    ; $7aac: $02
    ld e, l                                       ; $7aad: $5d
    adc e                                         ; $7aae: $8b

jr_03d_7aaf:
    sbc h                                         ; $7aaf: $9c
    dec a                                         ; $7ab0: $3d
    ld c, l                                       ; $7ab1: $4d
    or b                                          ; $7ab2: $b0
    push af                                       ; $7ab3: $f5
    ld a, a                                       ; $7ab4: $7f
    rst $38                                       ; $7ab5: $ff
    ld l, e                                       ; $7ab6: $6b
    ld l, b                                       ; $7ab7: $68
    or d                                          ; $7ab8: $b2
    ld c, $0b                                     ; $7ab9: $0e $0b
    db $e3                                        ; $7abb: $e3
    jp $7167                                      ; $7abc: $c3 $67 $71


    ld e, h                                       ; $7abf: $5c
    jp $e928                                      ; $7ac0: $c3 $28 $e9


    sbc l                                         ; $7ac3: $9d
    pop hl                                        ; $7ac4: $e1
    inc e                                         ; $7ac5: $1c
    cp $a2                                        ; $7ac6: $fe $a2
    db $eb                                        ; $7ac8: $eb
    db $fc                                        ; $7ac9: $fc
    ld [$2c2b], sp                                ; $7aca: $08 $2b $2c
    add hl, de                                    ; $7acd: $19
    rra                                           ; $7ace: $1f
    ld a, l                                       ; $7acf: $7d
    sbc $00                                       ; $7ad0: $de $00
    db $db                                        ; $7ad2: $db
    ld [hl], l                                    ; $7ad3: $75
    sub a                                         ; $7ad4: $97
    and l                                         ; $7ad5: $a5
    ld sp, hl                                     ; $7ad6: $f9
    sub l                                         ; $7ad7: $95
    rra                                           ; $7ad8: $1f
    db $f4                                        ; $7ad9: $f4
    dec l                                         ; $7ada: $2d
    cp $4c                                        ; $7adb: $fe $4c
    ld [c], a                                     ; $7add: $e2
    ld e, b                                       ; $7ade: $58
    ld d, [hl]                                    ; $7adf: $56
    db $fd                                        ; $7ae0: $fd
    ld [hl], l                                    ; $7ae1: $75
    ld l, d                                       ; $7ae2: $6a
    adc $24                                       ; $7ae3: $ce $24
    or $73                                        ; $7ae5: $f6 $73
    jr jr_03d_7b5c                                ; $7ae7: $18 $73

    push af                                       ; $7ae9: $f5
    ld b, e                                       ; $7aea: $43
    ld a, c                                       ; $7aeb: $79
    ld h, h                                       ; $7aec: $64
    db $ed                                        ; $7aed: $ed
    or h                                          ; $7aee: $b4
    sbc c                                         ; $7aef: $99
    cpl                                           ; $7af0: $2f
    cp e                                          ; $7af1: $bb
    add sp, $75                                   ; $7af2: $e8 $75
    ld h, a                                       ; $7af4: $67
    adc e                                         ; $7af5: $8b
    db $eb                                        ; $7af6: $eb
    rst $30                                       ; $7af7: $f7
    ld a, [hl-]                                   ; $7af8: $3a
    rst $08                                       ; $7af9: $cf
    push af                                       ; $7afa: $f5
    ld a, c                                       ; $7afb: $79
    db $d3                                        ; $7afc: $d3
    ld h, c                                       ; $7afd: $61
    inc c                                         ; $7afe: $0c
    sbc $00                                       ; $7aff: $de $00
    db $db                                        ; $7b01: $db
    ld [hl], l                                    ; $7b02: $75
    sub a                                         ; $7b03: $97
    and l                                         ; $7b04: $a5
    ld sp, hl                                     ; $7b05: $f9
    or c                                          ; $7b06: $b1
    xor h                                         ; $7b07: $ac
    db $fc                                        ; $7b08: $fc
    ld bc, $267e                                  ; $7b09: $01 $7e $26
    ld [hl], c                                    ; $7b0c: $71
    inc l                                         ; $7b0d: $2c
    xor e                                         ; $7b0e: $ab
    cp $3a                                        ; $7b0f: $fe $3a
    dec [hl]                                      ; $7b11: $35
    ld h, a                                       ; $7b12: $67
    ld [de], a                                    ; $7b13: $12
    ei                                            ; $7b14: $fb
    add hl, sp                                    ; $7b15: $39
    adc h                                         ; $7b16: $8c
    cp c                                          ; $7b17: $b9
    ld a, [$3ca1]                                 ; $7b18: $fa $a1 $3c
    or d                                          ; $7b1b: $b2
    halt                                          ; $7b1c: $76
    jp c, $97cc                                   ; $7b1d: $da $cc $97

    ld e, l                                       ; $7b20: $5d
    db $f4                                        ; $7b21: $f4
    cp d                                          ; $7b22: $ba
    or e                                          ; $7b23: $b3
    push bc                                       ; $7b24: $c5
    push af                                       ; $7b25: $f5
    ld a, e                                       ; $7b26: $7b
    sbc l                                         ; $7b27: $9d
    rst $20                                       ; $7b28: $e7
    ld a, [$e9bc]                                 ; $7b29: $fa $bc $e9
    jr nc, jr_03d_7b34                            ; $7b2c: $30 $06

    ld l, a                                       ; $7b2e: $6f
    nop                                           ; $7b2f: $00
    db $db                                        ; $7b30: $db
    ld [hl], l                                    ; $7b31: $75
    sub a                                         ; $7b32: $97
    and l                                         ; $7b33: $a5

jr_03d_7b34:
    ld sp, hl                                     ; $7b34: $f9
    sub l                                         ; $7b35: $95
    rra                                           ; $7b36: $1f
    db $e4                                        ; $7b37: $e4
    ld e, d                                       ; $7b38: $5a
    ld a, h                                       ; $7b39: $7c
    sub c                                         ; $7b3a: $91
    ld e, a                                       ; $7b3b: $5f
    jr z, jr_03d_7b4b                             ; $7b3c: $28 $0d

    ld c, l                                       ; $7b3e: $4d
    dec bc                                        ; $7b3f: $0b
    cp a                                          ; $7b40: $bf
    call z, $8e24                                 ; $7b41: $cc $24 $8e
    ld h, l                                       ; $7b44: $65
    push de                                       ; $7b45: $d5
    ld e, a                                       ; $7b46: $5f
    and a                                         ; $7b47: $a7
    and $4c                                       ; $7b48: $e6 $4c
    ld h, d                                       ; $7b4a: $62

jr_03d_7b4b:
    ccf                                           ; $7b4b: $3f
    add a                                         ; $7b4c: $87
    ld sp, $3f57                                  ; $7b4d: $31 $57 $3f
    sub h                                         ; $7b50: $94
    ld b, a                                       ; $7b51: $47
    sub $4e                                       ; $7b52: $d6 $4e
    sbc e                                         ; $7b54: $9b
    ld sp, hl                                     ; $7b55: $f9
    or d                                          ; $7b56: $b2
    adc e                                         ; $7b57: $8b
    ld e, [hl]                                    ; $7b58: $5e
    ld [hl], a                                    ; $7b59: $77
    or [hl]                                       ; $7b5a: $b6
    cp b                                          ; $7b5b: $b8

jr_03d_7b5c:
    ld a, [hl]                                    ; $7b5c: $7e
    xor a                                         ; $7b5d: $af
    di                                            ; $7b5e: $f3
    ld e, h                                       ; $7b5f: $5c
    sbc a                                         ; $7b60: $9f
    scf                                           ; $7b61: $37
    dec e                                         ; $7b62: $1d
    add $e0                                       ; $7b63: $c6 $e0
    dec c                                         ; $7b65: $0d
    nop                                           ; $7b66: $00
    db $db                                        ; $7b67: $db
    ld [hl], l                                    ; $7b68: $75
    cp l                                          ; $7b69: $bd
    rra                                           ; $7b6a: $1f
    db $e3                                        ; $7b6b: $e3
    ld h, e                                       ; $7b6c: $63
    db $e4                                        ; $7b6d: $e4
    ld b, d                                       ; $7b6e: $42
    ld l, c                                       ; $7b6f: $69
    ld l, b                                       ; $7b70: $68
    ld e, d                                       ; $7b71: $5a
    ld hl, sp+$65                                 ; $7b72: $f8 $65
    sbc [hl]                                      ; $7b74: $9e
    ld h, l                                       ; $7b75: $65
    push de                                       ; $7b76: $d5
    ld e, a                                       ; $7b77: $5f
    and a                                         ; $7b78: $a7
    and $4c                                       ; $7b79: $e6 $4c
    ld h, d                                       ; $7b7b: $62
    ccf                                           ; $7b7c: $3f
    add a                                         ; $7b7d: $87
    ld sp, $3f57                                  ; $7b7e: $31 $57 $3f
    sub h                                         ; $7b81: $94
    ld b, a                                       ; $7b82: $47
    sub $4e                                       ; $7b83: $d6 $4e
    sbc e                                         ; $7b85: $9b

jr_03d_7b86:
    ld sp, hl                                     ; $7b86: $f9
    or d                                          ; $7b87: $b2
    adc e                                         ; $7b88: $8b
    ld e, [hl]                                    ; $7b89: $5e
    ld [hl], a                                    ; $7b8a: $77
    or [hl]                                       ; $7b8b: $b6
    cp b                                          ; $7b8c: $b8
    ld a, [hl]                                    ; $7b8d: $7e
    xor a                                         ; $7b8e: $af
    di                                            ; $7b8f: $f3
    ld e, h                                       ; $7b90: $5c
    sbc a                                         ; $7b91: $9f
    scf                                           ; $7b92: $37
    dec e                                         ; $7b93: $1d

Call_03d_7b94:
    add $e0                                       ; $7b94: $c6 $e0
    dec c                                         ; $7b96: $0d
    nop                                           ; $7b97: $00
    db $db                                        ; $7b98: $db
    ld [hl], l                                    ; $7b99: $75
    ld h, a                                       ; $7b9a: $67
    ld a, a                                       ; $7b9b: $7f
    and h                                         ; $7b9c: $a4
    ret c                                         ; $7b9d: $d8

    db $fc                                        ; $7b9e: $fc
    inc a                                         ; $7b9f: $3c
    res 5, d                                      ; $7ba0: $cb $aa
    cp a                                          ; $7ba2: $bf
    ld c, [hl]                                    ; $7ba3: $4e
    call $c499                                    ; $7ba4: $cd $99 $c4
    ld a, [hl]                                    ; $7ba7: $7e
    ld c, $63                                     ; $7ba8: $0e $63
    xor [hl]                                      ; $7baa: $ae
    ld a, [hl]                                    ; $7bab: $7e
    jr z, @-$6f                                   ; $7bac: $28 $8f

    xor h                                         ; $7bae: $ac
    sbc l                                         ; $7baf: $9d
    ld [hl], $f3                                  ; $7bb0: $36 $f3
    ld h, l                                       ; $7bb2: $65
    rla                                           ; $7bb3: $17
    cp l                                          ; $7bb4: $bd
    xor $6c                                       ; $7bb5: $ee $6c
    ld [hl], c                                    ; $7bb7: $71

jr_03d_7bb8:
    db $fd                                        ; $7bb8: $fd
    ld e, [hl]                                    ; $7bb9: $5e
    rst $20                                       ; $7bba: $e7
    cp c                                          ; $7bbb: $b9
    ld a, $6f                                     ; $7bbc: $3e $6f
    ld a, [hl-]                                   ; $7bbe: $3a
    adc h                                         ; $7bbf: $8c
    pop bc                                        ; $7bc0: $c1
    dec de                                        ; $7bc1: $1b
    nop                                           ; $7bc2: $00
    db $db                                        ; $7bc3: $db
    ld [hl], l                                    ; $7bc4: $75
    rst $20                                       ; $7bc5: $e7
    ld a, [hl]                                    ; $7bc6: $7e
    sbc l                                         ; $7bc7: $9d
    ld a, [$8f33]                                 ; $7bc8: $fa $33 $8f
    pop af                                        ; $7bcb: $f1
    ld sp, $c8f2                                  ; $7bcc: $31 $f2 $c8
    jr nz, jr_03d_7c1e                            ; $7bcf: $20 $4d

    or b                                          ; $7bd1: $b0
    add hl, de                                    ; $7bd2: $19
    jp z, Jump_000_00df                           ; $7bd3: $ca $df $00

    db $db                                        ; $7bd6: $db
    ld [hl], l                                    ; $7bd7: $75
    sub a                                         ; $7bd8: $97
    and l                                         ; $7bd9: $a5
    ld sp, hl                                     ; $7bda: $f9
    sub l                                         ; $7bdb: $95
    rra                                           ; $7bdc: $1f
    db $e4                                        ; $7bdd: $e4
    ld e, d                                       ; $7bde: $5a
    ld a, h                                       ; $7bdf: $7c
    sub c                                         ; $7be0: $91
    sbc a                                         ; $7be1: $9f
    ret c                                         ; $7be2: $d8

    call nz, $99ba                                ; $7be3: $c4 $ba $99
    sbc a                                         ; $7be6: $9f
    ld c, c                                       ; $7be7: $49
    inc e                                         ; $7be8: $1c
    res 5, d                                      ; $7be9: $cb $aa
    cp a                                          ; $7beb: $bf
    ld c, [hl]                                    ; $7bec: $4e
    call $c499                                    ; $7bed: $cd $99 $c4
    ld a, [hl]                                    ; $7bf0: $7e
    ld c, $63                                     ; $7bf1: $0e $63
    xor [hl]                                      ; $7bf3: $ae
    ld a, [hl]                                    ; $7bf4: $7e
    jr z, jr_03d_7b86                             ; $7bf5: $28 $8f

    xor h                                         ; $7bf7: $ac
    sbc l                                         ; $7bf8: $9d
    ld [hl], $f3                                  ; $7bf9: $36 $f3
    ld h, l                                       ; $7bfb: $65
    rla                                           ; $7bfc: $17
    cp l                                          ; $7bfd: $bd
    xor $6c                                       ; $7bfe: $ee $6c
    ld [hl], c                                    ; $7c00: $71
    db $fd                                        ; $7c01: $fd
    ld e, [hl]                                    ; $7c02: $5e
    rst $20                                       ; $7c03: $e7
    cp c                                          ; $7c04: $b9
    ld a, $6f                                     ; $7c05: $3e $6f
    ld a, [hl-]                                   ; $7c07: $3a
    adc h                                         ; $7c08: $8c
    pop bc                                        ; $7c09: $c1
    dec de                                        ; $7c0a: $1b
    nop                                           ; $7c0b: $00
    db $db                                        ; $7c0c: $db
    ld [hl], l                                    ; $7c0d: $75
    sub a                                         ; $7c0e: $97
    and l                                         ; $7c0f: $a5
    ld sp, hl                                     ; $7c10: $f9
    or c                                          ; $7c11: $b1
    xor h                                         ; $7c12: $ac
    jp nc, Jump_000_24b2                          ; $7c13: $d2 $b2 $24

    ld a, [de]                                    ; $7c16: $1a
    sub [hl]                                      ; $7c17: $96
    sbc h                                         ; $7c18: $9c
    ld c, c                                       ; $7c19: $49
    inc e                                         ; $7c1a: $1c
    res 5, d                                      ; $7c1b: $cb $aa
    cp a                                          ; $7c1d: $bf

jr_03d_7c1e:
    ld c, [hl]                                    ; $7c1e: $4e
    call $c499                                    ; $7c1f: $cd $99 $c4
    ld a, [hl]                                    ; $7c22: $7e

Call_03d_7c23:
    ld c, $63                                     ; $7c23: $0e $63
    xor [hl]                                      ; $7c25: $ae
    ld a, [hl]                                    ; $7c26: $7e

Call_03d_7c27:
    jr z, jr_03d_7bb8                             ; $7c27: $28 $8f

jr_03d_7c29:
    xor h                                         ; $7c29: $ac
    sbc l                                         ; $7c2a: $9d
    ld [hl], $f3                                  ; $7c2b: $36 $f3
    ld h, l                                       ; $7c2d: $65
    rla                                           ; $7c2e: $17
    cp l                                          ; $7c2f: $bd
    xor $6c                                       ; $7c30: $ee $6c
    ld [hl], c                                    ; $7c32: $71
    db $fd                                        ; $7c33: $fd
    ld e, [hl]                                    ; $7c34: $5e
    rst $20                                       ; $7c35: $e7
    cp c                                          ; $7c36: $b9
    ld a, $6f                                     ; $7c37: $3e $6f
    ld a, [hl-]                                   ; $7c39: $3a
    adc h                                         ; $7c3a: $8c
    pop bc                                        ; $7c3b: $c1
    dec de                                        ; $7c3c: $1b
    nop                                           ; $7c3d: $00
    db $db                                        ; $7c3e: $db
    ld [hl], l                                    ; $7c3f: $75
    rst $20                                       ; $7c40: $e7
    ld a, [hl]                                    ; $7c41: $7e
    sbc l                                         ; $7c42: $9d
    sbc d                                         ; $7c43: $9a
    dec bc                                        ; $7c44: $0b
    ld d, e                                       ; $7c45: $53
    ld h, [hl]                                    ; $7c46: $66
    add h                                         ; $7c47: $84
    cpl                                           ; $7c48: $2f
    dec hl                                        ; $7c49: $2b
    ccf                                           ; $7c4a: $3f
    push bc                                       ; $7c4b: $c5
    ld d, $4d                                     ; $7c4c: $16 $4d
    ld [hl], b                                    ; $7c4e: $70
    ld a, $e5                                     ; $7c4f: $3e $e5
    db $fd                                        ; $7c51: $fd
    rst $18                                       ; $7c52: $df
    nop                                           ; $7c53: $00
    db $db                                        ; $7c54: $db
    ld [hl], l                                    ; $7c55: $75
    sub a                                         ; $7c56: $97
    dec [hl]                                      ; $7c57: $35
    ld [hl+], a                                   ; $7c58: $22
    rst $00                                       ; $7c59: $c7
    ld [hl-], a                                   ; $7c5a: $32
    xor c                                         ; $7c5b: $a9
    ld l, d                                       ; $7c5c: $6a
    ld d, d                                       ; $7c5d: $52
    db $fc                                        ; $7c5e: $fc
    inc a                                         ; $7c5f: $3c
    rlca                                          ; $7c60: $07
    ld h, l                                       ; $7c61: $65
    and c                                         ; $7c62: $a1
    adc [hl]                                      ; $7c63: $8e
    cp b                                          ; $7c64: $b8
    ld c, e                                       ; $7c65: $4b
    ld e, h                                       ; $7c66: $5c
    di                                            ; $7c67: $f3
    cp [hl]                                       ; $7c68: $be
    ld b, l                                       ; $7c69: $45
    inc de                                        ; $7c6a: $13
    sbc h                                         ; $7c6b: $9c
    ld [hl], a                                    ; $7c6c: $77
    ld a, [c]                                     ; $7c6d: $f2
    jr jr_03d_7c29                                ; $7c6e: $18 $b9

    ld a, [c]                                     ; $7c70: $f2

jr_03d_7c71:
    adc e                                         ; $7c71: $8b
    xor h                                         ; $7c72: $ac
    jp $f794                                      ; $7c73: $c3 $94 $f7


    cp a                                          ; $7c76: $bf
    adc [hl]                                      ; $7c77: $8e
    or h                                          ; $7c78: $b4
    ret c                                         ; $7c79: $d8

    add l                                         ; $7c7a: $85
    call $3cfc                                    ; $7c7b: $cd $fc $3c
    ld b, a                                       ; $7c7e: $47
    adc l                                         ; $7c7f: $8d
    sbc h                                         ; $7c80: $9c
    ld [hl], $a8                                  ; $7c81: $36 $a8
    db $e4                                        ; $7c83: $e4
    dec c                                         ; $7c84: $0d
    nop                                           ; $7c85: $00
    db $db                                        ; $7c86: $db
    ld [hl], l                                    ; $7c87: $75
    cp l                                          ; $7c88: $bd
    ccf                                           ; $7c89: $3f
    ld l, h                                       ; $7c8a: $6c
    pop af                                        ; $7c8b: $f1
    pop af                                        ; $7c8c: $f1
    rst $20                                       ; $7c8d: $e7
    ld e, c                                       ; $7c8e: $59

Jump_03d_7c8f:
    ld h, [hl]                                    ; $7c8f: $66
    ld h, a                                       ; $7c90: $67
    ld [hl], c                                    ; $7c91: $71
    dec l                                         ; $7c92: $2d
    call z, $cb9d                                 ; $7c93: $cc $9d $cb
    sbc d                                         ; $7c96: $9a
    ret c                                         ; $7c97: $d8

    jr nc, jr_03d_7c71                            ; $7c98: $30 $d7

    rst $30                                       ; $7c9a: $f7
    ld c, l                                       ; $7c9b: $4d
    ld c, e                                       ; $7c9c: $4b
    db $fc                                        ; $7c9d: $fc
    ld [hl-], a                                   ; $7c9e: $32
    rst $08                                       ; $7c9f: $cf
    ld e, l                                       ; $7ca0: $5d
    ld [c], a                                     ; $7ca1: $e2
    sbc d                                         ; $7ca2: $9a
    rst $30                                       ; $7ca3: $f7
    dec l                                         ; $7ca4: $2d
    sbc d                                         ; $7ca5: $9a
    jr nz, @+$7e                                  ; $7ca6: $20 $7c

    push hl                                       ; $7ca8: $e5
    ld [hl], l                                    ; $7ca9: $75
    cp l                                          ; $7caa: $bd
    inc h                                         ; $7cab: $24
    or h                                          ; $7cac: $b4
    ld a, c                                       ; $7cad: $79
    ld e, l                                       ; $7cae: $5d
    ldh [rSCX], a                                 ; $7caf: $e0 $43
    ld a, [c]                                     ; $7cb1: $f2
    cp $f5                                        ; $7cb2: $fe $f5
    ld b, $db                                     ; $7cb4: $06 $db
    ld [hl], l                                    ; $7cb6: $75
    rst $10                                       ; $7cb7: $d7
    ld h, d                                       ; $7cb8: $62
    inc sp                                        ; $7cb9: $33
    cp c                                          ; $7cba: $b9
    ld l, $e9                                     ; $7cbb: $2e $e9
    or h                                          ; $7cbd: $b4
    jr z, jr_03d_7cf9                             ; $7cbe: $28 $39

    rst $08                                       ; $7cc0: $cf
    ld e, l                                       ; $7cc1: $5d
    ld [c], a                                     ; $7cc2: $e2
    sbc d                                         ; $7cc3: $9a
    rst $30                                       ; $7cc4: $f7
    dec l                                         ; $7cc5: $2d
    sbc d                                         ; $7cc6: $9a
    ldh [$2c], a                                  ; $7cc7: $e0 $2c
    adc [hl]                                      ; $7cc9: $8e
    xor e                                         ; $7cca: $ab
    sbc l                                         ; $7ccb: $9d
    inc [hl]                                      ; $7ccc: $34
    db $db                                        ; $7ccd: $db
    ld de, $70e7                                  ; $7cce: $11 $e7 $70
    pop hl                                        ; $7cd1: $e1
    ld c, e                                       ; $7cd2: $4b
    ld l, h                                       ; $7cd3: $6c
    ld a, $6f                                     ; $7cd4: $3e $6f
    nop                                           ; $7cd6: $00
    db $db                                        ; $7cd7: $db
    ld [hl], l                                    ; $7cd8: $75
    rst $20                                       ; $7cd9: $e7
    ld a, [hl-]                                   ; $7cda: $3a
    db $f4                                        ; $7cdb: $f4
    rst $28                                       ; $7cdc: $ef
    ld d, e                                       ; $7cdd: $53
    and $b9                                       ; $7cde: $e6 $b9
    ld a, [c]                                     ; $7ce0: $f2
    inc sp                                        ; $7ce1: $33
    ld e, c                                       ; $7ce2: $59
    add a                                         ; $7ce3: $87
    ld a, a                                       ; $7ce4: $7f
    or b                                          ; $7ce5: $b0
    call Call_03d_73cf                            ; $7ce6: $cd $cf $73
    ld d, h                                       ; $7ce9: $54
    sub e                                         ; $7cea: $93
    sbc l                                         ; $7ceb: $9d
    rst $10                                       ; $7cec: $d7
    ld a, c                                       ; $7ced: $79
    adc $bc                                       ; $7cee: $ce $bc
    ld [$75e5], sp                                ; $7cf0: $08 $e5 $75
    ld a, l                                       ; $7cf3: $7d
    ld e, e                                       ; $7cf4: $5b
    db $dd                                        ; $7cf5: $dd
    ld [hl], c                                    ; $7cf6: $71
    ld a, d                                       ; $7cf7: $7a
    inc bc                                        ; $7cf8: $03

jr_03d_7cf9:
    db $db                                        ; $7cf9: $db
    ld [hl], l                                    ; $7cfa: $75
    cp l                                          ; $7cfb: $bd
    ld c, h                                       ; $7cfc: $4c
    ld [hl], h                                    ; $7cfd: $74
    ld e, a                                       ; $7cfe: $5f
    halt                                          ; $7cff: $76

Call_03d_7d00:
    ld bc, $39ab                                  ; $7d00: $01 $ab $39
    rst $08                                       ; $7d03: $cf
    ld [hl-], a                                   ; $7d04: $32
    ld e, e                                       ; $7d05: $5b
    add c                                         ; $7d06: $81
    ld e, $73                                     ; $7d07: $1e $73
    cp [hl]                                       ; $7d09: $be
    add hl, bc                                    ; $7d0a: $09
    ld c, l                                       ; $7d0b: $4d
    ld l, h                                       ; $7d0c: $6c
    sub l                                         ; $7d0d: $95
    sbc h                                         ; $7d0e: $9c
    rst $20                                       ; $7d0f: $e7
    ld l, $71                                     ; $7d10: $2e $71
    call Call_000_16fb                            ; $7d12: $cd $fb $16
    ld c, l                                       ; $7d15: $4d
    ld [hl], b                                    ; $7d16: $70
    sub a                                         ; $7d17: $97
    ld e, h                                       ; $7d18: $5c
    sbc $eb                                       ; $7d19: $de $eb
    db $ec                                        ; $7d1b: $ec
    or e                                          ; $7d1c: $b3
    cpl                                           ; $7d1d: $2f
    or d                                          ; $7d1e: $b2
    cp e                                          ; $7d1f: $bb
    ld bc, $75db                                  ; $7d20: $01 $db $75
    ld bc, $6ad2                                  ; $7d23: $01 $d2 $6a
    jp z, Jump_000_23af                           ; $7d26: $ca $af $23

    xor [hl]                                      ; $7d29: $ae
    rst $18                                       ; $7d2a: $df
    xor a                                         ; $7d2b: $af
    inc hl                                        ; $7d2c: $23
    dec l                                         ; $7d2d: $2d
    halt                                          ; $7d2e: $76
    ld h, c                                       ; $7d2f: $61
    inc sp                                        ; $7d30: $33
    ccf                                           ; $7d31: $3f
    adc e                                         ; $7d32: $8b
    db $e3                                        ; $7d33: $e3
    ld e, [hl]                                    ; $7d34: $5e
    ld a, [hl-]                                   ; $7d35: $3a
    dec l                                         ; $7d36: $2d
    adc d                                         ; $7d37: $8a
    db $ed                                        ; $7d38: $ed
    inc e                                         ; $7d39: $1c
    ld l, $7c                                     ; $7d3a: $2e $7c
    adc c                                         ; $7d3c: $89
    call Call_000_3ce7                            ; $7d3d: $cd $e7 $3c
    ld [hl], a                                    ; $7d40: $77
    adc c                                         ; $7d41: $89
    ld l, e                                       ; $7d42: $6b
    sbc $b7                                       ; $7d43: $de $b7
    ld l, b                                       ; $7d45: $68
    add d                                         ; $7d46: $82
    scf                                           ; $7d47: $37
    nop                                           ; $7d48: $00
    db $db                                        ; $7d49: $db
    ld [hl], l                                    ; $7d4a: $75
    sub a                                         ; $7d4b: $97
    dec [hl]                                      ; $7d4c: $35
    ld [hl+], a                                   ; $7d4d: $22
    rst $00                                       ; $7d4e: $c7
    ld [hl-], a                                   ; $7d4f: $32
    xor c                                         ; $7d50: $a9
    ld l, d                                       ; $7d51: $6a
    ld d, d                                       ; $7d52: $52
    db $fc                                        ; $7d53: $fc
    ld a, [hl-]                                   ; $7d54: $3a
    jp nc, Jump_000_1762                          ; $7d55: $d2 $62 $17

    ld [hl], $93                                  ; $7d58: $36 $93
    dec bc                                        ; $7d5a: $0b
    ld d, e                                       ; $7d5b: $53
    and [hl]                                      ; $7d5c: $a6
    sub h                                         ; $7d5d: $94
    or c                                          ; $7d5e: $b1
    call z, $b8e2                                 ; $7d5f: $cc $e2 $b8
    cp d                                          ; $7d62: $ba
    ld c, e                                       ; $7d63: $4b
    daa                                           ; $7d64: $27
    ld e, l                                       ; $7d65: $5d
    ld h, c                                       ; $7d66: $61
    di                                            ; $7d67: $f3
    add hl, sp                                    ; $7d68: $39
    di                                            ; $7d69: $f3
    ld h, c                                       ; $7d6a: $61
    ld [hl], h                                    ; $7d6b: $74
    ld h, d                                       ; $7d6c: $62
    cp e                                          ; $7d6d: $bb

Call_03d_7d6e:
    ld a, [c]                                     ; $7d6e: $f2
    dec bc                                        ; $7d6f: $0b
    call nz, Call_03d_4d16                        ; $7d70: $c4 $16 $4d
    ldh a, [$d4]                                  ; $7d73: $f0 $d4
    ld b, l                                       ; $7d75: $45
    and c                                         ; $7d76: $a1
    ld c, [hl]                                    ; $7d77: $4e
    add hl, bc                                    ; $7d78: $09
    add hl, sp                                    ; $7d79: $39
    db $f4                                        ; $7d7a: $f4
    xor c                                         ; $7d7b: $a9
    or e                                          ; $7d7c: $b3
    xor [hl]                                      ; $7d7d: $ae
    and [hl]                                      ; $7d7e: $a6
    ld l, a                                       ; $7d7f: $6f
    ld a, c                                       ; $7d80: $79
    inc bc                                        ; $7d81: $03
    db $db                                        ; $7d82: $db
    ld [hl], l                                    ; $7d83: $75
    cp l                                          ; $7d84: $bd
    ld c, h                                       ; $7d85: $4c
    ld [hl], h                                    ; $7d86: $74
    ld e, a                                       ; $7d87: $5f
    ld d, $20                                     ; $7d88: $16 $20
    call nc, $89e6                                ; $7d8a: $d4 $e6 $89
    sub c                                         ; $7d8d: $91
    di                                            ; $7d8e: $f3
    inc l                                         ; $7d8f: $2c
    or e                                          ; $7d90: $b3
    or e                                          ; $7d91: $b3
    cp b                                          ; $7d92: $b8
    ld d, $e6                                     ; $7d93: $16 $e6
    inc a                                         ; $7d95: $3c
    ld [hl], a                                    ; $7d96: $77
    adc c                                         ; $7d97: $89
    ld l, e                                       ; $7d98: $6b
    sbc $b7                                       ; $7d99: $de $b7
    ld l, b                                       ; $7d9b: $68
    add d                                         ; $7d9c: $82
    dec sp                                        ; $7d9d: $3b
    rra                                           ; $7d9e: $1f
    and c                                         ; $7d9f: $a1
    ld d, d                                       ; $7da0: $52
    ld d, l                                       ; $7da1: $55
    ld d, a                                       ; $7da2: $57
    ld d, d                                       ; $7da3: $52
    ld [hl], a                                    ; $7da4: $77
    ld e, [hl]                                    ; $7da5: $5e
    halt                                          ; $7da6: $76
    inc [hl]                                      ; $7da7: $34
    ld h, $52                                     ; $7da8: $26 $52
    ld l, a                                       ; $7daa: $6f
    nop                                           ; $7dab: $00
    db $db                                        ; $7dac: $db
    ld [hl], l                                    ; $7dad: $75
    ld bc, $6ad2                                  ; $7dae: $01 $d2 $6a
    jp z, $f08c                                   ; $7db1: $ca $8c $f0

    ld a, l                                       ; $7db4: $7d
    jp z, Jump_03d_624c                           ; $7db5: $ca $4c $62

    sbc d                                         ; $7db8: $9a
    and $73                                       ; $7db9: $e6 $73
    sbc [hl]                                      ; $7dbb: $9e
    ld h, l                                       ; $7dbc: $65
    ld h, a                                       ; $7dbd: $67
    cp a                                          ; $7dbe: $bf
    or [hl]                                       ; $7dbf: $b6
    jp nc, $e4d4                                  ; $7dc0: $d2 $d4 $e4

    dec c                                         ; $7dc3: $0d
    nop                                           ; $7dc4: $00
    db $db                                        ; $7dc5: $db
    ld [hl], l                                    ; $7dc6: $75
    add c                                         ; $7dc7: $81
    sbc h                                         ; $7dc8: $9c
    ld l, a                                       ; $7dc9: $6f
    add [hl]                                      ; $7dca: $86
    or e                                          ; $7dcb: $b3
    jr c, jr_03d_7dfc                             ; $7dcc: $38 $2e

    ld hl, sp-$2d                                 ; $7dce: $f8 $d3
    and $73                                       ; $7dd0: $e6 $73
    inc l                                         ; $7dd2: $2c
    dec sp                                        ; $7dd3: $3b
    nop                                           ; $7dd4: $00
    sbc e                                         ; $7dd5: $9b
    ret                                           ; $7dd6: $c9


    push de                                       ; $7dd7: $d5
    rrca                                          ; $7dd8: $0f
    push hl                                       ; $7dd9: $e5
    ld c, h                                       ; $7dda: $4c
    ld h, d                                       ; $7ddb: $62
    sbc d                                         ; $7ddc: $9a
    and $73                                       ; $7ddd: $e6 $73
    ld d, $c7                                     ; $7ddf: $16 $c7
    dec b                                         ; $7de1: $05
    ld a, a                                       ; $7de2: $7f
    ld b, [hl]                                    ; $7de3: $46
    ld hl, sp+$3e                                 ; $7de4: $f8 $3e
    rst $20                                       ; $7de6: $e7
    ld [hl], b                                    ; $7de7: $70
    ld bc, $251f                                  ; $7de8: $01 $1f $25
    pop de                                        ; $7deb: $d1
    jp hl                                         ; $7dec: $e9


    inc a                                         ; $7ded: $3c
    rla                                           ; $7dee: $17
    cp a                                          ; $7def: $bf
    cp $83                                        ; $7df0: $fe $83
    ld [hl], e                                    ; $7df2: $73
    ld d, b                                       ; $7df3: $50
    add e                                         ; $7df4: $83
    ld e, $23                                     ; $7df5: $1e $23
    ld l, a                                       ; $7df7: $6f
    nop                                           ; $7df8: $00
    db $db                                        ; $7df9: $db
    ld [hl], l                                    ; $7dfa: $75
    ld a, l                                       ; $7dfb: $7d

jr_03d_7dfc:
    ld e, $ca                                     ; $7dfc: $1e $ca
    push de                                       ; $7dfe: $d5
    adc $3a                                       ; $7dff: $ce $3a
    jp nz, Jump_03d_5532                          ; $7e01: $c2 $32 $55

    ld sp, $334a                                  ; $7e04: $31 $4a $33
    cp c                                          ; $7e07: $b9
    ld [$53af], a                                 ; $7e08: $ea $af $53
    ld [hl], e                                    ; $7e0b: $73
    ld h, c                                       ; $7e0c: $61
    jp z, Jump_03d_614a                           ; $7e0d: $ca $4a $61

    push hl                                       ; $7e10: $e5
    ld h, l                                       ; $7e11: $65
    ld c, $7f                                     ; $7e12: $0e $7f
    dec [hl]                                      ; $7e14: $35
    cp l                                          ; $7e15: $bd
    db $d3                                        ; $7e16: $d3
    sbc a                                         ; $7e17: $9f
    rst $20                                       ; $7e18: $e7
    inc [hl]                                      ; $7e19: $34
    db $eb                                        ; $7e1a: $eb
    adc [hl]                                      ; $7e1b: $8e
    ld d, b                                       ; $7e1c: $50
    ld a, [c]                                     ; $7e1d: $f2
    ld b, $db                                     ; $7e1e: $06 $db
    ld [hl], l                                    ; $7e20: $75
    cp l                                          ; $7e21: $bd
    and l                                         ; $7e22: $a5
    cp l                                          ; $7e23: $bd
    ld c, a                                       ; $7e24: $4f
    sbc c                                         ; $7e25: $99
    rst $20                                       ; $7e26: $e7
    call z, $be77                                 ; $7e27: $cc $77 $be
    sub h                                         ; $7e2a: $94
    call nc, $b255                                ; $7e2b: $d4 $55 $b2
    cp h                                          ; $7e2e: $bc

Call_03d_7e2f:
    ld c, a                                       ; $7e2f: $4f
    and c                                         ; $7e30: $a1
    sbc $00                                       ; $7e31: $de $00
    db $db                                        ; $7e33: $db
    ld [hl], l                                    ; $7e34: $75
    cp l                                          ; $7e35: $bd
    jr nc, jr_03d_7e6e                            ; $7e36: $30 $36

    ret z                                         ; $7e38: $c8

    push hl                                       ; $7e39: $e5
    jr nz, jr_03d_7ea5                            ; $7e3a: $20 $69

    add h                                         ; $7e3c: $84
    ld a, [c]                                     ; $7e3d: $f2
    sbc $15                                       ; $7e3e: $de $15
    xor l                                         ; $7e40: $ad
    jp nc, Jump_03d_476c                          ; $7e41: $d2 $6c $47

    ld e, h                                       ; $7e44: $5c
    ld sp, hl                                     ; $7e45: $f9
    sbc l                                         ; $7e46: $9d
    xor a                                         ; $7e47: $af
    push hl                                       ; $7e48: $e5
    rst $20                                       ; $7e49: $e7
    cp c                                          ; $7e4a: $b9
    ld e, [hl]                                    ; $7e4b: $5e
    ld a, h                                       ; $7e4c: $7c
    cp $3d                                        ; $7e4d: $fe $3d
    dec sp                                        ; $7e4f: $3b
    ld e, b                                       ; $7e50: $58
    ld hl, $e625                                  ; $7e51: $21 $25 $e6
    adc b                                         ; $7e54: $88

Jump_03d_7e55:
    inc sp                                        ; $7e55: $33
    adc c                                         ; $7e56: $89
    dec d                                         ; $7e57: $15
    ld c, d                                       ; $7e58: $4a
    ld l, h                                       ; $7e59: $6c
    ld [hl-], a                                   ; $7e5a: $32
    ld [c], a                                     ; $7e5b: $e2
    inc c                                         ; $7e5c: $0c
    push bc                                       ; $7e5d: $c5
    and a                                         ; $7e5e: $a7
    xor $57                                       ; $7e5f: $ee $57
    cp a                                          ; $7e61: $bf
    inc [hl]                                      ; $7e62: $34
    and h                                         ; $7e63: $a4
    and h                                         ; $7e64: $a4
    ld l, $a4                                     ; $7e65: $2e $a4
    ld hl, sp-$1a                                 ; $7e67: $f8 $e6
    ld d, e                                       ; $7e69: $53
    ld l, a                                       ; $7e6a: $6f
    nop                                           ; $7e6b: $00
    db $db                                        ; $7e6c: $db
    ld [hl], l                                    ; $7e6d: $75

jr_03d_7e6e:
    rst $20                                       ; $7e6e: $e7
    ld a, [hl]                                    ; $7e6f: $7e
    sbc l                                         ; $7e70: $9d
    ld a, [$530b]                                 ; $7e71: $fa $0b $53
    ld b, [hl]                                    ; $7e74: $46
    db $fc                                        ; $7e75: $fc
    ld a, [hl-]                                   ; $7e76: $3a
    push hl                                       ; $7e77: $e5
    ld b, l                                       ; $7e78: $45
    add hl, sp                                    ; $7e79: $39
    rst $08                                       ; $7e7a: $cf
    add hl, sp                                    ; $7e7b: $39
    ld e, h                                       ; $7e7c: $5c
    sub h                                         ; $7e7d: $94
    ld d, $6d                                     ; $7e7e: $16 $6d
    ld [hl], c                                    ; $7e80: $71
    sub $99                                       ; $7e81: $d6 $99
    call nz, $250a                                ; $7e83: $c4 $0a $25
    ld [hl], $51                                  ; $7e86: $36 $51
    adc [hl]                                      ; $7e88: $8e
    cp b                                          ; $7e89: $b8
    rst $28                                       ; $7e8a: $ef
    cp h                                          ; $7e8b: $bc
    ld h, a                                       ; $7e8c: $67
    cp a                                          ; $7e8d: $bf
    cp h                                          ; $7e8e: $bc
    ld bc, $75db                                  ; $7e8f: $01 $db $75
    rst $20                                       ; $7e92: $e7
    ld h, e                                       ; $7e93: $63
    add l                                         ; $7e94: $85
    jr jr_03d_7f04                                ; $7e95: $18 $6d

    ld d, a                                       ; $7e97: $57
    ld e, [hl]                                    ; $7e98: $5e
    ld [hl], a                                    ; $7e99: $77
    xor $d7                                       ; $7e9a: $ee $d7
    xor c                                         ; $7e9c: $a9
    xor a                                         ; $7e9d: $af
    dec sp                                        ; $7e9e: $3b
    ld c, a                                       ; $7e9f: $4f
    ld e, $e2                                     ; $7ea0: $1e $e2
    db $eb                                        ; $7ea2: $eb
    adc $a6                                       ; $7ea3: $ce $a6

jr_03d_7ea5:
    call nz, $9dc6                                ; $7ea5: $c4 $c6 $9d
    sbc l                                         ; $7ea8: $9d
    ld sp, $73ce                                  ; $7ea9: $31 $ce $73
    sub a                                         ; $7eac: $97
    and l                                         ; $7ead: $a5
    ld c, a                                       ; $7eae: $4f
    ld e, l                                       ; $7eaf: $5d
    ld c, c                                       ; $7eb0: $49
    ld e, l                                       ; $7eb1: $5d
    ldh [rPCM34], a                               ; $7eb2: $e0 $77
    ld d, d                                       ; $7eb4: $52
    xor b                                         ; $7eb5: $a8
    scf                                           ; $7eb6: $37
    nop                                           ; $7eb7: $00
    db $db                                        ; $7eb8: $db
    ld [hl], l                                    ; $7eb9: $75
    rst $20                                       ; $7eba: $e7
    ld a, [hl]                                    ; $7ebb: $7e
    sbc l                                         ; $7ebc: $9d
    sbc d                                         ; $7ebd: $9a
    dec bc                                        ; $7ebe: $0b
    ld d, e                                       ; $7ebf: $53
    ld d, $89                                     ; $7ec0: $16 $89
    sub h                                         ; $7ec2: $94
    ld l, c                                       ; $7ec3: $69
    ld h, e                                       ; $7ec4: $63
    db $e4                                        ; $7ec5: $e4
    add d                                         ; $7ec6: $82
    xor l                                         ; $7ec7: $ad
    ld e, a                                       ; $7ec8: $5f
    ld [$33ac], a                                 ; $7ec9: $ea $ac $33
    adc c                                         ; $7ecc: $89
    dec d                                         ; $7ecd: $15
    ld c, d                                       ; $7ece: $4a
    ld l, h                                       ; $7ecf: $6c
    ld d, d                                       ; $7ed0: $52
    ld d, d                                       ; $7ed1: $52
    rst $30                                       ; $7ed2: $f7
    adc e                                         ; $7ed3: $8b
    jp hl                                         ; $7ed4: $e9


    ld d, e                                       ; $7ed5: $53
    ld b, a                                       ; $7ed6: $47
    inc e                                         ; $7ed7: $1c
    and l                                         ; $7ed8: $a5
    push af                                       ; $7ed9: $f5
    ld c, a                                       ; $7eda: $4f
    cp l                                          ; $7edb: $bd
    ld bc, $75db                                  ; $7edc: $01 $db $75
    cp l                                          ; $7edf: $bd
    ld c, $c0                                     ; $7ee0: $0e $c0
    ld h, c                                       ; $7ee2: $61
    ld l, $f8                                     ; $7ee3: $2e $f8
    ld a, [hl-]                                   ; $7ee5: $3a
    and d                                         ; $7ee6: $a2
    ld c, c                                       ; $7ee7: $49
    adc h                                         ; $7ee8: $8c
    ld a, [c]                                     ; $7ee9: $f2
    ld a, $47                                     ; $7eea: $3e $47
    adc l                                         ; $7eec: $8d
    sbc h                                         ; $7eed: $9c
    sub c                                         ; $7eee: $91
    xor h                                         ; $7eef: $ac
    di                                            ; $7ef0: $f3
    ld b, $7d                                     ; $7ef1: $06 $7d
    ld [hl], e                                    ; $7ef3: $73
    or c                                          ; $7ef4: $b1
    ld de, $33a9                                  ; $7ef5: $11 $a9 $33
    sub d                                         ; $7ef8: $92
    ld [hl], l                                    ; $7ef9: $75
    ld [$97c2], a                                 ; $7efa: $ea $c2 $97
    ld e, a                                       ; $7efd: $5f
    add l                                         ; $7efe: $85
    ld [hl], d                                    ; $7eff: $72
    inc bc                                        ; $7f00: $03
    cp l                                          ; $7f01: $bd
    ld [c], a                                     ; $7f02: $e2
    sbc e                                         ; $7f03: $9b

jr_03d_7f04:
    sub a                                         ; $7f04: $97

Call_03d_7f05:
    sbc c                                         ; $7f05: $99
    call nz, Call_000_2351                        ; $7f06: $c4 $51 $23
    ld h, a                                       ; $7f09: $67
    inc h                                         ; $7f0a: $24
    db $eb                                        ; $7f0b: $eb
    cp h                                          ; $7f0c: $bc
    ld bc, $8abd                                  ; $7f0d: $01 $bd $8a
    push bc                                       ; $7f10: $c5
    or l                                          ; $7f11: $b5
    cp d                                          ; $7f12: $ba
    dec a                                         ; $7f13: $3d
    nop                                           ; $7f14: $00
    halt                                          ; $7f15: $76
    ld l, b                                       ; $7f16: $68
    ld e, $e3                                     ; $7f17: $1e $e3
    rst $10                                       ; $7f19: $d7
    adc l                                         ; $7f1a: $8d
    jr jr_03d_7f70                                ; $7f1b: $18 $53

    ld bc, $be7d                                  ; $7f1d: $01 $7d $be
    ld hl, sp+$66                                 ; $7f20: $f8 $66
    ld e, d                                       ; $7f22: $5a
    ld [hl+], a                                   ; $7f23: $22
    dec d                                         ; $7f24: $15
    nop                                           ; $7f25: $00
    ld bc, $9192                                  ; $7f26: $01 $92 $91
    add $34                                       ; $7f29: $c6 $34
    ld e, e                                       ; $7f2b: $5b
    inc b                                         ; $7f2c: $04
    cp l                                          ; $7f2d: $bd
    ld a, h                                       ; $7f2e: $7c
    xor e                                         ; $7f2f: $ab
    inc [hl]                                      ; $7f30: $34
    ld a, h                                       ; $7f31: $7c
    db $d3                                        ; $7f32: $d3
    ld l, h                                       ; $7f33: $6c
    ld de, $e700                                  ; $7f34: $11 $00 $e7
    ld de, $5f29                                  ; $7f37: $11 $29 $5f

Jump_03d_7f3a:
    sbc d                                         ; $7f3a: $9a
    add $07                                       ; $7f3b: $c6 $07
    cp l                                          ; $7f3d: $bd
    sbc l                                         ; $7f3e: $9d
    cp h                                          ; $7f3f: $bc
    ld l, c                                       ; $7f40: $69
    or [hl]                                       ; $7f41: $b6
    ld [$f600], sp                                ; $7f42: $08 $00 $f6
    add hl, bc                                    ; $7f45: $09
    pop bc                                        ; $7f46: $c1
    ld a, h                                       ; $7f47: $7c
    adc c                                         ; $7f48: $89
    ld a, [bc]                                    ; $7f49: $0a
    nop                                           ; $7f4a: $00
    ld a, l                                       ; $7f4b: $7d
    ld c, $d0                                     ; $7f4c: $0e $d0
    ld h, [hl]                                    ; $7f4e: $66
    ld [de], a                                    ; $7f4f: $12
    nop                                           ; $7f50: $00
    sub a                                         ; $7f51: $97
    cp b                                          ; $7f52: $b8
    and $7d                                       ; $7f53: $e6 $7d
    adc e                                         ; $7f55: $8b
    ld h, $08                                     ; $7f56: $26 $08
    nop                                           ; $7f58: $00
    sub a                                         ; $7f59: $97
    ret                                           ; $7f5a: $c9


    and e                                         ; $7f5b: $a3
    ld d, [hl]                                    ; $7f5c: $56
    and a                                         ; $7f5d: $a7
    call nc, Call_03d_5a6f                        ; $7f5e: $d4 $6f $5a
    ld [hl+], a                                   ; $7f61: $22
    dec d                                         ; $7f62: $15
    nop                                           ; $7f63: $00
    halt                                          ; $7f64: $76
    ld d, a                                       ; $7f65: $57
    dec b                                         ; $7f66: $05
    nop                                           ; $7f67: $00
    add c                                         ; $7f68: $81
    call $28c0                                    ; $7f69: $cd $c0 $28
    ld d, h                                       ; $7f6c: $54
    nop                                           ; $7f6d: $00
    or $2f                                        ; $7f6e: $f6 $2f

jr_03d_7f70:
    ld h, d                                       ; $7f70: $62
    dec e                                         ; $7f71: $1d
    pop de                                        ; $7f72: $d1
    inc h                                         ; $7f73: $24
    ld b, [hl]                                    ; $7f74: $46
    or c                                          ; $7f75: $b1
    dec b                                         ; $7f76: $05
    db $dd                                        ; $7f77: $dd
    ld a, e                                       ; $7f78: $7b
    ld h, a                                       ; $7f79: $67
    dec e                                         ; $7f7a: $1d
    jp z, $a8eb                                   ; $7f7b: $ca $eb $a8

    ld sp, $027b                                  ; $7f7e: $31 $7b $02
    db $db                                        ; $7f81: $db
    ld d, $68                                     ; $7f82: $16 $68
    inc bc                                        ; $7f84: $03
    nop                                           ; $7f85: $00
    db $db                                        ; $7f86: $db
    sub $37                                       ; $7f87: $d6 $37
    ld bc, $ecdd                                  ; $7f89: $01 $dd $ec
    inc [hl]                                      ; $7f8c: $34
    cp $42                                        ; $7f8d: $fe $42
    ld b, a                                       ; $7f8f: $47
    adc c                                         ; $7f90: $89
    ccf                                           ; $7f91: $3f
    ld l, d                                       ; $7f92: $6a
    db $ec                                        ; $7f93: $ec
    ld e, d                                       ; $7f94: $5a
    and a                                         ; $7f95: $a7
    ld de, $2867                                  ; $7f96: $11 $67 $28
    ld a, [c]                                     ; $7f99: $f2
    cp $7b                                        ; $7f9a: $fe $7b
    nop                                           ; $7f9c: $00
    db $dd                                        ; $7f9d: $dd
    ld l, $7a                                     ; $7f9e: $2e $7a
    sbc l                                         ; $7fa0: $9d

Jump_03d_7fa1:
    jp hl                                         ; $7fa1: $e9


    xor d                                         ; $7fa2: $aa
    ld e, a                                       ; $7fa3: $5f
    ld e, [hl]                                    ; $7fa4: $5e
    rst $20                                       ; $7fa5: $e7
    cp c                                          ; $7fa6: $b9
    di                                            ; $7fa7: $f3
    and h                                         ; $7fa8: $a4
    ld hl, $3194                                  ; $7fa9: $21 $94 $31
    ld [$7134], a                                 ; $7fac: $ea $34 $71
    rst $10                                       ; $7faf: $d7
    dec hl                                        ; $7fb0: $2b
    ld hl, $af27                                  ; $7fb1: $21 $27 $af
    add a                                         ; $7fb4: $87
    adc $73                                       ; $7fb5: $ce $73
    dec d                                         ; $7fb7: $15
    adc d                                         ; $7fb8: $8a
    ld a, a                                       ; $7fb9: $7f
    rst $18                                       ; $7fba: $df
    inc bc                                        ; $7fbb: $03
    nop                                           ; $7fbc: $00
    db $dd                                        ; $7fbd: $dd
    cpl                                           ; $7fbe: $2f
    ld [hl], c                                    ; $7fbf: $71
    xor l                                         ; $7fc0: $ad
    ld a, [hl+]                                   ; $7fc1: $2a
    ld c, [hl]                                    ; $7fc2: $4e
    cp a                                          ; $7fc3: $bf
    jp $9c95                                      ; $7fc4: $c3 $95 $9c


    push bc                                       ; $7fc7: $c5
    ld [hl], c                                    ; $7fc8: $71
    ld h, c                                       ; $7fc9: $61
    ld a, d                                       ; $7fca: $7a
    or c                                          ; $7fcb: $b1
    ld sp, hl                                     ; $7fcc: $f9
    dec b                                         ; $7fcd: $05
    cp a                                          ; $7fce: $bf
    ld b, e                                       ; $7fcf: $43
    sbc c                                         ; $7fd0: $99
    daa                                           ; $7fd1: $27
    ld b, [hl]                                    ; $7fd2: $46
    ret                                           ; $7fd3: $c9


    ld a, c                                       ; $7fd4: $79
    adc [hl]                                      ; $7fd5: $8e
    ld a, [de]                                    ; $7fd6: $1a
    ld a, a                                       ; $7fd7: $7f
    and [hl]                                      ; $7fd8: $a6
    xor e                                         ; $7fd9: $ab
    ld a, [hl]                                    ; $7fda: $7e
    ld sp, hl                                     ; $7fdb: $f9
    sbc [hl]                                      ; $7fdc: $9e
    cp e                                          ; $7fdd: $bb
    db $ec                                        ; $7fde: $ec
    add b                                         ; $7fdf: $80
    ld h, c                                       ; $7fe0: $61
    jp nz, $84a7                                  ; $7fe1: $c2 $a7 $84

    sbc h                                         ; $7fe4: $9c
    db $e4                                        ; $7fe5: $e4
    dec c                                         ; $7fe6: $0d
    nop                                           ; $7fe7: $00
    db $dd                                        ; $7fe8: $dd
    ld a, d                                       ; $7fe9: $7a
    cp e                                          ; $7fea: $bb
    ld l, $8c                                     ; $7feb: $2e $8c
    xor a                                         ; $7fed: $af
    dec bc                                        ; $7fee: $0b
    dec e                                         ; $7fef: $1d
    dec h                                         ; $7ff0: $25
    cp [hl]                                       ; $7ff1: $be
    adc $50                                       ; $7ff2: $ce $50
    db $e4                                        ; $7ff4: $e4
    db $fd                                        ; $7ff5: $fd
    ld l, e                                       ; $7ff6: $6b

Jump_03d_7ff7:
    rrca                                          ; $7ff7: $0f
    nop                                           ; $7ff8: $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
