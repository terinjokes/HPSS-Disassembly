; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c0", ROMX[$4000], BANK[$c0]

    db $c0

    ldh a, [rNR10]                                ; $4001: $f0 $10
    dec c                                         ; $4003: $0d

Jump_0c0_4004:
    dec bc                                        ; $4004: $0b
    ld [hl+], a                                   ; $4005: $22
    nop                                           ; $4006: $00
    rst $38                                       ; $4007: $ff
    ld [bc], a                                    ; $4008: $02
    ld c, b                                       ; $4009: $48
    rst $38                                       ; $400a: $ff
    rst $38                                       ; $400b: $ff
    ld bc, $5002                                  ; $400c: $01 $02 $50
    rst $38                                       ; $400f: $ff
    inc b                                         ; $4010: $04
    rst $38                                       ; $4011: $ff
    inc bc                                        ; $4012: $03
    db $fd                                        ; $4013: $fd
    add b                                         ; $4014: $80
    ld a, a                                       ; $4015: $7f
    inc h                                         ; $4016: $24
    ld [$7f80], sp                                ; $4017: $08 $80 $7f
    nop                                           ; $401a: $00
    ld b, b                                       ; $401b: $40
    cp a                                          ; $401c: $bf
    add b                                         ; $401d: $80
    ld a, a                                       ; $401e: $7f
    ret nc                                        ; $401f: $d0

    cpl                                           ; $4020: $2f
    pop bc                                        ; $4021: $c1
    cp $00                                        ; $4022: $fe $00
    add b                                         ; $4024: $80
    rst $38                                       ; $4025: $ff
    add c                                         ; $4026: $81
    ld a, [hl]                                    ; $4027: $7e
    nop                                           ; $4028: $00
    rst $38                                       ; $4029: $ff
    ld bc, $00fe                                  ; $402a: $01 $fe $00
    ld [bc], a                                    ; $402d: $02
    db $fd                                        ; $402e: $fd
    dec d                                         ; $402f: $15
    ld [$847b], a                                 ; $4030: $ea $7b $84
    sbc a                                         ; $4033: $9f
    db $fc                                        ; $4034: $fc
    nop                                           ; $4035: $00
    sbc a                                         ; $4036: $9f
    ld sp, hl                                     ; $4037: $f9
    sbc a                                         ; $4038: $9f
    db $fd                                        ; $4039: $fd
    adc a                                         ; $403a: $8f
    ld a, [$fd87]                                 ; $403b: $fa $87 $fd
    db $18, $87                                   ; $403e: $18 $87
    rst $38                                       ; $4040: $ff
    add e                                         ; $4041: $83
    ld b, b                                       ; $4042: $40
    nop                                           ; $4043: $00
    ld c, a                                       ; $4044: $4f
    nop                                           ; $4045: $00
    ld d, b                                       ; $4046: $50
    rst $38                                       ; $4047: $ff
    adc b                                         ; $4048: $88
    nop                                           ; $4049: $00
    rst $38                                       ; $404a: $ff
    ret z                                         ; $404b: $c8

    rst $38                                       ; $404c: $ff
    ld b, c                                       ; $404d: $41
    rst $38                                       ; $404e: $ff
    and b                                         ; $404f: $a0
    rst $38                                       ; $4050: $ff
    ld [hl], d                                    ; $4051: $72
    nop                                           ; $4052: $00
    rst $38                                       ; $4053: $ff
    cp e                                          ; $4054: $bb
    ldh a, [$1f]                                  ; $4055: $f0 $1f
    db $fc                                        ; $4057: $fc
    adc a                                         ; $4058: $8f
    rst $38                                       ; $4059: $ff
    ld b, e                                       ; $405a: $43
    ld a, [hl+]                                   ; $405b: $2a
    rst $38                                       ; $405c: $ff
    jr nz, @+$69                                  ; $405d: $20 $67

    nop                                           ; $405f: $00
    ld b, h                                       ; $4060: $44
    ld l, e                                       ; $4061: $6b
    nop                                           ; $4062: $00
    ld [$1870], sp                                ; $4063: $08 $70 $18
    ldh [rNR23], a                                ; $4066: $e0 $18
    rst $38                                       ; $4068: $ff
    rst $38                                       ; $4069: $ff
    sbc a                                         ; $406a: $9f
    ld a, c                                       ; $406b: $79
    db $18, $80                                   ; $406c: $18 $80
    ld [$ff07], sp                                ; $406e: $08 $07 $ff
    ld a, a                                       ; $4071: $7f
    db $10                                        ; $4072: $10
    ld hl, sp-$01                                 ; $4073: $f8 $ff
    add b                                         ; $4075: $80
    adc c                                         ; $4076: $89
    nop                                           ; $4077: $00
    ld b, b                                       ; $4078: $40
    rst $38                                       ; $4079: $ff
    nop                                           ; $407a: $00
    ccf                                           ; $407b: $3f
    ld d, c                                       ; $407c: $51
    db $f4                                        ; $407d: $f4
    inc a                                         ; $407e: $3c
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00

Jump_0c0_4081:
    jr nc, jr_0c0_4083                            ; $4081: $30 $00

jr_0c0_4083:
    ld b, b                                       ; $4083: $40
    rst $38                                       ; $4084: $ff
    ld [bc], a                                    ; $4085: $02
    sbc e                                         ; $4086: $9b
    nop                                           ; $4087: $00
    ld b, b                                       ; $4088: $40
    inc bc                                        ; $4089: $03
    sbc a                                         ; $408a: $9f
    nop                                           ; $408b: $00
    ld bc, $21ff                                  ; $408c: $01 $ff $21
    rst $38                                       ; $408f: $ff
    ld b, [hl]                                    ; $4090: $46
    rst $38                                       ; $4091: $ff
    nop                                           ; $4092: $00
    add hl, bc                                    ; $4093: $09
    rst $38                                       ; $4094: $ff
    ld [hl], $ff                                  ; $4095: $36 $ff
    xor l                                         ; $4097: $ad
    rst $38                                       ; $4098: $ff
    ld e, a                                       ; $4099: $5f
    db $fd                                        ; $409a: $fd
    nop                                           ; $409b: $00
    rst $10                                       ; $409c: $d7
    ld sp, hl                                     ; $409d: $f9
    xor a                                         ; $409e: $af
    pop af                                        ; $409f: $f1
    rst $18                                       ; $40a0: $df
    pop hl                                        ; $40a1: $e1
    cp a                                          ; $40a2: $bf
    pop bc                                        ; $40a3: $c1
    jr nz, jr_0c0_4125                            ; $40a4: $20 $7f

    add c                                         ; $40a6: $81
    and b                                         ; $40a7: $a0
    db $10                                        ; $40a8: $10
    add a                                         ; $40a9: $87
    ld a, e                                       ; $40aa: $7b
    inc bc                                        ; $40ab: $03
    rst $38                                       ; $40ac: $ff
    add e                                         ; $40ad: $83
    jr nz, jr_0c0_412d                            ; $40ae: $20 $7d

    ld bc, $00a0                                  ; $40b0: $01 $a0 $00
    and b                                         ; $40b3: $a0
    ld e, a                                       ; $40b4: $5f
    ret z                                         ; $40b5: $c8

    scf                                           ; $40b6: $37
    db $fd                                        ; $40b7: $fd
    nop                                           ; $40b8: $00
    ld [bc], a                                    ; $40b9: $02
    pop hl                                        ; $40ba: $e1
    sbc $c1                                       ; $40bb: $de $c1
    cp [hl]                                       ; $40bd: $be
    add b                                         ; $40be: $80
    ld a, a                                       ; $40bf: $7f
    ld bc, $fe41                                  ; $40c0: $01 $41 $fe
    and d                                         ; $40c3: $a2
    ld [$d629], sp                                ; $40c4: $08 $29 $d6
    ld d, a                                       ; $40c7: $57
    xor b                                         ; $40c8: $a8
    add b                                         ; $40c9: $80
    ld e, c                                       ; $40ca: $59
    nop                                           ; $40cb: $00
    or h                                          ; $40cc: $b4
    inc b                                         ; $40cd: $04
    jr z, @-$5e                                   ; $40ce: $28 $a0

    sbc a                                         ; $40d0: $9f
    db $10                                        ; $40d1: $10
    ld a, [c]                                     ; $40d2: $f2
    jr c, @+$0a                                   ; $40d3: $38 $08

    ldh a, [rP1]                                  ; $40d5: $f0 $00
    push de                                       ; $40d7: $d5
    ld a, [hl+]                                   ; $40d8: $2a
    ld a, [hl+]                                   ; $40d9: $2a
    and b                                         ; $40da: $a0
    ld e, a                                       ; $40db: $5f
    jp c, RST_08                                  ; $40dc: $da $08 $00

    sub $00                                       ; $40df: $d6 $00
    ld bc, $006f                                  ; $40e1: $01 $6f $00
    xor e                                         ; $40e4: $ab
    ld bc, $0554                                  ; $40e5: $01 $54 $05
    ld a, [$fc03]                                 ; $40e8: $fa $03 $fc
    dec b                                         ; $40eb: $05
    ld a, [$08e0]                                 ; $40ec: $fa $e0 $08
    dec b                                         ; $40ef: $05
    ld bc, $c2fe                                  ; $40f0: $01 $fe $c2
    cp l                                          ; $40f3: $bd
    rst $38                                       ; $40f4: $ff
    sbc c                                         ; $40f5: $99
    nop                                           ; $40f6: $00
    ret nz                                        ; $40f7: $c0

    inc b                                         ; $40f8: $04
    jr nz, jr_0c0_4083                            ; $40f9: $20 $88

    ld c, h                                       ; $40fb: $4c
    ld [$ffff], sp                                ; $40fc: $08 $ff $ff
    dec d                                         ; $40ff: $15
    inc h                                         ; $4100: $24
    ld d, c                                       ; $4101: $51
    db $ed                                        ; $4102: $ed
    ld [de], a                                    ; $4103: $12
    ret nz                                        ; $4104: $c0

    ld h, b                                       ; $4105: $60
    ccf                                           ; $4106: $3f
    ld b, d                                       ; $4107: $42
    jr jr_0c0_412a                                ; $4108: $18 $20

    add hl, bc                                    ; $410a: $09
    add b                                         ; $410b: $80
    ld a, a                                       ; $410c: $7f
    rst $38                                       ; $410d: $ff
    reti                                          ; $410e: $d9


    rst $38                                       ; $410f: $ff
    ld bc, $7f6d                                  ; $4110: $01 $6d $7f
    cp d                                          ; $4113: $ba
    rra                                           ; $4114: $1f
    db $ed                                        ; $4115: $ed
    rrca                                          ; $4116: $0f
    di                                            ; $4117: $f3
    ld c, b                                       ; $4118: $48
    jr jr_0c0_411b                                ; $4119: $18 $00

jr_0c0_411b:
    rst $38                                       ; $411b: $ff
    add h                                         ; $411c: $84
    rst $38                                       ; $411d: $ff
    pop af                                        ; $411e: $f1
    rst $38                                       ; $411f: $ff
    call c, $6fff                                 ; $4120: $dc $ff $6f
    rlca                                          ; $4123: $07
    rst $38                                       ; $4124: $ff

jr_0c0_4125:
    or l                                          ; $4125: $b5
    rst $38                                       ; $4126: $ff
    cp $9f                                        ; $4127: $fe $9f
    ld c, d                                       ; $4129: $4a

jr_0c0_412a:
    nop                                           ; $412a: $00
    ld c, e                                       ; $412b: $4b
    add hl, bc                                    ; $412c: $09

jr_0c0_412d:
    db $ec                                        ; $412d: $ec
    db $10                                        ; $412e: $10
    inc b                                         ; $412f: $04
    ld a, l                                       ; $4130: $7d
    rst $38                                       ; $4131: $ff
    rst $10                                       ; $4132: $d7
    rst $38                                       ; $4133: $ff
    ld [$1130], a                                 ; $4134: $ea $30 $11
    ld h, b                                       ; $4137: $60
    rst $38                                       ; $4138: $ff
    nop                                           ; $4139: $00
    rrca                                          ; $413a: $0f
    rst $38                                       ; $413b: $ff
    jr nc, @+$01                                  ; $413c: $30 $ff

    push af                                       ; $413e: $f5
    rst $38                                       ; $413f: $ff
    ld e, a                                       ; $4140: $5f
    rst $38                                       ; $4141: $ff
    db $10                                        ; $4142: $10
    or l                                          ; $4143: $b5
    cp $ff                                        ; $4144: $fe $ff
    or $00                                        ; $4146: $f6 $00
    add hl, de                                    ; $4148: $19
    rst $38                                       ; $4149: $ff
    ld l, e                                       ; $414a: $6b
    rst $38                                       ; $414b: $ff
    nop                                           ; $414c: $00
    dec e                                         ; $414d: $1d
    rst $38                                       ; $414e: $ff
    ld e, a                                       ; $414f: $5f
    ld sp, hl                                     ; $4150: $f9
    cp a                                          ; $4151: $bf
    jp $05ff                                      ; $4152: $c3 $ff $05


jr_0c0_4155:
    nop                                           ; $4155: $00
    rst $38                                       ; $4156: $ff
    rst $38                                       ; $4157: $ff
    xor b                                         ; $4158: $a8
    ld a, [$e0f5]                                 ; $4159: $fa $f5 $e0
    ld e, a                                       ; $415c: $5f
    ret nz                                        ; $415d: $c0

    nop                                           ; $415e: $00
    cp a                                          ; $415f: $bf
    add c                                         ; $4160: $81
    ld a, a                                       ; $4161: $7f
    ld b, e                                       ; $4162: $43
    cp l                                          ; $4163: $bd
    add e                                         ; $4164: $83
    ld a, a                                       ; $4165: $7f
    add a                                         ; $4166: $87
    ld bc, $537b                                  ; $4167: $01 $7b $53
    xor h                                         ; $416a: $ac
    ld bc, $03fe                                  ; $416b: $01 $fe $03
    db $fc                                        ; $416e: $fc
    ldh [$08], a                                  ; $416f: $e0 $08
    nop                                           ; $4171: $00
    add d                                         ; $4172: $82
    ld a, l                                       ; $4173: $7d
    ret nz                                        ; $4174: $c0

    cp a                                          ; $4175: $bf
    ldh [$df], a                                  ; $4176: $e0 $df
    rst $10                                       ; $4178: $d7
    jr z, jr_0c0_419f                             ; $4179: $28 $24

    and d                                         ; $417b: $a2
    ld e, l                                       ; $417c: $5d
    sbc d                                         ; $417d: $9a
    add hl, bc                                    ; $417e: $09
    ret nz                                        ; $417f: $c0

    ccf                                           ; $4180: $3f
    ld a, [hl]                                    ; $4181: $7e
    ld [$3dc3], sp                                ; $4182: $08 $c3 $3d
    jr nc, jr_0c0_41b3                            ; $4185: $30 $2c

    db $d3                                        ; $4187: $d3
    db $fc                                        ; $4188: $fc
    ld [$09a0], sp                                ; $4189: $08 $a0 $09
    add b                                         ; $418c: $80
    ld a, a                                       ; $418d: $7f
    add c                                         ; $418e: $81
    cp $00                                        ; $418f: $fe $00
    ret nz                                        ; $4191: $c0

    rst $38                                       ; $4192: $ff
    rlca                                          ; $4193: $07
    rlca                                          ; $4194: $07
    sbc b                                         ; $4195: $98
    rrca                                          ; $4196: $0f
    ld sp, $001e                                  ; $4197: $31 $1e $00
    inc d                                         ; $419a: $14
    dec sp                                        ; $419b: $3b
    jr z, jr_0c0_4155                             ; $419c: $28 $b7

    ld c, c                                       ; $419e: $49

jr_0c0_419f:
    ld [hl], a                                    ; $419f: $77
    ld e, b                                       ; $41a0: $58
    rst $20                                       ; $41a1: $e7
    nop                                           ; $41a2: $00
    cp c                                          ; $41a3: $b9
    rst $00                                       ; $41a4: $c7
    nop                                           ; $41a5: $00

jr_0c0_41a6:
    add b                                         ; $41a6: $80
    ldh [$f8], a                                  ; $41a7: $e0 $f8
    jr jr_0c0_41a6                                ; $41a9: $18 $fb

    nop                                           ; $41ab: $00
    db $e4                                        ; $41ac: $e4
    ld e, $3b                                     ; $41ad: $1e $3b
    rst $00                                       ; $41af: $c7
    inc e                                         ; $41b0: $1c
    db $e3                                        ; $41b1: $e3
    adc [hl]                                      ; $41b2: $8e

jr_0c0_41b3:
    pop af                                        ; $41b3: $f1
    ld [$f8c7], sp                                ; $41b4: $08 $c7 $f8
    jr z, jr_0c0_41b9                             ; $41b7: $28 $00

jr_0c0_41b9:
    ld bc, $0108                                  ; $41b9: $01 $08 $01
    inc bc                                        ; $41bc: $03
    ld c, $00                                     ; $41bd: $0e $00
    sbc a                                         ; $41bf: $9f
    or e                                          ; $41c0: $b3
    db $fc                                        ; $41c1: $fc
    ld e, a                                       ; $41c2: $5f
    ldh [rOCPS], a                                ; $41c3: $e0 $6a
    push de                                       ; $41c5: $d5
    sub b                                         ; $41c6: $90
    nop                                           ; $41c7: $00
    ld b, b                                       ; $41c8: $40
    add c                                         ; $41c9: $81
    rrca                                          ; $41ca: $0f
    ld e, $7f                                     ; $41cb: $1e $7f
    pop hl                                        ; $41cd: $e1
    cp $7f                                        ; $41ce: $fe $7f
    ld [bc], a                                    ; $41d0: $02
    add b                                         ; $41d1: $80
    ld [$5015], a                                 ; $41d2: $ea $15 $50
    xor a                                         ; $41d5: $af
    rrca                                          ; $41d6: $0f
    and c                                         ; $41d7: $a1
    ld bc, $80fe                                  ; $41d8: $01 $fe $80
    inc d                                         ; $41db: $14
    ld [bc], a                                    ; $41dc: $02
    cp $01                                        ; $41dd: $fe $01
    ld d, l                                       ; $41df: $55
    xor d                                         ; $41e0: $aa
    add b                                         ; $41e1: $80
    ld a, a                                       ; $41e2: $7f
    dec a                                         ; $41e3: $3d
    jr nz, @+$01                                  ; $41e4: $20 $ff

    ld a, [$01b1]                                 ; $41e6: $fa $b1 $01
    ld [$e0c1], sp                                ; $41e9: $08 $c1 $e0
    ld hl, sp-$44                                 ; $41ec: $f8 $bc
    ld [bc], a                                    ; $41ee: $02
    ld a, [hl]                                    ; $41ef: $7e
    ld d, a                                       ; $41f0: $57
    xor a                                         ; $41f1: $af
    add hl, bc                                    ; $41f2: $09
    rst $30                                       ; $41f3: $f7
    ld bc, $0197                                  ; $41f4: $01 $97 $01
    ld bc, $0000                                  ; $41f7: $01 $00 $00
    ld [bc], a                                    ; $41fa: $02
    nop                                           ; $41fb: $00
    ld bc, $0e0f                                  ; $41fc: $01 $0f $0e
    rra                                           ; $41ff: $1f
    inc sp                                        ; $4200: $33
    nop                                           ; $4201: $00
    db $fc                                        ; $4202: $fc
    sbc $e1                                       ; $4203: $de $e1
    ld l, b                                       ; $4205: $68
    sub a                                         ; $4206: $97
    ccf                                           ; $4207: $3f
    rst $38                                       ; $4208: $ff
    ld [$a000], sp                                ; $4209: $08 $00 $a0
    rra                                           ; $420c: $1f
    ld a, a                                       ; $420d: $7f
    ldh [rIE], a                                  ; $420e: $e0 $ff
    ld a, a                                       ; $4210: $7f
    add b                                         ; $4211: $80
    push af                                       ; $4212: $f5
    add hl, de                                    ; $4213: $19
    ld a, [bc]                                    ; $4214: $0a
    xor d                                         ; $4215: $aa

jr_0c0_4216:
    ld d, l                                       ; $4216: $55
    ld d, b                                       ; $4217: $50
    ld a, [bc]                                    ; $4218: $0a
    ld b, b                                       ; $4219: $40
    jr jr_0c0_4216                                ; $421a: $18 $fa

    dec b                                         ; $421c: $05
    ld b, b                                       ; $421d: $40
    ld [$0040], sp                                ; $421e: $08 $40 $00
    ld b, b                                       ; $4221: $40
    stop                                          ; $4222: $10 $00
    ret nz                                        ; $4224: $c0

    ldh [$f8], a                                  ; $4225: $e0 $f8
    sbc h                                         ; $4227: $9c
    ld a, [hl]                                    ; $4228: $7e
    ld bc, $af53                                  ; $4229: $01 $53 $af
    dec h                                         ; $422c: $25
    db $db                                        ; $422d: $db
    ld bc, $06ff                                  ; $422e: $01 $ff $06
    ld b, b                                       ; $4231: $40
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    jr nc, jr_0c0_4257                            ; $4235: $30 $20

    ld b, b                                       ; $4237: $40
    ld bc, $0e43                                  ; $4238: $01 $43 $0e
    ccf                                           ; $423b: $3f
    nop                                           ; $423c: $00
    or e                                          ; $423d: $b3
    db $fc                                        ; $423e: $fc
    rst $18                                       ; $423f: $df
    ldh [rOCPS], a                                ; $4240: $e0 $6a
    sub l                                         ; $4242: $95
    nop                                           ; $4243: $00
    db $10                                        ; $4244: $10
    ld [hl+], a                                   ; $4245: $22
    add c                                         ; $4246: $81
    rlca                                          ; $4247: $07
    add b                                         ; $4248: $80
    ld c, b                                       ; $4249: $48
    add b                                         ; $424a: $80
    ld bc, $3004                                  ; $424b: $01 $04 $30
    nop                                           ; $424e: $00
    cp h                                          ; $424f: $bc
    ld h, d                                       ; $4250: $62
    ld a, a                                       ; $4251: $7f
    ld [hl], b                                    ; $4252: $70
    jr z, jr_0c0_42c4                             ; $4253: $28 $6f

    nop                                           ; $4255: $00
    nop                                           ; $4256: $00

jr_0c0_4257:
    ld bc, $7007                                  ; $4257: $01 $07 $70
    jr c, jr_0c0_425e                             ; $425a: $38 $02

    jr nz, jr_0c0_425e                            ; $425c: $20 $00

jr_0c0_425e:
    sbc a                                         ; $425e: $9f
    ld [hl], b                                    ; $425f: $70
    ld d, b                                       ; $4260: $50
    sbc h                                         ; $4261: $9c
    db $e3                                        ; $4262: $e3
    db $ec                                        ; $4263: $ec
    di                                            ; $4264: $f3
    ld [hl], h                                    ; $4265: $74
    nop                                           ; $4266: $00
    ld a, e                                       ; $4267: $7b
    add hl, de                                    ; $4268: $19
    cp a                                          ; $4269: $bf
    rrca                                          ; $426a: $0f
    rrca                                          ; $426b: $0f
    rlca                                          ; $426c: $07
    adc a                                         ; $426d: $8f
    ld b, $00                                     ; $426e: $06 $00
    sbc a                                         ; $4270: $9f
    dec b                                         ; $4271: $05
    ld e, $e6                                     ; $4272: $1e $e6
    ld sp, hl                                     ; $4274: $f9
    ld h, b                                       ; $4275: $60

jr_0c0_4276:
    rst $38                                       ; $4276: $ff
    or c                                          ; $4277: $b1
    nop                                           ; $4278: $00
    rst $38                                       ; $4279: $ff
    halt                                          ; $427a: $76
    rst $38                                       ; $427b: $ff
    db $fc                                        ; $427c: $fc
    db $fd                                        ; $427d: $fd
    ldh a, [$f8]                                  ; $427e: $f0 $f8

jr_0c0_4280:
    ld b, c                                       ; $4280: $41
    db $10                                        ; $4281: $10
    ldh [$a2], a                                  ; $4282: $e0 $a2
    ld h, c                                       ; $4284: $61
    ret nc                                        ; $4285: $d0

    add hl, bc                                    ; $4286: $09
    add b                                         ; $4287: $80
    add c                                         ; $4288: $81
    ld b, b                                       ; $4289: $40
    nop                                           ; $428a: $00
    ld [$1000], sp                                ; $428b: $08 $00 $10
    nop                                           ; $428e: $00
    dec b                                         ; $428f: $05
    ld a, [hl]                                    ; $4290: $7e
    ld a, [bc]                                    ; $4291: $0a
    rst $38                                       ; $4292: $ff
    rst $38                                       ; $4293: $ff

jr_0c0_4294:
    ld a, d                                       ; $4294: $7a
    ld b, $ff                                     ; $4295: $06 $ff
    rlca                                          ; $4297: $07
    cp a                                          ; $4298: $bf
    add hl, bc                                    ; $4299: $09
    inc bc                                        ; $429a: $03
    dec b                                         ; $429b: $05
    add hl, bc                                    ; $429c: $09
    adc [hl]                                      ; $429d: $8e
    ld a, [bc]                                    ; $429e: $0a
    ld d, b                                       ; $429f: $50
    add b                                         ; $42a0: $80
    or a                                          ; $42a1: $b7
    ld [bc], a                                    ; $42a2: $02
    ld b, b                                       ; $42a3: $40
    rst $38                                       ; $42a4: $ff
    add sp, -$01                                  ; $42a5: $e8 $ff
    ccf                                           ; $42a7: $3f
    rst $38                                       ; $42a8: $ff
    nop                                           ; $42a9: $00
    sub b                                         ; $42aa: $90
    db $fd                                        ; $42ab: $fd
    ld [$afff], sp                                ; $42ac: $08 $ff $af
    sub a                                         ; $42af: $97
    ld bc, $ff38                                  ; $42b0: $01 $38 $ff
    ld b, b                                       ; $42b3: $40
    ld hl, sp+$2a                                 ; $42b4: $f8 $2a
    add b                                         ; $42b6: $80
    ret nz                                        ; $42b7: $c0

    jr nz, @+$1a                                  ; $42b8: $20 $18

    rst $38                                       ; $42ba: $ff

jr_0c0_42bb:
    ld c, $02                                     ; $42bb: $0e $02
    nop                                           ; $42bd: $00
    dec [hl]                                      ; $42be: $35
    add hl, bc                                    ; $42bf: $09
    ld a, [bc]                                    ; $42c0: $0a
    jr z, jr_0c0_42c3                             ; $42c1: $28 $00

jr_0c0_42c3:
    inc h                                         ; $42c3: $24

jr_0c0_42c4:
    cp [hl]                                       ; $42c4: $be
    ld a, [bc]                                    ; $42c5: $0a
    db $fd                                        ; $42c6: $fd
    cp l                                          ; $42c7: $bd
    ld bc, $0700                                  ; $42c8: $01 $00 $07
    nop                                           ; $42cb: $00
    ld h, b                                       ; $42cc: $60
    ld [$0947], sp                                ; $42cd: $08 $47 $09
    ld b, b                                       ; $42d0: $40
    jr jr_0c0_42bb                                ; $42d1: $18 $e8

    rst $38                                       ; $42d3: $ff
    ld [hl], l                                    ; $42d4: $75
    rst $38                                       ; $42d5: $ff
    ld c, $04                                     ; $42d6: $0e $04
    ccf                                           ; $42d8: $3f
    inc bc                                        ; $42d9: $03
    rlca                                          ; $42da: $07
    add b                                         ; $42db: $80
    jr z, @-$20                                   ; $42dc: $28 $de

    ld a, [bc]                                    ; $42de: $0a
    sbc l                                         ; $42df: $9d
    cp $00                                        ; $42e0: $fe $00
    ld sp, $7fff                                  ; $42e2: $31 $ff $7f
    rst $38                                       ; $42e5: $ff
    ldh a, [$fc]                                  ; $42e6: $f0 $fc
    add b                                         ; $42e8: $80
    ldh [$b6], a                                  ; $42e9: $e0 $b6
    jr nz, jr_0c0_4305                            ; $42eb: $20 $18

    ccf                                           ; $42ed: $3f
    db $fc                                        ; $42ee: $fc
    ld [bc], a                                    ; $42ef: $02
    inc sp                                        ; $42f0: $33
    ld bc, $7020                                  ; $42f1: $01 $20 $70
    jr z, jr_0c0_4276                             ; $42f4: $28 $80

    db $10                                        ; $42f6: $10
    ccf                                           ; $42f7: $3f
    inc c                                         ; $42f8: $0c
    ld bc, $0843                                  ; $42f9: $01 $43 $08
    db $10                                        ; $42fc: $10
    ld b, b                                       ; $42fd: $40
    jr z, jr_0c0_4280                             ; $42fe: $28 $80

    jr z, jr_0c0_4322                             ; $4300: $28 $20

    ld c, $8c                                     ; $4302: $0e $8c
    add b                                         ; $4304: $80

jr_0c0_4305:
    ld b, b                                       ; $4305: $40
    ld a, [c]                                     ; $4306: $f2
    add h                                         ; $4307: $84
    ret nz                                        ; $4308: $c0

    ld h, b                                       ; $4309: $60
    jr @-$7e                                      ; $430a: $18 $80

    db $10                                        ; $430c: $10
    add d                                         ; $430d: $82
    nop                                           ; $430e: $00
    ld h, b                                       ; $430f: $60
    ld c, b                                       ; $4310: $48
    ld [hl], b                                    ; $4311: $70
    jr z, jr_0c0_4294                             ; $4312: $28 $80

    jr nz, jr_0c0_4316                            ; $4314: $20 $00

jr_0c0_4316:
    nop                                           ; $4316: $00
    inc c                                         ; $4317: $0c
    nop                                           ; $4318: $00
    ld [hl+], a                                   ; $4319: $22
    sbc d                                         ; $431a: $9a
    add b                                         ; $431b: $80
    ld b, b                                       ; $431c: $40
    ld a, a                                       ; $431d: $7f
    inc bc                                        ; $431e: $03
    inc d                                         ; $431f: $14
    nop                                           ; $4320: $00
    add b                                         ; $4321: $80

jr_0c0_4322:
    db $10                                        ; $4322: $10
    rst $38                                       ; $4323: $ff
    add b                                         ; $4324: $80
    db $10                                        ; $4325: $10
    db $fd                                        ; $4326: $fd
    add b                                         ; $4327: $80
    add b                                         ; $4328: $80
    jr z, jr_0c0_434b                             ; $4329: $28 $20

    rst $18                                       ; $432b: $df
    rra                                           ; $432c: $1f
    rst $38                                       ; $432d: $ff
    db $fc                                        ; $432e: $fc
    rst $38                                       ; $432f: $ff
    di                                            ; $4330: $f3
    nop                                           ; $4331: $00
    db $fc                                        ; $4332: $fc
    ld c, b                                       ; $4333: $48
    rst $30                                       ; $4334: $f7
    ccf                                           ; $4335: $3f
    ld a, a                                       ; $4336: $7f
    add d                                         ; $4337: $82
    cpl                                           ; $4338: $2f
    ld b, l                                       ; $4339: $45
    nop                                           ; $433a: $00
    add [hl]                                      ; $433b: $86

jr_0c0_433c:
    pop hl                                        ; $433c: $e1
    rst $38                                       ; $433d: $ff
    dec hl                                        ; $433e: $2b
    push de                                       ; $433f: $d5
    ld [hl], c                                    ; $4340: $71
    adc a                                         ; $4341: $8f
    sbc [hl]                                      ; $4342: $9e
    nop                                           ; $4343: $00
    ld a, a                                       ; $4344: $7f
    ld h, b                                       ; $4345: $60
    ld hl, sp-$20                                 ; $4346: $f8 $e0
    ldh a, [$a2]                                  ; $4348: $f0 $a2
    ld [hl], b                                    ; $434a: $70

jr_0c0_434b:
    and h                                         ; $434b: $a4
    nop                                           ; $434c: $00
    ld [hl], b                                    ; $434d: $70
    inc b                                         ; $434e: $04
    rrca                                          ; $434f: $0f
    dec e                                         ; $4350: $1d
    ld l, $0c                                     ; $4351: $2e $0c
    rra                                           ; $4353: $1f
    dec c                                         ; $4354: $0d
    nop                                           ; $4355: $00
    ld e, $0e                                     ; $4356: $1e $0e
    rra                                           ; $4358: $1f
    ld d, [hl]                                    ; $4359: $56
    rra                                           ; $435a: $1f
    ld e, $3f                                     ; $435b: $1e $3f
    ld [hl], $00                                  ; $435d: $36 $00
    ccf                                           ; $435f: $3f
    and d                                         ; $4360: $a2
    ld h, c                                       ; $4361: $61
    ld [c], a                                     ; $4362: $e2
    ld sp, $31e2                                  ; $4363: $31 $e2 $31
    ld d, d                                       ; $4366: $52
    nop                                           ; $4367: $00
    or c                                          ; $4368: $b1
    jp nc, $5235                                  ; $4369: $d2 $35 $52

    cp c                                          ; $436c: $b9
    jp nc, $6a39                                  ; $436d: $d2 $39 $6a

    jr c, @-$65                                   ; $4370: $38 $99

    inc bc                                        ; $4372: $03
    ld [de], a                                    ; $4373: $12
    inc b                                         ; $4374: $04
    add hl, hl                                    ; $4375: $29
    ld bc, $2412                                  ; $4376: $01 $12 $24
    and d                                         ; $4379: $a2
    ld e, l                                       ; $437a: $5d
    pop bc                                        ; $437b: $c1
    jr jr_0c0_433c                                ; $437c: $18 $be

    add d                                         ; $437e: $82
    ld a, l                                       ; $437f: $7d
    sub d                                         ; $4380: $92
    ld a, [de]                                    ; $4381: $1a
    ld [de], a                                    ; $4382: $12
    inc c                                         ; $4383: $0c
    and l                                         ; $4384: $a5
    ld e, d                                       ; $4385: $5a
    ld b, e                                       ; $4386: $43
    db $10                                        ; $4387: $10
    cp l                                          ; $4388: $bd
    add c                                         ; $4389: $81
    ld a, [hl]                                    ; $438a: $7e
    ld a, [bc]                                    ; $438b: $0a
    dec de                                        ; $438c: $1b
    ld b, h                                       ; $438d: $44
    cp e                                          ; $438e: $bb
    xor d                                         ; $438f: $aa
    ld d, l                                       ; $4390: $55
    db $10                                        ; $4391: $10
    rst $30                                       ; $4392: $f7
    ld [$44c1], sp                                ; $4393: $08 $c1 $44
    inc bc                                        ; $4396: $03
    add c                                         ; $4397: $81
    cp $03                                        ; $4398: $fe $03
    db $fd                                        ; $439a: $fd
    nop                                           ; $439b: $00
    rlca                                          ; $439c: $07
    ld a, [$ec1e]                                 ; $439d: $fa $1e $ec
    cp h                                          ; $43a0: $bc
    ld e, b                                       ; $43a1: $58
    ld a, b                                       ; $43a2: $78
    or b                                          ; $43a3: $b0
    nop                                           ; $43a4: $00
    pop bc                                        ; $43a5: $c1
    rst $38                                       ; $43a6: $ff
    sbc a                                         ; $43a7: $9f
    cp $fa                                        ; $43a8: $fe $fa
    ldh [$d4], a                                  ; $43aa: $e0 $d4
    add b                                         ; $43ac: $80
    ld bc, $0021                                  ; $43ad: $01 $21 $00
    ld a, [de]                                    ; $43b0: $1a
    nop                                           ; $43b1: $00
    cpl                                           ; $43b2: $2f
    ld [$739b], sp                                ; $43b3: $08 $9b $73
    inc b                                         ; $43b6: $04
    nop                                           ; $43b7: $00
    add b                                         ; $43b8: $80
    nop                                           ; $43b9: $00
    dec hl                                        ; $43ba: $2b
    nop                                           ; $43bb: $00
    sub l                                         ; $43bc: $95
    nop                                           ; $43bd: $00
    ld [hl+], a                                   ; $43be: $22
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    ld [hl], c                                    ; $43c1: $71
    nop                                           ; $43c2: $00
    rst $28                                       ; $43c3: $ef
    add b                                         ; $43c4: $80
    call $f800                                    ; $43c5: $cd $00 $f8
    rst $38                                       ; $43c8: $ff
    nop                                           ; $43c9: $00
    rra                                           ; $43ca: $1f
    rlca                                          ; $43cb: $07
    add c                                         ; $43cc: $81
    nop                                           ; $43cd: $00
    ret z                                         ; $43ce: $c8

    nop                                           ; $43cf: $00
    dec h                                         ; $43d0: $25
    nop                                           ; $43d1: $00
    inc b                                         ; $43d2: $04
    adc h                                         ; $43d3: $8c
    nop                                           ; $43d4: $00
    call nz, Call_0c0_7a00                        ; $43d5: $c4 $00 $7a
    and l                                         ; $43d8: $a5
    ld bc, $ff03                                  ; $43d9: $01 $03 $ff
    nop                                           ; $43dc: $00
    push bc                                       ; $43dd: $c5
    rst $38                                       ; $43de: $ff
    ld [hl], e                                    ; $43df: $73
    ccf                                           ; $43e0: $3f
    dec e                                         ; $43e1: $1d
    rrca                                          ; $43e2: $0f
    and a                                         ; $43e3: $a7
    inc bc                                        ; $43e4: $03
    nop                                           ; $43e5: $00
    ld d, c                                       ; $43e6: $51
    nop                                           ; $43e7: $00
    jp hl                                         ; $43e8: $e9


    nop                                           ; $43e9: $00
    add e                                         ; $43ea: $83
    ld a, l                                       ; $43eb: $7d
    ld h, c                                       ; $43ec: $61
    sbc [hl]                                      ; $43ed: $9e

jr_0c0_43ee:
    add b                                         ; $43ee: $80
    xor $1a                                       ; $43ef: $ee $1a
    ret nz                                        ; $43f1: $c0

    ccf                                           ; $43f2: $3f
    add sp, -$29                                  ; $43f3: $e8 $d7
    ld [hl], l                                    ; $43f5: $75
    ld a, [hl+]                                   ; $43f6: $2a
    pop bc                                        ; $43f7: $c1
    ld d, b                                       ; $43f8: $50
    cp $1c                                        ; $43f9: $fe $1c
    inc bc                                        ; $43fb: $03
    cp $b4                                        ; $43fc: $fe $b4
    dec de                                        ; $43fe: $1b
    adc e                                         ; $43ff: $8b
    ld [hl], h                                    ; $4400: $74
    push de                                       ; $4401: $d5
    ld a, [hl+]                                   ; $4402: $2a
    ld e, b                                       ; $4403: $58
    add e                                         ; $4404: $83
    jr z, jr_0c0_440a                             ; $4405: $28 $03

    add c                                         ; $4407: $81
    adc b                                         ; $4408: $88
    inc bc                                        ; $4409: $03

jr_0c0_440a:
    db $10                                        ; $440a: $10
    dec bc                                        ; $440b: $0b
    ld b, c                                       ; $440c: $41
    cp [hl]                                       ; $440d: $be
    xor e                                         ; $440e: $ab
    ld h, b                                       ; $440f: $60
    ld d, h                                       ; $4410: $54
    ld c, $2c                                     ; $4411: $0e $2c
    or d                                          ; $4413: $b2
    inc c                                         ; $4414: $0c
    jr z, jr_0c0_43ee                             ; $4415: $28 $d7

    push de                                       ; $4417: $d5
    ld a, [hl+]                                   ; $4418: $2a
    ld b, l                                       ; $4419: $45
    nop                                           ; $441a: $00
    add [hl]                                      ; $441b: $86
    ld b, a                                       ; $441c: $47
    adc h                                         ; $441d: $8c
    ld b, a                                       ; $441e: $47
    xor h                                         ; $441f: $ac
    ld c, d                                       ; $4420: $4a
    xor l                                         ; $4421: $ad
    ld c, e                                       ; $4422: $4b
    nop                                           ; $4423: $00
    adc h                                         ; $4424: $8c
    ld c, d                                       ; $4425: $4a
    sbc l                                         ; $4426: $9d
    ld c, e                                       ; $4427: $4b
    sbc h                                         ; $4428: $9c
    ld d, [hl]                                    ; $4429: $56

jr_0c0_442a:
    sbc c                                         ; $442a: $99
    jr nz, jr_0c0_442d                            ; $442b: $20 $00

jr_0c0_442d:
    ld a, [c]                                     ; $442d: $f2
    or b                                          ; $442e: $b0
    ld [hl], b                                    ; $442f: $70
    jr nc, jr_0c0_442a                            ; $4430: $30 $f8

    or b                                          ; $4432: $b0
    ld a, b                                       ; $4433: $78
    ld [hl], b                                    ; $4434: $70
    nop                                           ; $4435: $00
    ld hl, sp+$6c                                 ; $4436: $f8 $6c
    ld hl, sp+$78                                 ; $4438: $f8 $78
    db $fc                                        ; $443a: $fc
    ld l, h                                       ; $443b: $6c
    db $fc                                        ; $443c: $fc
    ld a, [hl+]                                   ; $443d: $2a
    nop                                           ; $443e: $00
    ld a, a                                       ; $443f: $7f
    ld [hl], $7f                                  ; $4440: $36 $7f
    ld l, e                                       ; $4442: $6b
    ld a, a                                       ; $4443: $7f
    ld b, a                                       ; $4444: $47
    ld a, a                                       ; $4445: $7f
    ld h, e                                       ; $4446: $63
    add b                                         ; $4447: $80
    pop bc                                        ; $4448: $c1
    inc b                                         ; $4449: $04
    ld b, d                                       ; $444a: $42
    rst $38                                       ; $444b: $ff
    ld b, c                                       ; $444c: $41
    ld a, a                                       ; $444d: $7f
    xor d                                         ; $444e: $aa
    ld e, c                                       ; $444f: $59
    ld l, d                                       ; $4450: $6a
    inc d                                         ; $4451: $14
    sbc c                                         ; $4452: $99
    ld a, [hl+]                                   ; $4453: $2a
    reti                                          ; $4454: $d9


    inc b                                         ; $4455: $04
    nop                                           ; $4456: $00
    db $dd                                        ; $4457: $dd
    ld [$5208], sp                                ; $4458: $08 $08 $52
    cp c                                          ; $445b: $b9
    add b                                         ; $445c: $80
    jr nc, jr_0c0_448b                            ; $445d: $30 $2c

    ld bc, $81fe                                  ; $445f: $01 $fe $81
    ld a, a                                       ; $4462: $7f
    inc bc                                        ; $4463: $03
    rst $38                                       ; $4464: $ff
    rlca                                          ; $4465: $07
    ld h, c                                       ; $4466: $61
    ei                                            ; $4467: $fb
    jr nc, @+$1e                                  ; $4468: $30 $1c

    cp $18                                        ; $446a: $fe $18
    pop bc                                        ; $446c: $c1
    cp [hl]                                       ; $446d: $be
    ldh [$df], a                                  ; $446e: $e0 $df
    ld h, b                                       ; $4470: $60
    ld [de], a                                    ; $4471: $12
    jr nz, @+$01                                  ; $4472: $20 $ff

    add c                                         ; $4474: $81
    inc c                                         ; $4475: $0c
    dec b                                         ; $4476: $05
    add e                                         ; $4477: $83
    cp $87                                        ; $4478: $fe $87
    cp $87                                        ; $447a: $fe $87
    nop                                           ; $447c: $00
    db $fc                                        ; $447d: $fc
    push af                                       ; $447e: $f5
    ldh [$ea], a                                  ; $447f: $e0 $ea
    ret nz                                        ; $4481: $c0

    db $dd                                        ; $4482: $dd
    add b                                         ; $4483: $80
    jp z, $8000                                   ; $4484: $ca $00 $80

    or a                                          ; $4487: $b7
    ld bc, $026b                                  ; $4488: $01 $6b $02

jr_0c0_448b:
    db $d3                                        ; $448b: $d3
    nop                                           ; $448c: $00
    xor e                                         ; $448d: $ab
    nop                                           ; $448e: $00
    nop                                           ; $448f: $00
    ld a, [hl]                                    ; $4490: $7e
    inc b                                         ; $4491: $04

jr_0c0_4492:
    rst $38                                       ; $4492: $ff
    nop                                           ; $4493: $00
    rst $08                                       ; $4494: $cf
    dec b                                         ; $4495: $05
    sbc a                                         ; $4496: $9f
    nop                                           ; $4497: $00
    ld a, [bc]                                    ; $4498: $0a
    rst $38                                       ; $4499: $ff
    dec [hl]                                      ; $449a: $35
    ld a, a                                       ; $449b: $7f
    ld l, a                                       ; $449c: $6f
    db $fc                                        ; $449d: $fc
    ld e, a                                       ; $449e: $5f
    ld hl, sp+$00                                 ; $449f: $f8 $00
    cp a                                          ; $44a1: $bf
    ld a, a                                       ; $44a2: $7f
    ld c, h                                       ; $44a3: $4c
    rst $38                                       ; $44a4: $ff
    ld a, [hl+]                                   ; $44a5: $2a
    rst $38                                       ; $44a6: $ff
    ld d, l                                       ; $44a7: $55
    rst $38                                       ; $44a8: $ff
    ld b, b                                       ; $44a9: $40
    cp a                                          ; $44aa: $bf
    sbc d                                         ; $44ab: $9a
    inc l                                         ; $44ac: $2c
    db $fd                                        ; $44ad: $fd
    ld h, b                                       ; $44ae: $60
    rst $30                                       ; $44af: $f7
    inc bc                                        ; $44b0: $03
    ei                                            ; $44b1: $fb
    ld d, b                                       ; $44b2: $50
    inc b                                         ; $44b3: $04
    rst $38                                       ; $44b4: $ff
    xor c                                         ; $44b5: $a9
    rst $38                                       ; $44b6: $ff
    cp $1f                                        ; $44b7: $fe $1f
    db $fd                                        ; $44b9: $fd
    inc b                                         ; $44ba: $04
    ld bc, $40ff                                  ; $44bb: $01 $ff $40
    ld a, [hl]                                    ; $44be: $7e
    inc [hl]                                      ; $44bf: $34
    nop                                           ; $44c0: $00
    push af                                       ; $44c1: $f5
    ld h, b                                       ; $44c2: $60
    db $fc                                        ; $44c3: $fc
    ld [$a4fe], sp                                ; $44c4: $08 $fe $a4
    nop                                           ; $44c7: $00
    db $fc                                        ; $44c8: $fc
    ld d, b                                       ; $44c9: $50
    db $fd                                        ; $44ca: $fd
    add sp, -$02                                  ; $44cb: $e8 $fe
    ld hl, sp-$49                                 ; $44cd: $f8 $b7
    rra                                           ; $44cf: $1f
    inc b                                         ; $44d0: $04
    ret c                                         ; $44d1: $d8

    rrca                                          ; $44d2: $0f
    ccf                                           ; $44d3: $3f
    rra                                           ; $44d4: $1f
    dec d                                         ; $44d5: $15
    or [hl]                                       ; $44d6: $b6
    inc bc                                        ; $44d7: $03
    inc e                                         ; $44d8: $1c
    nop                                           ; $44d9: $00
    ld [$1f3f], sp                                ; $44da: $08 $3f $1f
    cp d                                          ; $44dd: $ba
    jr jr_0c0_4492                                ; $44de: $18 $b2

    dec c                                         ; $44e0: $0d
    pop bc                                        ; $44e1: $c1
    rst $38                                       ; $44e2: $ff
    ld [hl], c                                    ; $44e3: $71
    nop                                           ; $44e4: $00
    ccf                                           ; $44e5: $3f
    rra                                           ; $44e6: $1f
    rrca                                          ; $44e7: $0f
    rrca                                          ; $44e8: $0f
    inc b                                         ; $44e9: $04
    add c                                         ; $44ea: $81
    add b                                         ; $44eb: $80
    ldh [rP1], a                                  ; $44ec: $e0 $00
    ld b, b                                       ; $44ee: $40
    ld [$d015], a                                 ; $44ef: $ea $15 $d0
    cpl                                           ; $44f2: $2f
    and b                                         ; $44f3: $a0
    ld e, a                                       ; $44f4: $5f
    add b                                         ; $44f5: $80
    ld b, b                                       ; $44f6: $40
    ld a, a                                       ; $44f7: $7f
    adc h                                         ; $44f8: $8c
    nop                                           ; $44f9: $00
    ld e, a                                       ; $44fa: $5f
    ld a, a                                       ; $44fb: $7f
    ccf                                           ; $44fc: $3f
    ld bc, $6700                                  ; $44fd: $01 $00 $67
    ld h, b                                       ; $4500: $60
    sbc b                                         ; $4501: $98
    jp z, $ce1c                                   ; $4502: $ca $1c $ce

    inc c                                         ; $4505: $0c
    add b                                         ; $4506: $80
    ld a, a                                       ; $4507: $7f
    and d                                         ; $4508: $a2
    db $dd                                        ; $4509: $dd
    ld b, h                                       ; $450a: $44
    nop                                           ; $450b: $00
    ld a, a                                       ; $450c: $7f
    ld a, [hl+]                                   ; $450d: $2a
    ld a, a                                       ; $450e: $7f
    inc d                                         ; $450f: $14
    ccf                                           ; $4510: $3f
    jr jr_0c0_4552                                ; $4511: $18 $3f

    inc e                                         ; $4513: $1c
    ld [hl+], a                                   ; $4514: $22
    rra                                           ; $4515: $1f
    ld c, $02                                     ; $4516: $0e $02
    nop                                           ; $4518: $00
    dec c                                         ; $4519: $0d
    ccf                                           ; $451a: $3f
    ld [hl-], a                                   ; $451b: $32
    call nc, Call_000_3200                        ; $451c: $d4 $00 $32
    nop                                           ; $451f: $00
    pop af                                        ; $4520: $f1
    ld h, d                                       ; $4521: $62
    or c                                          ; $4522: $b1
    and d                                         ; $4523: $a2
    ld [hl], c                                    ; $4524: $71
    ld h, d                                       ; $4525: $62
    pop hl                                        ; $4526: $e1
    ld b, d                                       ; $4527: $42
    nop                                           ; $4528: $00
    pop hl                                        ; $4529: $e1
    jp nz, $83c1                                  ; $452a: $c2 $c1 $83

    ld a, a                                       ; $452d: $7f
    inc bc                                        ; $452e: $03
    db $fd                                        ; $452f: $fd
    add c                                         ; $4530: $81
    jp Jump_000_05f2                              ; $4531: $c3 $f2 $05


    call z, $c00c                                 ; $4534: $cc $0c $c0
    ccf                                           ; $4537: $3f
    ld [$4e15], a                                 ; $4538: $ea $15 $4e
    dec e                                         ; $453b: $1d
    ld b, d                                       ; $453c: $42
    jr jr_0c0_453f                                ; $453d: $18 $00

jr_0c0_453f:
    dec b                                         ; $453f: $05
    ld a, [$50af]                                 ; $4540: $fa $af $50
    add a                                         ; $4543: $87
    db $fc                                        ; $4544: $fc
    adc [hl]                                      ; $4545: $8e
    ld a, [$8f40]                                 ; $4546: $fa $40 $8f
    ld [bc], a                                    ; $4549: $02
    nop                                           ; $454a: $00
    sbc a                                         ; $454b: $9f
    ldh a, [$9f]                                  ; $454c: $f0 $9f
    db $f4                                        ; $454e: $f4
    sbc a                                         ; $454f: $9f
    or $00                                        ; $4550: $f6 $00

jr_0c0_4552:
    rst $38                                       ; $4552: $ff
    ld a, [c]                                     ; $4553: $f2
    ld [hl], a                                    ; $4554: $77
    nop                                           ; $4555: $00
    rst $08                                       ; $4556: $cf
    nop                                           ; $4557: $00
    sbc c                                         ; $4558: $99
    ld bc, $6702                                  ; $4559: $01 $02 $67
    nop                                           ; $455c: $00
    adc e                                         ; $455d: $8b
    ld bc, $00e7                                  ; $455e: $01 $e7 $00
    db $e4                                        ; $4561: $e4
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    ld bc, $5ff0                                  ; $4564: $01 $f0 $5f
    ldh a, [$bf]                                  ; $4567: $f0 $bf
    ldh [$7f], a                                  ; $4569: $e0 $7f
    ldh [rDIV], a                                 ; $456b: $e0 $04
    ld [$ff18], sp                                ; $456d: $08 $18 $ff
    ret nz                                        ; $4570: $c0

    ld a, a                                       ; $4571: $7f
    inc l                                         ; $4572: $2c
    inc bc                                        ; $4573: $03
    ld [bc], a                                    ; $4574: $02
    ld h, b                                       ; $4575: $60
    ld a, l                                       ; $4576: $7d
    ld hl, sp+$3f                                 ; $4577: $f8 $3f
    nop                                           ; $4579: $00
    ldh a, [$3d]                                  ; $457a: $f0 $3d
    ld hl, sp+$1f                                 ; $457c: $f8 $1f
    db $f4                                        ; $457e: $f4
    rra                                           ; $457f: $1f
    ld a, [$000f]                                 ; $4580: $fa $0f $00
    db $fc                                        ; $4583: $fc
    rrca                                          ; $4584: $0f
    cp $0f                                        ; $4585: $fe $0f
    db $fd                                        ; $4587: $fd
    rst $08                                       ; $4588: $cf
    ld c, $e7                                     ; $4589: $0e $e7
    inc c                                         ; $458b: $0c
    add c                                         ; $458c: $81
    ldh a, [$c0]                                  ; $458d: $f0 $c0
    db $fd                                        ; $458f: $fd
    ld de, $7d06                                  ; $4590: $11 $06 $7d
    ld b, $7f                                     ; $4593: $06 $7f
    rst $38                                       ; $4595: $ff
    nop                                           ; $4596: $00
    ld a, a                                       ; $4597: $7f
    ldh a, [$60]                                  ; $4598: $f0 $60
    jp z, Jump_0c0_5f80                           ; $459a: $ca $80 $5f

    rlca                                          ; $459d: $07
    rst $38                                       ; $459e: $ff
    nop                                           ; $459f: $00

jr_0c0_45a0:
    ld a, $fe                                     ; $45a0: $3e $fe
    ld a, [$c2fe]                                 ; $45a2: $fa $fe $c2
    rst $38                                       ; $45a5: $ff
    cp $ff                                        ; $45a6: $fe $ff
    nop                                           ; $45a8: $00
    cp $0f                                        ; $45a9: $fe $0f
    ld [bc], a                                    ; $45ab: $02
    cp a                                          ; $45ac: $bf
    rrca                                          ; $45ad: $0f
    rst $38                                       ; $45ae: $ff
    cp $f2                                        ; $45af: $fe $f2
    nop                                           ; $45b1: $00
    di                                            ; $45b2: $f3
    ld [hl], d                                    ; $45b3: $72
    ld d, e                                       ; $45b4: $53
    ld a, d                                       ; $45b5: $7a
    ld [hl], e                                    ; $45b6: $73
    ld a, [hl]                                    ; $45b7: $7e
    ld d, e                                       ; $45b8: $53
    sbc $70                                       ; $45b9: $de $70
    ld [hl], l                                    ; $45bb: $75
    sbc $05                                       ; $45bc: $de $05
    ld a, h                                       ; $45be: $7c
    ld b, $e2                                     ; $45bf: $06 $e2
    inc e                                         ; $45c1: $1c
    dec d                                         ; $45c2: $15
    ld [$50af], a                                 ; $45c3: $ea $af $50
    nop                                           ; $45c6: $00
    inc c                                         ; $45c7: $0c
    rrca                                          ; $45c8: $0f
    dec c                                         ; $45c9: $0d
    ld c, [hl]                                    ; $45ca: $4e
    rlca                                          ; $45cb: $07
    ld c, $06                                     ; $45cc: $0e $06
    rrca                                          ; $45ce: $0f
    add b                                         ; $45cf: $80
    inc b                                         ; $45d0: $04
    ld [$0f26], sp                                ; $45d1: $08 $26 $0f
    ld b, $0f                                     ; $45d4: $06 $0f
    sub d                                         ; $45d6: $92
    pop bc                                        ; $45d7: $c1
    add d                                         ; $45d8: $82
    nop                                           ; $45d9: $00
    pop bc                                        ; $45da: $c1
    ld c, d                                       ; $45db: $4a
    pop bc                                        ; $45dc: $c1
    add $71                                       ; $45dd: $c6 $71
    and d                                         ; $45df: $a2
    ld h, c                                       ; $45e0: $61
    and d                                         ; $45e1: $a2
    nop                                           ; $45e2: $00
    ld [hl], c                                    ; $45e3: $71
    and $39                                       ; $45e4: $e6 $39
    ld d, d                                       ; $45e6: $52
    or c                                          ; $45e7: $b1
    db $db                                        ; $45e8: $db
    inc h                                         ; $45e9: $24
    inc c                                         ; $45ea: $0c
    ld h, b                                       ; $45eb: $60
    di                                            ; $45ec: $f3
    jp nz, $b01e                                  ; $45ed: $c2 $1e $b0

    ld bc, $07fd                                  ; $45f0: $01 $fd $07
    ei                                            ; $45f3: $fb
    ld l, e                                       ; $45f4: $6b
    sub h                                         ; $45f5: $94
    ldh [$be], a                                  ; $45f6: $e0 $be
    ld e, $22                                     ; $45f8: $1e $22
    dec e                                         ; $45fa: $1d
    ret nc                                        ; $45fb: $d0

    dec b                                         ; $45fc: $05
    dec e                                         ; $45fd: $1d
    rst $18                                       ; $45fe: $df
    jr c, jr_0c0_45a0                             ; $45ff: $38 $9f

    ld a, d                                       ; $4601: $7a
    ld [bc], a                                    ; $4602: $02
    ld e, a                                       ; $4603: $5f
    cp l                                          ; $4604: $bd
    sbc a                                         ; $4605: $9f
    ld a, b                                       ; $4606: $78
    rra                                           ; $4607: $1f
    db $fd                                        ; $4608: $fd
    ld [$bf00], sp                                ; $4609: $08 $00 $bf
    add b                                         ; $460c: $80
    call nz, $d708                                ; $460d: $c4 $08 $d7
    nop                                           ; $4610: $00
    xor d                                         ; $4611: $aa
    nop                                           ; $4612: $00
    push de                                       ; $4613: $d5
    nop                                           ; $4614: $00
    db $ec                                        ; $4615: $ec
    inc bc                                        ; $4616: $03
    inc b                                         ; $4617: $04
    or $82                                        ; $4618: $f6 $82
    ei                                            ; $461a: $fb
    ld hl, $fec0                                  ; $461b: $21 $c0 $fe
    dec b                                         ; $461e: $05
    ret z                                         ; $461f: $c8

    ld [$c000], sp                                ; $4620: $08 $00 $c0
    ld a, a                                       ; $4623: $7f
    ldh [$7f], a                                  ; $4624: $e0 $7f
    ldh a, [$3f]                                  ; $4626: $f0 $3f
    ld [hl], b                                    ; $4628: $70
    rra                                           ; $4629: $1f
    ld e, $07                                     ; $462a: $1e $07
    cp $07                                        ; $462c: $fe $07
    sub l                                         ; $462e: $95
    ld b, $96                                     ; $462f: $06 $96
    ld a, [bc]                                    ; $4631: $0a
    sbc d                                         ; $4632: $9a
    ld a, [bc]                                    ; $4633: $0a
    ld [hl+], a                                   ; $4634: $22
    rlca                                          ; $4635: $07
    ld a, a                                       ; $4636: $7f
    nop                                           ; $4637: $00
    db $fd                                        ; $4638: $fd
    dec a                                         ; $4639: $3d
    cp $9e                                        ; $463a: $fe $9e
    rst $38                                       ; $463c: $ff
    rst $08                                       ; $463d: $cf
    rst $38                                       ; $463e: $ff
    inc sp                                        ; $463f: $33
    nop                                           ; $4640: $00
    sbc a                                         ; $4641: $9f
    ld l, h                                       ; $4642: $6c
    rlca                                          ; $4643: $07
    ei                                            ; $4644: $fb
    add c                                         ; $4645: $81
    ld a, [hl]                                    ; $4646: $7e
    sbc a                                         ; $4647: $9f
    sbc d                                         ; $4648: $9a
    nop                                           ; $4649: $00
    ld c, a                                       ; $464a: $4f
    ld c, l                                       ; $464b: $4d
    and a                                         ; $464c: $a7
    and h                                         ; $464d: $a4
    ld d, e                                       ; $464e: $53
    ld d, d                                       ; $464f: $52
    jp hl                                         ; $4650: $e9


    jp hl                                         ; $4651: $e9


    nop                                           ; $4652: $00
    db $f4                                        ; $4653: $f4
    ld [hl], h                                    ; $4654: $74
    rst $38                                       ; $4655: $ff
    rra                                           ; $4656: $1f
    rst $38                                       ; $4657: $ff
    rst $00                                       ; $4658: $c7
    rst $38                                       ; $4659: $ff
    rst $30                                       ; $465a: $f7
    ld h, e                                       ; $465b: $63
    adc b                                         ; $465c: $88
    add d                                         ; $465d: $82
    ld [hl], $42                                  ; $465e: $36 $42
    nop                                           ; $4660: $00
    sbc a                                         ; $4661: $9f
    push af                                       ; $4662: $f5
    ld a, [bc]                                    ; $4663: $0a
    ld l, $2e                                     ; $4664: $2e $2e
    sub b                                         ; $4666: $90
    ld [$870c], sp                                ; $4667: $08 $0c $87
    ld a, e                                       ; $466a: $7b
    ld d, a                                       ; $466b: $57
    xor b                                         ; $466c: $a8
    inc a                                         ; $466d: $3c
    dec de                                        ; $466e: $1b
    or d                                          ; $466f: $b2
    dec l                                         ; $4670: $2d
    ld b, $0f                                     ; $4671: $06 $0f
    nop                                           ; $4673: $00
    or $0f                                        ; $4674: $f6 $0f
    ld b, $4f                                     ; $4676: $06 $4f
    ld b, $1f                                     ; $4678: $06 $1f
    ld c, $3f                                     ; $467a: $0e $3f
    nop                                           ; $467c: $00
    ld l, $1f                                     ; $467d: $2e $1f
    ld a, [bc]                                    ; $467f: $0a
    ld a, a                                       ; $4680: $7f
    ld c, $bf                                     ; $4681: $0e $bf
    jp nc, $0231                                  ; $4683: $d2 $31 $02

    halt                                          ; $4686: $76
    sbc c                                         ; $4687: $99
    or $19                                        ; $4688: $f6 $19
    ld l, d                                       ; $468a: $6a
    sbc c                                         ; $468b: $99
    adc b                                         ; $468c: $88
    ld a, [bc]                                    ; $468d: $0a
    xor [hl]                                      ; $468e: $ae
    add a                                         ; $468f: $87
    adc h                                         ; $4690: $8c
    ld [bc], a                                    ; $4691: $02
    rrca                                          ; $4692: $0f
    rst $30                                       ; $4693: $f7
    rlca                                          ; $4694: $07
    ei                                            ; $4695: $fb
    and h                                         ; $4696: $a4
    rlca                                          ; $4697: $07
    ldh [rTMA], a                                 ; $4698: $e0 $06
    sbc b                                         ; $469a: $98
    rrca                                          ; $469b: $0f
    inc sp                                        ; $469c: $33
    push de                                       ; $469d: $d5
    ld a, [hl+]                                   ; $469e: $2a
    db $10                                        ; $469f: $10
    add hl, hl                                    ; $46a0: $29
    sub b                                         ; $46a1: $90
    rra                                           ; $46a2: $1f
    ld a, a                                       ; $46a3: $7f
    add b                                         ; $46a4: $80
    ldh a, [$4e]                                  ; $46a5: $f0 $4e
    db $fc                                        ; $46a7: $fc
    ld c, $80                                     ; $46a8: $0e $80
    ret nc                                        ; $46aa: $d0

    rrca                                          ; $46ab: $0f
    ld de, $29ff                                  ; $46ac: $11 $ff $29
    rst $28                                       ; $46af: $ef
    add hl, hl                                    ; $46b0: $29
    rst $28                                       ; $46b1: $ef
    ld l, c                                       ; $46b2: $69
    nop                                           ; $46b3: $00
    rst $28                                       ; $46b4: $ef
    ld a, c                                       ; $46b5: $79
    rst $28                                       ; $46b6: $ef
    ld a, c                                       ; $46b7: $79
    rst $08                                       ; $46b8: $cf
    sbc a                                         ; $46b9: $9f
    ld l, e                                       ; $46ba: $6b
    rrca                                          ; $46bb: $0f
    nop                                           ; $46bc: $00
    db $fd                                        ; $46bd: $fd
    rrca                                          ; $46be: $0f
    or $87                                        ; $46bf: $f6 $87
    ld a, a                                       ; $46c1: $7f
    rlca                                          ; $46c2: $07
    ei                                            ; $46c3: $fb
    add e                                         ; $46c4: $83
    nop                                           ; $46c5: $00
    ld a, a                                       ; $46c6: $7f
    db $d3                                        ; $46c7: $d3
    dec l                                         ; $46c8: $2d
    db $eb                                        ; $46c9: $eb
    inc d                                         ; $46ca: $14
    rst $30                                       ; $46cb: $f7
    db $10                                        ; $46cc: $10
    cp d                                          ; $46cd: $ba
    nop                                           ; $46ce: $00
    sbc b                                         ; $46cf: $98
    rst $38                                       ; $46d0: $ff
    add b                                         ; $46d1: $80
    or $62                                        ; $46d2: $f6 $62
    ei                                            ; $46d4: $fb
    ret nz                                        ; $46d5: $c0

    db $fd                                        ; $46d6: $fd
    nop                                           ; $46d7: $00
    ld d, b                                       ; $46d8: $50
    rst $38                                       ; $46d9: $ff
    xor b                                         ; $46da: $a8
    rst $38                                       ; $46db: $ff
    sub $b8                                       ; $46dc: $d6 $b8
    rrca                                          ; $46de: $0f
    cp $00                                        ; $46df: $fe $00
    rlca                                          ; $46e1: $07
    xor e                                         ; $46e2: $ab
    ld bc, $0057                                  ; $46e3: $01 $57 $00
    and e                                         ; $46e6: $a3
    nop                                           ; $46e7: $00
    pop de                                        ; $46e8: $d1
    ld a, [bc]                                    ; $46e9: $0a
    add b                                         ; $46ea: $80
    ld a, [$f440]                                 ; $46eb: $fa $40 $f4
    and b                                         ; $46ee: $a0
    rla                                           ; $46ef: $17
    nop                                           ; $46f0: $00
    ld [bc], a                                    ; $46f1: $02
    rlca                                          ; $46f2: $07
    ldh [$85], a                                  ; $46f3: $e0 $85
    db $fc                                        ; $46f5: $fc
    nop                                           ; $46f6: $00
    sbc $0f                                       ; $46f7: $de $0f
    ld b, a                                       ; $46f9: $47
    ld bc, $59d0                                  ; $46fa: $01 $d0 $59
    add b                                         ; $46fd: $80
    and c                                         ; $46fe: $a1
    rlca                                          ; $46ff: $07
    call z, Call_000_390e                         ; $4700: $cc $0e $39
    xor h                                         ; $4703: $ac
    dec bc                                        ; $4704: $0b
    ld b, e                                       ; $4705: $43
    cp a                                          ; $4706: $bf
    adc [hl]                                      ; $4707: $8e
    rra                                           ; $4708: $1f
    db $10                                        ; $4709: $10
    rra                                           ; $470a: $1f
    ld l, e                                       ; $470b: $6b
    sub h                                         ; $470c: $94
    jr nc, jr_0c0_478e                            ; $470d: $30 $7f

    or c                                          ; $470f: $b1
    jr jr_0c0_471b                                ; $4710: $18 $09

    ld e, $1c                                     ; $4712: $1e $1c
    ld d, l                                       ; $4714: $55
    xor d                                         ; $4715: $aa
    cpl                                           ; $4716: $2f
    ret nc                                        ; $4717: $d0

    ld [hl], b                                    ; $4718: $70
    ldh a, [rWY]                                  ; $4719: $f0 $4a

jr_0c0_471b:
    nop                                           ; $471b: $00
    ld c, h                                       ; $471c: $4c
    cpl                                           ; $471d: $2f
    sbc h                                         ; $471e: $9c
    rrca                                          ; $471f: $0f
    rrca                                          ; $4720: $0f
    rst $30                                       ; $4721: $f7
    add a                                         ; $4722: $87
    ld a, e                                       ; $4723: $7b
    ld [$bf41], sp                                ; $4724: $08 $41 $bf
    add c                                         ; $4727: $81
    ld a, [hl]                                    ; $4728: $7e
    jp nz, $a00e                                  ; $4729: $c2 $0e $a0

    ld e, a                                       ; $472c: $5f
    push de                                       ; $472d: $d5
    db $10                                        ; $472e: $10
    ld a, [hl+]                                   ; $472f: $2a
    ret nz                                        ; $4730: $c0

    cp a                                          ; $4731: $bf
    ret nc                                        ; $4732: $d0

    jr c, jr_0c0_473a                             ; $4733: $38 $05

    ld a, [$54ab]                                 ; $4735: $fa $ab $54
    nop                                           ; $4738: $00
    ld a, [bc]                                    ; $4739: $0a

jr_0c0_473a:
    rra                                           ; $473a: $1f
    cp [hl]                                       ; $473b: $be
    rra                                           ; $473c: $1f
    ld a, [de]                                    ; $473d: $1a
    ccf                                           ; $473e: $3f
    ld d, $3f                                     ; $473f: $16 $3f
    nop                                           ; $4741: $00
    ld a, [hl+]                                   ; $4742: $2a
    ccf                                           ; $4743: $3f
    jr nc, @+$81                                  ; $4744: $30 $7f

    ld h, d                                       ; $4746: $62
    ld a, a                                       ; $4747: $7f
    ld d, b                                       ; $4748: $50
    ld a, a                                       ; $4749: $7f
    ld [$5daa], sp                                ; $474a: $08 $aa $5d
    ld l, d                                       ; $474d: $6a
    sbc l                                         ; $474e: $9d
    sub b                                         ; $474f: $90
    inc de                                        ; $4750: $13
    reti                                          ; $4751: $d9


    ld c, [hl]                                    ; $4752: $4e
    cp c                                          ; $4753: $b9
    adc a                                         ; $4754: $8f
    sub b                                         ; $4755: $90
    dec bc                                        ; $4756: $0b
    rst $38                                       ; $4757: $ff
    rst $38                                       ; $4758: $ff
    xor e                                         ; $4759: $ab
    or h                                          ; $475a: $b4
    dec b                                         ; $475b: $05
    sub $3f                                       ; $475c: $d6 $3f
    ld sp, $1007                                  ; $475e: $31 $07 $10
    ld h, b                                       ; $4761: $60
    ld b, b                                       ; $4762: $40
    sbc d                                         ; $4763: $9a
    db $f4                                        ; $4764: $f4
    ld d, a                                       ; $4765: $57
    rst $28                                       ; $4766: $ef
    rst $00                                       ; $4767: $c7
    ld a, l                                       ; $4768: $7d
    rst $00                                       ; $4769: $c7
    ld [hl], h                                    ; $476a: $74
    rst $20                                       ; $476b: $e7
    nop                                           ; $476c: $00
    ld a, [hl]                                    ; $476d: $7e
    jp $e76e                                      ; $476e: $c3 $6e $e7


    ld l, e                                       ; $4771: $6b
    pop hl                                        ; $4772: $e1
    ld a, l                                       ; $4773: $7d
    pop hl                                        ; $4774: $e1
    ld b, $77                                     ; $4775: $06 $77
    pop af                                        ; $4777: $f1
    rst $38                                       ; $4778: $ff
    rst $38                                       ; $4779: $ff
    ld d, [hl]                                    ; $477a: $56
    rst $30                                       ; $477b: $f7
    nop                                           ; $477c: $00
    and $28                                       ; $477d: $e6 $28
    ld hl, sp+$00                                 ; $477f: $f8 $00
    cp a                                          ; $4781: $bf
    rst $38                                       ; $4782: $ff
    ld [$f6bf], a                                 ; $4783: $ea $bf $f6
    ld e, a                                       ; $4786: $5f
    ei                                            ; $4787: $fb
    rrca                                          ; $4788: $0f
    ld [$07fd], sp                                ; $4789: $08 $fd $07
    cp $03                                        ; $478c: $fe $03

jr_0c0_478e:
    and $14                                       ; $478e: $e6 $14
    db $eb                                        ; $4790: $eb
    add b                                         ; $4791: $80
    cp $01                                        ; $4792: $fe $01
    ld b, b                                       ; $4794: $40
    rst $18                                       ; $4795: $df
    add b                                         ; $4796: $80
    rst $38                                       ; $4797: $ff
    ld c, c                                       ; $4798: $49
    rst $38                                       ; $4799: $ff
    or h                                          ; $479a: $b4
    xor [hl]                                      ; $479b: $ae
    rlca                                          ; $479c: $07
    nop                                           ; $479d: $00
    push af                                       ; $479e: $f5
    ccf                                           ; $479f: $3f
    cp $73                                        ; $47a0: $fe $73
    nop                                           ; $47a2: $00
    cp c                                          ; $47a3: $b9
    nop                                           ; $47a4: $00
    ld e, d                                       ; $47a5: $5a

jr_0c0_47a6:
    nop                                           ; $47a6: $00
    nop                                           ; $47a7: $00
    db $ed                                        ; $47a8: $ed
    nop                                           ; $47a9: $00
    cp $a0                                        ; $47aa: $fe $a0
    rst $38                                       ; $47ac: $ff
    ld b, d                                       ; $47ad: $42
    rst $30                                       ; $47ae: $f7
    nop                                           ; $47af: $00
    and c                                         ; $47b0: $a1
    ld sp, hl                                     ; $47b1: $f9
    ldh a, [$c0]                                  ; $47b2: $f0 $c0
    ld a, a                                       ; $47b4: $7f
    ld a, b                                       ; $47b5: $78
    ccf                                           ; $47b6: $3f
    cp [hl]                                       ; $47b7: $be
    ld [bc], a                                    ; $47b8: $02
    rlca                                          ; $47b9: $07
    dec de                                        ; $47ba: $1b
    ld bc, $008d                                  ; $47bb: $01 $8d $00
    halt                                          ; $47be: $76
    ld d, $00                                     ; $47bf: $16 $00
    ld a, [$45e0]                                 ; $47c1: $fa $e0 $45
    ld c, $e3                                     ; $47c4: $0e $e3
    rla                                           ; $47c6: $17
    jr nc, jr_0c0_47cb                            ; $47c7: $30 $02

    ccf                                           ; $47c9: $3f
    ld a, b                                       ; $47ca: $78

jr_0c0_47cb:
    rra                                           ; $47cb: $1f
    inc e                                         ; $47cc: $1c
    rlca                                          ; $47cd: $07
    db $10                                        ; $47ce: $10
    rst $38                                       ; $47cf: $ff
    rst $38                                       ; $47d0: $ff
    ld c, b                                       ; $47d1: $48
    inc b                                         ; $47d2: $04
    ld d, e                                       ; $47d3: $53
    rst $38                                       ; $47d4: $ff
    rst $38                                       ; $47d5: $ff
    xor d                                         ; $47d6: $aa
    rst $38                                       ; $47d7: $ff
    ld d, l                                       ; $47d8: $55
    dec d                                         ; $47d9: $15
    db $10                                        ; $47da: $10

jr_0c0_47db:
    ld h, b                                       ; $47db: $60
    ld d, h                                       ; $47dc: $54
    ret nz                                        ; $47dd: $c0

    ld d, b                                       ; $47de: $50
    add h                                         ; $47df: $84
    jr nc, jr_0c0_4842                            ; $47e0: $30 $60

    ld l, d                                       ; $47e2: $6a
    ld l, [hl]                                    ; $47e3: $6e
    ld [bc], a                                    ; $47e4: $02
    add b                                         ; $47e5: $80
    ld b, [hl]                                    ; $47e6: $46
    dec sp                                        ; $47e7: $3b
    ld h, h                                       ; $47e8: $64
    ld a, a                                       ; $47e9: $7f
    jr nc, jr_0c0_486b                            ; $47ea: $30 $7f

    jr c, jr_0c0_486d                             ; $47ec: $38 $7f

    inc a                                         ; $47ee: $3c
    nop                                           ; $47ef: $00
    ccf                                           ; $47f0: $3f
    inc d                                         ; $47f1: $14
    cp a                                          ; $47f2: $bf
    ld d, $3f                                     ; $47f3: $16 $3f
    ld [de], a                                    ; $47f5: $12
    rra                                           ; $47f6: $1f
    dec e                                         ; $47f7: $1d
    ld b, b                                       ; $47f8: $40
    dec de                                        ; $47f9: $1b
    ret nz                                        ; $47fa: $c0

    dec bc                                        ; $47fb: $0b
    sub d                                         ; $47fc: $92
    ld [hl], c                                    ; $47fd: $71
    ld h, d                                       ; $47fe: $62
    or c                                          ; $47ff: $b1
    ld [hl+], a                                   ; $4800: $22
    pop af                                        ; $4801: $f1
    jr z, jr_0c0_47a6                             ; $4802: $28 $a2

    ld [hl], c                                    ; $4804: $71
    ret nz                                        ; $4805: $c0

    dec bc                                        ; $4806: $0b
    ld bc, $0530                                  ; $4807: $01 $30 $05
    rlca                                          ; $480a: $07
    cp $0f                                        ; $480b: $fe $0f
    nop                                           ; $480d: $00
    db $fc                                        ; $480e: $fc
    inc c                                         ; $480f: $0c
    ld hl, sp+$1d                                 ; $4810: $f8 $1d
    ld hl, sp+$1f                                 ; $4812: $f8 $1f
    ldh a, [$1f]                                  ; $4814: $f0 $1f
    nop                                           ; $4816: $00
    ldh a, [$fa]                                  ; $4817: $f0 $fa
    ldh a, [$bd]                                  ; $4819: $f0 $bd
    jr c, jr_0c0_489c                             ; $481b: $38 $7f

    add hl, sp                                    ; $481d: $39
    rst $18                                       ; $481e: $df
    nop                                           ; $481f: $00
    ld c, h                                       ; $4820: $4c
    rst $38                                       ; $4821: $ff
    dec c                                         ; $4822: $0d
    cp $2e                                        ; $4823: $fe $2e
    ld a, a                                       ; $4825: $7f
    ld [hl], $ff                                  ; $4826: $36 $ff
    nop                                           ; $4828: $00
    ld l, a                                       ; $4829: $6f
    adc $c7                                       ; $482a: $ce $c7
    db $e3                                        ; $482c: $e3
    ld b, c                                       ; $482d: $41
    push af                                       ; $482e: $f5
    ld h, h                                       ; $482f: $64
    ld a, e                                       ; $4830: $7b
    nop                                           ; $4831: $00
    ld sp, $38bb                                  ; $4832: $31 $bb $38
    db $fd                                        ; $4835: $fd
    sbc c                                         ; $4836: $99
    sbc $1c                                       ; $4837: $de $1c
    rst $18                                       ; $4839: $df
    ld h, b                                       ; $483a: $60
    ld c, h                                       ; $483b: $4c
    xor [hl]                                      ; $483c: $ae
    jr nz, jr_0c0_47db                            ; $483d: $20 $9c

    ld [bc], a                                    ; $483f: $02
    ldh [$3f], a                                  ; $4840: $e0 $3f

jr_0c0_4842:
    or b                                          ; $4842: $b0
    rra                                           ; $4843: $1f
    sub b                                         ; $4844: $90
    jr c, jr_0c0_4866                             ; $4845: $38 $1f

    rra                                           ; $4847: $1f
    ret nc                                        ; $4848: $d0

    ld b, $e0                                     ; $4849: $06 $e0
    dec e                                         ; $484b: $1d
    ld d, b                                       ; $484c: $50
    ld hl, $ff48                                  ; $484d: $21 $48 $ff
    and l                                         ; $4850: $a5
    ld bc, $f2ff                                  ; $4851: $01 $ff $f2
    rst $38                                       ; $4854: $ff
    db $fd                                        ; $4855: $fd
    ccf                                           ; $4856: $3f
    cp $0f                                        ; $4857: $fe $0f
    adc d                                         ; $4859: $8a
    dec b                                         ; $485a: $05
    stop                                          ; $485b: $10 $00
    rst $38                                       ; $485d: $ff
    xor l                                         ; $485e: $ad
    ld e, $03                                     ; $485f: $1e $03
    ld a, [$ffd0]                                 ; $4861: $fa $d0 $ff
    ld [hl], b                                    ; $4864: $70
    and c                                         ; $4865: $a1

jr_0c0_4866:
    and d                                         ; $4866: $a2
    inc b                                         ; $4867: $04
    call nc, Call_000_0490                        ; $4868: $d4 $90 $04

jr_0c0_486b:
    db $f4                                        ; $486b: $f4
    xor a                                         ; $486c: $af

jr_0c0_486d:
    inc bc                                        ; $486d: $03
    ld d, e                                       ; $486e: $53
    ld c, $09                                     ; $486f: $0e $09
    ld b, $00                                     ; $4871: $06 $00
    sbc b                                         ; $4873: $98
    nop                                           ; $4874: $00
    xor $80                                       ; $4875: $ee $80
    dec d                                         ; $4877: $15
    ld c, $2c                                     ; $4878: $0e $2c
    ld a, [bc]                                    ; $487a: $0a
    ld h, b                                       ; $487b: $60
    add b                                         ; $487c: $80
    ld c, d                                       ; $487d: $4a
    nop                                           ; $487e: $00
    ld e, b                                       ; $487f: $58
    rrca                                          ; $4880: $0f
    inc a                                         ; $4881: $3c
    rlca                                          ; $4882: $07
    ld d, $03                                     ; $4883: $16 $03
    db $eb                                        ; $4885: $eb
    nop                                           ; $4886: $00
    ld bc, $0f09                                  ; $4887: $01 $09 $0f
    dec bc                                        ; $488a: $0b
    dec c                                         ; $488b: $0d
    ld c, $4d                                     ; $488c: $0e $4d
    dec b                                         ; $488e: $05
    nop                                           ; $488f: $00
    ld c, $07                                     ; $4890: $0e $07
    inc e                                         ; $4892: $1c
    dec b                                         ; $4893: $05
    ld l, $07                                     ; $4894: $2e $07
    inc c                                         ; $4896: $0c
    dec b                                         ; $4897: $05
    nop                                           ; $4898: $00
    ld c, $82                                     ; $4899: $0e $82
    sub c                                         ; $489b: $91

jr_0c0_489c:
    ld [bc], a                                    ; $489c: $02
    add c                                         ; $489d: $81
    add d                                         ; $489e: $82
    adc c                                         ; $489f: $89
    add d                                         ; $48a0: $82
    nop                                           ; $48a1: $00
    pop bc                                        ; $48a2: $c1
    ld b, d                                       ; $48a3: $42
    push hl                                       ; $48a4: $e5
    ld b, d                                       ; $48a5: $42
    pop bc                                        ; $48a6: $c1
    jp nc, $a261                                  ; $48a7: $d2 $61 $a2

    nop                                           ; $48aa: $00
    ld h, l                                       ; $48ab: $65
    add hl, sp                                    ; $48ac: $39
    ldh a, [$3e]                                  ; $48ad: $f0 $3e
    ldh a, [$3b]                                  ; $48af: $f0 $3b
    ldh a, [$36]                                  ; $48b1: $f0 $36
    nop                                           ; $48b3: $00
    ldh a, [$3f]                                  ; $48b4: $f0 $3f
    ldh [$39], a                                  ; $48b6: $e0 $39
    ldh [$3c], a                                  ; $48b8: $e0 $3c
    ldh [$3b], a                                  ; $48ba: $e0 $3b
    ld [bc], a                                    ; $48bc: $02
    ldh a, [$f3]                                  ; $48bd: $f0 $f3
    rst $18                                       ; $48bf: $df
    db $e3                                        ; $48c0: $e3
    cp a                                          ; $48c1: $bf
    pop bc                                        ; $48c2: $c1

jr_0c0_48c3:
    jp nc, $c104                                  ; $48c3: $d2 $04 $c1

    nop                                           ; $48c6: $00
    ld a, a                                       ; $48c7: $7f
    db $e3                                        ; $48c8: $e3
    ccf                                           ; $48c9: $3f
    cp a                                          ; $48ca: $bf
    rra                                           ; $48cb: $1f
    cp $4c                                        ; $48cc: $fe $4c
    ld a, a                                       ; $48ce: $7f
    nop                                           ; $48cf: $00
    dec h                                         ; $48d0: $25
    or a                                          ; $48d1: $b7
    rla                                           ; $48d2: $17
    rst $38                                       ; $48d3: $ff
    and e                                         ; $48d4: $a3
    db $db                                        ; $48d5: $db
    add e                                         ; $48d6: $83
    xor a                                         ; $48d7: $af
    nop                                           ; $48d8: $00
    adc e                                         ; $48d9: $8b
    rst $18                                       ; $48da: $df
    dec bc                                        ; $48db: $0b
    xor a                                         ; $48dc: $af
    inc bc                                        ; $48dd: $03
    rst $18                                       ; $48de: $df
    add e                                         ; $48df: $83
    ret nc                                        ; $48e0: $d0

    nop                                           ; $48e1: $00
    rra                                           ; $48e2: $1f
    ld a, b                                       ; $48e3: $78
    rra                                           ; $48e4: $1f
    ld hl, sp-$61                                 ; $48e5: $f8 $9f
    ld a, b                                       ; $48e7: $78
    ld c, a                                       ; $48e8: $4f
    ret c                                         ; $48e9: $d8

    nop                                           ; $48ea: $00
    rrca                                          ; $48eb: $0f
    cp h                                          ; $48ec: $bc
    rra                                           ; $48ed: $1f
    sbc h                                         ; $48ee: $9c
    adc a                                         ; $48ef: $8f
    cp h                                          ; $48f0: $bc
    rrca                                          ; $48f1: $0f
    ccf                                           ; $48f2: $3f
    ld [hl], b                                    ; $48f3: $70
    ld a, [$08b2]                                 ; $48f4: $fa $b2 $08
    ld a, [hl+]                                   ; $48f7: $2a
    dec c                                         ; $48f8: $0d
    ld b, b                                       ; $48f9: $40
    dec h                                         ; $48fa: $25
    ld l, b                                       ; $48fb: $68
    rst $38                                       ; $48fc: $ff
    inc h                                         ; $48fd: $24
    rst $30                                       ; $48fe: $f7
    nop                                           ; $48ff: $00
    ld a, [c]                                     ; $4900: $f2
    ei                                            ; $4901: $fb
    pop af                                        ; $4902: $f1
    rst $38                                       ; $4903: $ff
    ld e, b                                       ; $4904: $58
    rst $38                                       ; $4905: $ff
    xor [hl]                                      ; $4906: $ae
    ld a, a                                       ; $4907: $7f
    nop                                           ; $4908: $00
    or $3f                                        ; $4909: $f6 $3f
    db $eb                                        ; $490b: $eb
    db $dd                                        ; $490c: $dd
    nop                                           ; $490d: $00
    rst $28                                       ; $490e: $ef
    ld b, c                                       ; $490f: $41
    or $00                                        ; $4910: $f6 $00
    jr nz, @-$62                                  ; $4912: $20 $9c

    nop                                           ; $4914: $00
    rst $10                                       ; $4915: $d7
    add b                                         ; $4916: $80
    db $fd                                        ; $4917: $fd
    ld b, b                                       ; $4918: $40
    ld a, l                                       ; $4919: $7d
    call nz, $01b6                                ; $491a: $c4 $b6 $01
    sbc d                                         ; $491d: $9a
    add hl, de                                    ; $491e: $19
    ld [hl], b                                    ; $491f: $70
    rra                                           ; $4920: $1f
    jr c, jr_0c0_48c3                             ; $4921: $38 $a0

    nop                                           ; $4923: $00
    or h                                          ; $4924: $b4
    rlca                                          ; $4925: $07
    ld [bc], a                                    ; $4926: $02
    ld a, [$0403]                                 ; $4927: $fa $03 $04
    ld c, a                                       ; $492a: $4f
    adc l                                         ; $492b: $8d
    ld c, $f0                                     ; $492c: $0e $f0
    ld e, $36                                     ; $492e: $1e $36
    jr nz, jr_0c0_4951                            ; $4930: $20 $1f

    sbc [hl]                                      ; $4932: $9e
    ldh a, [rNR52]                                ; $4933: $f0 $26
    and $39                                       ; $4935: $e6 $39
    ld e, d                                       ; $4937: $5a
    or l                                          ; $4938: $b5
    jp nc, Jump_000_316e                          ; $4939: $d2 $6e $31

    ldh a, [rNR34]                                ; $493c: $f0 $1e
    ld [$543a], a                                 ; $493e: $ea $3a $54
    ld l, d                                       ; $4941: $6a
    ld [bc], a                                    ; $4942: $02
    and [hl]                                      ; $4943: $a6
    dec l                                         ; $4944: $2d
    nop                                           ; $4945: $00
    rrca                                          ; $4946: $0f
    dec b                                         ; $4947: $05
    ld [hl+], a                                   ; $4948: $22
    rst $38                                       ; $4949: $ff
    adc d                                         ; $494a: $8a
    cp [hl]                                       ; $494b: $be
    rlca                                          ; $494c: $07
    dec a                                         ; $494d: $3d
    ld sp, hl                                     ; $494e: $f9
    ccf                                           ; $494f: $3f
    ld l, b                                       ; $4950: $68

jr_0c0_4951:
    ld bc, $881b                                  ; $4951: $01 $1b $88
    adc $04                                       ; $4954: $ce $04
    rlca                                          ; $4956: $07
    cp $a7                                        ; $4957: $fe $a7
    adc $07                                       ; $4959: $ce $07
    or e                                          ; $495b: $b3
    ld bc, $00da                                  ; $495c: $01 $da $00
    db $10                                        ; $495f: $10
    ld l, l                                       ; $4960: $6d
    ld b, b                                       ; $4961: $40
    or d                                          ; $4962: $b2
    nop                                           ; $4963: $00
    db $fd                                        ; $4964: $fd
    ld [$40cb], sp                                ; $4965: $08 $cb $40
    add b                                         ; $4968: $80
    ret c                                         ; $4969: $d8

    dec b                                         ; $496a: $05
    ld [$02af], a                                 ; $496b: $ea $af $02
    rst $38                                       ; $496e: $ff
    ld b, e                                       ; $496f: $43
    ld e, a                                       ; $4970: $5f
    nop                                           ; $4971: $00
    ld b, $bf                                     ; $4972: $06 $bf
    ld c, $ff                                     ; $4974: $0e $ff
    ld d, $fe                                     ; $4976: $16 $fe
    xor h                                         ; $4978: $ac
    db $fd                                        ; $4979: $fd
    nop                                           ; $497a: $00
    ld e, h                                       ; $497b: $5c
    rst $38                                       ; $497c: $ff
    db $fd                                        ; $497d: $fd
    call c, $fc1f                                 ; $497e: $dc $1f $fc
    rrca                                          ; $4981: $0f
    db $fc                                        ; $4982: $fc
    nop                                           ; $4983: $00
    ld c, a                                       ; $4984: $4f
    ld a, b                                       ; $4985: $78
    rrca                                          ; $4986: $0f
    ld hl, sp+$4f                                 ; $4987: $f8 $4f
    ld hl, sp-$61                                 ; $4989: $f8 $9f
    or a                                          ; $498b: $b7
    dec d                                         ; $498c: $15
    ccf                                           ; $498d: $3f
    ld a, a                                       ; $498e: $7f
    rra                                           ; $498f: $1f
    jr nz, jr_0c0_49df                            ; $4990: $20 $4d

    ld b, b                                       ; $4992: $40
    inc a                                         ; $4993: $3c
    ld b, $1f                                     ; $4994: $06 $1f
    inc d                                         ; $4996: $14
    dec b                                         ; $4997: $05
    add sp, $62                                   ; $4998: $e8 $62
    inc c                                         ; $499a: $0c
    ld c, $1e                                     ; $499b: $0e $1e
    ld h, b                                       ; $499d: $60
    inc b                                         ; $499e: $04
    ret nc                                        ; $499f: $d0

    pop de                                        ; $49a0: $d1
    rlca                                          ; $49a1: $07
    jr nc, @+$01                                  ; $49a2: $30 $ff

    sub h                                         ; $49a4: $94
    nop                                           ; $49a5: $00
    cp $f8                                        ; $49a6: $fe $f8
    ld a, [hl]                                    ; $49a8: $7e
    db $ec                                        ; $49a9: $ec
    cp a                                          ; $49aa: $bf
    cp $ff                                        ; $49ab: $fe $ff
    db $f4                                        ; $49ad: $f4
    ld bc, $01b7                                  ; $49ae: $01 $b7 $01
    db $db                                        ; $49b1: $db
    ld bc, $00af                                  ; $49b2: $01 $af $00
    sub $82                                       ; $49b5: $d6 $82
    ld [bc], a                                    ; $49b7: $02
    ld b, $f6                                     ; $49b8: $06 $f6
    nop                                           ; $49ba: $00
    ld d, e                                       ; $49bb: $53
    nop                                           ; $49bc: $00
    jp c, Jump_000_13a0                           ; $49bd: $da $a0 $13

    ld [hl], d                                    ; $49c0: $72
    ld c, $c0                                     ; $49c1: $0e $c0
    inc c                                         ; $49c3: $0c
    ld a, a                                       ; $49c4: $7f
    pop bc                                        ; $49c5: $c1
    ld a, a                                       ; $49c6: $7f
    ld d, [hl]                                    ; $49c7: $56
    ld b, b                                       ; $49c8: $40
    dec b                                         ; $49c9: $05
    ld [hl], b                                    ; $49ca: $70
    dec a                                         ; $49cb: $3d
    ld d, b                                       ; $49cc: $50
    rst $38                                       ; $49cd: $ff
    ld b, h                                       ; $49ce: $44
    xor h                                         ; $49cf: $ac
    or b                                          ; $49d0: $b0
    ld d, b                                       ; $49d1: $50
    ld b, b                                       ; $49d2: $40
    rst $38                                       ; $49d3: $ff
    and h                                         ; $49d4: $a4
    ret nz                                        ; $49d5: $c0

    ld d, b                                       ; $49d6: $50
    ld d, l                                       ; $49d7: $55
    rst $38                                       ; $49d8: $ff
    ld l, d                                       ; $49d9: $6a
    xor a                                         ; $49da: $af
    ld [hl], l                                    ; $49db: $75
    dec b                                         ; $49dc: $05
    ldh a, [rNR52]                                ; $49dd: $f0 $26

jr_0c0_49df:
    rst $38                                       ; $49df: $ff
    ldh a, [rNR52]                                ; $49e0: $f0 $26
    rst $38                                       ; $49e2: $ff
    ldh a, [$36]                                  ; $49e3: $f0 $36
    reti                                          ; $49e5: $d9


    add b                                         ; $49e6: $80
    ld l, b                                       ; $49e7: $68
    dec bc                                        ; $49e8: $0b
    ld d, d                                       ; $49e9: $52
    cp c                                          ; $49ea: $b9
    db $fd                                        ; $49eb: $fd
    ld sp, hl                                     ; $49ec: $f9
    cp a                                          ; $49ed: $bf
    ld a, d                                       ; $49ee: $7a
    ccf                                           ; $49ef: $3f
    nop                                           ; $49f0: $00
    ldh a, [$bd]                                  ; $49f1: $f0 $bd
    ld a, c                                       ; $49f3: $79
    ld a, [$7f38]                                 ; $49f4: $fa $38 $7f

jr_0c0_49f7:
    or b                                          ; $49f7: $b0
    ld a, [hl]                                    ; $49f8: $7e
    nop                                           ; $49f9: $00
    ldh a, [$fd]                                  ; $49fa: $f0 $fd
    ld [hl], b                                    ; $49fc: $70
    rst $30                                       ; $49fd: $f7
    jr jr_0c0_4a7f                                ; $49fe: $18 $7f

    jr nc, jr_0c0_49f7                            ; $4a00: $30 $f5

    nop                                           ; $4a02: $00
    ld a, [hl-]                                   ; $4a03: $3a
    ld [hl], b                                    ; $4a04: $70
    rra                                           ; $4a05: $1f
    pop af                                        ; $4a06: $f1
    ld e, [hl]                                    ; $4a07: $5e
    ld [hl], b                                    ; $4a08: $70
    ccf                                           ; $4a09: $3f
    pop af                                        ; $4a0a: $f1
    inc e                                         ; $4a0b: $1c
    ld e, [hl]                                    ; $4a0c: $5e
    ldh a, [$1f]                                  ; $4a0d: $f0 $1f
    and h                                         ; $4a0f: $a4
    ld c, $04                                     ; $4a10: $0e $04
    inc l                                         ; $4a12: $2c
    ld a, [de]                                    ; $4a13: $1a
    dec c                                         ; $4a14: $0d
    rst $38                                       ; $4a15: $ff
    ld a, [hl-]                                   ; $4a16: $3a
    nop                                           ; $4a17: $00
    rst $38                                       ; $4a18: $ff
    ld d, $9f                                     ; $4a19: $16 $9f
    ld a, c                                       ; $4a1b: $79
    ld e, a                                       ; $4a1c: $5f
    xor [hl]                                      ; $4a1d: $ae
    sbc a                                         ; $4a1e: $9f
    ld l, l                                       ; $4a1f: $6d
    nop                                           ; $4a20: $00
    rrca                                          ; $4a21: $0f
    ei                                            ; $4a22: $fb
    adc a                                         ; $4a23: $8f
    ld a, a                                       ; $4a24: $7f
    rrca                                          ; $4a25: $0f
    ld a, [$8093]                                 ; $4a26: $fa $93 $80
    nop                                           ; $4a29: $00
    ld sp, hl                                     ; $4a2a: $f9
    nop                                           ; $4a2b: $00
    reti                                          ; $4a2c: $d9


    nop                                           ; $4a2d: $00
    pop af                                        ; $4a2e: $f1
    nop                                           ; $4a2f: $00
    ei                                            ; $4a30: $fb
    jr nz, jr_0c0_4a34                            ; $4a31: $20 $01

    xor a                                         ; $4a33: $af

jr_0c0_4a34:
    add b                                         ; $4a34: $80
    db $db                                        ; $4a35: $db
    nop                                           ; $4a36: $00
    db $fd                                        ; $4a37: $fd
    add b                                         ; $4a38: $80
    ld h, b                                       ; $4a39: $60
    jr jr_0c0_4a3f                                ; $4a3a: $18 $03

    add hl, hl                                    ; $4a3c: $29
    ldh [$3f], a                                  ; $4a3d: $e0 $3f

jr_0c0_4a3f:
    ld b, $00                                     ; $4a3f: $06 $00
    ld a, a                                       ; $4a41: $7f
    inc b                                         ; $4a42: $04
    ld [$ffe0], sp                                ; $4a43: $08 $e0 $ff
    sub b                                         ; $4a46: $90
    ld b, $40                                     ; $4a47: $06 $40
    rst $38                                       ; $4a49: $ff

jr_0c0_4a4a:
    sub b                                         ; $4a4a: $90
    ld b, $7f                                     ; $4a4b: $06 $7f
    inc e                                         ; $4a4d: $1c
    rra                                           ; $4a4e: $1f
    ld c, [hl]                                    ; $4a4f: $4e
    rra                                           ; $4a50: $1f
    ld l, $a0                                     ; $4a51: $2e $a0
    sub b                                         ; $4a53: $90
    ld a, $b5                                     ; $4a54: $3e $b5
    sub b                                         ; $4a56: $90
    ld b, $e9                                     ; $4a57: $06 $e9
    ld b, d                                       ; $4a59: $42
    push hl                                       ; $4a5a: $e5
    jp nc, $c8c1                                  ; $4a5b: $d2 $c1 $c8

    xor b                                         ; $4a5e: $a8
    inc c                                         ; $4a5f: $0c
    sub d                                         ; $4a60: $92
    ld c, $60                                     ; $4a61: $0e $60
    sbc a                                         ; $4a63: $9f
    jr nz, jr_0c0_4a72                            ; $4a64: $20 $0c

    push af                                       ; $4a66: $f5
    ld a, [bc]                                    ; $4a67: $0a
    ldh [rSVBK], a                                ; $4a68: $e0 $70
    rst $18                                       ; $4a6a: $df
    ld [hl+], a                                   ; $4a6b: $22
    inc b                                         ; $4a6c: $04
    jp nc, Jump_0c0_7217                          ; $4a6d: $d2 $17 $72

    rrca                                          ; $4a70: $0f
    ld c, l                                       ; $4a71: $4d

jr_0c0_4a72:
    or d                                          ; $4a72: $b2
    ld [hl], a                                    ; $4a73: $77
    ldh a, [rP1]                                  ; $4a74: $f0 $00
    rst $38                                       ; $4a76: $ff
    ld [hl], c                                    ; $4a77: $71
    ld a, l                                       ; $4a78: $7d
    pop hl                                        ; $4a79: $e1
    ei                                            ; $4a7a: $fb
    ld l, c                                       ; $4a7b: $69
    ld a, l                                       ; $4a7c: $7d
    pop af                                        ; $4a7d: $f1
    nop                                           ; $4a7e: $00

jr_0c0_4a7f:
    ld a, e                                       ; $4a7f: $7b
    ld sp, hl                                     ; $4a80: $f9
    rst $38                                       ; $4a81: $ff
    ld l, c                                       ; $4a82: $69
    rst $38                                       ; $4a83: $ff
    ld [hl], d                                    ; $4a84: $72
    or b                                          ; $4a85: $b0
    rra                                           ; $4a86: $1f
    nop                                           ; $4a87: $00
    cp c                                          ; $4a88: $b9
    ld d, $78                                     ; $4a89: $16 $78
    rla                                           ; $4a8b: $17
    ld sp, hl                                     ; $4a8c: $f9
    ld a, $78                                     ; $4a8d: $3e $78
    ld c, a                                       ; $4a8f: $4f
    inc bc                                        ; $4a90: $03
    db $dd                                        ; $4a91: $dd
    ld a, [bc]                                    ; $4a92: $0a
    rst $18                                       ; $4a93: $df
    ld [$0c5f], sp                                ; $4a94: $08 $5f $0c
    ld l, h                                       ; $4a97: $6c
    inc e                                         ; $4a98: $1c
    add $0d                                       ; $4a99: $c6 $0d
    ld a, h                                       ; $4a9b: $7c
    and b                                         ; $4a9c: $a0
    inc b                                         ; $4a9d: $04
    db $10                                        ; $4a9e: $10
    or [hl]                                       ; $4a9f: $b6
    dec e                                         ; $4aa0: $1d
    ld e, d                                       ; $4aa1: $5a
    rrca                                          ; $4aa2: $0f
    cp b                                          ; $4aa3: $b8
    jr jr_0c0_4a4a                                ; $4aa4: $18 $a4

    nop                                           ; $4aa6: $00
    db $fd                                        ; $4aa7: $fd
    adc a                                         ; $4aa8: $8f
    nop                                           ; $4aa9: $00
    ld a, [hl]                                    ; $4aaa: $7e
    sbc a                                         ; $4aab: $9f
    ld l, l                                       ; $4aac: $6d
    ld e, a                                       ; $4aad: $5f
    xor e                                         ; $4aae: $ab
    sbc a                                         ; $4aaf: $9f
    ld a, [hl]                                    ; $4ab0: $7e
    ld e, a                                       ; $4ab1: $5f
    nop                                           ; $4ab2: $00
    cp l                                          ; $4ab3: $bd
    rst $38                                       ; $4ab4: $ff
    ld a, [de]                                    ; $4ab5: $1a
    sbc $00                                       ; $4ab6: $de $00
    rst $30                                       ; $4ab8: $f7
    add b                                         ; $4ab9: $80
    rst $28                                       ; $4aba: $ef
    nop                                           ; $4abb: $00
    add b                                         ; $4abc: $80
    rst $18                                       ; $4abd: $df
    nop                                           ; $4abe: $00
    ld a, a                                       ; $4abf: $7f
    ld bc, $12d7                                  ; $4ac0: $01 $d7 $12
    rst $38                                       ; $4ac3: $ff
    jr jr_0c0_4ac7                                ; $4ac4: $18 $01

    ld [hl], a                                    ; $4ac6: $77

jr_0c0_4ac7:
    inc b                                         ; $4ac7: $04
    call z, $d026                                 ; $4ac8: $cc $26 $d0
    ld d, $e0                                     ; $4acb: $16 $e0
    ld a, a                                       ; $4acd: $7f
    rst $38                                       ; $4ace: $ff
    dec b                                         ; $4acf: $05
    rst $38                                       ; $4ad0: $ff
    inc c                                         ; $4ad1: $0c
    cpl                                           ; $4ad2: $2f

Jump_0c0_4ad3:
    dec c                                         ; $4ad3: $0d
    ld c, $70                                     ; $4ad4: $0e $70
    ld e, $46                                     ; $4ad6: $1e $46
    ld l, [hl]                                    ; $4ad8: $6e
    ld b, $20                                     ; $4ad9: $06 $20
    ld b, $7f                                     ; $4adb: $06 $7f
    ld [hl], b                                    ; $4add: $70
    ld c, $42                                     ; $4ade: $0e $42
    ret                                           ; $4ae0: $c9


    jp nz, $a261                                  ; $4ae1: $c2 $61 $a2

    nop                                           ; $4ae4: $00
    ld l, c                                       ; $4ae5: $69
    and d                                         ; $4ae6: $a2
    ld a, c                                       ; $4ae7: $79
    ld [c], a                                     ; $4ae8: $e2
    ld sp, $b152                                  ; $4ae9: $31 $52 $b1
    rst $38                                       ; $4aec: $ff
    ld b, b                                       ; $4aed: $40
    ld hl, sp-$50                                 ; $4aee: $f8 $b0
    ld bc, $fff1                                  ; $4af0: $01 $f1 $ff
    jp hl                                         ; $4af3: $e9


    cp a                                          ; $4af4: $bf
    db $f4                                        ; $4af5: $f4
    cp [hl]                                       ; $4af6: $be
    nop                                           ; $4af7: $00
    db $ec                                        ; $4af8: $ec
    cp a                                          ; $4af9: $bf
    db $fc                                        ; $4afa: $fc
    cp [hl]                                       ; $4afb: $be
    ld a, [$077f]                                 ; $4afc: $fa $7f $07
    xor h                                         ; $4aff: $ac
    nop                                           ; $4b00: $00
    daa                                           ; $4b01: $27
    ld l, [hl]                                    ; $4b02: $6e
    inc hl                                        ; $4b03: $23
    cp a                                          ; $4b04: $bf
    dec b                                         ; $4b05: $05
    rst $18                                       ; $4b06: $df
    ld a, [bc]                                    ; $4b07: $0a

jr_0c0_4b08:
    db $eb                                        ; $4b08: $eb
    rlca                                          ; $4b09: $07
    nop                                           ; $4b0a: $00
    ld e, l                                       ; $4b0b: $5d
    ld c, b                                       ; $4b0c: $48
    xor $24                                       ; $4b0d: $ee $24
    ld c, d                                       ; $4b0f: $4a
    dec b                                         ; $4b10: $05
    ld d, d                                       ; $4b11: $52
    ld b, $72                                     ; $4b12: $06 $72
    dec bc                                        ; $4b14: $0b
    ldh [rNR50], a                                ; $4b15: $e0 $24
    inc e                                         ; $4b17: $1c
    jr c, jr_0c0_4b43                             ; $4b18: $38 $29

    ld b, b                                       ; $4b1a: $40
    add hl, de                                    ; $4b1b: $19
    rrca                                          ; $4b1c: $0f
    ld a, [$f4ff]                                 ; $4b1d: $fa $ff $f4
    ccf                                           ; $4b20: $3f
    nop                                           ; $4b21: $00
    ld [$f47f], a                                 ; $4b22: $ea $7f $f4
    ld a, [$f8ea]                                 ; $4b25: $fa $ea $f8
    ret nc                                        ; $4b28: $d0

    pop af                                        ; $4b29: $f1
    nop                                           ; $4b2a: $00
    and b                                         ; $4b2b: $a0
    ei                                            ; $4b2c: $fb
    ld b, b                                       ; $4b2d: $40
    or $80                                        ; $4b2e: $f6 $80
    db $ed                                        ; $4b30: $ed
    ld bc, $04bf                                  ; $4b31: $01 $bf $04
    rlca                                          ; $4b34: $07
    ld l, a                                       ; $4b35: $6f
    dec b                                         ; $4b36: $05
    ld e, a                                       ; $4b37: $5f
    ld a, [bc]                                    ; $4b38: $0a
    dec [hl]                                      ; $4b39: $35
    inc b                                         ; $4b3a: $04
    cpl                                           ; $4b3b: $2f
    ld a, a                                       ; $4b3c: $7f
    ld bc, $ff3f                                  ; $4b3d: $01 $3f $ff
    ld l, e                                       ; $4b40: $6b
    db $ed                                        ; $4b41: $ed
    ld d, d                                       ; $4b42: $52

jr_0c0_4b43:
    ret nc                                        ; $4b43: $d0

    ld l, a                                       ; $4b44: $6f
    inc h                                         ; $4b45: $24
    dec c                                         ; $4b46: $0d
    and c                                         ; $4b47: $a1
    inc l                                         ; $4b48: $2c
    ld b, $7e                                     ; $4b49: $06 $7e
    db $ec                                        ; $4b4b: $ec
    dec bc                                        ; $4b4c: $0b
    ld c, a                                       ; $4b4d: $4f
    or b                                          ; $4b4e: $b0
    dec b                                         ; $4b4f: $05
    ld a, [$0fe0]                                 ; $4b50: $fa $e0 $0f
    sub b                                         ; $4b53: $90
    call nc, $c01e                                ; $4b54: $d4 $1e $c0
    cp a                                          ; $4b57: $bf
    sub h                                         ; $4b58: $94
    nop                                           ; $4b59: $00
    rrca                                          ; $4b5a: $0f
    ld b, $2f                                     ; $4b5b: $06 $2f
    ld b, $18                                     ; $4b5d: $06 $18
    adc a                                         ; $4b5f: $8f
    ld c, $0f                                     ; $4b60: $0e $0f
    ld b, b                                       ; $4b62: $40
    ld b, $e4                                     ; $4b63: $06 $e4
    rlca                                          ; $4b65: $07
    jp nc, Jump_0c0_7239                          ; $4b66: $d2 $39 $72

    jr nc, jr_0c0_4b08                            ; $4b69: $30 $9d

    ld a, [c]                                     ; $4b6b: $f2
    ld b, b                                       ; $4b6c: $40
    ld h, $3c                                     ; $4b6d: $26 $3c
    dec b                                         ; $4b6f: $05
    sbc c                                         ; $4b70: $99
    ld c, d                                       ; $4b71: $4a
    rra                                           ; $4b72: $1f
    ld a, $41                                     ; $4b73: $3e $41
    sbc a                                         ; $4b75: $9f
    ld d, b                                       ; $4b76: $50
    dec b                                         ; $4b77: $05
    ld a, a                                       ; $4b78: $7f
    ld l, d                                       ; $4b79: $6a
    ccf                                           ; $4b7a: $3f
    jr nc, @+$01                                  ; $4b7b: $30 $ff

    ld d, b                                       ; $4b7d: $50
    dec h                                         ; $4b7e: $25
    adc b                                         ; $4b7f: $88
    ldh a, [rNR11]                                ; $4b80: $f0 $11
    ld l, $d9                                     ; $4b82: $2e $d9
    ld c, d                                       ; $4b84: $4a
    ld d, b                                       ; $4b85: $50
    dec d                                         ; $4b86: $15
    ld [hl], l                                    ; $4b87: $75
    sbc d                                         ; $4b88: $9a
    ld d, [hl]                                    ; $4b89: $56
    nop                                           ; $4b8a: $00
    sbc c                                         ; $4b8b: $99
    ld d, h                                       ; $4b8c: $54
    sbc e                                         ; $4b8d: $9b
    ld d, [hl]                                    ; $4b8e: $56
    cp c                                          ; $4b8f: $b9
    ld d, h                                       ; $4b90: $54
    sbc e                                         ; $4b91: $9b
    ld d, d                                       ; $4b92: $52
    nop                                           ; $4b93: $00
    sbc l                                         ; $4b94: $9d
    ld d, h                                       ; $4b95: $54
    sbc e                                         ; $4b96: $9b
    ld c, d                                       ; $4b97: $4a
    sbc l                                         ; $4b98: $9d
    ld d, b                                       ; $4b99: $50
    ld hl, sp+$78                                 ; $4b9a: $f8 $78
    nop                                           ; $4b9c: $00
    ld hl, sp+$58                                 ; $4b9d: $f8 $58
    db $fc                                        ; $4b9f: $fc
    ld l, b                                       ; $4ba0: $68
    db $fc                                        ; $4ba1: $fc
    ld d, l                                       ; $4ba2: $55
    cp $0c                                        ; $4ba3: $fe $0c
    nop                                           ; $4ba5: $00
    cp $46                                        ; $4ba6: $fe $46
    cp $0b                                        ; $4ba8: $fe $0b
    cp $64                                        ; $4baa: $fe $64
    ld a, a                                       ; $4bac: $7f
    or b                                          ; $4bad: $b0
    add b                                         ; $4bae: $80
    add b                                         ; $4baf: $80
    inc b                                         ; $4bb0: $04
    cp l                                          ; $4bb1: $bd
    ccf                                           ; $4bb2: $3f
    ld d, [hl]                                    ; $4bb3: $56
    ccf                                           ; $4bb4: $3f
    add hl, de                                    ; $4bb5: $19
    ld a, $27                                     ; $4bb6: $3e $27
    nop                                           ; $4bb8: $00
    ld a, b                                       ; $4bb9: $78
    ldh a, [$7f]                                  ; $4bba: $f0 $7f
    ld [hl-], a                                   ; $4bbc: $32
    reti                                          ; $4bbd: $d9


    ld d, e                                       ; $4bbe: $53
    cp b                                          ; $4bbf: $b8
    sub b                                         ; $4bc0: $90
    nop                                           ; $4bc1: $00
    ld [hl], b                                    ; $4bc2: $70
    ldh a, [$f8]                                  ; $4bc3: $f0 $f8
    ld l, b                                       ; $4bc5: $68
    sbc [hl]                                      ; $4bc6: $9e
    db $f4                                        ; $4bc7: $f4
    ld c, $5a                                     ; $4bc8: $0e $5a
    db $10                                        ; $4bca: $10
    and [hl]                                      ; $4bcb: $a6
    dec l                                         ; $4bcc: $2d
    db $d3                                        ; $4bcd: $d3
    add d                                         ; $4bce: $82
    dec b                                         ; $4bcf: $05
    nop                                           ; $4bd0: $00
    inc b                                         ; $4bd1: $04
    nop                                           ; $4bd2: $00
    ld b, d                                       ; $4bd3: $42
    nop                                           ; $4bd4: $00
    sub b                                         ; $4bd5: $90
    ld de, $1520                                  ; $4bd6: $11 $20 $15
    inc bc                                        ; $4bd9: $03
    ld c, $bf                                     ; $4bda: $0e $bf
    or e                                          ; $4bdc: $b3
    ld b, b                                       ; $4bdd: $40
    db $fc                                        ; $4bde: $fc
    db $10                                        ; $4bdf: $10
    ld [$0000], sp                                ; $4be0: $08 $00 $00
    ld hl, $1e17                                  ; $4be3: $21 $17 $1e
    ld a, a                                       ; $4be6: $7f
    ld [bc], a                                    ; $4be7: $02
    pop hl                                        ; $4be8: $e1
    cp $7f                                        ; $4be9: $fe $7f
    add b                                         ; $4beb: $80
    ld [$2015], a                                 ; $4bec: $ea $15 $20
    ld [$2111], sp                                ; $4bef: $08 $11 $21
    ld [$3afe], sp                                ; $4bf2: $08 $fe $3a
    rlca                                          ; $4bf5: $07
    cp $01                                        ; $4bf6: $fe $01
    ld d, l                                       ; $4bf8: $55
    xor d                                         ; $4bf9: $aa
    sbc d                                         ; $4bfa: $9a
    rrca                                          ; $4bfb: $0f

jr_0c0_4bfc:
    add b                                         ; $4bfc: $80
    jr nz, jr_0c0_4bff                            ; $4bfd: $20 $00

jr_0c0_4bff:
    add d                                         ; $4bff: $82
    ld [$e0d1], sp                                ; $4c00: $08 $d1 $e0
    ld hl, sp-$44                                 ; $4c03: $f8 $bc
    ld a, [hl]                                    ; $4c05: $7e
    ld [$af57], sp                                ; $4c06: $08 $57 $af
    add hl, bc                                    ; $4c09: $09
    rst $30                                       ; $4c0a: $f7
    ld b, b                                       ; $4c0b: $40
    ld [$4010], sp                                ; $4c0c: $08 $10 $40
    add b                                         ; $4c0f: $80
    nop                                           ; $4c10: $00
    jr nz, jr_0c0_4c14                            ; $4c11: $20 $01

    daa                                           ; $4c13: $27

jr_0c0_4c14:
    ld c, $7f                                     ; $4c14: $0e $7f
    inc sp                                        ; $4c16: $33
    db $fc                                        ; $4c17: $fc
    sbc $48                                       ; $4c18: $de $48
    pop hl                                        ; $4c1a: $e1
    ld d, b                                       ; $4c1b: $50
    db $10                                        ; $4c1c: $10
    ld b, d                                       ; $4c1d: $42
    rra                                           ; $4c1e: $1f
    ld [hl], $01                                  ; $4c1f: $36 $01
    ld a, a                                       ; $4c21: $7f
    add b                                         ; $4c22: $80
    push af                                       ; $4c23: $f5
    inc d                                         ; $4c24: $14
    ld a, [bc]                                    ; $4c25: $0a
    xor d                                         ; $4c26: $aa
    ld d, l                                       ; $4c27: $55
    ld h, b                                       ; $4c28: $60
    ld [$4080], sp                                ; $4c29: $08 $80 $40
    db $10                                        ; $4c2c: $10
    ld a, [$8005]                                 ; $4c2d: $fa $05 $80
    ld b, b                                       ; $4c30: $40
    jr nc, jr_0c0_4c33                            ; $4c31: $30 $00

jr_0c0_4c33:
    nop                                           ; $4c33: $00
    ret                                           ; $4c34: $c9


    ldh [$f9], a                                  ; $4c35: $e0 $f9
    sbc h                                         ; $4c37: $9c
    ld a, [hl]                                    ; $4c38: $7e
    ld [$af53], sp                                ; $4c39: $08 $53 $af
    dec h                                         ; $4c3c: $25
    db $db                                        ; $4c3d: $db
    ld [hl], b                                    ; $4c3e: $70
    db $10                                        ; $4c3f: $10
    ld b, b                                       ; $4c40: $40
    ld b, b                                       ; $4c41: $40
    nop                                           ; $4c42: $00
    ld [bc], a                                    ; $4c43: $02
    nop                                           ; $4c44: $00
    ld [bc], a                                    ; $4c45: $02
    ld b, c                                       ; $4c46: $41
    inc bc                                        ; $4c47: $03
    ld l, $9f                                     ; $4c48: $2e $9f
    add b                                         ; $4c4a: $80
    jr nz, jr_0c0_4c51                            ; $4c4b: $20 $04

    inc h                                         ; $4c4d: $24
    ld bc, $8007                                  ; $4c4e: $01 $07 $80

jr_0c0_4c51:
    ld c, b                                       ; $4c51: $48
    ld [bc], a                                    ; $4c52: $02
    nop                                           ; $4c53: $00
    add b                                         ; $4c54: $80
    ld e, b                                       ; $4c55: $58
    jr nz, jr_0c0_4c58                            ; $4c56: $20 $00

jr_0c0_4c58:
    inc b                                         ; $4c58: $04
    inc bc                                        ; $4c59: $03
    ret nz                                        ; $4c5a: $c0

    ld [c], a                                     ; $4c5b: $e2
    ld hl, sp-$43                                 ; $4c5c: $f8 $bd
    add b                                         ; $4c5e: $80
    jr nc, @-$7e                                  ; $4c5f: $30 $80

    ld [$0002], sp                                ; $4c61: $08 $02 $00
    nop                                           ; $4c64: $00
    ld bc, $0e07                                  ; $4c65: $01 $07 $0e
    sbc a                                         ; $4c68: $9f
    add b                                         ; $4c69: $80
    jr z, jr_0c0_4c6c                             ; $4c6a: $28 $00

jr_0c0_4c6c:
    ld [hl], $00                                  ; $4c6c: $36 $00
    rra                                           ; $4c6e: $1f
    xor d                                         ; $4c6f: $aa
    ld [bc], a                                    ; $4c70: $02
    add b                                         ; $4c71: $80
    jr c, jr_0c0_4bfc                             ; $4c72: $38 $88

    ld b, b                                       ; $4c74: $40
    db $10                                        ; $4c75: $10
    add b                                         ; $4c76: $80
    jr c, jr_0c0_4c7d                             ; $4c77: $38 $04

    jr nc, jr_0c0_4c83                            ; $4c79: $30 $08

    nop                                           ; $4c7b: $00
    ld b, b                                       ; $4c7c: $40

jr_0c0_4c7d:
    nop                                           ; $4c7d: $00
    add b                                         ; $4c7e: $80
    jr jr_0c0_4ccd                                ; $4c7f: $18 $4c

    sbc e                                         ; $4c81: $9b
    adc d                                         ; $4c82: $8a

jr_0c0_4c83:
    dec e                                         ; $4c83: $1d
    nop                                           ; $4c84: $00
    rrca                                          ; $4c85: $0f
    rrca                                          ; $4c86: $0f
    rrca                                          ; $4c87: $0f
    rra                                           ; $4c88: $1f
    jr jr_0c0_4cca                                ; $4c89: $18 $3f

    ld a, [hl+]                                   ; $4c8b: $2a
    ld [hl], l                                    ; $4c8c: $75
    inc b                                         ; $4c8d: $04
    ld e, h                                       ; $4c8e: $5c
    ld h, e                                       ; $4c8f: $63
    ld hl, sp-$39                                 ; $4c90: $f8 $c7
    ld h, $38                                     ; $4c92: $26 $38
    ld bc, $fe1c                                  ; $4c94: $01 $1c $fe
    nop                                           ; $4c97: $00

jr_0c0_4c98:
    db $fc                                        ; $4c98: $fc
    db $fc                                        ; $4c99: $fc
    jr c, jr_0c0_4c98                             ; $4c9a: $38 $fc

    db $e4                                        ; $4c9c: $e4
    ld e, $02                                     ; $4c9d: $1e $02
    cp $00                                        ; $4c9f: $fe $00
    jp nz, Jump_0c0_7ffe                          ; $4ca1: $c2 $fe $7f

    ld a, a                                       ; $4ca4: $7f
    dec [hl]                                      ; $4ca5: $35
    ld a, a                                       ; $4ca6: $7f
    ld a, [de]                                    ; $4ca7: $1a
    ccf                                           ; $4ca8: $3f
    nop                                           ; $4ca9: $00
    dec l                                         ; $4caa: $2d
    rra                                           ; $4cab: $1f
    adc b                                         ; $4cac: $88
    rrca                                          ; $4cad: $0f
    inc b                                         ; $4cae: $04
    rrca                                          ; $4caf: $0f
    inc bc                                        ; $4cb0: $03
    rlca                                          ; $4cb1: $07
    inc b                                         ; $4cb2: $04
    dec b                                         ; $4cb3: $05
    inc bc                                        ; $4cb4: $03
    dec b                                         ; $4cb5: $05
    ei                                            ; $4cb6: $fb
    pop bc                                        ; $4cb7: $c1
    cpl                                           ; $4cb8: $2f
    ld [bc], a                                    ; $4cb9: $02
    ld e, d                                       ; $4cba: $5a
    rst $38                                       ; $4cbb: $ff
    nop                                           ; $4cbc: $00
    inc l                                         ; $4cbd: $2c
    cp $10                                        ; $4cbe: $fe $10
    ld hl, sp+$65                                 ; $4cc0: $f8 $65
    ldh [$81], a                                  ; $4cc2: $e0 $81
    ret nz                                        ; $4cc4: $c0

    inc b                                         ; $4cc5: $04
    rst $18                                       ; $4cc6: $df
    ldh [rOCPS], a                                ; $4cc7: $e0 $6a
    sub l                                         ; $4cc9: $95

jr_0c0_4cca:
    ccf                                           ; $4cca: $3f
    inc h                                         ; $4ccb: $24
    ld [bc], a                                    ; $4ccc: $02

jr_0c0_4ccd:
    ld [bc], a                                    ; $4ccd: $02
    nop                                           ; $4cce: $00
    ld b, c                                       ; $4ccf: $41
    ld bc, $0138                                  ; $4cd0: $01 $38 $01
    dec bc                                        ; $4cd3: $0b
    nop                                           ; $4cd4: $00
    ld d, b                                       ; $4cd5: $50
    xor a                                         ; $4cd6: $af
    rrca                                          ; $4cd7: $0f
    call nc, Call_000_0006                        ; $4cd8: $d4 $06 $00
    ld a, d                                       ; $4cdb: $7a
    rst $38                                       ; $4cdc: $ff
    rlca                                          ; $4cdd: $07
    ccf                                           ; $4cde: $3f
    ld hl, $4403                                  ; $4cdf: $21 $03 $44
    ld [bc], a                                    ; $4ce2: $02
    dec b                                         ; $4ce3: $05
    adc b                                         ; $4ce4: $88

jr_0c0_4ce5:
    nop                                           ; $4ce5: $00
    dec a                                         ; $4ce6: $3d
    rst $38                                       ; $4ce7: $ff
    ld a, [$06f0]                                 ; $4ce8: $fa $f0 $06
    and b                                         ; $4ceb: $a0
    inc l                                         ; $4cec: $2c
    inc b                                         ; $4ced: $04
    nop                                           ; $4cee: $00
    add sp, -$01                                  ; $4cef: $e8 $ff
    ccf                                           ; $4cf1: $3f
    rst $38                                       ; $4cf2: $ff
    nop                                           ; $4cf3: $00
    ld c, $01                                     ; $4cf4: $0e $01
    rst $38                                       ; $4cf6: $ff
    ld b, b                                       ; $4cf7: $40
    ld b, [hl]                                    ; $4cf8: $46
    ret z                                         ; $4cf9: $c8

    inc bc                                        ; $4cfa: $03
    ld e, a                                       ; $4cfb: $5f
    rst $38                                       ; $4cfc: $ff
    jr c, @+$01                                   ; $4cfd: $38 $ff

    ld b, b                                       ; $4cff: $40
    ldh a, [rSB]                                  ; $4d00: $f0 $01
    sub b                                         ; $4d02: $90
    ret nz                                        ; $4d03: $c0

    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    ld l, b                                       ; $4d06: $68
    sub a                                         ; $4d07: $97
    ccf                                           ; $4d08: $3f
    inc b                                         ; $4d09: $04
    rlca                                          ; $4d0a: $07
    nop                                           ; $4d0b: $00
    ret nz                                        ; $4d0c: $c0

    rst $38                                       ; $4d0d: $ff
    stop                                          ; $4d0e: $10 $00
    nop                                           ; $4d10: $00
    jr nc, jr_0c0_4d53                            ; $4d11: $30 $40

    nop                                           ; $4d13: $00
    ld b, h                                       ; $4d14: $44
    ld d, h                                       ; $4d15: $54
    ret nz                                        ; $4d16: $c0

    rlca                                          ; $4d17: $07
    rst $38                                       ; $4d18: $ff
    rst $38                                       ; $4d19: $ff
    db $fd                                        ; $4d1a: $fd
    call nc, $8005                                ; $4d1b: $d4 $05 $80
    rlca                                          ; $4d1e: $07

jr_0c0_4d1f:
    sbc b                                         ; $4d1f: $98
    add a                                         ; $4d20: $87
    ld bc, $0420                                  ; $4d21: $01 $20 $04
    ret nc                                        ; $4d24: $d0

    rlca                                          ; $4d25: $07
    ld b, b                                       ; $4d26: $40
    ld [$ffe8], sp                                ; $4d27: $08 $e8 $ff
    ld [hl], l                                    ; $4d2a: $75
    nop                                           ; $4d2b: $00
    rst $38                                       ; $4d2c: $ff
    ld c, [hl]                                    ; $4d2d: $4e
    ccf                                           ; $4d2e: $3f
    inc sp                                        ; $4d2f: $33
    rlca                                          ; $4d30: $07
    jr nz, @+$04                                  ; $4d31: $20 $02

    ld bc, $ff00                                  ; $4d33: $01 $00 $ff
    ld b, $ff                                     ; $4d36: $06 $ff
    sbc l                                         ; $4d38: $9d
    cp $31                                        ; $4d39: $fe $31
    rst $38                                       ; $4d3b: $ff
    ld a, a                                       ; $4d3c: $7f
    ld bc, $f0ff                                  ; $4d3d: $01 $ff $f0
    db $fc                                        ; $4d40: $fc
    add b                                         ; $4d41: $80
    ldh [rSB], a                                  ; $4d42: $e0 $01
    inc b                                         ; $4d44: $04
    add b                                         ; $4d45: $80
    jr z, jr_0c0_4cca                             ; $4d46: $28 $82

    or l                                          ; $4d48: $b5
    ld bc, $0022                                  ; $4d49: $01 $22 $00
    ld [$2010], sp                                ; $4d4c: $08 $10 $20
    add b                                         ; $4d4f: $80
    jr c, jr_0c0_4d93                             ; $4d50: $38 $41

    ld a, [bc]                                    ; $4d52: $0a

jr_0c0_4d53:
    inc sp                                        ; $4d53: $33
    nop                                           ; $4d54: $00
    ld [bc], a                                    ; $4d55: $02
    db $10                                        ; $4d56: $10
    add b                                         ; $4d57: $80
    ld l, b                                       ; $4d58: $68
    adc [hl]                                      ; $4d59: $8e
    add b                                         ; $4d5a: $80
    ld c, b                                       ; $4d5b: $48
    add h                                         ; $4d5c: $84
    jr nz, jr_0c0_4d1f                            ; $4d5d: $20 $c0

    inc b                                         ; $4d5f: $04
    add b                                         ; $4d60: $80
    jr nc, jr_0c0_4d63                            ; $4d61: $30 $00

jr_0c0_4d63:
    jr nz, jr_0c0_4ce5                            ; $4d63: $20 $80

    nop                                           ; $4d65: $00
    ld de, $8860                                  ; $4d66: $11 $60 $88
    ld e, e                                       ; $4d69: $5b
    ld bc, $2080                                  ; $4d6a: $01 $80 $20
    nop                                           ; $4d6d: $00
    rlca                                          ; $4d6e: $07
    ld b, b                                       ; $4d6f: $40
    nop                                           ; $4d70: $00
    ret nz                                        ; $4d71: $c0

    ld h, b                                       ; $4d72: $60
    inc b                                         ; $4d73: $04
    call nc, $8000                                ; $4d74: $d4 $00 $80
    jr nc, jr_0c0_4d87                            ; $4d77: $30 $0e

    ccf                                           ; $4d79: $3f
    inc bc                                        ; $4d7a: $03
    ld b, a                                       ; $4d7b: $47
    inc b                                         ; $4d7c: $04
    sub b                                         ; $4d7d: $90
    add b                                         ; $4d7e: $80
    db $10                                        ; $4d7f: $10
    sbc h                                         ; $4d80: $9c
    rst $38                                       ; $4d81: $ff
    add b                                         ; $4d82: $80
    ld [$fcf1], sp                                ; $4d83: $08 $f1 $fc
    add d                                         ; $4d86: $82

jr_0c0_4d87:
    ldh [rP1], a                                  ; $4d87: $e0 $00
    add h                                         ; $4d89: $84
    nop                                           ; $4d8a: $00
    or e                                          ; $4d8b: $b3
    rst $08                                       ; $4d8c: $cf
    xor [hl]                                      ; $4d8d: $ae
    rst $18                                       ; $4d8e: $df
    call c, Call_000_00ff                         ; $4d8f: $dc $ff $00
    ld sp, hl                                     ; $4d92: $f9

jr_0c0_4d93:
    cp $f2                                        ; $4d93: $fe $f2
    db $fd                                        ; $4d95: $fd
    inc c                                         ; $4d96: $0c
    ccf                                           ; $4d97: $3f
    rlca                                          ; $4d98: $07
    adc a                                         ; $4d99: $8f
    nop                                           ; $4d9a: $00
    ld bc, $1240                                  ; $4d9b: $01 $40 $12
    xor $24                                       ; $4d9e: $ee $24
    sbc $68                                       ; $4da0: $de $68
    sbc h                                         ; $4da2: $9c
    nop                                           ; $4da3: $00
    jp nc, $a038                                  ; $4da4: $d2 $38 $a0

    ld [hl], b                                    ; $4da7: $70
    ld b, b                                       ; $4da8: $40
    db $e4                                        ; $4da9: $e4
    add b                                         ; $4daa: $80
    ldh [$0a], a                                  ; $4dab: $e0 $0a
    nop                                           ; $4dad: $00
    ld c, b                                       ; $4dae: $48
    nop                                           ; $4daf: $00
    ld b, b                                       ; $4db0: $40
    db $fc                                        ; $4db1: $fc
    ld c, c                                       ; $4db2: $49
    ld a, [$025d]                                 ; $4db3: $fa $5d $02
    inc bc                                        ; $4db6: $03
    dec b                                         ; $4db7: $05
    ldh [$e0], a                                  ; $4db8: $e0 $e0
    ld sp, hl                                     ; $4dba: $f9
    sbc l                                         ; $4dbb: $9d
    ld a, a                                       ; $4dbc: $7f
    db $fc                                        ; $4dbd: $fc
    add hl, bc                                    ; $4dbe: $09
    ld bc, $0482                                  ; $4dbf: $01 $82 $04
    jr nz, jr_0c0_4dc4                            ; $4dc2: $20 $00

jr_0c0_4dc4:
    rrca                                          ; $4dc4: $0f
    xor h                                         ; $4dc5: $ac
    add hl, bc                                    ; $4dc6: $09
    adc a                                         ; $4dc7: $8f
    ldh a, [$3e]                                  ; $4dc8: $f0 $3e
    pop bc                                        ; $4dca: $c1
    ld a, l                                       ; $4dcb: $7d
    nop                                           ; $4dcc: $00
    add d                                         ; $4dcd: $82
    ld a, [hl-]                                   ; $4dce: $3a
    push bc                                       ; $4dcf: $c5
    ld [hl], h                                    ; $4dd0: $74
    adc e                                         ; $4dd1: $8b
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    ldh [rP1], a                                  ; $4dd4: $e0 $00
    ldh a, [rNR23]                                ; $4dd6: $f0 $18
    cp $c4                                        ; $4dd8: $fe $c4
    ld a, $a2                                     ; $4dda: $3e $a2
    ld e, a                                       ; $4ddc: $5f
    add hl, bc                                    ; $4ddd: $09
    nop                                           ; $4dde: $00
    rst $30                                       ; $4ddf: $f7
    ld bc, $81ff                                  ; $4de0: $01 $ff $81
    ld a, a                                       ; $4de3: $7f

    db $b0, $08, $e3, $05, $41, $00, $01, $b0, $01, $00, $0f, $00, $f5, $1f, $20, $00
    db $02, $01, $34, $0b, $fa, $05, $ff, $00, $20, $ac, $03, $30, $08, $18, $07, $05
    db $fa, $00, $06, $ff, $05, $fa, $40, $bf, $08, $00, $41, $00, $38, $00, $c0, $f3
    db $0c, $bf, $40, $5f, $a0, $0b, $10, $f4, $e0, $1f, $50, $18, $80, $00, $f8, $00
    db $02, $ff, $00, $ab, $00, $30, $c0, $60, $38, $80, $08, $00, $f0, $00, $3e, $5a
    db $20, $04, $03, $0a, $00, $05, $05, $0a, $07, $08, $07, $08, $03, $00, $00, $2f
    db $10, $3e, $c0, $7d, $80, $f8, $00, $07, $c3, $3c, $2f, $d0, $13, $ef, $a8, $00
    db $00, $40, $00, $b4, $08, $8f, $70, $7e, $00, $81, $ef, $1f, $7f, $ff, $ff, $ff
    db $60, $01, $1f, $14, $eb, $a8, $57, $cf, $3f, $0b, $00, $83, $0e, $00, $fc, $fc
    db $0a, $f5, $07, $0b, $18, $11, $10, $02, $0f, $0f, $fe, $01, $ef, $f0, $11, $28
    db $fe, $00, $f9, $f0, $f8, $83, $7c, $e8, $17, $75, $40, $8a, $13, $28, $6f, $1f
    db $17, $00, $2a, $c0, $00, $05, $f8, $40, $bf, $02, $fd, $f7, $f8, $40, $fe, $50
    db $00, $e0, $00, $fc, $00, $78, $07, $00, $ff, $00, $1e, $e1, $c3, $3c, $f8, $07
    db $20, $de, $e1, $ae, $18, $20, $c0, $80, $70, $c0, $04, $30, $60, $90, $70, $80
    db $a0, $28, $01, $06, $00, $03, $04, $07, $00, $07, $00, $1f, $00, $00, $5f, $20
    db $7f, $80, $fc, $03, $b2, $0d, $00, $4d, $32, $be, $41, $0f, $77, $9f, $7f, $00
    db $9f, $7f, $df, $3f, $7f, $9f, $3f, $df, $b0, $93, $08, $fe, $53, $08, $90, $30
    db $c3, $87, $00, $07, $54, $fc, $01, $10, $fd, $04, $10, $fe, $08, $00, $17, $0f
    db $01, $73, $0f, $b1, $0f, $71, $0f, $f1, $02, $10, $01, $e1, $0f, $e0, $f8, $c1
    db $f8, $c2, $04, $00, $10, $c3, $f8, $c5, $04, $00, $c7, $f8, $06, $01, $18, $68
    db $00, $fe, $2c, $01, $02, $08, $ef, $10, $e3, $00, $1c, $ff, $ff, $bf, $7f, $af
    db $1f, $eb, $02, $07, $ff, $01, $ff, $00, $fe, $04, $00, $f8, $00, $ff, $fc, $ff
    db $fd, $fe, $ff, $fc, $fe, $20, $fd, $7c, $1a, $00, $df, $3f, $f8, $00, $fa, $00
    db $04, $fe, $01, $3f, $c0, $0f, $f0, $13, $04, $ec, $bc, $c3, $e9, $f6, $6e, $19
    db $80, $60, $07, $c0, $20, $c0, $20, $e0, $62, $01, $ae, $19, $c0, $08, $80, $c2
    db $08, $01, $06, $1e, $00, $9d, $60, $7a, $00, $81, $fc, $03, $e1, $1e, $9e, $61
    db $2f, $00, $d1, $97, $6f, $4f, $3f, $6f, $1f, $7f, $08, $8f, $1f, $ef, $0f, $68
    db $00, $f9, $f0, $80, $2c, $80, $fe, $01, $00, $ff, $02, $00, $05, $10, $ff, $3f
    db $00, $ff, $28, $07, $58, $07, $3c, $03, $7c, $28, $03, $bc, $04, $00, $fc, $08
    db $00, $7f, $fc, $3d, $25, $fc, $3f, $02, $10, $bf, $7c, $04, $08, $c1, $c4, $00
    db $01, $d1, $0f, $e5, $0b, $f3, $0d, $f5, $04, $10, $00, $c3, $f8, $e7, $d8, $d7
    db $e8, $e7, $d8, $00, $f7, $c8, $e7, $d8, $f3, $c8, $f7, $c8, $00, $e0, $1f, $e0
    db $1f, $e3, $1c, $f9, $1e, $20, $ff, $1f, $02, $18, $75, $8a, $1a, $e5, $05, $00
    db $fa, $a2, $5d, $51, $ae, $e0, $df, $e0, $00, $ff, $f0, $ff, $6f, $9f, $d7, $2f
    db $7f, $00, $87, $fb, $07, $ff, $03, $ed, $03, $fb, $00, $01, $51, $81, $f9, $fe
    db $fb, $fc, $fe, $0c, $f9, $fc, $fb, $f8, $85, $00, $e4, $09, $f8, $00, $00, $fd
    db $02, $7e, $81, $3f, $c0, $07, $f8, $02, $29, $d6, $96, $e9, $e8, $f7, $a0, $0a
    db $40, $00, $80, $90, $60, $c0, $30, $c0, $30, $40, $01, $b0, $f0, $00, $03, $04
    db $05, $02, $9a, $09, $80, $9e, $19, $03, $00, $8f, $7f, $af, $5f, $af, $04, $5f
    db $9f, $6f, $bf, $4f, $04, $18, $8a, $80, $00, $d4, $80, $8b, $c0, $97, $c0, $ed
    db $c0, $00, $d7, $c0, $cf, $e0, $d7, $e0, $0f, $ff, $80, $02, $18, $07, $ff, $8f
    db $77, $97, $6f, $8f, $04, $77, $fd, $02, $fc, $03, $04, $08, $fe, $01, $00, $7e
    db $81, $7e, $81, $fe, $81, $7f, $bc, $00, $bf, $7c, $7f, $bc, $ff, $3c, $7e, $bd
    db $00, $dd, $3e, $5e, $bd, $80, $7f, $b3, $4d, $00, $f5, $0b, $73, $8d, $d5, $2b
    db $b3, $4d, $00, $75, $8b, $a1, $5f, $00, $ff, $d3, $e8, $00, $f5, $c8, $db, $e0
    db $ed, $d0, $cb, $f0, $1c, $e5, $d8, $c3, $d5, $02, $d8, $28, $e0, $18, $00, $ff
    db $0c, $fd, $fa, $fa, $fd, $a3, $01, $02, $00, $fe, $fd, $40, $f8, $14, $03, $29
    db $81, $55, $81, $2b, $81, $00, $75, $81, $7f, $81, $fd, $01, $ff, $01, $38, $fd
    db $03, $20, $4a, $e0, $10, $02, $20, $fe, $f9, $fe, $03, $f9, $ff, $f8, $f7, $f8
    db $f0, $16, $03, $04, $18, $5a, $e0, $02, $00, $60, $d2, $00, $02, $18, $01, $26
    db $13, $10, $00, $0f, $87, $7f, $97, $6f, $cf, $37, $c0, $00, $3f, $c0, $3f, $8c
    db $70, $02, $81, $40, $00, $9b, $ff, $e0, $ff, $e0, $c0, $ff, $01, $00, $f0, $90
    db $06, $00, $76, $01, $70, $04, $00, $11, $d4, $2b, $80, $7f, $20, $dc, $02, $10
    db $d9, $10, $cb, $6f, $03, $8b, $1a, $a1, $00, $00, $ff, $44, $80, $80, $6e, $00
    db $6e, $00, $40, $ee, $02, $08, $2c, $40, $08, $f4, $a0, $15, $00, $20, $95, $40
    db $94, $10, $c5, $28, $c5, $00, $00, $ec, $50, $2f, $40, $38, $00, $fb, $b0, $02
    db $00, $78, $06, $08, $0c, $00, $ff, $80, $30, $20, $00, $96, $10, $86, $20, $86
    db $10, $a6, $00, $01, $b6, $ca, $34, $00, $ff, $22, $00, $3a, $08, $20, $04, $e2
    db $40, $08, $82, $60, $00, $ff, $40, $00, $3f, $02, $81, $00, $b7, $41, $36, $80
    db $00, $36, $40, $96, $01, $d4, $14, $e1, $3f, $00, $c3, $80, $7f, $24, $41, $41
    db $2c, $80, $01, $2c, $00, $2c, $01, $ac, $00, $ad, $11, $09, $00, $00, $ff, $11
    db $ae, $00, $ae, $8a, $24, $00, $00, $24, $84, $20, $f5, $fa, $fd, $f2, $00, $fc
    db $f2, $18, $e6, $03, $9c, $28, $87, $05, $00, $bb, $02, $b9, $60, $d8, $10, $c0
    db $02, $00, $02, $41, $81, $10, $e0, $04, $38, $70, $3c, $d1, $00, $d1, $9b, $9b
    db $95, $95, $29, $10, $40, $04, $24, $41, $34, $40, $35, $02, $10, $31, $48, $00
    db $27, $00, $db, $80, $5b, $40, $1b, $82, $00, $19, $4c, $93, $01, $fe, $1f, $e0
    db $f0, $00, $0f, $02, $74, $00, $76, $1c, $03, $80, $00, $7f, $1f, $e0, $f2, $0f
    db $bf, $7f, $3f, $00, $ff, $90, $24, $40, $3f, $03, $fc, $7f, $60, $80, $6a, $04
    db $35, $13, $80, $7f, $0f, $f0, $ff, $0a, $00, $00, $ff, $20, $43, $13, $07, $a2
    db $09, $00, $04, $41, $00, $04, $ff, $04, $53, $13, $e3, $1c, $8c, $a2, $01, $02
    db $57, $00, $8b, $01, $02, $10, $f5, $0b, $00, $00, $ff, $55, $aa, $a2, $5d, $c0
    db $ff, $80, $02, $08, $c4, $fb, $d7, $e8, $00, $ff, $fa, $2b, $00, $d4, $40, $00
    db $03, $22, $02, $0f, $de, $01, $10, $00, $0c, $05, $17, $00, $c0, $aa, $02, $aa
    db $09, $fc, $ff, $00, $64, $81, $00, $ff, $54, $ab, $3e, $c1, $40, $00, $42, $10
    db $00, $ff, $0a, $a0, $54, $aa, $00, $01, $fe, $e0, $1f, $6f, $80, $e9, $f0, $80
    db $39, $0b, $00, $89, $01, $b8, $02, $b8, $40, $00, $82, $09, $f2, $e0, $1f, $d2
    db $2d, $00, $06, $ff, $42, $04, $08, $62, $7e, $01, $82, $01, $80, $01, $6e, $20
    db $ce, $88, $76, $91, $91, $62, $5d, $00, $43, $3c, $4e, $31, $41, $3f, $43, $3f
    db $16, $20, $1f, $0b, $2a, $1d, $7f, $84, $01, $ff, $13, $c1, $06, $3e, $02, $01
    db $02, $01, $37, $0b, $b0, $1a, $87, $00, $7f, $c3, $3f, $c1, $3f, $80, $ff, $87
    db $01, $f8, $ff, $c0, $d7, $e8, $ff, $e0, $e8, $04, $00, $f0, $f7, $f8, $0f, $f0
    db $9f, $60, $bf, $64, $40, $30, $1c, $36, $0c, $e3, $1c, $02, $08, $f3, $0c, $1f
    db $f3, $0c, $fb, $f3, $10, $98, $0b, $68, $0c, $04, $28, $9e, $1b, $40, $c7, $6a
    db $04, $c6, $f9, $c5, $fa, $c6, $f9, $80, $98, $1b, $5f, $bf, $ff, $1f, $bf, $5f
    db $5f, $10, $bf, $bf, $5f, $bb, $0a, $fa, $fd, $fe, $f9, $00, $f6, $f9, $fc, $f3
    db $ed, $f2, $d9, $e6, $06, $00, $ff, $7e, $81, $78, $be, $02, $bc, $12, $03, $30
    db $fb, $07, $7b, $04, $b4, $12, $f0, $ff, $f9, $f6, $08, $f1, $ee, $d3, $ec, $ab
    db $1c, $40, $bf, $80, $00, $7f, $8f, $70, $00, $e0, $20, $c0, $e4, $00, $1a, $38
    db $c6, $c0, $fe, $e0, $fe, $04, $28, $f8, $20, $ec, $1d, $01, $52, $5e, $61, $9f
    db $30, $00, $cf, $90, $6f, $18, $67, $0c, $33, $24, $04, $1b, $02, $1d, $05, $0a
    db $55, $09, $7d, $fe, $60, $3e, $6a, $04, $e8, $08, $47, $bf, $f9, $06, $f9, $00
    db $06, $f1, $0e, $e0, $1f, $c7, $3f, $bf, $c0, $e3, $1d, $da, $30, $7f, $80, $ff
    db $80, $bf, $c0, $00, $d5, $0b, $a1, $0f, $d5, $0b, $ab, $05, $00, $85, $0b, $c9
    db $07, $a5, $0b, $c3, $0d, $84, $c8, $18, $e7, $d8, $c6, $f9, $78, $1c, $1f, $ff
    db $00, $9f, $7f, $5f, $bf, $9e, $7f, $dc, $3f, $00, $b8, $5f, $c0, $3f, $e0, $1e
    db $ea, $d4, $00, $c3, $b8, $06, $f0, $0e, $e1, $05, $c2, $00, $2e, $81, $5c, $03
    db $a8, $17, $ff, $07, $40, $f7, $03, $04, $ae, $5f, $5d, $be, $bb, $7c, $00, $7e
    db $f9, $f8, $f7, $b2, $cd, $e5, $9a, $00, $ee, $11, $cc, $33, $98, $66, $3a, $c4
    db $0b, $70, $8c, $70, $88, $9b, $02, $80, $f5, $15, $09, $27, $90, $60, $0c, $02
    db $01, $c5, $38, $a3, $5f, $dd, $23, $00, $ee, $11, $77, $88, $9b, $64, $41, $3e
    db $1a, $20, $1f, $10, $23, $02, $8a, $0e, $7f, $8c, $15, $87, $07, $7f, $53, $af
    db $ff, $c0, $d7, $04, $9c, $11, $2f, $0a, $0b, $fd, $fe, $a5, $0b, $1e, $0d, $d1
    db $82, $31, $7e, $29, $81, $04, $28, $c3, $3c, $e5, $18, $ef, $10, $c0, $31, $00
    db $01, $d5, $2b, $6b, $17, $d7, $2f, $ef, $01, $1f, $de, $3f, $bd, $7e, $72, $fd
    db $dd, $03, $00, $ff, $c0, $fe, $81, $fc, $4b, $b0, $b7, $00, $40, $67, $80, $4e
    db $80, $9c, $00, $e8, $38, $10, $d0, $d8, $05, $a5, $00, $a9, $27, $08, $07, $04
    db $61, $03, $1e, $0c, $b8, $2f, $8d, $73, $47, $b8, $70, $05, $02, $06, $7c, $03
    db $3e, $01, $1f, $b0, $06, $ff, $40, $fe, $9c, $08, $ff, $1f, $57, $af, $23, $df
    db $08, $92, $6d, $e5, $1a, $78, $0e, $f3, $8f, $f3, $18, $cf, $f7, $ef, $b8, $18
    db $8c, $18, $e7, $f8, $f6, $12, $f9, $fd, $fb, $32, $07, $ff, $fb, $20, $01, $fe
    db $00, $1f, $bc, $7f, $f5, $fa, $ea, $f5, $95, $00, $ea, $a3, $5c, $c1, $fe, $82
    db $fc, $07, $00, $f8, $8b, $70, $36, $c0, $5c, $80, $b8, $b4, $b2, $07, $30, $be
    db $13, $22, $39, $03, $cf, $5a, $00, $f1, $0a, $0e, $fc, $03, $3f, $26, $07, $06
    db $f9, $21, $df, $00, $3f, $67, $9f, $13, $ef, $c8, $37, $e0, $00, $1f, $38, $07
    db $c6, $01, $31, $00, $fd, $00, $fe, $f6, $f9, $dc, $e3, $78, $87, $a2, $00, $5d
    db $45, $ba, $00, $ff, $02, $fc, $4f, $00, $b0, $1f, $e0, $3e, $c0, $7c, $80, $b0
    db $3a, $40, $60, $78, $11, $5c, $48, $8c, $0f, $0c, $62, $60, $08, $60, $f0, $9c
    db $07, $43, $43

    jr nz, jr_0c0_5544                            ; $5537: $20 $0b

    and d                                         ; $5539: $a2
    ld b, $40                                     ; $553a: $06 $40
    rst $38                                       ; $553c: $ff
    ld bc, $fba0                                  ; $553d: $01 $a0 $fb

Jump_0c0_5540:
    db $fc                                        ; $5540: $fc
    ld hl, sp-$08                                 ; $5541: $f8 $f8
    ld sp, hl                                     ; $5543: $f9

jr_0c0_5544:
    ld sp, hl                                     ; $5544: $f9
    jr nz, @-$06                                  ; $5545: $20 $f8

    ld hl, sp+$20                                 ; $5547: $f8 $20
    jr nc, jr_0c0_554b                            ; $5549: $30 $00

jr_0c0_554b:
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    ret nz                                        ; $554d: $c0

    cp $20                                        ; $554e: $fe $20
    db $fc                                        ; $5550: $fc
    nop                                           ; $5551: $00
    jr nc, jr_0c0_556c                            ; $5552: $30 $18

    ret nz                                        ; $5554: $c0

    ldh [$c0], a                                  ; $5555: $e0 $c0
    ld h, b                                       ; $5557: $60

jr_0c0_5558:
    ret z                                         ; $5558: $c8

    inc b                                         ; $5559: $04
    ld h, a                                       ; $555a: $67
    db $e3                                        ; $555b: $e3
    ld h, h                                       ; $555c: $64
    di                                            ; $555d: $f3
    ld h, h                                       ; $555e: $64
    ld b, b                                       ; $555f: $40
    jr jr_0c0_5571                                ; $5560: $18 $0f

    rlca                                          ; $5562: $07
    add d                                         ; $5563: $82
    ld [bc], a                                    ; $5564: $02
    nop                                           ; $5565: $00

jr_0c0_5566:
    rst $20                                       ; $5566: $e7
    rst $00                                       ; $5567: $c7
    rrca                                          ; $5568: $0f
    rst $08                                       ; $5569: $cf
    rrca                                          ; $556a: $0f
    ld d, b                                       ; $556b: $50

jr_0c0_556c:
    jr c, jr_0c0_5566                             ; $556c: $38 $f8

    inc b                                         ; $556e: $04
    ldh a, [$c0]                                  ; $556f: $f0 $c0

jr_0c0_5571:
    db $e3                                        ; $5571: $e3
    adc l                                         ; $5572: $8d
    add [hl]                                      ; $5573: $86
    ld h, b                                       ; $5574: $60
    jr c, jr_0c0_55f3                             ; $5575: $38 $7c

    ld a, [hl]                                    ; $5577: $7e
    ld [$7c78], sp                                ; $5578: $08 $78 $7c
    inc b                                         ; $557b: $04
    ld bc, $1870                                  ; $557c: $01 $70 $18
    add a                                         ; $557f: $87
    add e                                         ; $5580: $83
    rlca                                          ; $5581: $07
    ld bc, $6413                                  ; $5582: $01 $13 $64
    jr nc, jr_0c0_5558                            ; $5585: $30 $d1

    ld h, b                                       ; $5587: $60
    or d                                          ; $5588: $b2
    rst $00                                       ; $5589: $c7
    add b                                         ; $558a: $80
    jr c, jr_0c0_558d                             ; $558b: $38 $00

jr_0c0_558d:
    ccf                                           ; $558d: $3f
    ccf                                           ; $558e: $3f
    rra                                           ; $558f: $1f
    ccf                                           ; $5590: $3f
    ccf                                           ; $5591: $3f
    sbc a                                         ; $5592: $9f
    cp $fc                                        ; $5593: $fe $fc
    adc c                                         ; $5595: $89
    ld [bc], a                                    ; $5596: $02
    ld e, b                                       ; $5597: $58
    ld a, h                                       ; $5598: $7c
    add b                                         ; $5599: $80
    db $fc                                        ; $559a: $fc
    ld [bc], a                                    ; $559b: $02
    ld d, b                                       ; $559c: $50
    di                                            ; $559d: $f3
    db $e4                                        ; $559e: $e4
    ld [bc], a                                    ; $559f: $02
    ld e, b                                       ; $55a0: $58
    nop                                           ; $55a1: $00
    rst $18                                       ; $55a2: $df
    ld c, $dc                                     ; $55a3: $0e $dc
    ld [$01d0], sp                                ; $55a5: $08 $d0 $01
    rst $10                                       ; $55a8: $d7
    inc bc                                        ; $55a9: $03
    nop                                           ; $55aa: $00
    push de                                       ; $55ab: $d5
    ld b, $d3                                     ; $55ac: $06 $d3
    inc b                                         ; $55ae: $04
    sub $00                                       ; $55af: $d6 $00
    ret nc                                        ; $55b1: $d0

    ld [bc], a                                    ; $55b2: $02
    nop                                           ; $55b3: $00
    ld b, $07                                     ; $55b4: $06 $07
    ld [hl-], a                                   ; $55b6: $32
    ld h, e                                       ; $55b7: $63
    sub b                                         ; $55b8: $90
    pop hl                                        ; $55b9: $e1
    ld a, c                                       ; $55ba: $79
    add b                                         ; $55bb: $80
    nop                                           ; $55bc: $00
    db $fc                                        ; $55bd: $fc
    nop                                           ; $55be: $00
    adc [hl]                                      ; $55bf: $8e
    nop                                           ; $55c0: $00
    ld b, $08                                     ; $55c1: $06 $08
    daa                                           ; $55c3: $27
    ld c, b                                       ; $55c4: $48
    nop                                           ; $55c5: $00
    dec de                                        ; $55c6: $1b
    inc e                                         ; $55c7: $1c
    ld l, a                                       ; $55c8: $6f
    jr nc, jr_0c0_55da                            ; $55c9: $30 $0f

    nop                                           ; $55cb: $00
    rst $00                                       ; $55cc: $c7
    ld [$4700], sp                                ; $55cd: $08 $00 $47
    ret z                                         ; $55d0: $c8

    ld b, a                                       ; $55d1: $47
    ld c, b                                       ; $55d2: $48
    ld b, a                                       ; $55d3: $47
    ld [$0847], sp                                ; $55d4: $08 $47 $08
    nop                                           ; $55d7: $00
    jr nz, jr_0c0_55ea                            ; $55d8: $20 $10

jr_0c0_55da:
    add sp, $70                                   ; $55da: $e8 $70
    cp b                                          ; $55dc: $b8
    ld b, b                                       ; $55dd: $40
    ld a, b                                       ; $55de: $78
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    ld a, h                                       ; $55e1: $7c
    nop                                           ; $55e2: $00
    inc e                                         ; $55e3: $1c
    jr nz, jr_0c0_55fe                            ; $55e4: $20 $18

    jr nz, jr_0c0_55f8                            ; $55e6: $20 $10

    jr nz, jr_0c0_55eb                            ; $55e8: $20 $01

jr_0c0_55ea:
    ld a, e                                       ; $55ea: $7b

jr_0c0_55eb:
    add h                                         ; $55eb: $84
    ld [hl], e                                    ; $55ec: $73
    add b                                         ; $55ed: $80
    pop af                                        ; $55ee: $f1
    add d                                         ; $55ef: $82
    ld [hl], c                                    ; $55f0: $71
    ld [bc], a                                    ; $55f1: $02
    nop                                           ; $55f2: $00

jr_0c0_55f3:
    nop                                           ; $55f3: $00
    ld [hl], d                                    ; $55f4: $72
    add c                                         ; $55f5: $81
    ld [hl], d                                    ; $55f6: $72
    add b                                         ; $55f7: $80

jr_0c0_55f8:
    ld [hl], b                                    ; $55f8: $70
    add b                                         ; $55f9: $80
    sbc a                                         ; $55fa: $9f
    rra                                           ; $55fb: $1f
    db $10                                        ; $55fc: $10
    rst $18                                       ; $55fd: $df

jr_0c0_55fe:
    rrca                                          ; $55fe: $0f
    rst $18                                       ; $55ff: $df
    ret z                                         ; $5600: $c8

    nop                                           ; $5601: $00
    rst $08                                       ; $5602: $cf
    rrca                                          ; $5603: $0f
    adc a                                         ; $5604: $8f

jr_0c0_5605:
    rrca                                          ; $5605: $0f
    ld [$1f3e], sp                                ; $5606: $08 $3e $1f
    add $7f                                       ; $5609: $c6 $7f
    jr nz, jr_0c0_5656                            ; $560b: $20 $49

    add e                                         ; $560d: $83
    ld bc, $400b                                  ; $560e: $01 $0b $40
    ld bc, $18a0                                  ; $5611: $01 $a0 $18
    jp nz, Jump_000_1a80                          ; $5614: $c2 $80 $1a

    nop                                           ; $5617: $00
    ld [hl], d                                    ; $5618: $72
    jr nz, @+$0e                                  ; $5619: $20 $0c

    ld h, $40                                     ; $561b: $26 $40
    ld [hl+], a                                   ; $561d: $22
    nop                                           ; $561e: $00
    sbc [hl]                                      ; $561f: $9e
    ld e, b                                       ; $5620: $58
    and b                                         ; $5621: $a0
    jr c, @-$1b                                   ; $5622: $38 $e3

    db $e4                                        ; $5624: $e4
    nop                                           ; $5625: $00
    res 0, h                                      ; $5626: $cb $84
    dec bc                                        ; $5628: $0b
    inc e                                         ; $5629: $1c
    ld h, a                                       ; $562a: $67
    jr c, jr_0c0_5605                             ; $562b: $38 $d8

    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    rst $18                                       ; $562f: $df
    ld [$00c0], sp                                ; $5630: $08 $c0 $00
    rst $18                                       ; $5633: $df
    nop                                           ; $5634: $00
    db $e4                                        ; $5635: $e4
    dec de                                        ; $5636: $1b
    nop                                           ; $5637: $00
    pop hl                                        ; $5638: $e1
    ld [bc], a                                    ; $5639: $02
    push bc                                       ; $563a: $c5
    ld b, $cb                                     ; $563b: $06 $cb
    inc c                                         ; $563d: $0c
    ld h, a                                       ; $563e: $67
    ret z                                         ; $563f: $c8

    ld [$c867], sp                                ; $5640: $08 $67 $c8
    rlca                                          ; $5643: $07
    ld [$0090], sp                                ; $5644: $08 $90 $00
    adc b                                         ; $5647: $88
    rlca                                          ; $5648: $07
    ld [$2770], sp                                ; $5649: $08 $70 $27
    ld [bc], a                                    ; $564c: $02
    nop                                           ; $564d: $00
    sub h                                         ; $564e: $94
    ld [$4804], sp                                ; $564f: $08 $04 $48
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    inc h                                         ; $5654: $24
    inc c                                         ; $5655: $0c

jr_0c0_5656:
    ld d, b                                       ; $5656: $50
    inc a                                         ; $5657: $3c
    ld bc, $3d10                                  ; $5658: $01 $10 $3d
    ld [bc], a                                    ; $565b: $02
    db $10                                        ; $565c: $10
    ld [hl], b                                    ; $565d: $70
    add b                                         ; $565e: $80
    ld [hl], b                                    ; $565f: $70
    add e                                         ; $5660: $83
    nop                                           ; $5661: $00
    ld [hl], b                                    ; $5662: $70
    add e                                         ; $5663: $83
    ld [hl], e                                    ; $5664: $73
    add b                                         ; $5665: $80
    ld [hl], b                                    ; $5666: $70
    add c                                         ; $5667: $81
    ld [hl], b                                    ; $5668: $70
    add c                                         ; $5669: $81
    ld b, b                                       ; $566a: $40
    ld [hl], c                                    ; $566b: $71
    and b                                         ; $566c: $a0
    nop                                           ; $566d: $00
    ld b, $07                                     ; $566e: $06 $07
    inc bc                                        ; $5670: $03
    and $e0                                       ; $5671: $e6 $e0
    ld b, $00                                     ; $5673: $06 $00
    db $e4                                        ; $5675: $e4
    inc b                                         ; $5676: $04
    pop hl                                        ; $5677: $e1
    inc b                                         ; $5678: $04
    pop af                                        ; $5679: $f1
    ld bc, $01f3                                  ; $567a: $01 $f3 $01
    nop                                           ; $567d: $00
    ld [hl], d                                    ; $567e: $72
    add e                                         ; $567f: $83
    ld b, c                                       ; $5680: $41
    add hl, sp                                    ; $5681: $39
    inc de                                        ; $5682: $13
    ld h, c                                       ; $5683: $61
    ld [hl], e                                    ; $5684: $73
    ld b, e                                       ; $5685: $43
    nop                                           ; $5686: $00

jr_0c0_5687:
    and e                                         ; $5687: $a3
    rst $00                                       ; $5688: $c7
    rst $20                                       ; $5689: $e7
    add a                                         ; $568a: $87
    ld b, a                                       ; $568b: $47
    adc a                                         ; $568c: $8f
    adc a                                         ; $568d: $8f
    rrca                                          ; $568e: $0f
    nop                                           ; $568f: $00
    sbc a                                         ; $5690: $9f
    rra                                           ; $5691: $1f
    jr c, jr_0c0_5694                             ; $5692: $38 $00

jr_0c0_5694:
    dec de                                        ; $5694: $1b
    add h                                         ; $5695: $84
    add [hl]                                      ; $5696: $86
    pop bc                                        ; $5697: $c1
    ld [$e0e1], sp                                ; $5698: $08 $e1 $e0
    db $f4                                        ; $569b: $f4
    ld hl, sp+$4a                                 ; $569c: $f8 $4a
    add hl, de                                    ; $569e: $19
    rst $38                                       ; $569f: $ff
    add b                                         ; $56a0: $80
    cp $22                                        ; $56a1: $fe $22
    add c                                         ; $56a3: $81
    ld a, a                                       ; $56a4: $7f
    ld c, $01                                     ; $56a5: $0e $01
    ld a, h                                       ; $56a7: $7c
    add b                                         ; $56a8: $80
    db $fd                                        ; $56a9: $fd
    ld [bc], a                                    ; $56aa: $02
    db $10                                        ; $56ab: $10
    ld e, a                                       ; $56ac: $5f
    nop                                           ; $56ad: $00
    ldh [$67], a                                  ; $56ae: $e0 $67
    add b                                         ; $56b0: $80
    jp Jump_000_0304                              ; $56b1: $c3 $04 $03


jr_0c0_56b4:
    inc b                                         ; $56b4: $04
    or e                                          ; $56b5: $b3
    ld b, b                                       ; $56b6: $40
    ld h, h                                       ; $56b7: $64
    ld c, d                                       ; $56b8: $4a
    add hl, de                                    ; $56b9: $19
    rst $08                                       ; $56ba: $cf
    ld [$00cf], sp                                ; $56bb: $08 $cf $00
    jp Jump_0c0_4004                              ; $56be: $c3 $04 $40


    db $d3                                        ; $56c1: $d3
    ld [bc], a                                    ; $56c2: $02
    nop                                           ; $56c3: $00
    rst $10                                       ; $56c4: $d7
    nop                                           ; $56c5: $00
    pop de                                        ; $56c6: $d1
    ld [bc], a                                    ; $56c7: $02

jr_0c0_56c8:
    pop de                                        ; $56c8: $d1
    ld [bc], a                                    ; $56c9: $02
    adc b                                         ; $56ca: $88
    sub h                                         ; $56cb: $94
    ld [$08a7], sp                                ; $56cc: $08 $a7 $08
    add a                                         ; $56cf: $87
    ld [bc], a                                    ; $56d0: $02
    nop                                           ; $56d1: $00
    rst $10                                       ; $56d2: $d7
    ld [$10f7], sp                                ; $56d3: $08 $f7 $10
    jr jr_0c0_56b4                                ; $56d6: $18 $dc

    nop                                           ; $56d8: $00
    and b                                         ; $56d9: $a0
    jr jr_0c0_56e3                                ; $56da: $18 $07

    ld [$0817], sp                                ; $56dc: $08 $17 $08
    ld [bc], a                                    ; $56df: $02
    sub a                                         ; $56e0: $97
    jr jr_0c0_56e3                                ; $56e1: $18 $00

jr_0c0_56e3:
    nop                                           ; $56e3: $00
    ld a, a                                       ; $56e4: $7f
    nop                                           ; $56e5: $00
    sub [hl]                                      ; $56e6: $96
    db $10                                        ; $56e7: $10
    jr c, jr_0c0_56ea                             ; $56e8: $38 $00

jr_0c0_56ea:
    add hl, sp                                    ; $56ea: $39
    add hl, sp                                    ; $56eb: $39
    dec de                                        ; $56ec: $1b
    jr c, jr_0c0_5687                             ; $56ed: $38 $98

    jr c, jr_0c0_5710                             ; $56ef: $38 $1f

    ccf                                           ; $56f1: $3f
    ld [$07f8], sp                                ; $56f2: $08 $f8 $07
    ld [hl], b                                    ; $56f5: $70
    add b                                         ; $56f6: $80
    ld [hl], $01                                  ; $56f7: $36 $01
    add d                                         ; $56f9: $82
    ld a, d                                       ; $56fa: $7a
    add b                                         ; $56fb: $80
    nop                                           ; $56fc: $00
    inc bc                                        ; $56fd: $03
    nop                                           ; $56fe: $00
    ld [bc], a                                    ; $56ff: $02
    ld bc, $fffe                                  ; $5700: $01 $fe $ff
    cp $fe                                        ; $5703: $fe $fe
    nop                                           ; $5705: $00
    ld a, a                                       ; $5706: $7f
    add d                                         ; $5707: $82
    ld a, c                                       ; $5708: $79
    add [hl]                                      ; $5709: $86
    cp $00                                        ; $570a: $fe $00
    ld a, $40                                     ; $570c: $3e $40
    ld b, c                                       ; $570e: $41
    inc a                                         ; $570f: $3c

jr_0c0_5710:
    ld [bc], a                                    ; $5710: $02
    nop                                           ; $5711: $00
    add hl, sp                                    ; $5712: $39
    ld b, c                                       ; $5713: $41
    ld d, e                                       ; $5714: $53
    ld h, c                                       ; $5715: $61
    cp a                                          ; $5716: $bf
    push de                                       ; $5717: $d5
    ld bc, $7f0e                                  ; $5718: $01 $0e $7f
    ccf                                           ; $571b: $3f
    ld a, a                                       ; $571c: $7f
    ld a, a                                       ; $571d: $7f
    ld c, c                                       ; $571e: $49
    add hl, hl                                    ; $571f: $29
    ldh [$39], a                                  ; $5720: $e0 $39
    ld bc, $f800                                  ; $5722: $01 $00 $f8
    inc [hl]                                      ; $5725: $34
    pop hl                                        ; $5726: $e1
    pop af                                        ; $5727: $f1
    sub [hl]                                      ; $5728: $96
    jr jr_0c0_5731                                ; $5729: $18 $06

    jr z, jr_0c0_57a9                             ; $572b: $28 $7c

    ldh [rHDMA1], a                               ; $572d: $e0 $51
    db $e3                                        ; $572f: $e3
    db $e4                                        ; $5730: $e4

jr_0c0_5731:
    nop                                           ; $5731: $00
    ld h, e                                       ; $5732: $63
    db $e4                                        ; $5733: $e4
    db $db                                        ; $5734: $db
    nop                                           ; $5735: $00
    ret c                                         ; $5736: $d8

    ld [$0cdf], sp                                ; $5737: $08 $df $0c
    pop bc                                        ; $573a: $c1
    sub h                                         ; $573b: $94
    add hl, bc                                    ; $573c: $09
    inc b                                         ; $573d: $04
    jr jr_0c0_56c8                                ; $573e: $18 $88

    nop                                           ; $5740: $00
    inc hl                                        ; $5741: $23
    ld bc, $96a3                                  ; $5742: $01 $a3 $96
    ld b, c                                       ; $5745: $41
    ldh a, [$a1]                                  ; $5746: $f0 $a1
    ld de, $0079                                  ; $5748: $11 $79 $00
    ld a, e                                       ; $574b: $7b
    nop                                           ; $574c: $00
    rl d                                          ; $574d: $cb $12
    ld bc, $1180                                  ; $574f: $01 $80 $11
    jr c, jr_0c0_5754                             ; $5752: $38 $00

jr_0c0_5754:
    ld sp, $5160                                  ; $5754: $31 $60 $51
    ld h, b                                       ; $5757: $60
    inc a                                         ; $5758: $3c
    nop                                           ; $5759: $00
    ld [$0007], sp                                ; $575a: $08 $07 $00
    add c                                         ; $575d: $81
    ret nz                                        ; $575e: $c0

    ld hl, sp-$10                                 ; $575f: $f8 $f0
    ld a, [hl]                                    ; $5761: $7e
    db $fc                                        ; $5762: $fc
    ld a, h                                       ; $5763: $7c
    db $fc                                        ; $5764: $fc
    nop                                           ; $5765: $00
    ld a, c                                       ; $5766: $79
    ld hl, sp-$6d                                 ; $5767: $f8 $93
    ld h, c                                       ; $5769: $61
    ld [bc], a                                    ; $576a: $02
    inc bc                                        ; $576b: $03
    sbc l                                         ; $576c: $9d
    cp $50                                        ; $576d: $fe $50
    cp $c4                                        ; $576f: $fe $c4
    ld [bc], a                                    ; $5771: $02
    di                                            ; $5772: $f3
    inc l                                         ; $5773: $2c
    ld bc, $87cf                                  ; $5774: $01 $cf $87
    ld c, a                                       ; $5777: $4f
    adc a                                         ; $5778: $8f
    inc a                                         ; $5779: $3c
    adc a                                         ; $577a: $8f
    rra                                           ; $577b: $1f
    ld l, a                                       ; $577c: $6f
    ld a, [bc]                                    ; $577d: $0a
    sub a                                         ; $577e: $97
    jr nc, @-$66                                  ; $577f: $30 $98

    nop                                           ; $5781: $00
    ld bc, $e718                                  ; $5782: $01 $18 $e7
    di                                            ; $5785: $f3
    ld [$f0e0], sp                                ; $5786: $08 $e0 $f0
    rst $28                                       ; $5789: $ef
    ldh a, [$ef]                                  ; $578a: $f0 $ef
    ld [de], a                                    ; $578c: $12
    nop                                           ; $578d: $00
    add c                                         ; $578e: $81
    cp $2c                                        ; $578f: $fe $2c
    ld a, [hl]                                    ; $5791: $7e
    add b                                         ; $5792: $80
    inc [hl]                                      ; $5793: $34
    ld [$f6c0], sp                                ; $5794: $08 $c0 $f6
    ld a, [bc]                                    ; $5797: $0a
    jp $0100                                      ; $5798: $c3 $00 $01


    inc bc                                        ; $579b: $03
    nop                                           ; $579c: $00
    jr z, jr_0c0_57b0                             ; $579d: $28 $11

    bit 4, h                                      ; $579f: $cb $64
    bit 1, h                                      ; $57a1: $cb $4c
    rra                                           ; $57a3: $1f
    ld [$b703], sp                                ; $57a4: $08 $03 $b7
    sbc b                                         ; $57a7: $98
    add b                                         ; $57a8: $80

jr_0c0_57a9:
    add b                                         ; $57a9: $80
    ldh a, [$80]                                  ; $57aa: $f0 $80
    inc a                                         ; $57ac: $3c
    dec bc                                        ; $57ad: $0b
    ld l, $0a                                     ; $57ae: $2e $0a

jr_0c0_57b0:
    inc de                                        ; $57b0: $13
    rst $00                                       ; $57b1: $c7
    rrca                                          ; $57b2: $0f
    rst $28                                       ; $57b3: $ef
    nop                                           ; $57b4: $00
    inc bc                                        ; $57b5: $03
    rlca                                          ; $57b6: $07
    rlca                                          ; $57b7: $07
    pop hl                                        ; $57b8: $e1
    jr jr_0c0_580d                                ; $57b9: $18 $52

    ld e, e                                       ; $57bb: $5b
    ld [hl], h                                    ; $57bc: $74

jr_0c0_57bd:
    add b                                         ; $57bd: $80
    ld [hl-], a                                   ; $57be: $32

jr_0c0_57bf:
    inc hl                                        ; $57bf: $23
    ld l, b                                       ; $57c0: $68
    jr c, jr_0c0_57bf                             ; $57c1: $38 $fc

    db $10                                        ; $57c3: $10
    cp $01                                        ; $57c4: $fe $01
    jr z, @+$81                                   ; $57c6: $28 $7f

    add b                                         ; $57c8: $80
    db $10                                        ; $57c9: $10
    ld a, a                                       ; $57ca: $7f
    add b                                         ; $57cb: $80
    ld a, [hl]                                    ; $57cc: $7e
    ld [bc], a                                    ; $57cd: $02
    db $10                                        ; $57ce: $10
    cp $00                                        ; $57cf: $fe $00
    cp [hl]                                       ; $57d1: $be
    ld b, b                                       ; $57d2: $40
    nop                                           ; $57d3: $00
    cp [hl]                                       ; $57d4: $be
    ld b, b                                       ; $57d5: $40
    inc b                                         ; $57d6: $04
    ld hl, sp-$72                                 ; $57d7: $f8 $8e
    nop                                           ; $57d9: $00
    rlca                                          ; $57da: $07
    ld [$672b], sp                                ; $57db: $08 $2b $67
    ld c, b                                       ; $57de: $48
    ld [bc], a                                    ; $57df: $02
    ld [$066f], sp                                ; $57e0: $08 $6f $06
    nop                                           ; $57e3: $00
    ld a, a                                       ; $57e4: $7f
    ld a, c                                       ; $57e5: $79
    ld [$031a], sp                                ; $57e6: $08 $1a $03
    ld b, $9f                                     ; $57e9: $06 $9f
    rra                                           ; $57eb: $1f
    adc a                                         ; $57ec: $8f
    rra                                           ; $57ed: $1f
    rst $08                                       ; $57ee: $cf
    ld [bc], a                                    ; $57ef: $02
    nop                                           ; $57f0: $00
    or b                                          ; $57f1: $b0
    dec bc                                        ; $57f2: $0b
    db $fc                                        ; $57f3: $fc
    ld b, b                                       ; $57f4: $40
    rst $38                                       ; $57f5: $ff
    dec a                                         ; $57f6: $3d
    ld bc, $f9f9                                  ; $57f7: $01 $f9 $f9
    pop af                                        ; $57fa: $f1
    ld [c], a                                     ; $57fb: $e2
    di                                            ; $57fc: $f3
    jp $e644                                      ; $57fd: $c3 $44 $e6


    ld a, [hl-]                                   ; $5800: $3a
    inc de                                        ; $5801: $13
    rst $38                                       ; $5802: $ff
    ld a, a                                       ; $5803: $7f
    ccf                                           ; $5804: $3f
    ld bc, $3e00                                  ; $5805: $01 $00 $3e
    inc a                                         ; $5808: $3c
    dec de                                        ; $5809: $1b
    ld a, $3c                                     ; $580a: $3e $3c
    inc a                                         ; $580c: $3c

jr_0c0_580d:
    ret nc                                        ; $580d: $d0

    ld b, e                                       ; $580e: $43
    ld [c], a                                     ; $580f: $e2
    ld [$699f], sp                                ; $5810: $08 $9f $69
    ld [$291c], sp                                ; $5813: $08 $1c $29

jr_0c0_5816:
    sub b                                         ; $5816: $90
    jr c, @+$0a                                   ; $5817: $38 $08

    ld a, $40                                     ; $5819: $3e $40
    ld [bc], a                                    ; $581b: $02
    jr z, jr_0c0_587c                             ; $581c: $28 $5e

    jr nz, jr_0c0_587e                            ; $581e: $20 $5e

    jr nz, jr_0c0_5832                            ; $5820: $20 $10

    ld e, $20                                     ; $5822: $1e $20
    ld l, a                                       ; $5824: $6f
    ld h, [hl]                                    ; $5825: $66
    nop                                           ; $5826: $00
    ld l, a                                       ; $5827: $6f
    ld c, b                                       ; $5828: $48
    ld b, a                                       ; $5829: $47
    ld l, b                                       ; $582a: $68
    add [hl]                                      ; $582b: $86
    ld [$0f08], sp                                ; $582c: $08 $08 $0f
    ld [$081f], sp                                ; $582f: $08 $1f $08

jr_0c0_5832:
    ld h, h                                       ; $5832: $64
    ld [$0868], sp                                ; $5833: $08 $68 $08
    sbc $00                                       ; $5836: $de $00
    rra                                           ; $5838: $1f
    sbc h                                         ; $5839: $9c
    jr jr_0c0_57bd                                ; $583a: $18 $81

    db $10                                        ; $583c: $10
    add a                                         ; $583d: $87
    inc bc                                        ; $583e: $03
    rst $38                                       ; $583f: $ff
    db $10                                        ; $5840: $10
    rst $38                                       ; $5841: $ff
    db $fd                                        ; $5842: $fd
    cp $94                                        ; $5843: $fe $94
    dec bc                                        ; $5845: $0b
    ld b, $00                                     ; $5846: $06 $00
    ld de, $0021                                  ; $5848: $11 $21 $00
    call nc, $1ee8                                ; $584b: $d4 $e8 $1e
    add b                                         ; $584e: $80
    push bc                                       ; $584f: $c5
    adc [hl]                                      ; $5850: $8e
    rrca                                          ; $5851: $0f
    jr jr_0c0_5854                                ; $5852: $18 $00

jr_0c0_5854:
    ld l, a                                       ; $5854: $6f
    jr nc, jr_0c0_5816                            ; $5855: $30 $bf

    ld b, b                                       ; $5857: $40
    rrca                                          ; $5858: $0f
    nop                                           ; $5859: $00
    rst $10                                       ; $585a: $d7
    ret z                                         ; $585b: $c8

    nop                                           ; $585c: $00
    rst $10                                       ; $585d: $d7
    ret z                                         ; $585e: $c8

    ld d, a                                       ; $585f: $57
    ld c, b                                       ; $5860: $48
    dec [hl]                                      ; $5861: $35
    ld [$0101], sp                                ; $5862: $08 $01 $01
    nop                                           ; $5865: $00
    and c                                         ; $5866: $a1
    ld h, e                                       ; $5867: $63
    rst $20                                       ; $5868: $e7
    ld [bc], a                                    ; $5869: $02
    dec c                                         ; $586a: $0d
    ld b, $1b                                     ; $586b: $06 $1b
    inc c                                         ; $586d: $0c
    ld bc, $1837                                  ; $586e: $01 $37 $18
    rlca                                          ; $5871: $07
    nop                                           ; $5872: $00
    sbc a                                         ; $5873: $9f
    sbc a                                         ; $5874: $9f
    rra                                           ; $5875: $1f
    inc bc                                        ; $5876: $03
    ld [$1f00], sp                                ; $5877: $08 $00 $1f
    add b                                         ; $587a: $80
    ld [bc], a                                    ; $587b: $02

jr_0c0_587c:
    ld hl, sp+$00                                 ; $587c: $f8 $00

jr_0c0_587e:
    ldh [rNR24], a                                ; $587e: $e0 $19
    pop bc                                        ; $5880: $c1
    ret nz                                        ; $5881: $c0

    ld b, b                                       ; $5882: $40
    nop                                           ; $5883: $00
    ld h, d                                       ; $5884: $62
    inc c                                         ; $5885: $0c
    dec b                                         ; $5886: $05
    inc bc                                        ; $5887: $03
    ld de, $f020                                  ; $5888: $11 $20 $f0
    ld c, h                                       ; $588b: $4c
    ld [$c08f], sp                                ; $588c: $08 $8f $c0
    ld b, a                                       ; $588f: $47
    adc b                                         ; $5890: $88
    cp h                                          ; $5891: $bc
    nop                                           ; $5892: $00
    ld hl, sp-$07                                 ; $5893: $f8 $f9
    pop af                                        ; $5895: $f1

jr_0c0_5896:
    nop                                           ; $5896: $00
    ld a, [c]                                     ; $5897: $f2
    db $e3                                        ; $5898: $e3
    ld h, l                                       ; $5899: $65
    add $4b                                       ; $589a: $c6 $4b
    inc c                                         ; $589c: $0c
    rla                                           ; $589d: $17
    jr jr_0c0_58a0                                ; $589e: $18 $00

jr_0c0_58a0:
    cpl                                           ; $58a0: $2f
    db $10                                        ; $58a1: $10
    ld a, a                                       ; $58a2: $7f
    rst $38                                       ; $58a3: $ff
    ld b, a                                       ; $58a4: $47
    ccf                                           ; $58a5: $3f
    inc bc                                        ; $58a6: $03
    inc bc                                        ; $58a7: $03
    nop                                           ; $58a8: $00
    ld de, $2913                                  ; $58a9: $11 $13 $29
    ld sp, $619c                                  ; $58ac: $31 $9c $61
    db $fc                                        ; $58af: $fc
    nop                                           ; $58b0: $00
    ld b, $3c                                     ; $58b1: $06 $3c
    nop                                           ; $58b3: $00
    db $fc                                        ; $58b4: $fc
    db $fd                                        ; $58b5: $fd
    db $fd                                        ; $58b6: $fd
    ld a, [de]                                    ; $58b7: $1a
    ld [bc], a                                    ; $58b8: $02
    inc h                                         ; $58b9: $24
    add hl, sp                                    ; $58ba: $39
    ld e, a                                       ; $58bb: $5f
    db $10                                        ; $58bc: $10
    jr nz, jr_0c0_58de                            ; $58bd: $20 $1f

    ldh [rNR41], a                                ; $58bf: $e0 $20
    add hl, sp                                    ; $58c1: $39
    ld a, $40                                     ; $58c2: $3e $40
    rlca                                          ; $58c4: $07
    ld hl, sp+$01                                 ; $58c5: $f8 $01
    adc a                                         ; $58c7: $8f
    nop                                           ; $58c8: $00

jr_0c0_58c9:
    add a                                         ; $58c9: $87
    ld [$3857], sp                                ; $58ca: $08 $57 $38
    ld a, h                                       ; $58cd: $7c
    sub b                                         ; $58ce: $90
    inc b                                         ; $58cf: $04
    add b                                         ; $58d0: $80
    sbc [hl]                                      ; $58d1: $9e
    nop                                           ; $58d2: $00
    ld a, a                                       ; $58d3: $7f
    adc l                                         ; $58d4: $8d
    ld b, $8b                                     ; $58d5: $06 $8b
    inc c                                         ; $58d7: $0c
    rst $20                                       ; $58d8: $e7
    jr jr_0c0_58dc                                ; $58d9: $18 $01

    rra                                           ; $58db: $1f

jr_0c0_58dc:
    nop                                           ; $58dc: $00
    rra                                           ; $58dd: $1f

jr_0c0_58de:
    nop                                           ; $58de: $00
    ld c, a                                       ; $58df: $4f
    ret nc                                        ; $58e0: $d0

    rst $08                                       ; $58e1: $cf
    ld [bc], a                                    ; $58e2: $02
    nop                                           ; $58e3: $00
    nop                                           ; $58e4: $00
    ld b, $18                                     ; $58e5: $06 $18
    rra                                           ; $58e7: $1f
    jr nc, jr_0c0_58c9                            ; $58e8: $30 $df

jr_0c0_58ea:
    ld h, b                                       ; $58ea: $60
    adc a                                         ; $58eb: $8f
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    daa                                           ; $58ee: $27
    ld [$6807], sp                                ; $58ef: $08 $07 $68
    daa                                           ; $58f2: $27
    ld l, b                                       ; $58f3: $68
    dec hl                                        ; $58f4: $2b
    ld h, h                                       ; $58f5: $64
    jr jr_0c0_590f                                ; $58f6: $18 $17

    ld c, b                                       ; $58f8: $48
    ld d, a                                       ; $58f9: $57
    cp h                                          ; $58fa: $bc
    ld [bc], a                                    ; $58fb: $02
    ld [bc], a                                    ; $58fc: $02
    jr z, jr_0c0_5896                             ; $58fd: $28 $97

jr_0c0_58ff:
    ld [$0a17], sp                                ; $58ff: $08 $17 $0a
    inc h                                         ; $5902: $24

jr_0c0_5903:
    scf                                           ; $5903: $37
    inc h                                         ; $5904: $24
    ld [hl], a                                    ; $5905: $77
    ld [bc], a                                    ; $5906: $02
    jr nz, @+$75                                  ; $5907: $20 $73

    ld [bc], a                                    ; $5909: $02
    nop                                           ; $590a: $00
    db $d3                                        ; $590b: $d3
    nop                                           ; $590c: $00
    ld b, $d5                                     ; $590d: $06 $d5

jr_0c0_590f:
    ld b, $d7                                     ; $590f: $06 $d7
    inc b                                         ; $5911: $04
    rst $00                                       ; $5912: $c7
    inc b                                         ; $5913: $04
    jp $02b0                                      ; $5914: $c3 $b0 $02


    nop                                           ; $5917: $00
    adc e                                         ; $5918: $8b
    ld [bc], a                                    ; $5919: $02
    nop                                           ; $591a: $00
    ld c, $0b                                     ; $591b: $0e $0b
    sub e                                         ; $591d: $93
    inc b                                         ; $591e: $04
    add e                                         ; $591f: $83
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    reti                                          ; $5922: $d9


    ld h, $f1                                     ; $5923: $26 $f1
    ld c, $81                                     ; $5925: $0e $81
    nop                                           ; $5927: $00
    sub b                                         ; $5928: $90
    nop                                           ; $5929: $00

jr_0c0_592a:
    ld a, [hl+]                                   ; $592a: $2a
    adc a                                         ; $592b: $8f
    db $10                                        ; $592c: $10
    ld [bc], a                                    ; $592d: $02
    jr jr_0c0_58ff                                ; $592e: $18 $cf

    ld [$0f00], sp                                ; $5930: $08 $00 $0f
    ld [bc], a                                    ; $5933: $02
    nop                                           ; $5934: $00
    ld e, $80                                     ; $5935: $1e $80
    inc [hl]                                      ; $5937: $34
    ld bc, $003c                                  ; $5938: $01 $3c $00
    ld bc, $2310                                  ; $593b: $01 $10 $23
    inc bc                                        ; $593e: $03

jr_0c0_593f:
    rlca                                          ; $593f: $07
    rlca                                          ; $5940: $07
    rlca                                          ; $5941: $07
    ld a, a                                       ; $5942: $7f
    rrca                                          ; $5943: $0f
    ld a, a                                       ; $5944: $7f
    ccf                                           ; $5945: $3f
    ld a, b                                       ; $5946: $78
    ld a, [bc]                                    ; $5947: $0a
    call nc, $6049                                ; $5948: $d4 $49 $60
    add hl, bc                                    ; $594b: $09
    nop                                           ; $594c: $00
    ld e, d                                       ; $594d: $5a
    jr nz, jr_0c0_592a                            ; $594e: $20 $da

    jr nz, jr_0c0_58ea                            ; $5950: $20 $98

    ldh [$78], a                                  ; $5952: $e0 $78
    add e                                         ; $5954: $83
    rrca                                          ; $5955: $0f
    ld a, e                                       ; $5956: $7b
    add e                                         ; $5957: $83
    cp e                                          ; $5958: $bb
    ld b, e                                       ; $5959: $43
    and c                                         ; $595a: $a1
    ld [bc], a                                    ; $595b: $02
    ld [bc], a                                    ; $595c: $02
    jr nz, @+$4d                                  ; $595d: $20 $4b

    inc e                                         ; $595f: $1c
    and h                                         ; $5960: $a4
    ld [$c720], sp                                ; $5961: $08 $20 $c7
    ret c                                         ; $5964: $d8

    ld [bc], a                                    ; $5965: $02
    jr jr_0c0_593f                                ; $5966: $18 $d7

    ret z                                         ; $5968: $c8

    rst $00                                       ; $5969: $c7
    ret z                                         ; $596a: $c8

    dec hl                                        ; $596b: $2b
    ld b, b                                       ; $596c: $40
    ld h, h                                       ; $596d: $64
    ld [bc], a                                    ; $596e: $02
    jr jr_0c0_5994                                ; $596f: $18 $23

    ld l, h                                       ; $5971: $6c
    inc bc                                        ; $5972: $03
    ld l, h                                       ; $5973: $6c
    rrca                                          ; $5974: $0f
    ld l, b                                       ; $5975: $68
    ld h, h                                       ; $5976: $64
    ld l, a                                       ; $5977: $6f
    and d                                         ; $5978: $a2
    nop                                           ; $5979: $00
    ld [bc], a                                    ; $597a: $02
    jr jr_0c0_5903                                ; $597b: $18 $86

    jr @+$04                                      ; $597d: $18 $02

    ld [$1806], sp                                ; $597f: $08 $06 $18
    inc b                                         ; $5982: $04
    inc sp                                        ; $5983: $33
    ld h, h                                       ; $5984: $64
    inc hl                                        ; $5985: $23
    ld h, h                                       ; $5986: $64
    ld h, e                                       ; $5987: $63
    ld [bc], a                                    ; $5988: $02
    jr nc, jr_0c0_59f6                            ; $5989: $30 $6b

    ld h, h                                       ; $598b: $64
    pop bc                                        ; $598c: $c1
    and h                                         ; $598d: $a4
    ld [$2804], sp                                ; $598e: $08 $04 $28
    add e                                         ; $5991: $83
    inc b                                         ; $5992: $04
    sub e                                         ; $5993: $93

jr_0c0_5994:
    nop                                           ; $5994: $00
    sbc h                                         ; $5995: $9c
    ld l, h                                       ; $5996: $6c
    ld bc, $9f00                                  ; $5997: $01 $00 $9f
    rra                                           ; $599a: $1f
    sbc b                                         ; $599b: $98
    db $10                                        ; $599c: $10
    sub d                                         ; $599d: $92
    db $10                                        ; $599e: $10
    sub d                                         ; $599f: $92
    ld [de], a                                    ; $59a0: $12
    inc c                                         ; $59a1: $0c
    add b                                         ; $59a2: $80
    ld d, $96                                     ; $59a3: $16 $96
    inc b                                         ; $59a5: $04
    ld b, $19                                     ; $59a6: $06 $19
    ld a, [bc]                                    ; $59a8: $0a
    ld bc, $4f50                                  ; $59a9: $01 $50 $4f
    sbc a                                         ; $59ac: $9f
    ld [bc], a                                    ; $59ad: $02
    nop                                           ; $59ae: $00
    rrca                                          ; $59af: $0f
    ld d, b                                       ; $59b0: $50
    ld a, h                                       ; $59b1: $7c
    inc bc                                        ; $59b2: $03
    ld [bc], a                                    ; $59b3: $02
    db $10                                        ; $59b4: $10
    ld bc, $1028                                  ; $59b5: $01 $28 $10
    ld c, d                                       ; $59b8: $4a
    db $fc                                        ; $59b9: $fc
    dec c                                         ; $59ba: $0d
    inc b                                         ; $59bb: $04
    cp e                                          ; $59bc: $bb
    ld b, e                                       ; $59bd: $43
    dec sp                                        ; $59be: $3b
    ld b, e                                       ; $59bf: $43

jr_0c0_59c0:
    dec hl                                        ; $59c0: $2b
    ld [bc], a                                    ; $59c1: $02
    nop                                           ; $59c2: $00
    ld hl, $0043                                  ; $59c3: $21 $43 $00
    ld h, e                                       ; $59c6: $63
    rrca                                          ; $59c7: $0f
    ld l, a                                       ; $59c8: $6f
    rrca                                          ; $59c9: $0f
    cpl                                           ; $59ca: $2f
    rrca                                          ; $59cb: $0f
    rst $20                                       ; $59cc: $e7
    ret nz                                        ; $59cd: $c0

    ld b, $f3                                     ; $59ce: $06 $f3
    ldh [$f9], a                                  ; $59d0: $e0 $f9
    ldh a, [$f8]                                  ; $59d2: $f0 $f8
    and c                                         ; $59d4: $a1
    ld [bc], a                                    ; $59d5: $02
    jp c, Jump_000_0825                           ; $59d6: $da $25 $08

    ld bc, $0816                                  ; $59d9: $01 $16 $08
    ret nc                                        ; $59dc: $d0

    jr c, jr_0c0_5a40                             ; $59dd: $38 $61

    nop                                           ; $59df: $00
    rlca                                          ; $59e0: $07
    jp z, Jump_000_0021                           ; $59e1: $ca $21 $00

    ld c, $10                                     ; $59e4: $0e $10
    ld c, [hl]                                    ; $59e6: $4e
    db $10                                        ; $59e7: $10
    ld c, [hl]                                    ; $59e8: $4e
    ld d, b                                       ; $59e9: $50
    adc $d0                                       ; $59ea: $ce $d0
    nop                                           ; $59ec: $00
    rst $08                                       ; $59ed: $cf
    ret nz                                        ; $59ee: $c0

    rst $00                                       ; $59ef: $c7
    ret nz                                        ; $59f0: $c0

    pop af                                        ; $59f1: $f1
    ldh [$f0], a                                  ; $59f2: $e0 $f0
    ld hl, sp+$60                                 ; $59f4: $f8 $60

jr_0c0_59f6:
    ld l, e                                       ; $59f6: $6b
    sub h                                         ; $59f7: $94
    nop                                           ; $59f8: $00

jr_0c0_59f9:
    inc b                                         ; $59f9: $04
    db $10                                        ; $59fa: $10
    inc h                                         ; $59fb: $24
    dec bc                                        ; $59fc: $0b
    inc h                                         ; $59fd: $24
    xor e                                         ; $59fe: $ab
    inc b                                         ; $59ff: $04
    nop                                           ; $5a00: $00
    daa                                           ; $5a01: $27
    nop                                           ; $5a02: $00
    cp e                                          ; $5a03: $bb
    db $10                                        ; $5a04: $10
    cp c                                          ; $5a05: $b9
    jr jr_0c0_59c0                                ; $5a06: $18 $b8

    inc e                                         ; $5a08: $1c
    nop                                           ; $5a09: $00
    cp h                                          ; $5a0a: $bc
    ld e, $a0                                     ; $5a0b: $1e $a0
    rra                                           ; $5a0d: $1f
    cp b                                          ; $5a0e: $b8
    nop                                           ; $5a0f: $00
    sbc d                                         ; $5a10: $9a
    ld bc, $c100                                  ; $5a11: $01 $00 $c1
    nop                                           ; $5a14: $00
    call nz, $f004                                ; $5a15: $c4 $04 $f0
    add hl, bc                                    ; $5a18: $09
    ld [hl], c                                    ; $5a19: $71
    ld bc, $0301                                  ; $5a1a: $01 $01 $03
    ld [bc], a                                    ; $5a1d: $02
    ld c, a                                       ; $5a1e: $4f
    cp $1f                                        ; $5a1f: $fe $1f
    ld e, $1e                                     ; $5a21: $1e $1e
    dec e                                         ; $5a23: $1d
    ld [bc], a                                    ; $5a24: $02
    nop                                           ; $5a25: $00
    ld c, a                                       ; $5a26: $4f
    sub b                                         ; $5a27: $90
    sbc a                                         ; $5a28: $9f
    sub b                                         ; $5a29: $90
    rra                                           ; $5a2a: $1f
    sub b                                         ; $5a2b: $90
    rrca                                          ; $5a2c: $0f
    jr nc, jr_0c0_5a2f                            ; $5a2d: $30 $00

jr_0c0_5a2f:
    ccf                                           ; $5a2f: $3f
    ld h, b                                       ; $5a30: $60
    inc bc                                        ; $5a31: $03
    nop                                           ; $5a32: $00
    jr nz, @-$3e                                  ; $5a33: $20 $c0

    db $fd                                        ; $5a35: $fd
    cp $c0                                        ; $5a36: $fe $c0
    sbc c                                         ; $5a38: $99
    jr @-$1e                                      ; $5a39: $18 $e0

jr_0c0_5a3b:
    ld [bc], a                                    ; $5a3b: $02
    rrca                                          ; $5a3c: $0f
    rst $00                                       ; $5a3d: $c7
    inc bc                                        ; $5a3e: $03
    dec [hl]                                      ; $5a3f: $35

jr_0c0_5a40:
    inc bc                                        ; $5a40: $03
    dec b                                         ; $5a41: $05
    add b                                         ; $5a42: $80
    jr nc, @+$14                                  ; $5a43: $30 $12

    adc e                                         ; $5a45: $8b
    adc e                                         ; $5a46: $8b
    reti                                          ; $5a47: $d9


    reti                                          ; $5a48: $d9


    jp c, $dbda                                   ; $5a49: $da $da $db

    ld b, c                                       ; $5a4c: $41
    db $db                                        ; $5a4d: $db
    sbc h                                         ; $5a4e: $9c
    ld l, $bf                                     ; $5a4f: $2e $bf
    cp a                                          ; $5a51: $bf
    ccf                                           ; $5a52: $3f
    ccf                                           ; $5a53: $3f
    cp a                                          ; $5a54: $bf
    ld bc, $8a00                                  ; $5a55: $01 $00 $8a
    xor h                                         ; $5a58: $ac
    ld e, $55                                     ; $5a59: $1e $55
    rst $38                                       ; $5a5b: $ff
    xor d                                         ; $5a5c: $aa
    inc b                                         ; $5a5d: $04
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    ld [bc], a                                    ; $5a60: $02
    jr nz, jr_0c0_5a3b                            ; $5a61: $20 $d8

    ld b, $63                                     ; $5a63: $06 $63
    ld hl, $0073                                  ; $5a65: $21 $73 $00
    ld [bc], a                                    ; $5a68: $02
    xor [hl]                                      ; $5a69: $ae
    dec bc                                        ; $5a6a: $0b
    inc b                                         ; $5a6b: $04
    jr z, jr_0c0_5a6f                             ; $5a6c: $28 $01

    add b                                         ; $5a6e: $80

jr_0c0_5a6f:
    ld a, [$9803]                                 ; $5a6f: $fa $03 $98
    add hl, bc                                    ; $5a72: $09
    sbc b                                         ; $5a73: $98
    db $10                                        ; $5a74: $10
    jr c, jr_0c0_5a87                             ; $5a75: $38 $10

    jr nc, jr_0c0_59f9                            ; $5a77: $30 $80

    inc b                                         ; $5a79: $04
    nop                                           ; $5a7a: $00
    cpl                                           ; $5a7b: $2f
    rrca                                          ; $5a7c: $0f
    and l                                         ; $5a7d: $a5
    rrca                                          ; $5a7e: $0f
    xor d                                         ; $5a7f: $aa
    rrca                                          ; $5a80: $0f
    dec b                                         ; $5a81: $05
    inc b                                         ; $5a82: $04
    adc a                                         ; $5a83: $8f
    nop                                           ; $5a84: $00
    adc a                                         ; $5a85: $8f
    ld [hl], b                                    ; $5a86: $70

jr_0c0_5a87:
    adc a                                         ; $5a87: $8f
    inc [hl]                                      ; $5a88: $34
    ld [$73ca], sp                                ; $5a89: $08 $ca $73
    db $10                                        ; $5a8c: $10
    ld d, e                                       ; $5a8d: $53
    ld h, e                                       ; $5a8e: $63
    ld bc, $4030                                  ; $5a8f: $01 $30 $40
    jr jr_0c0_5aa5                                ; $5a92: $18 $11

    ld a, [bc]                                    ; $5a94: $0a
    add hl, de                                    ; $5a95: $19
    jr nz, @+$05                                  ; $5a96: $20 $03

    inc b                                         ; $5a98: $04
    ld b, b                                       ; $5a99: $40
    jr c, jr_0c0_5ac6                             ; $5a9a: $38 $2a

    inc e                                         ; $5a9c: $1c
    ld h, e                                       ; $5a9d: $63
    ld [hl+], a                                   ; $5a9e: $22
    jr jr_0c0_5aa1                                ; $5a9f: $18 $00

jr_0c0_5aa1:
    ld e, c                                       ; $5aa1: $59
    push de                                       ; $5aa2: $d5
    ld d, l                                       ; $5aa3: $55
    reti                                          ; $5aa4: $d9


jr_0c0_5aa5:
    ld e, c                                       ; $5aa5: $59
    inc d                                         ; $5aa6: $14
    ld d, l                                       ; $5aa7: $55
    ld h, e                                       ; $5aa8: $63
    nop                                           ; $5aa9: $00
    ld [hl+], a                                   ; $5aaa: $22
    ld a, [hl+]                                   ; $5aab: $2a
    inc e                                         ; $5aac: $1c
    ld sp, $7400                                  ; $5aad: $31 $00 $74
    ld hl, sp+$4a                                 ; $5ab0: $f8 $4a
    ld [$94ff], sp                                ; $5ab2: $08 $ff $94
    rst $38                                       ; $5ab5: $ff
    ld hl, $2072                                  ; $5ab6: $21 $72 $20
    pop de                                        ; $5ab9: $d1
    inc hl                                        ; $5aba: $23
    ld [hl], $04                                  ; $5abb: $36 $04
    ld c, $80                                     ; $5abd: $0e $80
    nop                                           ; $5abf: $00
    sub c                                         ; $5ac0: $91
    ldh [$80], a                                  ; $5ac1: $e0 $80
    jr z, @-$5f                                   ; $5ac3: $28 $9f

    rra                                           ; $5ac5: $1f

jr_0c0_5ac6:
    ld bc, $3f15                                  ; $5ac6: $01 $15 $3f
    ld a, [hl+]                                   ; $5ac9: $2a
    ld a, a                                       ; $5aca: $7f
    ld d, h                                       ; $5acb: $54
    rst $38                                       ; $5acc: $ff
    ld bc, $2092                                  ; $5acd: $01 $92 $20
    ret z                                         ; $5ad0: $c8

    pop bc                                        ; $5ad1: $c1
    dec b                                         ; $5ad2: $05
    ld [bc], a                                    ; $5ad3: $02
    ld d, b                                       ; $5ad4: $50
    inc bc                                        ; $5ad5: $03
    ld b, $9c                                     ; $5ad6: $06 $9c
    jr @-$2a                                      ; $5ad8: $18 $d4

    ld h, $b4                                     ; $5ada: $26 $b4
    ld bc, $a0a2                                  ; $5adc: $01 $a2 $a0
    or h                                          ; $5adf: $b4
    nop                                           ; $5ae0: $00
    or h                                          ; $5ae1: $b4
    inc [hl]                                      ; $5ae2: $34
    jr jr_0c0_5ae6                                ; $5ae3: $18 $01

    nop                                           ; $5ae5: $00

jr_0c0_5ae6:
    inc b                                         ; $5ae6: $04
    nop                                           ; $5ae7: $00
    and b                                         ; $5ae8: $a0
    db $10                                        ; $5ae9: $10
    ldh [$60], a                                  ; $5aea: $e0 $60
    or h                                          ; $5aec: $b4
    jr @+$3e                                      ; $5aed: $18 $3c

    daa                                           ; $5aef: $27
    ld [$6625], sp                                ; $5af0: $08 $25 $66
    ld b, b                                       ; $5af3: $40
    add b                                         ; $5af4: $80
    ret nz                                        ; $5af5: $c0

    ld b, b                                       ; $5af6: $40
    rst $38                                       ; $5af7: $ff
    xor d                                         ; $5af8: $aa
    ld d, l                                       ; $5af9: $55
    ld b, $55                                     ; $5afa: $06 $55
    xor d                                         ; $5afc: $aa
    rst $38                                       ; $5afd: $ff
    nop                                           ; $5afe: $00
    xor d                                         ; $5aff: $aa
    db $e3                                        ; $5b00: $e3
    jr c, @-$13                                   ; $5b01: $38 $eb

    nop                                           ; $5b03: $00
    or [hl]                                       ; $5b04: $b6
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    db $ed                                        ; $5b07: $ed
    nop                                           ; $5b08: $00
    ld d, [hl]                                    ; $5b09: $56
    nop                                           ; $5b0a: $00
    or l                                          ; $5b0b: $b5
    nop                                           ; $5b0c: $00
    ld c, d                                       ; $5b0d: $4a
    ld [bc], a                                    ; $5b0e: $02
    nop                                           ; $5b0f: $00
    ret nz                                        ; $5b10: $c0

    inc bc                                        ; $5b11: $03
    ld [bc], a                                    ; $5b12: $02
    add e                                         ; $5b13: $83
    rlca                                          ; $5b14: $07
    rst $28                                       ; $5b15: $ef
    ld b, b                                       ; $5b16: $40
    jp c, $9308                                   ; $5b17: $da $08 $93

    db $db                                        ; $5b1a: $db
    sbc c                                         ; $5b1b: $99
    sub b                                         ; $5b1c: $90
    rst $38                                       ; $5b1d: $ff
    ld b, b                                       ; $5b1e: $40
    and [hl]                                      ; $5b1f: $a6
    or h                                          ; $5b20: $b4
    inc a                                         ; $5b21: $3c
    ld b, b                                       ; $5b22: $40
    and h                                         ; $5b23: $a4
    ld c, $49                                     ; $5b24: $0e $49
    call nz, $858d                                ; $5b26: $c4 $8d $85
    call z, $700c                                 ; $5b29: $cc $0c $70
    ret z                                         ; $5b2c: $c8

    ld e, $49                                     ; $5b2d: $1e $49
    and c                                         ; $5b2f: $a1
    ld e, b                                       ; $5b30: $58
    add b                                         ; $5b31: $80
    ret nz                                        ; $5b32: $c0

    ld [$c00c], a                                 ; $5b33: $ea $0c $c0
    nop                                           ; $5b36: $00
    ld b, b                                       ; $5b37: $40
    inc d                                         ; $5b38: $14
    ret nz                                        ; $5b39: $c0

    nop                                           ; $5b3a: $00
    add b                                         ; $5b3b: $80
    add a                                         ; $5b3c: $87
    db $10                                        ; $5b3d: $10
    ld bc, $188d                                  ; $5b3e: $01 $8d $18
    dec l                                         ; $5b41: $2d
    inc de                                        ; $5b42: $13
    nop                                           ; $5b43: $00
    dec c                                         ; $5b44: $0d
    ld a, e                                       ; $5b45: $7b
    rst $08                                       ; $5b46: $cf
    ld c, c                                       ; $5b47: $49
    ld l, b                                       ; $5b48: $68
    ld c, e                                       ; $5b49: $4b
    jr c, jr_0c0_5b5c                             ; $5b4a: $38 $10

    nop                                           ; $5b4c: $00
    inc bc                                        ; $5b4d: $03
    nop                                           ; $5b4e: $00
    ld bc, $0003                                  ; $5b4f: $01 $03 $00
    inc bc                                        ; $5b52: $03
    add hl, bc                                    ; $5b53: $09
    ld [hl-], a                                   ; $5b54: $32
    nop                                           ; $5b55: $00
    cp c                                          ; $5b56: $b9
    ld e, d                                       ; $5b57: $5a
    dec de                                        ; $5b58: $1b
    jp z, Jump_0c0_4ad3                           ; $5b59: $ca $d3 $4a

jr_0c0_5b5c:
    ld d, l                                       ; $5b5c: $55

jr_0c0_5b5d:
    nop                                           ; $5b5d: $00
    db $10                                        ; $5b5e: $10
    jr nz, jr_0c0_5b61                            ; $5b5f: $20 $00

jr_0c0_5b61:
    adc d                                         ; $5b61: $8a
    inc b                                         ; $5b62: $04
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    nop                                           ; $5b65: $00
    ld [$0000], sp                                ; $5b66: $08 $00 $00
    dec b                                         ; $5b69: $05
    rrca                                          ; $5b6a: $0f
    dec bc                                        ; $5b6b: $0b
    add hl, bc                                    ; $5b6c: $09
    inc h                                         ; $5b6d: $24
    nop                                           ; $5b6e: $00
    sub d                                         ; $5b6f: $92
    nop                                           ; $5b70: $00

jr_0c0_5b71:
    ld b, b                                       ; $5b71: $40
    ld c, c                                       ; $5b72: $49
    ld a, a                                       ; $5b73: $7f
    ld de, $1c60                                  ; $5b74: $11 $60 $1c
    ld a, h                                       ; $5b77: $7c
    ret z                                         ; $5b78: $c8

    ld a, b                                       ; $5b79: $78
    ld [$0ea0], sp                                ; $5b7a: $08 $a0 $0e
    ld [$8f24], sp                                ; $5b7d: $08 $24 $8f
    ld de, $0061                                  ; $5b80: $11 $61 $00
    jr nz, @+$62                                  ; $5b83: $20 $60

    ld hl, $062a                                  ; $5b85: $21 $2a $06
    ld c, d                                       ; $5b88: $4a
    jr nc, jr_0c0_5b8b                            ; $5b89: $30 $00

jr_0c0_5b8b:
    sub l                                         ; $5b8b: $95
    ld a, b                                       ; $5b8c: $78
    dec b                                         ; $5b8d: $05
    inc c                                         ; $5b8e: $0c
    inc bc                                        ; $5b8f: $03
    nop                                           ; $5b90: $00
    ld [$0402], sp                                ; $5b91: $08 $02 $04
    inc b                                         ; $5b94: $04
    ld [$00a4], sp                                ; $5b95: $08 $a4 $00
    ld [de], a                                    ; $5b98: $12
    jr nc, jr_0c0_5bbb                            ; $5b99: $30 $20

    db $10                                        ; $5b9b: $10
    ret nc                                        ; $5b9c: $d0

    or l                                          ; $5b9d: $b5
    ld de, $3830                                  ; $5b9e: $11 $30 $38
    ld b, b                                       ; $5ba1: $40
    inc d                                         ; $5ba2: $14
    db $10                                        ; $5ba3: $10
    ld b, l                                       ; $5ba4: $45
    nop                                           ; $5ba5: $00
    jr z, jr_0c0_5ba8                             ; $5ba6: $28 $00

jr_0c0_5ba8:
    ld a, d                                       ; $5ba8: $7a
    add d                                         ; $5ba9: $82
    inc b                                         ; $5baa: $04
    nop                                           ; $5bab: $00
    jp nc, $6029                                  ; $5bac: $d2 $29 $60

    jr c, jr_0c0_5be1                             ; $5baf: $38 $30

    jr jr_0c0_5b5d                                ; $5bb1: $18 $aa

    ldh [rSB], a                                  ; $5bb3: $e0 $01
    ld d, h                                       ; $5bb5: $54
    cp b                                          ; $5bb6: $b8
    jp z, Jump_0c0_5540                           ; $5bb7: $ca $40 $55

    inc d                                         ; $5bba: $14

jr_0c0_5bbb:
    db $10                                        ; $5bbb: $10
    jp c, $9038                                   ; $5bbc: $da $38 $90

    jr c, jr_0c0_5bf5                             ; $5bbf: $38 $34

    ld [$1408], sp                                ; $5bc1: $08 $08 $14
    jr jr_0c0_5bc6                                ; $5bc4: $18 $00

jr_0c0_5bc6:
    jr @+$32                                      ; $5bc6: $18 $30

    jr c, jr_0c0_5bce                             ; $5bc8: $38 $04

    ld e, [hl]                                    ; $5bca: $5e
    ld [bc], a                                    ; $5bcb: $02
    jr nz, @+$05                                  ; $5bcc: $20 $03

jr_0c0_5bce:
    or l                                          ; $5bce: $b5
    sbc [hl]                                      ; $5bcf: $9e
    ld [$fa92], sp                                ; $5bd0: $08 $92 $fa
    jr @+$37                                      ; $5bd3: $18 $35

    ld [de], a                                    ; $5bd5: $12
    ld d, h                                       ; $5bd6: $54
    dec a                                         ; $5bd7: $3d
    ld [bc], a                                    ; $5bd8: $02
    xor c                                         ; $5bd9: $a9
    ccf                                           ; $5bda: $3f
    ld [de], a                                    ; $5bdb: $12
    and b                                         ; $5bdc: $a0
    ld b, l                                       ; $5bdd: $45
    ld a, [bc]                                    ; $5bde: $0a
    jr jr_0c0_5b71                                ; $5bdf: $18 $90

jr_0c0_5be1:
    ld b, b                                       ; $5be1: $40
    add b                                         ; $5be2: $80
    ld h, b                                       ; $5be3: $60
    ldh [rLCDC], a                                ; $5be4: $e0 $40
    ret nz                                        ; $5be6: $c0

    ld l, b                                       ; $5be7: $68
    ld b, b                                       ; $5be8: $40
    jr nc, jr_0c0_5c23                            ; $5be9: $30 $38

    dec h                                         ; $5beb: $25
    ld a, [bc]                                    ; $5bec: $0a
    ld [$4090], sp                                ; $5bed: $08 $90 $40
    jr @+$08                                      ; $5bf0: $18 $06

    inc c                                         ; $5bf2: $0c
    jr jr_0c0_5bfb                                ; $5bf3: $18 $06

jr_0c0_5bf5:
    ld c, $04                                     ; $5bf5: $0e $04
    ldh a, [$38]                                  ; $5bf7: $f0 $38
    add h                                         ; $5bf9: $84
    ld a, [de]                                    ; $5bfa: $1a

jr_0c0_5bfb:
    jr z, jr_0c0_5bfd                             ; $5bfb: $28 $00

jr_0c0_5bfd:
    add l                                         ; $5bfd: $85
    jr nz, jr_0c0_5c00                            ; $5bfe: $20 $00

jr_0c0_5c00:
    ld d, b                                       ; $5c00: $50
    sub c                                         ; $5c01: $91
    ld b, d                                       ; $5c02: $42
    add hl, bc                                    ; $5c03: $09
    inc bc                                        ; $5c04: $03
    inc bc                                        ; $5c05: $03
    ld bc, $2003                                  ; $5c06: $01 $03 $20
    ld bc, $0500                                  ; $5c09: $01 $00 $05
    ld [$0603], sp                                ; $5c0c: $08 $03 $06
    inc bc                                        ; $5c0f: $03
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    inc hl                                        ; $5c13: $23
    ld e, $0b                                     ; $5c14: $1e $0b
    rra                                           ; $5c16: $1f
    nop                                           ; $5c17: $00
    dec de                                        ; $5c18: $1b
    nop                                           ; $5c19: $00
    dec de                                        ; $5c1a: $1b
    ld [bc], a                                    ; $5c1b: $02
    inc bc                                        ; $5c1c: $03
    ld a, [de]                                    ; $5c1d: $1a
    dec bc                                        ; $5c1e: $0b
    ld a, [de]                                    ; $5c1f: $1a
    inc d                                         ; $5c20: $14
    add d                                         ; $5c21: $82
    ld e, h                                       ; $5c22: $5c

jr_0c0_5c23:
    ld b, $2e                                     ; $5c23: $06 $2e
    nop                                           ; $5c25: $00
    ld l, b                                       ; $5c26: $68
    ld c, b                                       ; $5c27: $48
    jr jr_0c0_5c96                                ; $5c28: $18 $6c

    ld h, h                                       ; $5c2a: $64
    ld c, [hl]                                    ; $5c2b: $4e
    ld b, b                                       ; $5c2c: $40
    ld h, [hl]                                    ; $5c2d: $66
    db $10                                        ; $5c2e: $10
    ld l, b                                       ; $5c2f: $68
    ld b, h                                       ; $5c30: $44
    inc e                                         ; $5c31: $1c
    cp $07                                        ; $5c32: $fe $07
    inc a                                         ; $5c34: $3c
    inc e                                         ; $5c35: $1c
    rra                                           ; $5c36: $1f
    inc h                                         ; $5c37: $24
    nop                                           ; $5c38: $00
    inc h                                         ; $5c39: $24
    inc [hl]                                      ; $5c3a: $34
    inc a                                         ; $5c3b: $3c
    add hl, de                                    ; $5c3c: $19
    ld bc, $3811                                  ; $5c3d: $01 $11 $38
    ld de, $1e00                                  ; $5c40: $11 $00 $1e
    inc e                                         ; $5c43: $1c
    ld c, $24                                     ; $5c44: $0e $24
    and h                                         ; $5c46: $a4
    ld c, a                                       ; $5c47: $4f
    ld c, l                                       ; $5c48: $4d

jr_0c0_5c49:
    rst $20                                       ; $5c49: $e7
    nop                                           ; $5c4a: $00
    add $64                                       ; $5c4b: $c6 $64
    xor [hl]                                      ; $5c4d: $ae
    ld h, h                                       ; $5c4e: $64
    ld a, h                                       ; $5c4f: $7c
    and h                                         ; $5c50: $a4
    ld h, l                                       ; $5c51: $65
    xor h                                         ; $5c52: $ac
    add b                                         ; $5c53: $80
    sub h                                         ; $5c54: $94
    ld c, $79                                     ; $5c55: $0e $79
    or b                                          ; $5c57: $b0
    or c                                          ; $5c58: $b1
    db $db                                        ; $5c59: $db
    sbc a                                         ; $5c5a: $9f
    jp nc, Jump_000_049b                          ; $5c5b: $d2 $9b $04

    sub d                                         ; $5c5e: $92
    or [hl]                                       ; $5c5f: $b6
    sub e                                         ; $5c60: $93
    pop de                                        ; $5c61: $d1
    sbc e                                         ; $5c62: $9b
    ld b, d                                       ; $5c63: $42
    add hl, bc                                    ; $5c64: $09
    inc bc                                        ; $5c65: $03
    add c                                         ; $5c66: $81

jr_0c0_5c67:
    nop                                           ; $5c67: $00
    add c                                         ; $5c68: $81
    rst $00                                       ; $5c69: $c7
    ld c, $84                                     ; $5c6a: $0e $84
    inc b                                         ; $5c6c: $04
    inc b                                         ; $5c6d: $04
    rst $00                                       ; $5c6e: $c7
    ld b, $20                                     ; $5c6f: $06 $20
    ld [bc], a                                    ; $5c71: $02
    add a                                         ; $5c72: $87
    or h                                          ; $5c73: $b4
    ld c, $82                                     ; $5c74: $0e $82
    add hl, de                                    ; $5c76: $19
    adc a                                         ; $5c77: $8f
    cp c                                          ; $5c78: $b9
    add hl, hl                                    ; $5c79: $29
    ld bc, $5d19                                  ; $5c7a: $01 $19 $5d
    add hl, hl                                    ; $5c7d: $29
    add hl, sp                                    ; $5c7e: $39
    db $ed                                        ; $5c7f: $ed
    ld c, a                                       ; $5c80: $4f
    add hl, hl                                    ; $5c81: $29
    db $ec                                        ; $5c82: $ec
    add hl, bc                                    ; $5c83: $09
    nop                                           ; $5c84: $00
    jr nc, jr_0c0_5c67                            ; $5c85: $30 $e0

    pop hl                                        ; $5c87: $e1
    or b                                          ; $5c88: $b0
    or b                                          ; $5c89: $b0
    ld hl, $2190                                  ; $5c8a: $21 $90 $21
    ld [$21b0], sp                                ; $5c8d: $08 $b0 $21
    or b                                          ; $5c90: $b0
    jr nc, jr_0c0_5c49                            ; $5c91: $30 $b6

    add hl, bc                                    ; $5c93: $09
    sbc d                                         ; $5c94: $9a
    ld h, l                                       ; $5c95: $65

jr_0c0_5c96:
    ld a, a                                       ; $5c96: $7f
    nop                                           ; $5c97: $00
    or [hl]                                       ; $5c98: $b6
    inc b                                         ; $5c99: $04
    or [hl]                                       ; $5c9a: $b6
    ld h, $94                                     ; $5c9b: $26 $94
    add $a4                                       ; $5c9d: $c6 $a4
    xor [hl]                                      ; $5c9f: $ae
    ld b, b                                       ; $5ca0: $40
    call nz, $0af7                                ; $5ca1: $c4 $f7 $0a
    ret z                                         ; $5ca4: $c8

    sub a                                         ; $5ca5: $97
    add d                                         ; $5ca6: $82
    db $db                                        ; $5ca7: $db
    ret c                                         ; $5ca8: $d8

    sub e                                         ; $5ca9: $93
    nop                                           ; $5caa: $00
    db $db                                        ; $5cab: $db
    sub c                                         ; $5cac: $91
    pop de                                        ; $5cad: $d1
    sbc c                                         ; $5cae: $99
    reti                                          ; $5caf: $d9


    reti                                          ; $5cb0: $d9


    adc b                                         ; $5cb1: $88
    stop                                          ; $5cb2: $10 $00
    dec c                                         ; $5cb4: $0d
    ld bc, $6321                                  ; $5cb5: $01 $21 $63
    ld b, d                                       ; $5cb8: $42
    inc hl                                        ; $5cb9: $23
    ld h, e                                       ; $5cba: $63
    ld [bc], a                                    ; $5cbb: $02
    nop                                           ; $5cbc: $00
    inc bc                                        ; $5cbd: $03
    ld b, d                                       ; $5cbe: $42
    ld [bc], a                                    ; $5cbf: $02
    jp $83c1                                      ; $5cc0: $c3 $c1 $83


    ld bc, $0080                                  ; $5cc3: $01 $80 $00
    ld [$e800], sp                                ; $5cc6: $08 $00 $e8
    call nz, $6ed6                                ; $5cc9: $c4 $d6 $6e
    jr nc, jr_0c0_5d2a                            ; $5ccc: $30 $5c

    ld [bc], a                                    ; $5cce: $02
    ld [hl], b                                    ; $5ccf: $70
    ld e, b                                       ; $5cd0: $58
    call c, Call_000_185a                         ; $5cd1: $dc $5a $18
    adc h                                         ; $5cd4: $8c
    inc d                                         ; $5cd5: $14
    rrca                                          ; $5cd6: $0f
    ld [hl], b                                    ; $5cd7: $70
    nop                                           ; $5cd8: $00
    ld [hl], $37                                  ; $5cd9: $36 $37
    ld e, $1f                                     ; $5cdb: $1e $1f
    ld [de], a                                    ; $5cdd: $12
    inc sp                                        ; $5cde: $33

jr_0c0_5cdf:
    ld [de], a                                    ; $5cdf: $12
    ld d, $08                                     ; $5ce0: $16 $08
    ld [de], a                                    ; $5ce2: $12
    jr nc, jr_0c0_5d01                            ; $5ce3: $30 $1c

    jr nc, jr_0c0_5d49                            ; $5ce5: $30 $62

    inc bc                                        ; $5ce7: $03
    adc e                                         ; $5ce8: $8b
    ld b, h                                       ; $5ce9: $44
    ld e, $00                                     ; $5cea: $1e $00
    add $8c                                       ; $5cec: $c6 $8c
    ld b, [hl]                                    ; $5cee: $46
    ld [bc], a                                    ; $5cef: $02
    sbc $56                                       ; $5cf0: $de $56
    db $db                                        ; $5cf2: $db
    ld h, d                                       ; $5cf3: $62
    nop                                           ; $5cf4: $00
    jp c, Jump_0c0_4081                           ; $5cf5: $da $81 $40

    nop                                           ; $5cf8: $00
    ld bc, $c9bc                                  ; $5cf9: $01 $bc $c9
    ld c, a                                       ; $5cfc: $4f
    nop                                           ; $5cfd: $00
    set 4, b                                      ; $5cfe: $cb $e0
    ld c, a                                       ; $5d00: $4f

jr_0c0_5d01:
    ld a, [hl]                                    ; $5d01: $7e
    ld b, [hl]                                    ; $5d02: $46
    inc bc                                        ; $5d03: $03

jr_0c0_5d04:
    halt                                          ; $5d04: $76
    ld h, $00                                     ; $5d05: $26 $00
    ld [hl], e                                    ; $5d07: $73
    nop                                           ; $5d08: $00
    jr nz, jr_0c0_5d2b                            ; $5d09: $20 $20

    ld b, b                                       ; $5d0b: $40
    sbc h                                         ; $5d0c: $9c
    inc c                                         ; $5d0d: $0c
    cp h                                          ; $5d0e: $bc
    nop                                           ; $5d0f: $00
    and h                                         ; $5d10: $a4
    ld l, h                                       ; $5d11: $6c
    inc h                                         ; $5d12: $24
    ld l, h                                       ; $5d13: $6c
    inc h                                         ; $5d14: $24
    inc a                                         ; $5d15: $3c
    db $ec                                        ; $5d16: $ec
    ld l, $20                                     ; $5d17: $2e $20
    inc [hl]                                      ; $5d19: $34
    ld [hl+], a                                   ; $5d1a: $22
    ld l, b                                       ; $5d1b: $68
    inc bc                                        ; $5d1c: $03
    inc bc                                        ; $5d1d: $03
    inc e                                         ; $5d1e: $1c
    ld [hl], $2d                                  ; $5d1f: $36 $2d
    ld [hl], l                                    ; $5d21: $75
    ld bc, $3526                                  ; $5d22: $01 $26 $35
    inc h                                         ; $5d25: $24
    add hl, sp                                    ; $5d26: $39
    inc [hl]                                      ; $5d27: $34

jr_0c0_5d28:
    jr c, jr_0c0_5d3b                             ; $5d28: $38 $11

jr_0c0_5d2a:
    adc h                                         ; $5d2a: $8c

jr_0c0_5d2b:
    ld a, [bc]                                    ; $5d2b: $0a
    nop                                           ; $5d2c: $00
    ld h, b                                       ; $5d2d: $60
    or b                                          ; $5d2e: $b0
    sbc b                                         ; $5d2f: $98
    ldh a, [$b0]                                  ; $5d30: $f0 $b0
    sub b                                         ; $5d32: $90
    sub b                                         ; $5d33: $90
    sub b                                         ; $5d34: $90
    ld [$90b0], sp                                ; $5d35: $08 $b0 $90
    or b                                          ; $5d38: $b0
    sbc b                                         ; $5d39: $98
    ld [hl], h                                    ; $5d3a: $74

jr_0c0_5d3b:
    rrca                                          ; $5d3b: $0f
    ld d, b                                       ; $5d3c: $50
    jr nz, jr_0c0_5cdf                            ; $5d3d: $20 $a0

    dec bc                                        ; $5d3f: $0b
    ld [hl], b                                    ; $5d40: $70
    ld h, b                                       ; $5d41: $60
    jr nc, jr_0c0_5d04                            ; $5d42: $30 $c0

    ld d, $00                                     ; $5d44: $16 $00
    ld [hl], b                                    ; $5d46: $70
    rst $10                                       ; $5d47: $d7
    ld c, d                                       ; $5d48: $4a

jr_0c0_5d49:
    pop hl                                        ; $5d49: $e1
    inc sp                                        ; $5d4a: $33
    ld [bc], a                                    ; $5d4b: $02
    ld h, b                                       ; $5d4c: $60
    inc b                                         ; $5d4d: $04
    ld e, h                                       ; $5d4e: $5c
    jr z, @+$3a                                   ; $5d4f: $28 $38

    jr nc, jr_0c0_5d6d                            ; $5d51: $30 $1a

    ld a, b                                       ; $5d53: $78
    ld bc, $dac0                                  ; $5d54: $01 $c0 $da
    ld a, [bc]                                    ; $5d57: $0a
    dec b                                         ; $5d58: $05
    db $10                                        ; $5d59: $10
    inc d                                         ; $5d5a: $14
    nop                                           ; $5d5b: $00
    ld d, b                                       ; $5d5c: $50
    inc l                                         ; $5d5d: $2c
    nop                                           ; $5d5e: $00
    call nz, $c400                                ; $5d5f: $c4 $00 $c4
    add b                                         ; $5d62: $80
    jp c, $8484                                   ; $5d63: $da $84 $84

    adc h                                         ; $5d66: $8c
    add h                                         ; $5d67: $84
    adc l                                         ; $5d68: $8d
    add b                                         ; $5d69: $80
    ld a, [de]                                    ; $5d6a: $1a
    inc l                                         ; $5d6b: $2c
    ld l, l                                       ; $5d6c: $6d

jr_0c0_5d6d:
    ld b, $66                                     ; $5d6d: $06 $66
    rst $20                                       ; $5d6f: $e7
    and [hl]                                      ; $5d70: $a6
    ld h, h                                       ; $5d71: $64
    ld h, [hl]                                    ; $5d72: $66
    add b                                         ; $5d73: $80
    inc e                                         ; $5d74: $1c
    inc sp                                        ; $5d75: $33
    jr jr_0c0_5d28                                ; $5d76: $18 $b0

    ei                                            ; $5d78: $fb
    reti                                          ; $5d79: $d9


    add e                                         ; $5d7a: $83
    jp c, $504a                                   ; $5d7b: $da $4a $50

    sub e                                         ; $5d7e: $93
    add sp, $0f                                   ; $5d7f: $e8 $0f
    rlca                                          ; $5d81: $07
    ldh [rSC], a                                  ; $5d82: $e0 $02
    nop                                           ; $5d84: $00
    add e                                         ; $5d85: $83
    add b                                         ; $5d86: $80
    jp Jump_000_0310                              ; $5d87: $c3 $10 $03


    add e                                         ; $5d8a: $83
    ld [bc], a                                    ; $5d8b: $02
    and d                                         ; $5d8c: $a2
    ld bc, $0040                                  ; $5d8d: $01 $40 $00
    or b                                          ; $5d90: $b0
    ld h, b                                       ; $5d91: $60
    nop                                           ; $5d92: $00
    jr nz, @+$32                                  ; $5d93: $20 $30

    jr nz, @+$35                                  ; $5d95: $20 $33

    ld l, e                                       ; $5d97: $6b
    dec h                                         ; $5d98: $25
    ld h, c                                       ; $5d99: $61
    call z, $6500                                 ; $5d9a: $cc $00 $65
    inc l                                         ; $5d9d: $2c

    db $20, $00, $14, $00, $29, $2a, $2a, $2b, $2c, $2c, $2c, $2c, $2d, $2e, $2f, $30
    db $30, $2f, $2e, $2d

    ld sp, $3231                                  ; $5db2: $31 $31 $32
    inc sp                                        ; $5db5: $33
    inc sp                                        ; $5db6: $33
    inc [hl]                                      ; $5db7: $34
    adc c                                         ; $5db8: $89
    adc c                                         ; $5db9: $89
    dec [hl]                                      ; $5dba: $35
    dec [hl]                                      ; $5dbb: $35
    dec [hl]                                      ; $5dbc: $35
    dec [hl]                                      ; $5dbd: $35
    dec [hl]                                      ; $5dbe: $35
    dec [hl]                                      ; $5dbf: $35
    dec [hl]                                      ; $5dc0: $35
    dec [hl]                                      ; $5dc1: $35

    db $36, $37, $37, $38, $39, $39, $39, $39, $3a, $3b, $3c, $3d, $3d, $3c, $3b, $3a

    ld sp, $3231                                  ; $5dd2: $31 $31 $32
    inc sp                                        ; $5dd5: $33
    inc sp                                        ; $5dd6: $33
    inc [hl]                                      ; $5dd7: $34
    adc c                                         ; $5dd8: $89
    adc c                                         ; $5dd9: $89
    ld a, $3e                                     ; $5dda: $3e $3e
    ld a, $3e                                     ; $5ddc: $3e $3e
    ld a, $3e                                     ; $5dde: $3e $3e
    ld a, $3e                                     ; $5de0: $3e $3e

    db $3f, $40, $40, $41, $42, $42, $42, $42, $89, $89, $89, $89, $89, $89, $89, $89

    ld sp, $3231                                  ; $5df2: $31 $31 $32
    inc sp                                        ; $5df5: $33
    inc sp                                        ; $5df6: $33
    inc [hl]                                      ; $5df7: $34
    adc c                                         ; $5df8: $89
    adc c                                         ; $5df9: $89
    inc sp                                        ; $5dfa: $33
    inc sp                                        ; $5dfb: $33
    inc sp                                        ; $5dfc: $33
    inc sp                                        ; $5dfd: $33
    inc sp                                        ; $5dfe: $33
    inc sp                                        ; $5dff: $33
    inc sp                                        ; $5e00: $33
    inc sp                                        ; $5e01: $33

    db $43, $43, $43, $43, $43, $43, $43, $43, $3a, $3b, $3c, $3d, $3d, $3c, $3b, $3a

    ld sp, $3231                                  ; $5e12: $31 $31 $32
    inc sp                                        ; $5e15: $33
    inc sp                                        ; $5e16: $33
    inc [hl]                                      ; $5e17: $34
    adc c                                         ; $5e18: $89
    adc c                                         ; $5e19: $89
    ld b, h                                       ; $5e1a: $44
    ld b, h                                       ; $5e1b: $44
    ld b, h                                       ; $5e1c: $44
    ld b, h                                       ; $5e1d: $44
    ld b, h                                       ; $5e1e: $44
    ld b, h                                       ; $5e1f: $44
    ld b, h                                       ; $5e20: $44
    ld b, h                                       ; $5e21: $44

    db $39, $39, $39, $39, $39, $39, $39, $39, $2d, $2e, $2f, $30, $30, $2f, $2e, $2d

    ld sp, $3231                                  ; $5e32: $31 $31 $32
    inc sp                                        ; $5e35: $33
    inc sp                                        ; $5e36: $33
    inc [hl]                                      ; $5e37: $34
    adc c                                         ; $5e38: $89
    adc c                                         ; $5e39: $89
    adc c                                         ; $5e3a: $89
    adc c                                         ; $5e3b: $89
    adc c                                         ; $5e3c: $89
    adc c                                         ; $5e3d: $89
    adc c                                         ; $5e3e: $89
    adc c                                         ; $5e3f: $89
    adc c                                         ; $5e40: $89
    adc c                                         ; $5e41: $89
    adc c                                         ; $5e42: $89
    adc c                                         ; $5e43: $89
    adc c                                         ; $5e44: $89
    adc c                                         ; $5e45: $89
    adc c                                         ; $5e46: $89
    adc c                                         ; $5e47: $89
    adc c                                         ; $5e48: $89
    adc c                                         ; $5e49: $89
    dec [hl]                                      ; $5e4a: $35
    dec [hl]                                      ; $5e4b: $35
    ld b, l                                       ; $5e4c: $45
    inc sp                                        ; $5e4d: $33
    inc sp                                        ; $5e4e: $33
    inc [hl]                                      ; $5e4f: $34
    adc c                                         ; $5e50: $89
    adc c                                         ; $5e51: $89
    adc c                                         ; $5e52: $89
    adc c                                         ; $5e53: $89
    adc c                                         ; $5e54: $89
    adc c                                         ; $5e55: $89
    adc c                                         ; $5e56: $89
    adc c                                         ; $5e57: $89
    adc c                                         ; $5e58: $89
    adc c                                         ; $5e59: $89
    inc sp                                        ; $5e5a: $33
    inc sp                                        ; $5e5b: $33
    ld b, [hl]                                    ; $5e5c: $46
    inc [hl]                                      ; $5e5d: $34
    inc sp                                        ; $5e5e: $33
    inc sp                                        ; $5e5f: $33
    inc sp                                        ; $5e60: $33
    inc sp                                        ; $5e61: $33
    ld b, a                                       ; $5e62: $47
    ld b, a                                       ; $5e63: $47
    ld c, b                                       ; $5e64: $48
    ld c, c                                       ; $5e65: $49
    ld b, a                                       ; $5e66: $47
    ld b, a                                       ; $5e67: $47
    ld b, a                                       ; $5e68: $47
    ld b, a                                       ; $5e69: $47
    dec [hl]                                      ; $5e6a: $35
    dec [hl]                                      ; $5e6b: $35
    ld b, l                                       ; $5e6c: $45
    inc sp                                        ; $5e6d: $33
    inc sp                                        ; $5e6e: $33
    inc [hl]                                      ; $5e6f: $34
    adc c                                         ; $5e70: $89
    adc c                                         ; $5e71: $89
    ld b, h                                       ; $5e72: $44
    ld b, h                                       ; $5e73: $44
    ld b, h                                       ; $5e74: $44
    ld b, h                                       ; $5e75: $44
    ld b, h                                       ; $5e76: $44
    ld b, h                                       ; $5e77: $44
    ld b, h                                       ; $5e78: $44
    ld b, h                                       ; $5e79: $44
    inc sp                                        ; $5e7a: $33
    inc sp                                        ; $5e7b: $33
    ld b, [hl]                                    ; $5e7c: $46
    inc [hl]                                      ; $5e7d: $34
    inc sp                                        ; $5e7e: $33
    inc sp                                        ; $5e7f: $33
    inc sp                                        ; $5e80: $33
    inc sp                                        ; $5e81: $33
    inc sp                                        ; $5e82: $33
    ld c, d                                       ; $5e83: $4a
    ld c, e                                       ; $5e84: $4b
    ld c, h                                       ; $5e85: $4c
    inc sp                                        ; $5e86: $33
    inc sp                                        ; $5e87: $33
    inc sp                                        ; $5e88: $33
    inc sp                                        ; $5e89: $33
    dec [hl]                                      ; $5e8a: $35
    dec [hl]                                      ; $5e8b: $35
    ld b, l                                       ; $5e8c: $45
    inc sp                                        ; $5e8d: $33
    inc sp                                        ; $5e8e: $33
    inc [hl]                                      ; $5e8f: $34
    adc c                                         ; $5e90: $89
    adc c                                         ; $5e91: $89
    inc sp                                        ; $5e92: $33
    inc sp                                        ; $5e93: $33
    inc sp                                        ; $5e94: $33
    inc sp                                        ; $5e95: $33
    inc sp                                        ; $5e96: $33
    inc sp                                        ; $5e97: $33
    inc sp                                        ; $5e98: $33
    inc sp                                        ; $5e99: $33
    adc c                                         ; $5e9a: $89
    adc c                                         ; $5e9b: $89
    adc c                                         ; $5e9c: $89
    adc c                                         ; $5e9d: $89
    adc c                                         ; $5e9e: $89
    adc c                                         ; $5e9f: $89
    adc c                                         ; $5ea0: $89
    adc c                                         ; $5ea1: $89
    ld c, l                                       ; $5ea2: $4d
    ld c, [hl]                                    ; $5ea3: $4e
    ld c, a                                       ; $5ea4: $4f
    ld d, b                                       ; $5ea5: $50
    ld c, l                                       ; $5ea6: $4d
    ld c, l                                       ; $5ea7: $4d
    ld c, l                                       ; $5ea8: $4d
    ld c, l                                       ; $5ea9: $4d
    dec [hl]                                      ; $5eaa: $35
    dec [hl]                                      ; $5eab: $35
    ld b, l                                       ; $5eac: $45
    inc sp                                        ; $5ead: $33
    inc sp                                        ; $5eae: $33
    inc [hl]                                      ; $5eaf: $34
    adc c                                         ; $5eb0: $89
    adc c                                         ; $5eb1: $89
    ld a, $3e                                     ; $5eb2: $3e $3e
    ld a, $3e                                     ; $5eb4: $3e $3e
    ld a, $3e                                     ; $5eb6: $3e $3e
    ld a, $3e                                     ; $5eb8: $3e $3e
    inc sp                                        ; $5eba: $33
    inc sp                                        ; $5ebb: $33
    ld b, [hl]                                    ; $5ebc: $46
    inc [hl]                                      ; $5ebd: $34
    inc sp                                        ; $5ebe: $33
    inc sp                                        ; $5ebf: $33
    inc sp                                        ; $5ec0: $33
    inc sp                                        ; $5ec1: $33
    adc c                                         ; $5ec2: $89
    adc c                                         ; $5ec3: $89
    adc c                                         ; $5ec4: $89
    adc c                                         ; $5ec5: $89
    adc c                                         ; $5ec6: $89
    adc c                                         ; $5ec7: $89
    adc c                                         ; $5ec8: $89
    adc c                                         ; $5ec9: $89
    dec [hl]                                      ; $5eca: $35
    dec [hl]                                      ; $5ecb: $35
    ld b, l                                       ; $5ecc: $45
    inc sp                                        ; $5ecd: $33
    inc sp                                        ; $5ece: $33
    inc [hl]                                      ; $5ecf: $34
    adc c                                         ; $5ed0: $89
    adc c                                         ; $5ed1: $89
    dec [hl]                                      ; $5ed2: $35
    dec [hl]                                      ; $5ed3: $35
    dec [hl]                                      ; $5ed4: $35
    dec [hl]                                      ; $5ed5: $35
    dec [hl]                                      ; $5ed6: $35
    dec [hl]                                      ; $5ed7: $35
    dec [hl]                                      ; $5ed8: $35
    dec [hl]                                      ; $5ed9: $35
    inc sp                                        ; $5eda: $33
    inc sp                                        ; $5edb: $33
    ld b, [hl]                                    ; $5edc: $46
    inc [hl]                                      ; $5edd: $34
    inc sp                                        ; $5ede: $33
    inc sp                                        ; $5edf: $33
    inc sp                                        ; $5ee0: $33
    inc sp                                        ; $5ee1: $33
    adc c                                         ; $5ee2: $89
    adc c                                         ; $5ee3: $89
    jr nc, jr_0c0_5f37                            ; $5ee4: $30 $51

    adc c                                         ; $5ee6: $89
    adc c                                         ; $5ee7: $89
    adc c                                         ; $5ee8: $89
    adc c                                         ; $5ee9: $89
    dec [hl]                                      ; $5eea: $35
    dec [hl]                                      ; $5eeb: $35
    ld [hl-], a                                   ; $5eec: $32
    ld d, d                                       ; $5eed: $52
    dec [hl]                                      ; $5eee: $35
    dec [hl]                                      ; $5eef: $35
    dec [hl]                                      ; $5ef0: $35
    dec [hl]                                      ; $5ef1: $35
    adc c                                         ; $5ef2: $89
    adc c                                         ; $5ef3: $89
    ld d, e                                       ; $5ef4: $53
    inc [hl]                                      ; $5ef5: $34
    adc c                                         ; $5ef6: $89
    adc c                                         ; $5ef7: $89
    adc c                                         ; $5ef8: $89
    adc c                                         ; $5ef9: $89
    ld sp, $5431                                  ; $5efa: $31 $31 $54
    ld d, l                                       ; $5efd: $55
    inc sp                                        ; $5efe: $33
    inc sp                                        ; $5eff: $33
    inc sp                                        ; $5f00: $33
    inc sp                                        ; $5f01: $33
    adc c                                         ; $5f02: $89
    adc c                                         ; $5f03: $89
    jr nc, jr_0c0_5f57                            ; $5f04: $30 $51

    adc c                                         ; $5f06: $89
    adc c                                         ; $5f07: $89
    adc c                                         ; $5f08: $89
    adc c                                         ; $5f09: $89
    dec [hl]                                      ; $5f0a: $35
    dec [hl]                                      ; $5f0b: $35
    ld [hl-], a                                   ; $5f0c: $32
    ld d, d                                       ; $5f0d: $52
    dec [hl]                                      ; $5f0e: $35
    dec [hl]                                      ; $5f0f: $35
    dec [hl]                                      ; $5f10: $35
    dec [hl]                                      ; $5f11: $35
    adc c                                         ; $5f12: $89
    adc c                                         ; $5f13: $89
    ld d, e                                       ; $5f14: $53
    inc [hl]                                      ; $5f15: $34
    adc c                                         ; $5f16: $89
    adc c                                         ; $5f17: $89
    adc c                                         ; $5f18: $89
    adc c                                         ; $5f19: $89
    ld sp, $5756                                  ; $5f1a: $31 $56 $57
    ld e, b                                       ; $5f1d: $58
    ld e, c                                       ; $5f1e: $59
    ld e, d                                       ; $5f1f: $5a
    inc sp                                        ; $5f20: $33
    inc sp                                        ; $5f21: $33
    ld e, e                                       ; $5f22: $5b
    ld e, e                                       ; $5f23: $5b
    ld e, h                                       ; $5f24: $5c
    ld e, l                                       ; $5f25: $5d
    ld e, e                                       ; $5f26: $5b
    ld e, e                                       ; $5f27: $5b
    ld e, e                                       ; $5f28: $5b
    ld e, e                                       ; $5f29: $5b
    ld sp, $3131                                  ; $5f2a: $31 $31 $31
    ld sp, $3131                                  ; $5f2d: $31 $31 $31
    ld sp, $3331                                  ; $5f30: $31 $31 $33
    inc sp                                        ; $5f33: $33
    inc sp                                        ; $5f34: $33
    inc sp                                        ; $5f35: $33
    inc sp                                        ; $5f36: $33

jr_0c0_5f37:
    inc sp                                        ; $5f37: $33
    inc sp                                        ; $5f38: $33
    inc sp                                        ; $5f39: $33
    ld sp, $5f5e                                  ; $5f3a: $31 $5e $5f
    ld h, b                                       ; $5f3d: $60
    ld h, c                                       ; $5f3e: $61
    ld h, d                                       ; $5f3f: $62
    inc sp                                        ; $5f40: $33
    inc sp                                        ; $5f41: $33
    adc c                                         ; $5f42: $89
    adc c                                         ; $5f43: $89
    jr nc, jr_0c0_5f97                            ; $5f44: $30 $51

    adc c                                         ; $5f46: $89
    adc c                                         ; $5f47: $89
    adc c                                         ; $5f48: $89
    adc c                                         ; $5f49: $89
    dec [hl]                                      ; $5f4a: $35
    dec [hl]                                      ; $5f4b: $35
    ld [hl-], a                                   ; $5f4c: $32
    ld d, d                                       ; $5f4d: $52
    dec [hl]                                      ; $5f4e: $35
    dec [hl]                                      ; $5f4f: $35
    dec [hl]                                      ; $5f50: $35
    dec [hl]                                      ; $5f51: $35
    adc c                                         ; $5f52: $89
    adc c                                         ; $5f53: $89
    ld d, e                                       ; $5f54: $53
    inc [hl]                                      ; $5f55: $34
    adc c                                         ; $5f56: $89

jr_0c0_5f57:
    adc c                                         ; $5f57: $89
    adc c                                         ; $5f58: $89
    adc c                                         ; $5f59: $89
    ld sp, $6463                                  ; $5f5a: $31 $63 $64
    ld h, l                                       ; $5f5d: $65
    ld h, [hl]                                    ; $5f5e: $66
    ld h, a                                       ; $5f5f: $67
    inc sp                                        ; $5f60: $33
    inc sp                                        ; $5f61: $33
    adc c                                         ; $5f62: $89
    adc c                                         ; $5f63: $89
    jr nc, jr_0c0_5fb7                            ; $5f64: $30 $51

    adc c                                         ; $5f66: $89
    adc c                                         ; $5f67: $89
    adc c                                         ; $5f68: $89
    adc c                                         ; $5f69: $89
    dec [hl]                                      ; $5f6a: $35
    dec [hl]                                      ; $5f6b: $35
    ld [hl-], a                                   ; $5f6c: $32
    ld d, d                                       ; $5f6d: $52
    dec [hl]                                      ; $5f6e: $35
    dec [hl]                                      ; $5f6f: $35
    dec [hl]                                      ; $5f70: $35
    dec [hl]                                      ; $5f71: $35
    adc c                                         ; $5f72: $89
    adc c                                         ; $5f73: $89
    ld d, e                                       ; $5f74: $53
    inc [hl]                                      ; $5f75: $34
    adc c                                         ; $5f76: $89
    adc c                                         ; $5f77: $89
    adc c                                         ; $5f78: $89
    adc c                                         ; $5f79: $89
    ld sp, $6831                                  ; $5f7a: $31 $31 $68
    ld l, c                                       ; $5f7d: $69
    ld l, d                                       ; $5f7e: $6a
    inc sp                                        ; $5f7f: $33

Jump_0c0_5f80:
    inc sp                                        ; $5f80: $33
    inc sp                                        ; $5f81: $33
    ld sp, $3131                                  ; $5f82: $31 $31 $31
    ld l, e                                       ; $5f85: $6b
    ld l, e                                       ; $5f86: $6b
    ld sp, $3131                                  ; $5f87: $31 $31 $31
    adc c                                         ; $5f8a: $89
    adc c                                         ; $5f8b: $89
    adc c                                         ; $5f8c: $89
    adc c                                         ; $5f8d: $89
    adc c                                         ; $5f8e: $89
    adc c                                         ; $5f8f: $89
    adc c                                         ; $5f90: $89
    adc c                                         ; $5f91: $89
    adc c                                         ; $5f92: $89
    adc c                                         ; $5f93: $89
    adc c                                         ; $5f94: $89
    adc c                                         ; $5f95: $89
    adc c                                         ; $5f96: $89

jr_0c0_5f97:
    adc c                                         ; $5f97: $89
    adc c                                         ; $5f98: $89
    adc c                                         ; $5f99: $89
    adc c                                         ; $5f9a: $89
    adc c                                         ; $5f9b: $89
    adc c                                         ; $5f9c: $89
    adc c                                         ; $5f9d: $89
    adc c                                         ; $5f9e: $89
    adc c                                         ; $5f9f: $89
    adc c                                         ; $5fa0: $89
    adc c                                         ; $5fa1: $89
    ld sp, $6d6c                                  ; $5fa2: $31 $6c $6d
    ld l, [hl]                                    ; $5fa5: $6e
    ld l, a                                       ; $5fa6: $6f
    ld l, l                                       ; $5fa7: $6d
    ld l, h                                       ; $5fa8: $6c
    ld sp, $8989                                  ; $5fa9: $31 $89 $89
    adc c                                         ; $5fac: $89
    adc c                                         ; $5fad: $89
    adc c                                         ; $5fae: $89
    adc c                                         ; $5faf: $89
    adc c                                         ; $5fb0: $89
    adc c                                         ; $5fb1: $89
    adc c                                         ; $5fb2: $89
    adc c                                         ; $5fb3: $89
    adc c                                         ; $5fb4: $89
    adc c                                         ; $5fb5: $89
    adc c                                         ; $5fb6: $89

jr_0c0_5fb7:
    adc c                                         ; $5fb7: $89
    adc c                                         ; $5fb8: $89
    adc c                                         ; $5fb9: $89
    adc c                                         ; $5fba: $89
    adc c                                         ; $5fbb: $89
    adc c                                         ; $5fbc: $89
    adc c                                         ; $5fbd: $89
    adc c                                         ; $5fbe: $89
    adc c                                         ; $5fbf: $89
    adc c                                         ; $5fc0: $89
    adc c                                         ; $5fc1: $89
    ld sp, $7170                                  ; $5fc2: $31 $70 $71
    ld [hl], d                                    ; $5fc5: $72
    ld [hl], e                                    ; $5fc6: $73
    ld [hl], h                                    ; $5fc7: $74
    ld [hl], b                                    ; $5fc8: $70
    ld sp, $8989                                  ; $5fc9: $31 $89 $89
    adc c                                         ; $5fcc: $89
    adc c                                         ; $5fcd: $89
    adc c                                         ; $5fce: $89
    adc c                                         ; $5fcf: $89
    adc c                                         ; $5fd0: $89
    adc c                                         ; $5fd1: $89
    adc c                                         ; $5fd2: $89
    adc c                                         ; $5fd3: $89
    adc c                                         ; $5fd4: $89
    adc c                                         ; $5fd5: $89
    adc c                                         ; $5fd6: $89
    adc c                                         ; $5fd7: $89
    adc c                                         ; $5fd8: $89
    adc c                                         ; $5fd9: $89
    adc c                                         ; $5fda: $89
    adc c                                         ; $5fdb: $89
    adc c                                         ; $5fdc: $89
    adc c                                         ; $5fdd: $89
    adc c                                         ; $5fde: $89
    adc c                                         ; $5fdf: $89
    adc c                                         ; $5fe0: $89
    adc c                                         ; $5fe1: $89
    ld sp, $6d6c                                  ; $5fe2: $31 $6c $6d
    ld [hl], l                                    ; $5fe5: $75
    halt                                          ; $5fe6: $76
    ld l, l                                       ; $5fe7: $6d
    ld l, h                                       ; $5fe8: $6c
    ld sp, $8989                                  ; $5fe9: $31 $89 $89
    adc c                                         ; $5fec: $89
    adc c                                         ; $5fed: $89
    adc c                                         ; $5fee: $89
    adc c                                         ; $5fef: $89
    adc c                                         ; $5ff0: $89
    adc c                                         ; $5ff1: $89
    adc c                                         ; $5ff2: $89
    adc c                                         ; $5ff3: $89
    adc c                                         ; $5ff4: $89
    adc c                                         ; $5ff5: $89
    adc c                                         ; $5ff6: $89
    adc c                                         ; $5ff7: $89
    adc c                                         ; $5ff8: $89
    adc c                                         ; $5ff9: $89
    adc c                                         ; $5ffa: $89
    adc c                                         ; $5ffb: $89
    adc c                                         ; $5ffc: $89
    adc c                                         ; $5ffd: $89
    adc c                                         ; $5ffe: $89
    adc c                                         ; $5fff: $89
    adc c                                         ; $6000: $89
    adc c                                         ; $6001: $89
    ld sp, $3131                                  ; $6002: $31 $31 $31
    ld l, e                                       ; $6005: $6b
    ld l, e                                       ; $6006: $6b
    ld sp, $3131                                  ; $6007: $31 $31 $31
    adc c                                         ; $600a: $89
    adc c                                         ; $600b: $89
    adc c                                         ; $600c: $89
    adc c                                         ; $600d: $89
    adc c                                         ; $600e: $89
    adc c                                         ; $600f: $89
    adc c                                         ; $6010: $89
    adc c                                         ; $6011: $89
    adc c                                         ; $6012: $89
    adc c                                         ; $6013: $89
    adc c                                         ; $6014: $89
    adc c                                         ; $6015: $89
    adc c                                         ; $6016: $89
    adc c                                         ; $6017: $89
    adc c                                         ; $6018: $89
    adc c                                         ; $6019: $89
    adc c                                         ; $601a: $89
    adc c                                         ; $601b: $89
    adc c                                         ; $601c: $89
    adc c                                         ; $601d: $89
    adc c                                         ; $601e: $89
    adc c                                         ; $601f: $89
    adc c                                         ; $6020: $89
    adc c                                         ; $6021: $89

    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $22, $22, $22, $22

    ld b, $06                                     ; $6032: $06 $06
    ld b, $02                                     ; $6034: $06 $02
    ld [bc], a                                    ; $6036: $02
    ld [bc], a                                    ; $6037: $02
    ld [bc], a                                    ; $6038: $02
    ld [bc], a                                    ; $6039: $02
    dec b                                         ; $603a: $05
    dec b                                         ; $603b: $05
    dec b                                         ; $603c: $05
    dec b                                         ; $603d: $05
    dec b                                         ; $603e: $05
    dec b                                         ; $603f: $05
    dec b                                         ; $6040: $05
    dec b                                         ; $6041: $05

    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $22, $22, $22, $22

    ld b, $06                                     ; $6052: $06 $06
    ld b, $02                                     ; $6054: $06 $02
    ld [bc], a                                    ; $6056: $02
    ld [bc], a                                    ; $6057: $02
    ld [bc], a                                    ; $6058: $02
    ld [bc], a                                    ; $6059: $02
    dec b                                         ; $605a: $05
    dec b                                         ; $605b: $05
    dec b                                         ; $605c: $05
    dec b                                         ; $605d: $05
    dec b                                         ; $605e: $05
    dec b                                         ; $605f: $05
    dec b                                         ; $6060: $05
    dec b                                         ; $6061: $05

    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02

    ld b, $06                                     ; $6072: $06 $06
    ld b, $02                                     ; $6074: $06 $02
    ld [bc], a                                    ; $6076: $02
    ld [bc], a                                    ; $6077: $02
    ld [bc], a                                    ; $6078: $02
    ld [bc], a                                    ; $6079: $02
    dec b                                         ; $607a: $05
    dec b                                         ; $607b: $05
    dec b                                         ; $607c: $05
    dec b                                         ; $607d: $05
    dec b                                         ; $607e: $05
    dec b                                         ; $607f: $05
    dec b                                         ; $6080: $05
    dec b                                         ; $6081: $05

    db $02, $02, $02, $02, $02, $02, $02, $02, $42, $42, $42, $42, $62, $62, $62, $62

    ld b, $06                                     ; $6092: $06 $06
    ld b, $02                                     ; $6094: $06 $02
    ld [bc], a                                    ; $6096: $02
    ld [bc], a                                    ; $6097: $02
    ld [bc], a                                    ; $6098: $02
    ld [bc], a                                    ; $6099: $02
    dec b                                         ; $609a: $05
    dec b                                         ; $609b: $05
    dec b                                         ; $609c: $05
    dec b                                         ; $609d: $05
    dec b                                         ; $609e: $05
    dec b                                         ; $609f: $05
    dec b                                         ; $60a0: $05
    dec b                                         ; $60a1: $05

    db $02, $02, $02, $02, $02, $02, $02, $02, $42, $42, $42, $02, $22, $62, $62, $62

    ld b, $06                                     ; $60b2: $06 $06
    ld b, $02                                     ; $60b4: $06 $02
    ld [bc], a                                    ; $60b6: $02
    ld [bc], a                                    ; $60b7: $02
    ld [bc], a                                    ; $60b8: $02
    ld [bc], a                                    ; $60b9: $02
    dec b                                         ; $60ba: $05
    dec b                                         ; $60bb: $05
    dec b                                         ; $60bc: $05
    dec b                                         ; $60bd: $05
    dec b                                         ; $60be: $05
    dec b                                         ; $60bf: $05
    dec b                                         ; $60c0: $05
    dec b                                         ; $60c1: $05
    inc b                                         ; $60c2: $04
    inc b                                         ; $60c3: $04
    inc b                                         ; $60c4: $04
    inc b                                         ; $60c5: $04
    inc b                                         ; $60c6: $04
    inc b                                         ; $60c7: $04
    inc b                                         ; $60c8: $04
    inc b                                         ; $60c9: $04
    inc bc                                        ; $60ca: $03
    inc bc                                        ; $60cb: $03
    inc bc                                        ; $60cc: $03
    inc bc                                        ; $60cd: $03
    inc bc                                        ; $60ce: $03
    inc bc                                        ; $60cf: $03
    inc bc                                        ; $60d0: $03
    inc bc                                        ; $60d1: $03
    ld [bc], a                                    ; $60d2: $02
    ld [bc], a                                    ; $60d3: $02
    ld [bc], a                                    ; $60d4: $02
    ld [bc], a                                    ; $60d5: $02
    ld [bc], a                                    ; $60d6: $02
    ld [bc], a                                    ; $60d7: $02
    ld [bc], a                                    ; $60d8: $02
    ld [bc], a                                    ; $60d9: $02
    ld b, $06                                     ; $60da: $06 $06
    ld b, $26                                     ; $60dc: $06 $26
    ld b, $06                                     ; $60de: $06 $06
    ld b, $06                                     ; $60e0: $06 $06
    inc b                                         ; $60e2: $04
    inc b                                         ; $60e3: $04
    inc b                                         ; $60e4: $04
    inc b                                         ; $60e5: $04
    inc b                                         ; $60e6: $04
    inc b                                         ; $60e7: $04
    inc b                                         ; $60e8: $04
    inc b                                         ; $60e9: $04
    inc bc                                        ; $60ea: $03
    inc bc                                        ; $60eb: $03
    inc bc                                        ; $60ec: $03
    inc bc                                        ; $60ed: $03
    inc bc                                        ; $60ee: $03
    inc bc                                        ; $60ef: $03
    inc bc                                        ; $60f0: $03
    inc bc                                        ; $60f1: $03
    ld b, d                                       ; $60f2: $42
    ld b, d                                       ; $60f3: $42
    ld b, d                                       ; $60f4: $42
    ld b, d                                       ; $60f5: $42
    ld b, d                                       ; $60f6: $42
    ld b, d                                       ; $60f7: $42
    ld b, d                                       ; $60f8: $42
    ld b, d                                       ; $60f9: $42
    ld b, $06                                     ; $60fa: $06 $06
    ld b, $26                                     ; $60fc: $06 $26
    ld b, $06                                     ; $60fe: $06 $06
    ld b, $06                                     ; $6100: $06 $06
    inc b                                         ; $6102: $04
    inc b                                         ; $6103: $04
    inc b                                         ; $6104: $04
    inc b                                         ; $6105: $04
    inc b                                         ; $6106: $04
    inc b                                         ; $6107: $04
    inc b                                         ; $6108: $04
    inc b                                         ; $6109: $04
    inc bc                                        ; $610a: $03
    inc bc                                        ; $610b: $03
    inc bc                                        ; $610c: $03
    inc bc                                        ; $610d: $03
    inc bc                                        ; $610e: $03
    inc bc                                        ; $610f: $03
    inc bc                                        ; $6110: $03
    inc bc                                        ; $6111: $03
    ld [bc], a                                    ; $6112: $02
    ld [bc], a                                    ; $6113: $02
    ld [bc], a                                    ; $6114: $02
    ld [bc], a                                    ; $6115: $02
    ld [bc], a                                    ; $6116: $02
    ld [bc], a                                    ; $6117: $02
    ld [bc], a                                    ; $6118: $02
    ld [bc], a                                    ; $6119: $02
    ld b, $06                                     ; $611a: $06 $06
    ld b, $06                                     ; $611c: $06 $06
    ld b, $06                                     ; $611e: $06 $06
    ld b, $06                                     ; $6120: $06 $06
    inc b                                         ; $6122: $04
    inc b                                         ; $6123: $04
    inc b                                         ; $6124: $04
    inc b                                         ; $6125: $04
    inc b                                         ; $6126: $04
    inc b                                         ; $6127: $04
    inc b                                         ; $6128: $04
    inc b                                         ; $6129: $04
    inc bc                                        ; $612a: $03
    inc bc                                        ; $612b: $03
    inc bc                                        ; $612c: $03
    inc bc                                        ; $612d: $03
    inc bc                                        ; $612e: $03
    inc bc                                        ; $612f: $03
    inc bc                                        ; $6130: $03
    inc bc                                        ; $6131: $03
    ld b, d                                       ; $6132: $42
    ld b, d                                       ; $6133: $42
    ld b, d                                       ; $6134: $42
    ld b, d                                       ; $6135: $42
    ld b, d                                       ; $6136: $42
    ld b, d                                       ; $6137: $42
    ld b, d                                       ; $6138: $42
    ld b, d                                       ; $6139: $42
    ld b, $06                                     ; $613a: $06 $06
    ld b, $26                                     ; $613c: $06 $26
    ld b, $06                                     ; $613e: $06 $06
    ld b, $06                                     ; $6140: $06 $06
    inc b                                         ; $6142: $04
    inc b                                         ; $6143: $04
    inc b                                         ; $6144: $04
    inc b                                         ; $6145: $04
    inc b                                         ; $6146: $04
    inc b                                         ; $6147: $04
    inc b                                         ; $6148: $04
    inc b                                         ; $6149: $04
    inc bc                                        ; $614a: $03
    inc bc                                        ; $614b: $03
    inc bc                                        ; $614c: $03
    inc bc                                        ; $614d: $03
    inc bc                                        ; $614e: $03
    inc bc                                        ; $614f: $03
    inc bc                                        ; $6150: $03
    inc bc                                        ; $6151: $03
    ld [bc], a                                    ; $6152: $02
    ld [bc], a                                    ; $6153: $02
    ld [bc], a                                    ; $6154: $02
    ld [bc], a                                    ; $6155: $02
    ld [bc], a                                    ; $6156: $02
    ld [bc], a                                    ; $6157: $02
    ld [bc], a                                    ; $6158: $02
    ld [bc], a                                    ; $6159: $02
    ld b, $06                                     ; $615a: $06 $06
    ld b, $26                                     ; $615c: $06 $26
    ld b, $06                                     ; $615e: $06 $06
    ld b, $06                                     ; $6160: $06 $06
    ld [bc], a                                    ; $6162: $02
    ld [bc], a                                    ; $6163: $02
    ld [hl+], a                                   ; $6164: $22
    ld [bc], a                                    ; $6165: $02
    ld [bc], a                                    ; $6166: $02
    ld [bc], a                                    ; $6167: $02
    ld [bc], a                                    ; $6168: $02
    ld [bc], a                                    ; $6169: $02
    ld b, $06                                     ; $616a: $06 $06
    ld h, $06                                     ; $616c: $26 $06
    ld b, $06                                     ; $616e: $06 $06
    ld b, $06                                     ; $6170: $06 $06
    ld [bc], a                                    ; $6172: $02
    ld [bc], a                                    ; $6173: $02
    ld [bc], a                                    ; $6174: $02
    ld [bc], a                                    ; $6175: $02
    ld [bc], a                                    ; $6176: $02
    ld [bc], a                                    ; $6177: $02
    ld [bc], a                                    ; $6178: $02
    ld [bc], a                                    ; $6179: $02
    dec b                                         ; $617a: $05
    dec b                                         ; $617b: $05
    dec b                                         ; $617c: $05
    dec b                                         ; $617d: $05
    dec b                                         ; $617e: $05
    dec b                                         ; $617f: $05
    dec b                                         ; $6180: $05
    dec b                                         ; $6181: $05
    ld [bc], a                                    ; $6182: $02
    ld [bc], a                                    ; $6183: $02
    ld [hl+], a                                   ; $6184: $22
    ld [bc], a                                    ; $6185: $02
    ld [bc], a                                    ; $6186: $02
    ld [bc], a                                    ; $6187: $02
    ld [bc], a                                    ; $6188: $02
    ld [bc], a                                    ; $6189: $02
    ld b, $06                                     ; $618a: $06 $06
    ld h, $06                                     ; $618c: $26 $06
    ld b, $06                                     ; $618e: $06 $06
    ld b, $06                                     ; $6190: $06 $06
    ld [bc], a                                    ; $6192: $02
    ld [bc], a                                    ; $6193: $02
    ld [bc], a                                    ; $6194: $02
    ld [bc], a                                    ; $6195: $02
    ld [bc], a                                    ; $6196: $02
    ld [bc], a                                    ; $6197: $02
    ld [bc], a                                    ; $6198: $02
    ld [bc], a                                    ; $6199: $02
    dec b                                         ; $619a: $05
    dec b                                         ; $619b: $05
    dec b                                         ; $619c: $05
    dec b                                         ; $619d: $05
    dec b                                         ; $619e: $05
    dec b                                         ; $619f: $05
    dec b                                         ; $61a0: $05
    dec b                                         ; $61a1: $05
    ld [bc], a                                    ; $61a2: $02
    ld [bc], a                                    ; $61a3: $02
    ld [bc], a                                    ; $61a4: $02
    ld [bc], a                                    ; $61a5: $02
    ld [bc], a                                    ; $61a6: $02
    ld [bc], a                                    ; $61a7: $02
    ld [bc], a                                    ; $61a8: $02
    ld [bc], a                                    ; $61a9: $02
    ld b, $06                                     ; $61aa: $06 $06
    ld b, $06                                     ; $61ac: $06 $06
    ld b, $06                                     ; $61ae: $06 $06
    ld b, $06                                     ; $61b0: $06 $06
    ld [bc], a                                    ; $61b2: $02
    ld [bc], a                                    ; $61b3: $02
    ld [bc], a                                    ; $61b4: $02
    ld [bc], a                                    ; $61b5: $02
    ld [bc], a                                    ; $61b6: $02
    ld [bc], a                                    ; $61b7: $02
    ld [bc], a                                    ; $61b8: $02
    ld [bc], a                                    ; $61b9: $02
    dec b                                         ; $61ba: $05
    dec b                                         ; $61bb: $05
    dec b                                         ; $61bc: $05
    dec b                                         ; $61bd: $05
    dec b                                         ; $61be: $05
    dec b                                         ; $61bf: $05
    dec b                                         ; $61c0: $05
    dec b                                         ; $61c1: $05
    ld [bc], a                                    ; $61c2: $02
    ld [bc], a                                    ; $61c3: $02
    ld [hl+], a                                   ; $61c4: $22
    ld [bc], a                                    ; $61c5: $02
    ld [bc], a                                    ; $61c6: $02
    ld [bc], a                                    ; $61c7: $02
    ld [bc], a                                    ; $61c8: $02
    ld [bc], a                                    ; $61c9: $02
    ld b, $06                                     ; $61ca: $06 $06
    ld h, $06                                     ; $61cc: $26 $06
    ld b, $06                                     ; $61ce: $06 $06
    ld b, $06                                     ; $61d0: $06 $06
    ld [bc], a                                    ; $61d2: $02
    ld [bc], a                                    ; $61d3: $02
    ld [bc], a                                    ; $61d4: $02
    ld [bc], a                                    ; $61d5: $02
    ld [bc], a                                    ; $61d6: $02
    ld [bc], a                                    ; $61d7: $02
    ld [bc], a                                    ; $61d8: $02
    ld [bc], a                                    ; $61d9: $02
    dec b                                         ; $61da: $05
    dec b                                         ; $61db: $05
    dec b                                         ; $61dc: $05
    dec b                                         ; $61dd: $05
    dec b                                         ; $61de: $05
    dec b                                         ; $61df: $05
    dec b                                         ; $61e0: $05
    dec b                                         ; $61e1: $05
    ld [bc], a                                    ; $61e2: $02
    ld [bc], a                                    ; $61e3: $02
    ld [hl+], a                                   ; $61e4: $22
    ld [bc], a                                    ; $61e5: $02
    ld [bc], a                                    ; $61e6: $02
    ld [bc], a                                    ; $61e7: $02
    ld [bc], a                                    ; $61e8: $02
    ld [bc], a                                    ; $61e9: $02
    ld b, $06                                     ; $61ea: $06 $06
    ld h, $06                                     ; $61ec: $26 $06
    ld b, $06                                     ; $61ee: $06 $06
    ld b, $06                                     ; $61f0: $06 $06
    ld [bc], a                                    ; $61f2: $02
    ld [bc], a                                    ; $61f3: $02
    ld [bc], a                                    ; $61f4: $02
    ld [bc], a                                    ; $61f5: $02
    ld [bc], a                                    ; $61f6: $02
    ld [bc], a                                    ; $61f7: $02
    ld [bc], a                                    ; $61f8: $02
    ld [bc], a                                    ; $61f9: $02
    dec b                                         ; $61fa: $05
    dec b                                         ; $61fb: $05
    dec b                                         ; $61fc: $05
    dec b                                         ; $61fd: $05
    dec b                                         ; $61fe: $05
    dec b                                         ; $61ff: $05
    dec b                                         ; $6200: $05
    dec b                                         ; $6201: $05
    rlca                                          ; $6202: $07
    rlca                                          ; $6203: $07
    rlca                                          ; $6204: $07
    rlca                                          ; $6205: $07
    daa                                           ; $6206: $27
    rlca                                          ; $6207: $07
    rlca                                          ; $6208: $07
    rlca                                          ; $6209: $07
    ld bc, $0101                                  ; $620a: $01 $01 $01
    ld bc, $0101                                  ; $620d: $01 $01 $01
    ld bc, $0101                                  ; $6210: $01 $01 $01
    ld bc, $0101                                  ; $6213: $01 $01 $01
    ld bc, $0101                                  ; $6216: $01 $01 $01
    ld bc, $0101                                  ; $6219: $01 $01 $01
    ld bc, $0101                                  ; $621c: $01 $01 $01
    ld bc, $0101                                  ; $621f: $01 $01 $01
    rlca                                          ; $6222: $07
    rlca                                          ; $6223: $07
    rlca                                          ; $6224: $07
    rlca                                          ; $6225: $07
    rlca                                          ; $6226: $07
    daa                                           ; $6227: $27
    daa                                           ; $6228: $27
    rlca                                          ; $6229: $07
    ld bc, $0101                                  ; $622a: $01 $01 $01
    ld bc, $0101                                  ; $622d: $01 $01 $01
    ld bc, $0101                                  ; $6230: $01 $01 $01
    ld bc, $0101                                  ; $6233: $01 $01 $01
    ld bc, $0101                                  ; $6236: $01 $01 $01
    ld bc, $0101                                  ; $6239: $01 $01 $01
    ld bc, $0101                                  ; $623c: $01 $01 $01
    ld bc, $0101                                  ; $623f: $01 $01 $01
    rlca                                          ; $6242: $07
    rlca                                          ; $6243: $07
    rlca                                          ; $6244: $07
    rlca                                          ; $6245: $07
    rlca                                          ; $6246: $07
    rlca                                          ; $6247: $07
    daa                                           ; $6248: $27
    rlca                                          ; $6249: $07
    ld bc, $0101                                  ; $624a: $01 $01 $01
    ld bc, $0101                                  ; $624d: $01 $01 $01
    ld bc, $0101                                  ; $6250: $01 $01 $01
    ld bc, $0101                                  ; $6253: $01 $01 $01
    ld bc, $0101                                  ; $6256: $01 $01 $01
    ld bc, $0101                                  ; $6259: $01 $01 $01
    ld bc, $0101                                  ; $625c: $01 $01 $01
    ld bc, $0101                                  ; $625f: $01 $01 $01
    rlca                                          ; $6262: $07
    ld b, a                                       ; $6263: $47
    ld b, a                                       ; $6264: $47
    rlca                                          ; $6265: $07
    rlca                                          ; $6266: $07
    ld h, a                                       ; $6267: $67
    ld h, a                                       ; $6268: $67
    rlca                                          ; $6269: $07
    ld bc, $0101                                  ; $626a: $01 $01 $01
    ld bc, $0101                                  ; $626d: $01 $01 $01
    ld bc, $0101                                  ; $6270: $01 $01 $01
    ld bc, $0101                                  ; $6273: $01 $01 $01
    ld bc, $0101                                  ; $6276: $01 $01 $01
    ld bc, $0101                                  ; $6279: $01 $01 $01
    ld bc, $0101                                  ; $627c: $01 $01 $01
    ld bc, $0101                                  ; $627f: $01 $01 $01
    rlca                                          ; $6282: $07
    rlca                                          ; $6283: $07
    rlca                                          ; $6284: $07
    ld b, a                                       ; $6285: $47
    ld h, a                                       ; $6286: $67
    rlca                                          ; $6287: $07
    rlca                                          ; $6288: $07
    rlca                                          ; $6289: $07
    ld bc, $0101                                  ; $628a: $01 $01 $01
    ld bc, $0101                                  ; $628d: $01 $01 $01
    ld bc, $0101                                  ; $6290: $01 $01 $01
    ld bc, $0101                                  ; $6293: $01 $01 $01
    ld bc, $0101                                  ; $6296: $01 $01 $01
    ld bc, $0101                                  ; $6299: $01 $01 $01
    ld bc, $0101                                  ; $629c: $01 $01 $01
    ld bc, $0101                                  ; $629f: $01 $01 $01

    db $20, $00, $1b, $00, $d1, $01, $48, $00, $01, $80, $0d, $0e, $01, $00, $0f, $01
    db $04, $a0, $01, $08, $01, $01, $80, $13, $14, $15, $16, $17, $20, $18, $0e, $20
    db $10, $02, $02, $10, $11, $11, $58, $12, $32, $00, $0f, $04, $08, $0c, $08, $02
    db $02, $25, $02, $26, $27, $28, $29, $2a, $14, $40, $10, $03, $00, $03, $b4, $b5
    db $b6, $1f, $13, $14, $14, $00, $b7, $13, $b8, $b9, $ba, $bb, $bc, $bd, $00, $1f
    db $03, $03, $3d, $3e, $3f, $40, $41, $20, $42, $c3, $60, $10, $00, $00, $be, $bf
    db $c0, $00, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $00, $c9, $ca, $cb, $cc, $cd
    db $00, $00, $55, $02, $56, $57, $58, $59, $5a, $d3, $80, $20, $ce, $00, $cf, $d0
    db $d1, $d2, $d3, $d4, $d5, $d6, $00, $d7, $d8, $d9, $da, $db, $dc, $dd, $01, $00
    db $01, $6d, $6e, $6f, $70, $71, $72, $e3, $80, $80, $20, $de, $df, $e0, $e1, $e2
    db $e3, $e4, $00, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $00, $ed, $02, $02, $85
    db $86, $87, $88, $89, $20, $8a, $f3, $80, $20, $ee, $ef, $f0, $f1, $f2, $00, $f3
    db $f4, $f5, $f6, $f7, $f8, $f9, $fa, $00, $fb, $fc, $fd, $03, $03, $9c, $9d, $9e
    db $0f, $9f, $a0, $a1, $00, $80, $20, $02, $79, $f4, $20, $00, $b1, $89, $20, $49
    db $02, $0c, $07, $01, $60, $05, $02, $ee, $00, $13, $14, $14, $19, $20, $19, $03
    db $06, $47, $11, $05, $40, $00, $08, $03, $2b, $2c, $2d, $2e, $2f, $30, $60, $b8
    db $00, $19, $20, $78, $00, $43, $44, $45, $46, $18, $47, $48, $c7, $80, $19, $40
    db $78, $01, $5b, $5c, $06, $5d, $5e, $5f, $60, $d7, $80, $19, $60, $78, $02, $01
    db $73, $74, $75, $76, $77, $78, $e7, $80, $19, $20, $09, $0a, $01, $60, $0b, $03
    db $8b, $8c, $8d, $08, $8e, $8f, $90, $f7, $00, $b1, $a2, $a3, $a4, $1f, $a5, $a6
    db $a7, $20, $19, $00, $8a, $20, $d9, $10, $02, $12, $02, $c0, $25, $29, $1f, $7a
    db $1a, $1b, $1c, $1d, $1e, $1f, $00, $11, $20, $21, $22, $23, $24, $18, $02, $80
    db $1f, $7a, $31, $32, $33, $34, $35, $36, $bc, $01, $37, $38, $39, $3a, $3b, $3c
    db $03, $1f, $7a, $00, $49, $4a, $4b, $4c, $4d, $4e, $cb, $4f, $02, $50, $51, $52
    db $53, $54, $00, $1f, $7a, $61, $00, $62, $63, $64, $65, $66, $db, $67, $68, $04
    db $69, $6a, $6b, $6c, $01, $1f, $7a, $79, $7a, $00, $7b, $7c, $7d, $7e, $eb, $7f
    db $80, $81, $08, $82, $83, $84, $02, $1f, $7a, $8a, $91, $92, $00, $93, $94, $95
    db $fb, $96, $97, $98, $99, $10, $9a, $9b, $03, $20, $7b, $a8, $a9, $aa, $ab, $00
    db $ac, $ad, $00, $ae, $af, $b0, $b1, $b2, $6a, $b3, $2c, $2a, $27, $b1, $02, $01
    db $80, $03, $01, $10, $02, $fa, $7b, $13, $20, $b8, $9a, $1b, $2e, $18, $8b, $0b
    db $05, $01, $00, $06, $c4, $01, $00, $20, $68, $0b, $0b, $0b, $20, $08, $0c, $05
    db $25, $0d, $0d, $b9, $0b, $06, $01, $60, $20, $08, $20, $38, $3f, $0b, $0c, $01
    db $00, $1f, $00, $d9, $13, $20, $f8, $40, $e8, $52, $08, $2f, $0b, $0b, $20, $e8
    db $01, $e0, $28, $13, $79, $55, $1c, $00, $b1, $e7, $32, $1b, $20, $21, $5f, $6b
    db $07, $07, $20, $20, $20, $21, $20, $78, $fe, $b9, $1c, $48, $03, $20, $f8, $40
    db $f8, $60, $f8, $80, $78, $6e, $09, $0c, $7e, $0c, $80, $29, $42, $7d, $20, $18
    db $00, $b9, $20, $d9, $08, $0a, $05, $3d, $05, $02, $0b, $0a, $0d, $2a, $1f, $52
    db $20, $18, $00, $20, $18, $ef, $ad, $11, $1f, $5a, $40, $18, $08, $20, $40, $1f
    db $5a, $20, $f8, $40, $f8, $f4, $60, $08, $45, $0e, $2d, $22, $7f, $52, $2d, $89
    db $0a, $0d, $08, $f3, $1f, $10, $8d, $02, $1f, $72, $1f, $10, $0d, $01, $20, $30
    db $1e, $a1, $80, $57, $22

    ld d, b                                       ; $6527: $50
    nop                                           ; $6528: $00
    ld b, $00                                     ; $6529: $06 $00
    sbc d                                         ; $652b: $9a
    sbc d                                         ; $652c: $9a
    sbc d                                         ; $652d: $9a
    sbc d                                         ; $652e: $9a
    sbc d                                         ; $652f: $9a
    sbc d                                         ; $6530: $9a
    sbc d                                         ; $6531: $9a
    sbc d                                         ; $6532: $9a
    sbc d                                         ; $6533: $9a
    sbc d                                         ; $6534: $9a
    sbc d                                         ; $6535: $9a
    sbc d                                         ; $6536: $9a
    sbc d                                         ; $6537: $9a
    sbc d                                         ; $6538: $9a
    sbc d                                         ; $6539: $9a
    sbc d                                         ; $653a: $9a
    sbc d                                         ; $653b: $9a
    sbc d                                         ; $653c: $9a
    sbc d                                         ; $653d: $9a
    sbc d                                         ; $653e: $9a
    sbc d                                         ; $653f: $9a
    sbc d                                         ; $6540: $9a
    sbc d                                         ; $6541: $9a
    sbc d                                         ; $6542: $9a
    sbc d                                         ; $6543: $9a
    ld [hl], l                                    ; $6544: $75
    halt                                          ; $6545: $76
    halt                                          ; $6546: $76
    halt                                          ; $6547: $76
    halt                                          ; $6548: $76
    halt                                          ; $6549: $76
    halt                                          ; $654a: $76
    halt                                          ; $654b: $76
    halt                                          ; $654c: $76
    halt                                          ; $654d: $76
    ld [hl], a                                    ; $654e: $77
    sbc d                                         ; $654f: $9a
    sbc d                                         ; $6550: $9a
    ld [hl], l                                    ; $6551: $75
    halt                                          ; $6552: $76
    halt                                          ; $6553: $76
    halt                                          ; $6554: $76
    halt                                          ; $6555: $76
    halt                                          ; $6556: $76
    halt                                          ; $6557: $76
    halt                                          ; $6558: $76
    halt                                          ; $6559: $76
    halt                                          ; $655a: $76
    ld [hl], a                                    ; $655b: $77
    sbc d                                         ; $655c: $9a
    sbc d                                         ; $655d: $9a
    ld [hl], l                                    ; $655e: $75
    halt                                          ; $655f: $76
    halt                                          ; $6560: $76
    halt                                          ; $6561: $76
    halt                                          ; $6562: $76
    halt                                          ; $6563: $76
    halt                                          ; $6564: $76
    halt                                          ; $6565: $76
    halt                                          ; $6566: $76
    halt                                          ; $6567: $76
    ld [hl], a                                    ; $6568: $77
    sbc d                                         ; $6569: $9a
    sbc d                                         ; $656a: $9a
    ld [hl], l                                    ; $656b: $75
    halt                                          ; $656c: $76
    ld [hl], a                                    ; $656d: $77
    ld a, b                                       ; $656e: $78
    ld a, c                                       ; $656f: $79
    sbc d                                         ; $6570: $9a
    sbc d                                         ; $6571: $9a
    call $9a73                                    ; $6572: $cd $73 $9a
    sbc d                                         ; $6575: $9a
    sbc d                                         ; $6576: $9a
    sbc d                                         ; $6577: $9a
    ld [hl], d                                    ; $6578: $72
    ld [hl], c                                    ; $6579: $71
    sbc d                                         ; $657a: $9a
    sbc d                                         ; $657b: $9a
    sbc d                                         ; $657c: $9a
    sbc d                                         ; $657d: $9a
    sbc d                                         ; $657e: $9a
    sbc d                                         ; $657f: $9a
    sbc d                                         ; $6580: $9a
    sbc d                                         ; $6581: $9a
    sbc d                                         ; $6582: $9a
    sbc d                                         ; $6583: $9a
    sbc d                                         ; $6584: $9a
    sbc d                                         ; $6585: $9a
    sbc d                                         ; $6586: $9a
    sbc d                                         ; $6587: $9a
    sbc d                                         ; $6588: $9a
    sbc d                                         ; $6589: $9a
    sbc d                                         ; $658a: $9a
    sbc d                                         ; $658b: $9a
    sbc d                                         ; $658c: $9a
    sbc d                                         ; $658d: $9a
    sbc d                                         ; $658e: $9a
    sbc d                                         ; $658f: $9a
    sbc d                                         ; $6590: $9a
    sbc d                                         ; $6591: $9a
    sbc d                                         ; $6592: $9a
    sbc d                                         ; $6593: $9a
    ld [hl], b                                    ; $6594: $70
    ld l, a                                       ; $6595: $6f
    ld l, [hl]                                    ; $6596: $6e
    ld l, a                                       ; $6597: $6f
    ld l, [hl]                                    ; $6598: $6e
    ld l, a                                       ; $6599: $6f
    ld l, [hl]                                    ; $659a: $6e
    ld l, a                                       ; $659b: $6f
    ld l, [hl]                                    ; $659c: $6e
    ld l, a                                       ; $659d: $6f
    ld l, l                                       ; $659e: $6d
    sbc d                                         ; $659f: $9a
    sbc d                                         ; $65a0: $9a
    ld [hl], b                                    ; $65a1: $70
    ld l, a                                       ; $65a2: $6f
    ld l, [hl]                                    ; $65a3: $6e
    ld l, a                                       ; $65a4: $6f
    ld l, [hl]                                    ; $65a5: $6e
    ld l, a                                       ; $65a6: $6f
    ld l, [hl]                                    ; $65a7: $6e
    ld l, a                                       ; $65a8: $6f
    ld l, [hl]                                    ; $65a9: $6e
    ld l, a                                       ; $65aa: $6f
    ld l, l                                       ; $65ab: $6d
    sbc d                                         ; $65ac: $9a
    sbc d                                         ; $65ad: $9a
    ld [hl], b                                    ; $65ae: $70
    ld l, a                                       ; $65af: $6f
    ld l, [hl]                                    ; $65b0: $6e
    ld l, a                                       ; $65b1: $6f
    ld l, [hl]                                    ; $65b2: $6e
    ld l, a                                       ; $65b3: $6f
    ld l, [hl]                                    ; $65b4: $6e
    ld l, a                                       ; $65b5: $6f
    ld l, [hl]                                    ; $65b6: $6e
    ld l, a                                       ; $65b7: $6f
    ld l, l                                       ; $65b8: $6d
    sbc d                                         ; $65b9: $9a
    sbc d                                         ; $65ba: $9a
    ld l, h                                       ; $65bb: $6c
    ld l, e                                       ; $65bc: $6b
    ld l, d                                       ; $65bd: $6a
    ld l, c                                       ; $65be: $69
    ld l, b                                       ; $65bf: $68
    ld h, a                                       ; $65c0: $67
    ld h, [hl]                                    ; $65c1: $66
    ld h, l                                       ; $65c2: $65
    ld h, h                                       ; $65c3: $64
    inc d                                         ; $65c4: $14
    inc de                                        ; $65c5: $13
    ld [de], a                                    ; $65c6: $12
    ld de, $0c0d                                  ; $65c7: $11 $0d $0c
    dec bc                                        ; $65ca: $0b
    sbc d                                         ; $65cb: $9a
    sbc d                                         ; $65cc: $9a
    sbc d                                         ; $65cd: $9a
    sbc d                                         ; $65ce: $9a
    sbc d                                         ; $65cf: $9a
    sbc d                                         ; $65d0: $9a
    sbc d                                         ; $65d1: $9a
    sbc d                                         ; $65d2: $9a
    sbc d                                         ; $65d3: $9a
    sbc d                                         ; $65d4: $9a
    sbc d                                         ; $65d5: $9a
    sbc d                                         ; $65d6: $9a
    sbc d                                         ; $65d7: $9a
    sbc d                                         ; $65d8: $9a
    sbc d                                         ; $65d9: $9a
    sbc d                                         ; $65da: $9a
    sbc d                                         ; $65db: $9a
    sbc d                                         ; $65dc: $9a
    sbc d                                         ; $65dd: $9a
    sbc d                                         ; $65de: $9a
    sbc d                                         ; $65df: $9a
    sbc d                                         ; $65e0: $9a
    sbc d                                         ; $65e1: $9a
    sbc d                                         ; $65e2: $9a
    sbc d                                         ; $65e3: $9a
    ld a, [bc]                                    ; $65e4: $0a
    add hl, bc                                    ; $65e5: $09
    ld [$0807], sp                                ; $65e6: $08 $07 $08
    inc b                                         ; $65e9: $04
    ld [$0809], sp                                ; $65ea: $08 $09 $08
    rlca                                          ; $65ed: $07
    inc bc                                        ; $65ee: $03
    sbc d                                         ; $65ef: $9a
    sbc d                                         ; $65f0: $9a
    ld a, [bc]                                    ; $65f1: $0a
    add hl, bc                                    ; $65f2: $09
    ld [$0807], sp                                ; $65f3: $08 $07 $08
    inc b                                         ; $65f6: $04
    ld [$0809], sp                                ; $65f7: $08 $09 $08
    rlca                                          ; $65fa: $07
    inc bc                                        ; $65fb: $03
    sbc d                                         ; $65fc: $9a
    sbc d                                         ; $65fd: $9a
    ld a, [bc]                                    ; $65fe: $0a
    add hl, bc                                    ; $65ff: $09
    ld [$0807], sp                                ; $6600: $08 $07 $08
    inc b                                         ; $6603: $04
    ld [$0809], sp                                ; $6604: $08 $09 $08
    rlca                                          ; $6607: $07
    inc bc                                        ; $6608: $03
    sbc d                                         ; $6609: $9a
    sbc d                                         ; $660a: $9a
    ld [bc], a                                    ; $660b: $02
    ld bc, $ff00                                  ; $660c: $01 $00 $ff
    cp $fd                                        ; $660f: $fe $fd
    db $fc                                        ; $6611: $fc
    rst $38                                       ; $6612: $ff
    ei                                            ; $6613: $fb
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    db $fd                                        ; $6616: $fd
    ld a, [$f9ff]                                 ; $6617: $fa $ff $f9
    ld hl, sp-$66                                 ; $661a: $f8 $9a
    sbc d                                         ; $661c: $9a
    sbc d                                         ; $661d: $9a
    sbc d                                         ; $661e: $9a
    sbc d                                         ; $661f: $9a
    sbc d                                         ; $6620: $9a
    sbc d                                         ; $6621: $9a
    sbc d                                         ; $6622: $9a
    sbc d                                         ; $6623: $9a
    sbc d                                         ; $6624: $9a
    sbc d                                         ; $6625: $9a
    sbc d                                         ; $6626: $9a
    sbc d                                         ; $6627: $9a
    sbc d                                         ; $6628: $9a
    sbc d                                         ; $6629: $9a
    sbc d                                         ; $662a: $9a
    sbc d                                         ; $662b: $9a
    sbc d                                         ; $662c: $9a
    sbc d                                         ; $662d: $9a
    sbc d                                         ; $662e: $9a
    sbc d                                         ; $662f: $9a
    sbc d                                         ; $6630: $9a
    sbc d                                         ; $6631: $9a
    sbc d                                         ; $6632: $9a
    sbc d                                         ; $6633: $9a
    rst $30                                       ; $6634: $f7
    db $f4                                        ; $6635: $f4
    di                                            ; $6636: $f3
    db $f4                                        ; $6637: $f4
    di                                            ; $6638: $f3
    db $f4                                        ; $6639: $f4
    di                                            ; $663a: $f3
    db $f4                                        ; $663b: $f4
    di                                            ; $663c: $f3
    db $f4                                        ; $663d: $f4
    ld a, [c]                                     ; $663e: $f2
    push af                                       ; $663f: $f5
    or $f7                                        ; $6640: $f6 $f7
    db $f4                                        ; $6642: $f4
    di                                            ; $6643: $f3
    db $f4                                        ; $6644: $f4
    di                                            ; $6645: $f3
    db $f4                                        ; $6646: $f4
    di                                            ; $6647: $f3
    db $f4                                        ; $6648: $f4
    di                                            ; $6649: $f3
    db $f4                                        ; $664a: $f4
    ld a, [c]                                     ; $664b: $f2
    push af                                       ; $664c: $f5
    or $f7                                        ; $664d: $f6 $f7
    db $f4                                        ; $664f: $f4
    di                                            ; $6650: $f3
    db $f4                                        ; $6651: $f4
    di                                            ; $6652: $f3
    db $f4                                        ; $6653: $f4
    di                                            ; $6654: $f3
    db $f4                                        ; $6655: $f4
    di                                            ; $6656: $f3
    db $f4                                        ; $6657: $f4
    ld a, [c]                                     ; $6658: $f2
    push af                                       ; $6659: $f5
    or $f1                                        ; $665a: $f6 $f1
    ldh a, [$ef]                                  ; $665c: $f0 $ef
    xor $ed                                       ; $665e: $ee $ed
    db $ec                                        ; $6660: $ec
    db $eb                                        ; $6661: $eb
    ld [$e8e9], a                                 ; $6662: $ea $e9 $e8
    rst $20                                       ; $6665: $e7
    and $e5                                       ; $6666: $e6 $e5
    db $e4                                        ; $6668: $e4
    db $e3                                        ; $6669: $e3
    ld [c], a                                     ; $666a: $e2
    sbc d                                         ; $666b: $9a
    sbc d                                         ; $666c: $9a
    sbc d                                         ; $666d: $9a
    sbc d                                         ; $666e: $9a
    sbc d                                         ; $666f: $9a
    sbc d                                         ; $6670: $9a
    sbc d                                         ; $6671: $9a
    sbc d                                         ; $6672: $9a
    sbc d                                         ; $6673: $9a
    sbc d                                         ; $6674: $9a
    sbc d                                         ; $6675: $9a
    sbc d                                         ; $6676: $9a
    sbc d                                         ; $6677: $9a
    sbc d                                         ; $6678: $9a
    sbc d                                         ; $6679: $9a
    sbc d                                         ; $667a: $9a
    sbc d                                         ; $667b: $9a
    sbc d                                         ; $667c: $9a
    sbc d                                         ; $667d: $9a
    sbc d                                         ; $667e: $9a
    sbc d                                         ; $667f: $9a
    sbc d                                         ; $6680: $9a
    sbc d                                         ; $6681: $9a
    sbc d                                         ; $6682: $9a
    sbc d                                         ; $6683: $9a
    pop hl                                        ; $6684: $e1
    ldh [$e0], a                                  ; $6685: $e0 $e0
    ldh [$e0], a                                  ; $6687: $e0 $e0
    ldh [$e0], a                                  ; $6689: $e0 $e0
    ldh [$e0], a                                  ; $668b: $e0 $e0
    ldh [$df], a                                  ; $668d: $e0 $df
    dec b                                         ; $668f: $05
    ld b, $e1                                     ; $6690: $06 $e1
    ldh [$e0], a                                  ; $6692: $e0 $e0
    ldh [$e0], a                                  ; $6694: $e0 $e0
    ldh [$e0], a                                  ; $6696: $e0 $e0
    ldh [$e0], a                                  ; $6698: $e0 $e0
    ldh [$df], a                                  ; $669a: $e0 $df
    dec b                                         ; $669c: $05
    ld b, $e1                                     ; $669d: $06 $e1
    ldh [$e0], a                                  ; $669f: $e0 $e0
    ldh [$e0], a                                  ; $66a1: $e0 $e0
    ldh [$e0], a                                  ; $66a3: $e0 $e0
    ldh [$e0], a                                  ; $66a5: $e0 $e0
    ldh [$df], a                                  ; $66a7: $e0 $df
    dec b                                         ; $66a9: $05
    ld b, $de                                     ; $66aa: $06 $de
    db $dd                                        ; $66ac: $dd
    call c, $dadb                                 ; $66ad: $dc $db $da
    reti                                          ; $66b0: $d9


    ret c                                         ; $66b1: $d8

    rst $10                                       ; $66b2: $d7
    sub $d5                                       ; $66b3: $d6 $d5
    call nc, $d2d3                                ; $66b5: $d4 $d3 $d2
    pop de                                        ; $66b8: $d1
    ret nc                                        ; $66b9: $d0

    rst $08                                       ; $66ba: $cf
    adc $ce                                       ; $66bb: $ce $ce
    adc $ce                                       ; $66bd: $ce $ce
    adc $ce                                       ; $66bf: $ce $ce
    adc $ce                                       ; $66c1: $ce $ce
    adc $ce                                       ; $66c3: $ce $ce
    adc $ce                                       ; $66c5: $ce $ce
    adc $ce                                       ; $66c7: $ce $ce
    adc $ce                                       ; $66c9: $ce $ce
    adc $ce                                       ; $66cb: $ce $ce
    adc $ce                                       ; $66cd: $ce $ce
    adc $ce                                       ; $66cf: $ce $ce
    adc $ce                                       ; $66d1: $ce $ce
    adc $ce                                       ; $66d3: $ce $ce
    add b                                         ; $66d5: $80
    add c                                         ; $66d6: $81
    adc $ce                                       ; $66d7: $ce $ce
    adc $ce                                       ; $66d9: $ce $ce
    adc $80                                       ; $66db: $ce $80
    add c                                         ; $66dd: $81
    adc $ce                                       ; $66de: $ce $ce
    adc $ce                                       ; $66e0: $ce $ce
    add b                                         ; $66e2: $80
    add c                                         ; $66e3: $81
    adc $ce                                       ; $66e4: $ce $ce
    adc $ce                                       ; $66e6: $ce $ce
    adc $80                                       ; $66e8: $ce $80
    add c                                         ; $66ea: $81
    adc $ce                                       ; $66eb: $ce $ce
    adc $ce                                       ; $66ed: $ce $ce
    add b                                         ; $66ef: $80
    add c                                         ; $66f0: $81
    adc $ce                                       ; $66f1: $ce $ce
    adc $ce                                       ; $66f3: $ce $ce
    adc $80                                       ; $66f5: $ce $80
    add c                                         ; $66f7: $81
    adc $ce                                       ; $66f8: $ce $ce
    adc $ce                                       ; $66fa: $ce $ce
    adc $ce                                       ; $66fc: $ce $ce
    add d                                         ; $66fe: $82
    add e                                         ; $66ff: $83
    add h                                         ; $6700: $84
    add l                                         ; $6701: $85
    add [hl]                                      ; $6702: $86
    add a                                         ; $6703: $87
    adc b                                         ; $6704: $88
    adc c                                         ; $6705: $89
    adc d                                         ; $6706: $8a
    adc e                                         ; $6707: $8b
    adc h                                         ; $6708: $8c
    adc l                                         ; $6709: $8d
    adc $04                                       ; $670a: $ce $04
    inc b                                         ; $670c: $04
    inc b                                         ; $670d: $04
    inc b                                         ; $670e: $04
    inc b                                         ; $670f: $04
    inc b                                         ; $6710: $04
    inc b                                         ; $6711: $04
    inc b                                         ; $6712: $04
    inc b                                         ; $6713: $04
    inc b                                         ; $6714: $04
    inc b                                         ; $6715: $04
    inc b                                         ; $6716: $04
    inc b                                         ; $6717: $04
    inc b                                         ; $6718: $04
    inc b                                         ; $6719: $04
    inc b                                         ; $671a: $04
    inc b                                         ; $671b: $04
    inc b                                         ; $671c: $04
    inc b                                         ; $671d: $04
    inc b                                         ; $671e: $04
    inc b                                         ; $671f: $04
    inc b                                         ; $6720: $04
    inc b                                         ; $6721: $04
    inc b                                         ; $6722: $04
    inc b                                         ; $6723: $04
    dec b                                         ; $6724: $05
    dec b                                         ; $6725: $05
    dec b                                         ; $6726: $05
    dec b                                         ; $6727: $05
    dec b                                         ; $6728: $05
    dec b                                         ; $6729: $05
    dec b                                         ; $672a: $05
    dec b                                         ; $672b: $05
    dec b                                         ; $672c: $05
    dec b                                         ; $672d: $05
    dec b                                         ; $672e: $05
    inc b                                         ; $672f: $04
    inc b                                         ; $6730: $04
    dec b                                         ; $6731: $05
    dec b                                         ; $6732: $05
    dec b                                         ; $6733: $05
    dec b                                         ; $6734: $05
    dec b                                         ; $6735: $05
    dec b                                         ; $6736: $05
    dec b                                         ; $6737: $05
    dec b                                         ; $6738: $05
    dec b                                         ; $6739: $05
    dec b                                         ; $673a: $05
    dec b                                         ; $673b: $05
    inc b                                         ; $673c: $04
    inc b                                         ; $673d: $04
    dec b                                         ; $673e: $05
    dec b                                         ; $673f: $05
    dec b                                         ; $6740: $05
    dec b                                         ; $6741: $05
    dec b                                         ; $6742: $05
    dec b                                         ; $6743: $05
    dec b                                         ; $6744: $05
    dec b                                         ; $6745: $05
    dec b                                         ; $6746: $05
    dec b                                         ; $6747: $05
    dec b                                         ; $6748: $05
    inc b                                         ; $6749: $04
    inc b                                         ; $674a: $04
    dec b                                         ; $674b: $05
    dec b                                         ; $674c: $05
    dec b                                         ; $674d: $05
    inc b                                         ; $674e: $04
    inc b                                         ; $674f: $04
    inc b                                         ; $6750: $04
    inc b                                         ; $6751: $04
    dec b                                         ; $6752: $05
    dec b                                         ; $6753: $05
    inc b                                         ; $6754: $04
    inc b                                         ; $6755: $04
    inc b                                         ; $6756: $04
    dec b                                         ; $6757: $05
    dec b                                         ; $6758: $05
    dec b                                         ; $6759: $05
    inc b                                         ; $675a: $04
    inc b                                         ; $675b: $04
    inc b                                         ; $675c: $04
    inc b                                         ; $675d: $04
    inc b                                         ; $675e: $04
    inc b                                         ; $675f: $04
    inc b                                         ; $6760: $04
    inc b                                         ; $6761: $04
    inc b                                         ; $6762: $04
    inc b                                         ; $6763: $04
    inc b                                         ; $6764: $04
    inc b                                         ; $6765: $04
    inc b                                         ; $6766: $04
    inc b                                         ; $6767: $04
    inc b                                         ; $6768: $04
    inc b                                         ; $6769: $04
    inc b                                         ; $676a: $04
    inc b                                         ; $676b: $04
    inc b                                         ; $676c: $04
    inc b                                         ; $676d: $04
    inc b                                         ; $676e: $04
    inc b                                         ; $676f: $04
    inc b                                         ; $6770: $04
    inc b                                         ; $6771: $04
    inc b                                         ; $6772: $04
    inc b                                         ; $6773: $04
    inc b                                         ; $6774: $04
    inc b                                         ; $6775: $04
    inc b                                         ; $6776: $04
    inc b                                         ; $6777: $04
    inc b                                         ; $6778: $04
    inc b                                         ; $6779: $04
    inc b                                         ; $677a: $04
    inc b                                         ; $677b: $04
    inc b                                         ; $677c: $04
    inc b                                         ; $677d: $04
    inc b                                         ; $677e: $04
    inc b                                         ; $677f: $04
    inc b                                         ; $6780: $04
    inc b                                         ; $6781: $04
    inc b                                         ; $6782: $04
    inc b                                         ; $6783: $04
    inc b                                         ; $6784: $04
    inc b                                         ; $6785: $04
    inc b                                         ; $6786: $04
    inc b                                         ; $6787: $04
    inc b                                         ; $6788: $04
    inc b                                         ; $6789: $04
    inc b                                         ; $678a: $04
    inc b                                         ; $678b: $04
    inc b                                         ; $678c: $04
    inc b                                         ; $678d: $04
    inc b                                         ; $678e: $04
    inc b                                         ; $678f: $04
    inc b                                         ; $6790: $04
    inc b                                         ; $6791: $04
    inc b                                         ; $6792: $04
    inc b                                         ; $6793: $04
    inc b                                         ; $6794: $04
    inc b                                         ; $6795: $04
    inc b                                         ; $6796: $04
    inc b                                         ; $6797: $04
    inc b                                         ; $6798: $04
    inc b                                         ; $6799: $04
    inc b                                         ; $679a: $04
    inc b                                         ; $679b: $04
    ld b, $04                                     ; $679c: $06 $04
    inc b                                         ; $679e: $04
    inc b                                         ; $679f: $04
    inc b                                         ; $67a0: $04
    inc b                                         ; $67a1: $04
    inc b                                         ; $67a2: $04
    inc b                                         ; $67a3: $04
    inc b                                         ; $67a4: $04
    inc b                                         ; $67a5: $04
    inc b                                         ; $67a6: $04
    dec b                                         ; $67a7: $05
    dec b                                         ; $67a8: $05
    dec b                                         ; $67a9: $05
    dec b                                         ; $67aa: $05
    inc b                                         ; $67ab: $04
    inc b                                         ; $67ac: $04
    inc b                                         ; $67ad: $04
    inc b                                         ; $67ae: $04
    inc b                                         ; $67af: $04
    inc b                                         ; $67b0: $04
    inc b                                         ; $67b1: $04
    inc b                                         ; $67b2: $04
    inc b                                         ; $67b3: $04
    inc b                                         ; $67b4: $04
    inc b                                         ; $67b5: $04
    inc b                                         ; $67b6: $04
    inc b                                         ; $67b7: $04
    inc b                                         ; $67b8: $04
    inc b                                         ; $67b9: $04
    inc b                                         ; $67ba: $04
    inc b                                         ; $67bb: $04
    inc b                                         ; $67bc: $04
    inc b                                         ; $67bd: $04
    inc b                                         ; $67be: $04
    inc b                                         ; $67bf: $04
    inc b                                         ; $67c0: $04
    inc b                                         ; $67c1: $04
    inc b                                         ; $67c2: $04
    inc b                                         ; $67c3: $04
    inc b                                         ; $67c4: $04
    rlca                                          ; $67c5: $07
    inc b                                         ; $67c6: $04
    rlca                                          ; $67c7: $07
    inc b                                         ; $67c8: $04
    rlca                                          ; $67c9: $07
    inc b                                         ; $67ca: $04
    rlca                                          ; $67cb: $07
    inc b                                         ; $67cc: $04
    rlca                                          ; $67cd: $07
    inc b                                         ; $67ce: $04
    inc b                                         ; $67cf: $04
    inc b                                         ; $67d0: $04
    inc b                                         ; $67d1: $04
    rlca                                          ; $67d2: $07
    inc b                                         ; $67d3: $04
    rlca                                          ; $67d4: $07
    inc b                                         ; $67d5: $04
    rlca                                          ; $67d6: $07
    inc b                                         ; $67d7: $04
    rlca                                          ; $67d8: $07
    inc b                                         ; $67d9: $04
    rlca                                          ; $67da: $07
    inc b                                         ; $67db: $04
    inc b                                         ; $67dc: $04
    inc b                                         ; $67dd: $04
    inc b                                         ; $67de: $04
    rlca                                          ; $67df: $07
    inc b                                         ; $67e0: $04
    rlca                                          ; $67e1: $07
    inc b                                         ; $67e2: $04
    rlca                                          ; $67e3: $07
    inc b                                         ; $67e4: $04
    rlca                                          ; $67e5: $07
    inc b                                         ; $67e6: $04
    rlca                                          ; $67e7: $07
    inc b                                         ; $67e8: $04
    inc b                                         ; $67e9: $04
    inc b                                         ; $67ea: $04
    inc b                                         ; $67eb: $04
    ld b, $04                                     ; $67ec: $06 $04
    inc b                                         ; $67ee: $04
    inc b                                         ; $67ef: $04
    inc b                                         ; $67f0: $04
    inc b                                         ; $67f1: $04
    inc b                                         ; $67f2: $04
    inc b                                         ; $67f3: $04
    inc b                                         ; $67f4: $04
    inc b                                         ; $67f5: $04
    inc h                                         ; $67f6: $24
    dec b                                         ; $67f7: $05
    dec b                                         ; $67f8: $05
    dec b                                         ; $67f9: $05
    dec b                                         ; $67fa: $05
    inc b                                         ; $67fb: $04
    inc b                                         ; $67fc: $04
    inc b                                         ; $67fd: $04
    inc b                                         ; $67fe: $04
    inc b                                         ; $67ff: $04
    inc b                                         ; $6800: $04
    inc b                                         ; $6801: $04
    inc b                                         ; $6802: $04
    inc b                                         ; $6803: $04
    inc b                                         ; $6804: $04
    inc b                                         ; $6805: $04
    inc b                                         ; $6806: $04
    inc b                                         ; $6807: $04
    inc b                                         ; $6808: $04
    inc b                                         ; $6809: $04
    inc b                                         ; $680a: $04
    inc b                                         ; $680b: $04
    inc b                                         ; $680c: $04
    inc b                                         ; $680d: $04
    inc b                                         ; $680e: $04
    inc b                                         ; $680f: $04
    inc b                                         ; $6810: $04
    inc b                                         ; $6811: $04
    inc b                                         ; $6812: $04
    inc b                                         ; $6813: $04
    inc b                                         ; $6814: $04
    inc b                                         ; $6815: $04
    inc b                                         ; $6816: $04
    inc b                                         ; $6817: $04
    inc b                                         ; $6818: $04
    inc b                                         ; $6819: $04
    inc b                                         ; $681a: $04
    inc b                                         ; $681b: $04
    inc b                                         ; $681c: $04
    inc b                                         ; $681d: $04
    inc b                                         ; $681e: $04
    dec b                                         ; $681f: $05
    dec b                                         ; $6820: $05
    inc b                                         ; $6821: $04
    inc b                                         ; $6822: $04
    inc b                                         ; $6823: $04
    inc b                                         ; $6824: $04
    inc b                                         ; $6825: $04
    inc b                                         ; $6826: $04
    inc b                                         ; $6827: $04
    inc b                                         ; $6828: $04
    inc b                                         ; $6829: $04
    inc b                                         ; $682a: $04
    inc b                                         ; $682b: $04
    dec b                                         ; $682c: $05
    dec b                                         ; $682d: $05
    inc b                                         ; $682e: $04
    inc b                                         ; $682f: $04
    inc b                                         ; $6830: $04
    inc b                                         ; $6831: $04
    inc b                                         ; $6832: $04
    inc b                                         ; $6833: $04
    inc b                                         ; $6834: $04
    inc b                                         ; $6835: $04
    inc b                                         ; $6836: $04
    inc b                                         ; $6837: $04
    inc b                                         ; $6838: $04
    dec b                                         ; $6839: $05
    dec b                                         ; $683a: $05
    inc b                                         ; $683b: $04
    ld b, $04                                     ; $683c: $06 $04
    inc b                                         ; $683e: $04
    inc b                                         ; $683f: $04
    inc b                                         ; $6840: $04
    inc b                                         ; $6841: $04
    inc b                                         ; $6842: $04
    inc b                                         ; $6843: $04
    inc b                                         ; $6844: $04
    inc b                                         ; $6845: $04
    inc b                                         ; $6846: $04
    dec b                                         ; $6847: $05
    dec b                                         ; $6848: $05
    dec b                                         ; $6849: $05
    dec b                                         ; $684a: $05
    dec b                                         ; $684b: $05
    dec b                                         ; $684c: $05
    dec b                                         ; $684d: $05
    dec b                                         ; $684e: $05
    dec b                                         ; $684f: $05
    dec b                                         ; $6850: $05
    dec b                                         ; $6851: $05
    dec b                                         ; $6852: $05
    dec b                                         ; $6853: $05
    dec b                                         ; $6854: $05
    dec b                                         ; $6855: $05
    dec b                                         ; $6856: $05
    dec b                                         ; $6857: $05
    dec b                                         ; $6858: $05
    dec b                                         ; $6859: $05
    dec b                                         ; $685a: $05
    dec b                                         ; $685b: $05
    dec b                                         ; $685c: $05
    dec b                                         ; $685d: $05
    dec b                                         ; $685e: $05
    dec b                                         ; $685f: $05
    dec b                                         ; $6860: $05
    dec b                                         ; $6861: $05
    dec b                                         ; $6862: $05
    dec b                                         ; $6863: $05
    inc b                                         ; $6864: $04
    inc b                                         ; $6865: $04
    inc b                                         ; $6866: $04
    inc b                                         ; $6867: $04
    inc b                                         ; $6868: $04
    inc b                                         ; $6869: $04

Jump_0c0_686a:
    inc b                                         ; $686a: $04
    inc b                                         ; $686b: $04
    inc b                                         ; $686c: $04
    inc b                                         ; $686d: $04
    inc b                                         ; $686e: $04
    dec b                                         ; $686f: $05
    dec b                                         ; $6870: $05
    inc b                                         ; $6871: $04
    inc b                                         ; $6872: $04
    inc b                                         ; $6873: $04
    inc b                                         ; $6874: $04
    inc b                                         ; $6875: $04
    inc b                                         ; $6876: $04
    inc b                                         ; $6877: $04
    inc b                                         ; $6878: $04
    inc b                                         ; $6879: $04
    inc b                                         ; $687a: $04
    inc b                                         ; $687b: $04
    dec b                                         ; $687c: $05
    dec b                                         ; $687d: $05
    inc b                                         ; $687e: $04
    inc b                                         ; $687f: $04
    inc b                                         ; $6880: $04
    inc b                                         ; $6881: $04
    inc b                                         ; $6882: $04
    inc b                                         ; $6883: $04
    inc b                                         ; $6884: $04
    inc b                                         ; $6885: $04
    inc b                                         ; $6886: $04
    inc b                                         ; $6887: $04
    inc b                                         ; $6888: $04
    dec b                                         ; $6889: $05
    dec b                                         ; $688a: $05
    inc b                                         ; $688b: $04
    inc b                                         ; $688c: $04
    inc b                                         ; $688d: $04
    inc b                                         ; $688e: $04
    inc b                                         ; $688f: $04
    inc b                                         ; $6890: $04
    inc b                                         ; $6891: $04
    inc b                                         ; $6892: $04
    inc b                                         ; $6893: $04
    inc b                                         ; $6894: $04
    inc b                                         ; $6895: $04
    inc b                                         ; $6896: $04
    dec b                                         ; $6897: $05
    dec b                                         ; $6898: $05
    dec b                                         ; $6899: $05
    inc b                                         ; $689a: $04
    dec b                                         ; $689b: $05
    dec b                                         ; $689c: $05
    dec b                                         ; $689d: $05
    dec b                                         ; $689e: $05
    dec b                                         ; $689f: $05
    dec b                                         ; $68a0: $05
    dec b                                         ; $68a1: $05
    dec b                                         ; $68a2: $05
    dec b                                         ; $68a3: $05
    dec b                                         ; $68a4: $05
    dec b                                         ; $68a5: $05
    dec b                                         ; $68a6: $05
    dec b                                         ; $68a7: $05
    dec b                                         ; $68a8: $05
    dec b                                         ; $68a9: $05
    dec b                                         ; $68aa: $05
    dec b                                         ; $68ab: $05
    dec b                                         ; $68ac: $05
    dec b                                         ; $68ad: $05
    dec b                                         ; $68ae: $05
    dec b                                         ; $68af: $05
    dec b                                         ; $68b0: $05
    dec b                                         ; $68b1: $05
    dec b                                         ; $68b2: $05
    dec b                                         ; $68b3: $05
    dec b                                         ; $68b4: $05
    dec b                                         ; $68b5: $05
    dec b                                         ; $68b6: $05
    dec b                                         ; $68b7: $05
    dec b                                         ; $68b8: $05
    dec b                                         ; $68b9: $05
    dec b                                         ; $68ba: $05
    dec b                                         ; $68bb: $05
    dec b                                         ; $68bc: $05
    dec b                                         ; $68bd: $05
    dec b                                         ; $68be: $05
    dec b                                         ; $68bf: $05
    dec b                                         ; $68c0: $05
    dec b                                         ; $68c1: $05
    dec b                                         ; $68c2: $05
    dec b                                         ; $68c3: $05
    dec b                                         ; $68c4: $05
    dec b                                         ; $68c5: $05
    dec b                                         ; $68c6: $05
    dec b                                         ; $68c7: $05
    dec b                                         ; $68c8: $05
    dec b                                         ; $68c9: $05
    dec b                                         ; $68ca: $05
    dec b                                         ; $68cb: $05
    dec b                                         ; $68cc: $05
    dec b                                         ; $68cd: $05
    dec b                                         ; $68ce: $05
    dec b                                         ; $68cf: $05
    dec b                                         ; $68d0: $05
    dec b                                         ; $68d1: $05
    dec b                                         ; $68d2: $05
    dec b                                         ; $68d3: $05
    dec b                                         ; $68d4: $05
    dec b                                         ; $68d5: $05
    dec b                                         ; $68d6: $05
    dec b                                         ; $68d7: $05
    dec b                                         ; $68d8: $05
    dec b                                         ; $68d9: $05
    dec b                                         ; $68da: $05
    dec b                                         ; $68db: $05
    dec b                                         ; $68dc: $05
    dec b                                         ; $68dd: $05
    dec b                                         ; $68de: $05
    dec b                                         ; $68df: $05
    dec b                                         ; $68e0: $05
    dec b                                         ; $68e1: $05
    dec b                                         ; $68e2: $05
    dec b                                         ; $68e3: $05
    dec b                                         ; $68e4: $05
    dec b                                         ; $68e5: $05
    dec b                                         ; $68e6: $05
    dec b                                         ; $68e7: $05
    dec b                                         ; $68e8: $05
    dec b                                         ; $68e9: $05
    dec b                                         ; $68ea: $05

    db $1e, $00, $1f, $00, $0e, $01, $7d, $70, $01, $f8, $23, $f8, $45, $f8, $67, $f8
    db $89, $00, $7f, $8d, $08, $08, $80, $81, $82, $83, $1e, $b8, $84, $85, $86, $40
    db $87, $b3, $98, $76, $75, $74, $8a, $8b, $8c, $20, $8d, $8e, $d1, $98, $73, $72
    db $71, $91, $92, $40, $93, $ed, $a8, $94, $95, $96, $97, $98, $99, $10, $9a, $88
    db $89, $0e, $99, $9b, $9c, $9d, $9e, $08, $9f, $a0, $8f, $90, $2c, $a9, $a1, $a2
    db $a3, $42, $a4, $48, $b9, $a5, $a6, $a7, $a8, $5a, $a8, $70, $04, $70, $a9, $aa
    db $ab, $ac, $5a, $b8, $ad, $ae, $20, $af, $b0, $a2, $a1, $b1, $b2, $b3, $b4, $b5
    db $20, $b6, $b7, $c0, $a1, $b8, $70, $b9, $ba, $bb, $21, $bc, $bd, $de, $a1, $be
    db $bf, $c0, $c1, $f9, $f9, $e7, $1b, $fa, $ac, $01, $40, $02, $c2, $c3, $06, $08
    db $0c, $18, $06, $48, $83, $ac, $01, $70, $70, $ac, $c4, $c5, $06, $00, $0c, $18
    db $c1, $06, $38, $ac, $19, $75, $74, $c6, $c7, $c8, $06, $00, $f1, $0c, $18, $06
    db $38, $ac, $19, $06, $28, $c9, $92, $ca, $0c, $30, $c8, $c4, $09, $ac, $19, $cb
    db $cc, $06, $10, $cd, $ce, $98, $38, $cf, $d0, $0c, $20, $12, $10, $ac, $19, $d1
    db $d2, $9d, $00, $d3, $d4, $a0, $d1, $d5, $d6, $d3, $d7, $78, $d8, $0c, $20, $12
    db $10, $ac, $29, $b2, $19, $db, $a2, $d9, $02, $dc, $70, $70, $dd, $da, $e9, $12
    db $10, $df, $e3, $c4, $01, $ac, $09, $06, $28, $e0, $a6, $e1, $0c, $30, $18, $18
    db $c3, $ac, $09, $06, $28, $e2, $aa, $e3, $e4, $12, $58, $ac, $19, $87, $b2, $19
    db $e5, $ae, $af, $e6, $12, $48, $ac, $19, $06, $28, $08, $e7, $b5, $b6, $e8, $12
    db $28, $7e, $7d, $7c, $60, $7b, $ac, $21, $06, $80, $7a, $79, $78, $77, $00, $d5
    db $01, $f8, $23, $b0, $01, $01, $d0, $02, $01, $d0, $03, $01, $a8, $0a, $0b, $0b
    db $0f, $0f, $1d, $90, $43, $1e, $d0, $03, $0f, $07, $07, $07, $0b, $1e, $e8, $74
    db $b8, $02, $10, $5b, $a8, $fe, $1e, $d8, $3f, $18, $d0, $b0, $5d, $10, $3c, $d8
    db $5a, $f8, $2e, $81, $0f, $2f, $0f, $0f, $1e, $c8, $07, $1e, $d0, $3c, $00, $b1
    db $b8, $1a, $f8, $df, $ac, $41, $06, $e8, $2b, $24, $90, $ac, $19, $06, $d0, $d1
    db $01, $06, $98, $ff, $ad, $21, $07, $f8, $29, $80, $ac, $29, $0c, $f8, $2a, $f8
    db $4e, $f8, $72, $38, $fc, $ac, $19, $06, $88, $bb, $12, $ca, $11, $06, $88, $26
    db $0b

    stop                                          ; $6a8c: $10 $00
    ld [bc], a                                    ; $6a8e: $02
    nop                                           ; $6a8f: $00
    db $f4                                        ; $6a90: $f4
    xor $ef                                       ; $6a91: $ee $ef
    ldh a, [$f1]                                  ; $6a93: $f0 $f1
    db $fc                                        ; $6a95: $fc
    ei                                            ; $6a96: $fb
    ld a, [$eded]                                 ; $6a97: $fa $ed $ed
    db $ed                                        ; $6a9a: $ed
    db $ed                                        ; $6a9b: $ed
    db $ed                                        ; $6a9c: $ed
    db $ed                                        ; $6a9d: $ed
    db $ed                                        ; $6a9e: $ed
    db $ed                                        ; $6a9f: $ed
    push af                                       ; $6aa0: $f5
    or $f7                                        ; $6aa1: $f6 $f7
    ld hl, sp-$07                                 ; $6aa3: $f8 $f9
    di                                            ; $6aa5: $f3
    ld a, [c]                                     ; $6aa6: $f2
    db $ed                                        ; $6aa7: $ed
    db $ed                                        ; $6aa8: $ed
    db $ed                                        ; $6aa9: $ed
    db $ed                                        ; $6aaa: $ed
    db $ed                                        ; $6aab: $ed
    db $ed                                        ; $6aac: $ed
    db $ed                                        ; $6aad: $ed
    db $ed                                        ; $6aae: $ed
    db $ed                                        ; $6aaf: $ed
    ld [$0808], sp                                ; $6ab0: $08 $08 $08
    ld [$0808], sp                                ; $6ab3: $08 $08 $08
    ld [$0808], sp                                ; $6ab6: $08 $08 $08
    ld [$0808], sp                                ; $6ab9: $08 $08 $08
    ld [$0808], sp                                ; $6abc: $08 $08 $08
    ld [$0808], sp                                ; $6abf: $08 $08 $08
    ld [$0808], sp                                ; $6ac2: $08 $08 $08
    ld [$0808], sp                                ; $6ac5: $08 $08 $08
    ld [$0808], sp                                ; $6ac8: $08 $08 $08
    ld [$0808], sp                                ; $6acb: $08 $08 $08
    ld [$1008], sp                                ; $6ace: $08 $08 $10
    nop                                           ; $6ad1: $00
    ld [bc], a                                    ; $6ad2: $02
    nop                                           ; $6ad3: $00
    db $fc                                        ; $6ad4: $fc
    db $fd                                        ; $6ad5: $fd
    cp $ff                                        ; $6ad6: $fe $ff
    nop                                           ; $6ad8: $00
    ei                                            ; $6ad9: $fb
    ld a, [$f8f9]                                 ; $6ada: $fa $f9 $f8
    rst $30                                       ; $6add: $f7
    db $ed                                        ; $6ade: $ed
    db $ed                                        ; $6adf: $ed
    db $ed                                        ; $6ae0: $ed
    db $ed                                        ; $6ae1: $ed
    db $ed                                        ; $6ae2: $ed
    db $ed                                        ; $6ae3: $ed
    db $ed                                        ; $6ae4: $ed
    or $f5                                        ; $6ae5: $f6 $f5
    db $f4                                        ; $6ae7: $f4
    di                                            ; $6ae8: $f3
    ld a, [c]                                     ; $6ae9: $f2
    pop af                                        ; $6aea: $f1
    ldh a, [$ef]                                  ; $6aeb: $f0 $ef
    xor $ed                                       ; $6aed: $ee $ed
    db $ed                                        ; $6aef: $ed
    db $ed                                        ; $6af0: $ed
    db $ed                                        ; $6af1: $ed
    db $ed                                        ; $6af2: $ed
    db $ed                                        ; $6af3: $ed
    ld [$0808], sp                                ; $6af4: $08 $08 $08
    ld [$0808], sp                                ; $6af7: $08 $08 $08
    ld [$0808], sp                                ; $6afa: $08 $08 $08
    ld [$0808], sp                                ; $6afd: $08 $08 $08
    ld [$0808], sp                                ; $6b00: $08 $08 $08
    ld [$0808], sp                                ; $6b03: $08 $08 $08
    ld [$0808], sp                                ; $6b06: $08 $08 $08
    ld [$0808], sp                                ; $6b09: $08 $08 $08
    ld [$0808], sp                                ; $6b0c: $08 $08 $08
    ld [$0808], sp                                ; $6b0f: $08 $08 $08
    ld [$1008], sp                                ; $6b12: $08 $08 $10
    nop                                           ; $6b15: $00
    ld [bc], a                                    ; $6b16: $02
    nop                                           ; $6b17: $00
    db $f4                                        ; $6b18: $f4
    xor $ef                                       ; $6b19: $ee $ef
    ldh a, [$f1]                                  ; $6b1b: $f0 $f1
    ld a, [c]                                     ; $6b1d: $f2
    di                                            ; $6b1e: $f3
    db $ed                                        ; $6b1f: $ed
    db $ed                                        ; $6b20: $ed
    db $ed                                        ; $6b21: $ed
    db $ed                                        ; $6b22: $ed
    db $ed                                        ; $6b23: $ed
    db $ed                                        ; $6b24: $ed
    db $ed                                        ; $6b25: $ed
    db $ed                                        ; $6b26: $ed
    db $ed                                        ; $6b27: $ed
    push af                                       ; $6b28: $f5
    or $f7                                        ; $6b29: $f6 $f7
    ld hl, sp-$07                                 ; $6b2b: $f8 $f9
    ld a, [$edfb]                                 ; $6b2d: $fa $fb $ed
    db $ed                                        ; $6b30: $ed
    db $ed                                        ; $6b31: $ed
    db $ed                                        ; $6b32: $ed
    db $ed                                        ; $6b33: $ed
    db $ed                                        ; $6b34: $ed
    db $ed                                        ; $6b35: $ed
    db $ed                                        ; $6b36: $ed
    db $ed                                        ; $6b37: $ed
    ld [$0808], sp                                ; $6b38: $08 $08 $08
    ld [$0808], sp                                ; $6b3b: $08 $08 $08
    ld [$0808], sp                                ; $6b3e: $08 $08 $08
    ld [$0808], sp                                ; $6b41: $08 $08 $08
    ld [$0808], sp                                ; $6b44: $08 $08 $08
    ld [$0808], sp                                ; $6b47: $08 $08 $08
    ld [$0808], sp                                ; $6b4a: $08 $08 $08
    ld [$0808], sp                                ; $6b4d: $08 $08 $08
    ld [$0808], sp                                ; $6b50: $08 $08 $08
    ld [$0808], sp                                ; $6b53: $08 $08 $08
    ld [$1008], sp                                ; $6b56: $08 $08 $10
    nop                                           ; $6b59: $00
    ld [bc], a                                    ; $6b5a: $02
    nop                                           ; $6b5b: $00
    db $f4                                        ; $6b5c: $f4
    xor $ef                                       ; $6b5d: $ee $ef
    ldh a, [$f1]                                  ; $6b5f: $f0 $f1
    ld a, [c]                                     ; $6b61: $f2
    di                                            ; $6b62: $f3
    db $ed                                        ; $6b63: $ed
    db $ed                                        ; $6b64: $ed
    db $ed                                        ; $6b65: $ed
    db $ed                                        ; $6b66: $ed
    db $ed                                        ; $6b67: $ed
    db $ed                                        ; $6b68: $ed
    db $ed                                        ; $6b69: $ed
    db $ed                                        ; $6b6a: $ed
    db $ed                                        ; $6b6b: $ed
    push af                                       ; $6b6c: $f5
    or $f7                                        ; $6b6d: $f6 $f7
    ld hl, sp-$07                                 ; $6b6f: $f8 $f9
    ld a, [$edfb]                                 ; $6b71: $fa $fb $ed
    db $ed                                        ; $6b74: $ed
    db $ed                                        ; $6b75: $ed
    db $ed                                        ; $6b76: $ed
    db $ed                                        ; $6b77: $ed
    db $ed                                        ; $6b78: $ed
    db $ed                                        ; $6b79: $ed
    db $ed                                        ; $6b7a: $ed
    db $ed                                        ; $6b7b: $ed
    ld [$0808], sp                                ; $6b7c: $08 $08 $08
    ld [$0808], sp                                ; $6b7f: $08 $08 $08
    ld [$0808], sp                                ; $6b82: $08 $08 $08
    ld [$0808], sp                                ; $6b85: $08 $08 $08
    ld [$0808], sp                                ; $6b88: $08 $08 $08
    ld [$0808], sp                                ; $6b8b: $08 $08 $08
    ld [$0808], sp                                ; $6b8e: $08 $08 $08
    ld [$0808], sp                                ; $6b91: $08 $08 $08
    ld [$0808], sp                                ; $6b94: $08 $08 $08
    ld [$0808], sp                                ; $6b97: $08 $08 $08
    ld [$1008], sp                                ; $6b9a: $08 $08 $10
    nop                                           ; $6b9d: $00
    ld [bc], a                                    ; $6b9e: $02
    nop                                           ; $6b9f: $00
    db $f4                                        ; $6ba0: $f4
    xor $ef                                       ; $6ba1: $ee $ef
    ldh a, [$f1]                                  ; $6ba3: $f0 $f1
    ld a, [c]                                     ; $6ba5: $f2
    di                                            ; $6ba6: $f3
    db $ed                                        ; $6ba7: $ed
    db $ed                                        ; $6ba8: $ed
    db $ed                                        ; $6ba9: $ed
    db $ed                                        ; $6baa: $ed
    db $ed                                        ; $6bab: $ed
    db $ed                                        ; $6bac: $ed
    db $ed                                        ; $6bad: $ed
    db $ed                                        ; $6bae: $ed
    db $ed                                        ; $6baf: $ed
    push af                                       ; $6bb0: $f5
    or $f7                                        ; $6bb1: $f6 $f7
    ld hl, sp-$07                                 ; $6bb3: $f8 $f9
    ld a, [$edfb]                                 ; $6bb5: $fa $fb $ed
    db $ed                                        ; $6bb8: $ed
    db $ed                                        ; $6bb9: $ed
    db $ed                                        ; $6bba: $ed
    db $ed                                        ; $6bbb: $ed
    db $ed                                        ; $6bbc: $ed
    db $ed                                        ; $6bbd: $ed
    db $ed                                        ; $6bbe: $ed
    db $ed                                        ; $6bbf: $ed
    ld [$0808], sp                                ; $6bc0: $08 $08 $08
    ld [$0808], sp                                ; $6bc3: $08 $08 $08
    ld [$0808], sp                                ; $6bc6: $08 $08 $08
    ld [$0808], sp                                ; $6bc9: $08 $08 $08
    ld [$0808], sp                                ; $6bcc: $08 $08 $08
    ld [$0808], sp                                ; $6bcf: $08 $08 $08
    ld [$0808], sp                                ; $6bd2: $08 $08 $08
    ld [$0808], sp                                ; $6bd5: $08 $08 $08
    ld [$0808], sp                                ; $6bd8: $08 $08 $08
    ld [$0808], sp                                ; $6bdb: $08 $08 $08
    ld [$1508], sp                                ; $6bde: $08 $08 $15
    nop                                           ; $6be1: $00
    inc de                                        ; $6be2: $13
    nop                                           ; $6be3: $00
    inc h                                         ; $6be4: $24
    nop                                           ; $6be5: $00
    ld [hl], e                                    ; $6be6: $73
    ld [hl], b                                    ; $6be7: $70
    ld bc, $23f8                                  ; $6be8: $01 $f8 $23
    ld hl, sp+$45                                 ; $6beb: $f8 $45
    ld hl, sp+$70                                 ; $6bed: $f8 $70
    ld [hl], e                                    ; $6bef: $73
    dec d                                         ; $6bf0: $15
    ld hl, sp-$75                                 ; $6bf1: $f8 $8b
    ld hl, sp-$02                                 ; $6bf3: $f8 $fe

jr_0c0_6bf5:
    xor l                                         ; $6bf5: $ad
    ld hl, sp-$31                                 ; $6bf6: $f8 $cf
    ld hl, sp-$0f                                 ; $6bf8: $f8 $f1
    ld hl, sp+$13                                 ; $6bfa: $f8 $13
    ld sp, hl                                     ; $6bfc: $f9
    dec [hl]                                      ; $6bfd: $35
    ld sp, hl                                     ; $6bfe: $f9
    ld d, a                                       ; $6bff: $57
    ld sp, hl                                     ; $6c00: $f9
    ld a, c                                       ; $6c01: $79
    sbc c                                         ; $6c02: $99
    nop                                           ; $6c03: $00
    push de                                       ; $6c04: $d5
    ld bc, $23f8                                  ; $6c05: $01 $f8 $23
    jr nz, @+$03                                  ; $6c08: $20 $01

    ld bc, $0288                                  ; $6c0a: $01 $88 $02
    ld bc, $0388                                  ; $6c0d: $01 $88 $03
    ld bc, $7f80                                  ; $6c10: $01 $80 $7f
    ld b, e                                       ; $6c13: $43
    dec d                                         ; $6c14: $15
    adc b                                         ; $6c15: $88
    inc d                                         ; $6c16: $14
    ld hl, sp+$36                                 ; $6c17: $f8 $36
    ld hl, sp+$58                                 ; $6c19: $f8 $58
    ld hl, sp+$7a                                 ; $6c1b: $f8 $7a
    ld hl, sp-$64                                 ; $6c1d: $f8 $9c
    ld hl, sp-$42                                 ; $6c1f: $f8 $be
    ld hl, sp-$40                                 ; $6c21: $f8 $c0
    ldh [$f8], a                                  ; $6c23: $e0 $f8
    ld [bc], a                                    ; $6c25: $02
    ld sp, hl                                     ; $6c26: $f9
    inc bc                                        ; $6c27: $03
    inc bc                                        ; $6c28: $03
    inc d                                         ; $6c29: $14
    nop                                           ; $6c2a: $00
    ld [de], a                                    ; $6c2b: $12
    nop                                           ; $6c2c: $00
    adc $00                                       ; $6c2d: $ce $00
    nop                                           ; $6c2f: $00
    xor a                                         ; $6c30: $af
    sub d                                         ; $6c31: $92
    sub e                                         ; $6c32: $93
    sub h                                         ; $6c33: $94
    sub l                                         ; $6c34: $95
    sub [hl]                                      ; $6c35: $96
    sub a                                         ; $6c36: $97
    sbc b                                         ; $6c37: $98
    add b                                         ; $6c38: $80
    ld [$9948], sp                                ; $6c39: $08 $48 $99
    sbc d                                         ; $6c3c: $9a
    sbc e                                         ; $6c3d: $9b
    sbc h                                         ; $6c3e: $9c
    sbc l                                         ; $6c3f: $9d
    sbc [hl]                                      ; $6c40: $9e
    sbc a                                         ; $6c41: $9f
    ld b, b                                       ; $6c42: $40
    and b                                         ; $6c43: $a0
    ld [$a148], sp                                ; $6c44: $08 $48 $a1
    and d                                         ; $6c47: $a2
    and e                                         ; $6c48: $a3
    and h                                         ; $6c49: $a4
    and l                                         ; $6c4a: $a5
    and [hl]                                      ; $6c4b: $a6
    jr nz, jr_0c0_6bf5                            ; $6c4c: $20 $a7

    xor b                                         ; $6c4e: $a8
    ld [$a948], sp                                ; $6c4f: $08 $48 $a9
    xor d                                         ; $6c52: $aa
    xor e                                         ; $6c53: $ab
    xor h                                         ; $6c54: $ac
    xor l                                         ; $6c55: $ad
    add d                                         ; $6c56: $82
    dec b                                         ; $6c57: $05
    ld h, b                                       ; $6c58: $60
    xor [hl]                                      ; $6c59: $ae
    sub c                                         ; $6c5a: $91
    sub c                                         ; $6c5b: $91
    sub c                                         ; $6c5c: $91
    xor [hl]                                      ; $6c5d: $ae
    dec b                                         ; $6c5e: $05
    ld h, b                                       ; $6c5f: $60
    or b                                          ; $6c60: $b0
    and b                                         ; $6c61: $a0
    inc d                                         ; $6c62: $14
    nop                                           ; $6c63: $00
    or b                                          ; $6c64: $b0
    dec b                                         ; $6c65: $05
    ld h, b                                       ; $6c66: $60
    or c                                          ; $6c67: $b1
    or d                                          ; $6c68: $b2
    sub c                                         ; $6c69: $91
    or d                                          ; $6c6a: $b2
    or c                                          ; $6c6b: $b1
    add d                                         ; $6c6c: $82
    dec b                                         ; $6c6d: $05
    ld h, b                                       ; $6c6e: $60
    sub c                                         ; $6c6f: $91
    or e                                          ; $6c70: $b3
    or h                                          ; $6c71: $b4
    or e                                          ; $6c72: $b3
    sub c                                         ; $6c73: $91
    dec b                                         ; $6c74: $05
    ld h, b                                       ; $6c75: $60
    or c                                          ; $6c76: $b1
    inc sp                                        ; $6c77: $33
    or l                                          ; $6c78: $b5
    or [hl]                                       ; $6c79: $b6
    jr z, jr_0c0_6c7c                             ; $6c7a: $28 $00

jr_0c0_6c7c:
    dec b                                         ; $6c7c: $05
    ld e, b                                       ; $6c7d: $58
    or a                                          ; $6c7e: $b7
    cp b                                          ; $6c7f: $b8
    ld d, b                                       ; $6c80: $50
    nop                                           ; $6c81: $00
    dec b                                         ; $6c82: $05
    ld h, b                                       ; $6c83: $60
    add d                                         ; $6c84: $82
    ld a, b                                       ; $6c85: $78
    adc b                                         ; $6c86: $88
    cp c                                          ; $6c87: $b9
    cp d                                          ; $6c88: $ba
    cp e                                          ; $6c89: $bb
    cp h                                          ; $6c8a: $bc
    cp l                                          ; $6c8b: $bd
    dec b                                         ; $6c8c: $05
    ld h, b                                       ; $6c8d: $60
    cp [hl]                                       ; $6c8e: $be
    and b                                         ; $6c8f: $a0
    and b                                         ; $6c90: $a0
    nop                                           ; $6c91: $00
    cp a                                          ; $6c92: $bf
    dec b                                         ; $6c93: $05
    ld h, b                                       ; $6c94: $60
    ret nz                                        ; $6c95: $c0

    pop bc                                        ; $6c96: $c1
    jp nz, $c4c3                                  ; $6c97: $c2 $c3 $c4

    db $10                                        ; $6c9a: $10
    ret nz                                        ; $6c9b: $c0

    push bc                                       ; $6c9c: $c5
    add $05                                       ; $6c9d: $c6 $05
    ld [$c8c7], sp                                ; $6c9f: $08 $c7 $c8
    ret                                           ; $6ca2: $c9


    ret nz                                        ; $6ca3: $c0

    nop                                           ; $6ca4: $00
    jp z, $c3cb                                   ; $6ca5: $ca $cb $c3

    call nz, $cdcc                                ; $6ca8: $c4 $cc $cd
    adc $cf                                       ; $6cab: $ce $cf
    nop                                           ; $6cad: $00
    ret nc                                        ; $6cae: $d0

    pop de                                        ; $6caf: $d1
    jp nc, $d4d3                                  ; $6cb0: $d2 $d3 $d4

    ret nc                                        ; $6cb3: $d0

    ret nc                                        ; $6cb4: $d0

    push de                                       ; $6cb5: $d5
    nop                                           ; $6cb6: $00
    sub $d7                                       ; $6cb7: $d6 $d7
    ret nc                                        ; $6cb9: $d0

    ret c                                         ; $6cba: $d8

    reti                                          ; $6cbb: $d9


    jp c, $dcdb                                   ; $6cbc: $da $db $dc

    nop                                           ; $6cbf: $00
    db $dd                                        ; $6cc0: $dd
    sbc $df                                       ; $6cc1: $de $df
    ldh [$e1], a                                  ; $6cc3: $e0 $e1
    ld [c], a                                     ; $6cc5: $e2
    db $e3                                        ; $6cc6: $e3
    db $e4                                        ; $6cc7: $e4
    nop                                           ; $6cc8: $00
    push hl                                       ; $6cc9: $e5
    and $d0                                       ; $6cca: $e6 $d0
    rst $20                                       ; $6ccc: $e7
    add sp, -$17                                  ; $6ccd: $e8 $e9
    ret nc                                        ; $6ccf: $d0

    ld [$eb00], a                                 ; $6cd0: $ea $00 $eb
    db $ec                                        ; $6cd3: $ec
    db $ed                                        ; $6cd4: $ed
    xor $ef                                       ; $6cd5: $ee $ef
    ldh a, [$f1]                                  ; $6cd7: $f0 $f1
    ld a, [c]                                     ; $6cd9: $f2
    nop                                           ; $6cda: $00
    di                                            ; $6cdb: $f3
    db $f4                                        ; $6cdc: $f4
    push af                                       ; $6cdd: $f5
    or $f7                                        ; $6cde: $f6 $f7
    ld hl, sp-$07                                 ; $6ce0: $f8 $f9
    ld a, [$fb00]                                 ; $6ce2: $fa $00 $fb
    db $fc                                        ; $6ce5: $fc
    ret nc                                        ; $6ce6: $d0

    db $fd                                        ; $6ce7: $fd
    cp $ff                                        ; $6ce8: $fe $ff
    nop                                           ; $6cea: $00
    ret nc                                        ; $6ceb: $d0

    nop                                           ; $6cec: $00
    ret nc                                        ; $6ced: $d0

    ld bc, $0302                                  ; $6cee: $01 $02 $03
    ret nc                                        ; $6cf1: $d0

    ret nc                                        ; $6cf2: $d0

    inc b                                         ; $6cf3: $04
    dec b                                         ; $6cf4: $05
    nop                                           ; $6cf5: $00
    ld b, $07                                     ; $6cf6: $06 $07
    ret nc                                        ; $6cf8: $d0

    ld [$0a09], sp                                ; $6cf9: $08 $09 $0a
    dec bc                                        ; $6cfc: $0b
    inc c                                         ; $6cfd: $0c
    ld b, $0d                                     ; $6cfe: $06 $0d
    ld c, $0f                                     ; $6d00: $0e $0f
    db $10                                        ; $6d02: $10
    rlca                                          ; $6d03: $07
    ld bc, $23f8                                  ; $6d04: $01 $f8 $23
    or b                                          ; $6d07: $b0
    ld b, $b5                                     ; $6d08: $06 $b5
    ld bc, $0508                                  ; $6d0a: $01 $08 $05
    ld bc, $0a08                                  ; $6d0d: $01 $08 $0a
    db $10                                        ; $6d10: $10
    inc b                                         ; $6d11: $04
    ld bc, $0008                                  ; $6d12: $01 $08 $00
    ld bc, $6c00                                  ; $6d15: $01 $00 $6c
    jr nz, jr_0c0_6d1f                            ; $6d18: $20 $05

    ld hl, sp+$23                                 ; $6d1a: $f8 $23
    ld [$0520], sp                                ; $6d1c: $08 $20 $05

jr_0c0_6d1f:
    adc b                                         ; $6d1f: $88
    ld b, b                                       ; $6d20: $40

jr_0c0_6d21:
    ld l, b                                       ; $6d21: $68
    ld b, b                                       ; $6d22: $40
    nop                                           ; $6d23: $00
    rra                                           ; $6d24: $1f
    nop                                           ; $6d25: $00
    ld h, b                                       ; $6d26: $60
    ld h, b                                       ; $6d27: $60
    dec b                                         ; $6d28: $05
    ld h, b                                       ; $6d29: $60
    ld h, h                                       ; $6d2a: $64
    ld [$8805], sp                                ; $6d2b: $08 $05 $88
    ld a, b                                       ; $6d2e: $78
    ld l, b                                       ; $6d2f: $68
    sub c                                         ; $6d30: $91
    db $10                                        ; $6d31: $10
    db $fc                                        ; $6d32: $fc
    and b                                         ; $6d33: $a0
    jr c, jr_0c0_6d21                             ; $6d34: $38 $eb

    db $10                                        ; $6d36: $10
    inc d                                         ; $6d37: $14
    ld hl, sp+$28                                 ; $6d38: $f8 $28
    ld hl, sp+$50                                 ; $6d3a: $f8 $50
    ld hl, sp+$78                                 ; $6d3c: $f8 $78
    ld a, b                                       ; $6d3e: $78

    db $14, $00, $19, $00, $a0, $00, $00, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $04
    db $d0, $d1, $d2, $a0, $70, $01, $20, $9f, $9e, $00, $9d, $9c, $9b, $98, $97, $96
    db $95, $94, $3f, $93, $92, $14, $28, $08, $f8, $2a, $f8, $4c, $f8, $6e, $f8, $a4
    db $08, $7e, $71, $01, $f8, $23, $f8, $45, $40, $51, $f8, $72, $f8, $94, $e8, $72
    db $00, $73, $74, $75, $76, $77, $78, $79, $7a, $00, $7b, $7c, $7d, $7e, $7f, $80
    db $81, $82, $80, $c5, $00, $83, $84, $85, $86, $87, $88, $89, $00, $8a, $8b, $8c
    db $8d, $8e, $8f, $90, $71, $30, $71, $91, $d9, $00, $90, $51, $99, $71, $71, $9a
    db $c2, $ed, $00, $90, $51, $a1, $a2, $a3, $a4, $01, $01, $a5, $00, $a6, $a7, $a8
    db $a9, $aa, $ab, $ac, $ad, $08, $ae, $af, $b0, $b1, $11, $21, $b2, $b3, $b4, $00
    db $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $20, $bd, $be, $25, $21, $bf, $c0, $c1
    db $c2, $c3, $0a, $c4, $c5, $c6, $c4, $35, $41, $08, $01, $40, $00, $fe, $01, $20
    db $14, $88, $08, $f8, $2a, $f8, $4c, $f8, $6e, $f8, $a4, $08, $01, $fe, $01, $f8
    db $23, $f8, $45, $40, $51, $f8, $72, $f8, $64, $f0, $c1, $50, $09, $36, $09, $09
    db $c5, $00, $7c, $49, $08, $11, $00, $14, $68, $00, $f5, $14, $90, $3c, $80, $11
    db $21, $14, $88, $0f, $01, $20, $6f, $35, $41, $14, $00, $1b, $00, $73, $00, $00
    db $9f, $a9, $aa, $ab, $ac, $ad, $ae, $af, $00, $b0, $9d, $9c, $9b, $9a, $99, $98
    db $97, $00, $96, $95, $8e, $8e, $94, $93, $92, $91, $00, $90, $8d, $8c, $8b, $8a
    db $89, $88, $87, $00, $86, $85, $84, $83, $82, $81, $8e, $8e, $7f, $80, $01, $f8
    db $23, $f8, $45, $f8, $67, $f8, $89, $f8, $ab, $f8, $cd, $f8, $d0, $ef, $f8, $11
    db $c1, $8e, $01, $80, $a7, $a6, $a5, $a4, $84, $44, $69, $a3, $a2, $a1, $a0, $58
    db $79, $a8, $9e, $ab, $01, $50, $a8, $7a, $09, $8f, $53, $58, $8f, $14, $f8, $28
    db $f8, $da, $50, $68, $78, $78, $00, $01, $f8, $23, $10, $01, $01, $20, $02, $fb
    db $01, $00, $0c, $28, $14, $f8, $28, $f8, $4c, $48, $03, $01, $f8, $23, $f8, $af
    db $45, $e0, $06, $01, $00, $05, $01, $60, $14, $f8, $28, $b8, $10, $88, $98, $54
    db $89, $07, $07, $fa, $78, $14, $88, $03, $03, $07, $bd, $01, $58, $27, $16, $09
    db $14, $f8, $28, $f8, $50, $e8, $47, $01, $58, $00, $67, $03, $03

    inc d                                         ; $6edc: $14
    nop                                           ; $6edd: $00
    ld [de], a                                    ; $6ede: $12
    nop                                           ; $6edf: $00
    ld b, h                                       ; $6ee0: $44
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    add b                                         ; $6ee3: $80
    add h                                         ; $6ee4: $84
    sub b                                         ; $6ee5: $90
    adc a                                         ; $6ee6: $8f
    add h                                         ; $6ee7: $84
    add l                                         ; $6ee8: $85
    add [hl]                                      ; $6ee9: $86
    add a                                         ; $6eea: $87
    nop                                           ; $6eeb: $00
    adc b                                         ; $6eec: $88
    add b                                         ; $6eed: $80
    adc c                                         ; $6eee: $89
    adc d                                         ; $6eef: $8a
    adc e                                         ; $6ef0: $8b
    adc [hl]                                      ; $6ef1: $8e
    adc l                                         ; $6ef2: $8d
    adc h                                         ; $6ef3: $8c
    ld b, b                                       ; $6ef4: $40
    add b                                         ; $6ef5: $80
    ld bc, $9208                                  ; $6ef6: $01 $08 $92
    add e                                         ; $6ef9: $83
    add d                                         ; $6efa: $82
    sub d                                         ; $6efb: $92
    sub e                                         ; $6efc: $93
    sub h                                         ; $6efd: $94
    nop                                           ; $6efe: $00
    sub l                                         ; $6eff: $95
    sub [hl]                                      ; $6f00: $96
    add b                                         ; $6f01: $80
    sub a                                         ; $6f02: $97
    sbc b                                         ; $6f03: $98
    sub c                                         ; $6f04: $91
    add b                                         ; $6f05: $80
    add c                                         ; $6f06: $81
    rst $38                                       ; $6f07: $ff
    inc de                                        ; $6f08: $13
    db $10                                        ; $6f09: $10
    dec b                                         ; $6f0a: $05
    ld hl, sp+$27                                 ; $6f0b: $f8 $27
    ld hl, sp+$49                                 ; $6f0d: $f8 $49
    ld hl, sp+$6b                                 ; $6f0f: $f8 $6b
    ld hl, sp-$73                                 ; $6f11: $f8 $8d
    ld hl, sp-$51                                 ; $6f13: $f8 $af
    ld hl, sp-$2f                                 ; $6f15: $f8 $d1
    ld hl, sp-$12                                 ; $6f17: $f8 $ee
    di                                            ; $6f19: $f3
    ld hl, sp+$15                                 ; $6f1a: $f8 $15
    ld sp, hl                                     ; $6f1c: $f9
    scf                                           ; $6f1d: $37
    ld e, c                                       ; $6f1e: $59
    nop                                           ; $6f1f: $00
    ld bc, $23f8                                  ; $6f20: $01 $f8 $23
    ld hl, sp+$45                                 ; $6f23: $f8 $45
    ld b, b                                       ; $6f25: $40
    ld bc, $01db                                  ; $6f26: $01 $db $01
    ld hl, sp+$23                                 ; $6f29: $f8 $23
    db $10                                        ; $6f2b: $10
    ld [bc], a                                    ; $6f2c: $02
    ld bc, $23f8                                  ; $6f2d: $01 $f8 $23
    db $10                                        ; $6f30: $10
    inc bc                                        ; $6f31: $03
    ld bc, $23f8                                  ; $6f32: $01 $f8 $23
    db $10                                        ; $6f35: $10
    ld l, l                                       ; $6f36: $6d
    inc b                                         ; $6f37: $04
    ld bc, $23f8                                  ; $6f38: $01 $f8 $23
    db $10                                        ; $6f3b: $10
    dec b                                         ; $6f3c: $05
    ld bc, $23f8                                  ; $6f3d: $01 $f8 $23
    db $10                                        ; $6f40: $10
    ld b, $01                                     ; $6f41: $06 $01
    ld hl, sp-$50                                 ; $6f43: $f8 $b0
    inc hl                                        ; $6f45: $23
    db $10                                        ; $6f46: $10
    rlca                                          ; $6f47: $07
    ld bc, $23f8                                  ; $6f48: $01 $f8 $23
    db $10                                        ; $6f4b: $10

    db $14, $00, $1d, $00, $82, $00, $08, $80, $81, $82, $83, $04, $68, $84, $85, $86
    db $42, $87, $04, $68, $88, $89, $91, $92, $01, $50, $91, $02, $8a, $8b, $8c, $8d
    db $93, $94, $01, $40, $95, $02, $96, $93, $8e, $8f, $80, $81, $14, $50, $97, $31
    db $98, $93, $50, $08, $28, $50, $99, $9a, $93, $50, $08, $8f, $3c, $50, $94, $94
    db $93, $50, $70, $14, $00, $50, $70, $28, $00, $f8, $50, $70, $3c, $00, $50, $f8
    db $50, $f8, $50, $f8, $8c, $8d, $9b, $5c, $9c, $01, $50, $9b, $f0, $08, $40, $f9
    db $50, $19, $9d, $9e, $a5, $01, $50, $9d, $54, $09, $a0, $9f, $01, $50, $a0, $54
    db $09, $ff, $14, $68, $54, $09, $28, $68, $a4, $09, $3c, $68, $50, $f8, $50, $f8
    db $50, $68, $2b, $a1, $a2, $01, $50, $a1, $04, $99, $04, $01, $f8, $23, $20, $50
    db $00, $01, $58, $20, $14, $70, $06, $06, $20, $05, $f5, $14, $f8, $28, $98, $50
    db $00, $3c, $08, $01, $01, $58, $21, $14, $f8, $ad, $28, $38, $02, $01, $58, $22
    db $14, $f8, $28, $38, $03, $01, $58, $66, $23, $14, $f8, $28, $38, $04, $05, $01
    db $60, $53, $a1, $07, $bf, $01, $58, $27, $2c, $09, $14, $f8, $28, $f8, $50, $f8
    db $78, $f8, $8c, $f8, $c0, $b4, $38, $2c, $79

    jr nz, jr_0c0_7027                            ; $7025: $20 $00

jr_0c0_7027:
    ld [de], a                                    ; $7027: $12
    nop                                           ; $7028: $00
    dec sp                                        ; $7029: $3b
    ld bc, $8050                                  ; $702a: $01 $50 $80
    ld bc, $82e0                                  ; $702d: $01 $e0 $82
    ld bc, $8628                                  ; $7030: $01 $28 $86
    add h                                         ; $7033: $84
    add l                                         ; $7034: $85
    add [hl]                                      ; $7035: $86
    add b                                         ; $7036: $80
    dec c                                         ; $7037: $0d
    jr nc, @-$7c                                  ; $7038: $30 $82

    add d                                         ; $703a: $82
    add a                                         ; $703b: $87
    adc b                                         ; $703c: $88
    adc c                                         ; $703d: $89
    adc d                                         ; $703e: $8a
    adc e                                         ; $703f: $8b
    add b                                         ; $7040: $80
    dec e                                         ; $7041: $1d
    nop                                           ; $7042: $00
    adc h                                         ; $7043: $8c
    adc l                                         ; $7044: $8d
    sub h                                         ; $7045: $94
    adc a                                         ; $7046: $8f
    sub b                                         ; $7047: $90
    sub c                                         ; $7048: $91
    sub d                                         ; $7049: $92
    ld c, d                                       ; $704a: $4a
    sub e                                         ; $704b: $93
    ld bc, $9448                                  ; $704c: $01 $48 $94
    sub l                                         ; $704f: $95
    rrca                                          ; $7050: $0f
    jr c, @-$64                                   ; $7051: $38 $9a

    ld bc, $9750                                  ; $7053: $01 $50 $97
    inc h                                         ; $7056: $24
    sbc b                                         ; $7057: $98
    sbc c                                         ; $7058: $99
    ld de, $9a58                                  ; $7059: $11 $58 $9a
    ld h, h                                       ; $705c: $64
    ld bc, $9d40                                  ; $705d: $01 $40 $9d
    sbc l                                         ; $7060: $9d
    ld [bc], a                                    ; $7061: $02
    ld h, h                                       ; $7062: $64
    ld h, h                                       ; $7063: $64
    ret nc                                        ; $7064: $d0

    ld h, h                                       ; $7065: $64
    sbc a                                         ; $7066: $9f
    and b                                         ; $7067: $a0
    inc d                                         ; $7068: $14
    jr @-$5b                                      ; $7069: $18 $a3

    ld d, b                                       ; $706b: $50
    and h                                         ; $706c: $a4
    inc e                                         ; $706d: $1c
    db $10                                        ; $706e: $10
    and [hl]                                      ; $706f: $a6
    ld [hl+], a                                   ; $7070: $22
    jr @-$57                                      ; $7071: $18 $a7

    ld h, h                                       ; $7073: $64
    ld h, h                                       ; $7074: $64
    xor b                                         ; $7075: $a8
    nop                                           ; $7076: $00
    xor c                                         ; $7077: $a9
    xor d                                         ; $7078: $aa
    ld h, h                                       ; $7079: $64
    ld h, h                                       ; $707a: $64
    xor h                                         ; $707b: $ac
    xor l                                         ; $707c: $ad
    xor [hl]                                      ; $707d: $ae
    xor a                                         ; $707e: $af
    nop                                           ; $707f: $00
    or b                                          ; $7080: $b0
    or c                                          ; $7081: $b1
    ld [hl], c                                    ; $7082: $71
    or e                                          ; $7083: $b3
    ld h, h                                       ; $7084: $64
    ld h, h                                       ; $7085: $64
    or l                                          ; $7086: $b5
    or [hl]                                       ; $7087: $b6
    nop                                           ; $7088: $00
    or a                                          ; $7089: $b7
    cp b                                          ; $708a: $b8
    ld h, h                                       ; $708b: $64
    cp c                                          ; $708c: $b9
    cp d                                          ; $708d: $ba
    cp e                                          ; $708e: $bb
    cp h                                          ; $708f: $bc
    ld h, h                                       ; $7090: $64
    nop                                           ; $7091: $00
    ret nc                                        ; $7092: $d0

    cp [hl]                                       ; $7093: $be
    ld h, h                                       ; $7094: $64
    ld h, h                                       ; $7095: $64
    ret nz                                        ; $7096: $c0

    ld h, h                                       ; $7097: $64
    pop bc                                        ; $7098: $c1
    jp nz, $c300                                  ; $7099: $c2 $00 $c3

    call nz, $c6c5                                ; $709c: $c4 $c5 $c6
    rst $00                                       ; $709f: $c7
    ret z                                         ; $70a0: $c8

    ret                                           ; $70a1: $c9


    jp z, $cb00                                   ; $70a2: $ca $00 $cb

    call z, $cecd                                 ; $70a5: $cc $cd $ce
    rst $08                                       ; $70a8: $cf
    ret nc                                        ; $70a9: $d0

    pop de                                        ; $70aa: $d1
    jp nc, $d300                                  ; $70ab: $d2 $00 $d3

    call nc, $d6d5                                ; $70ae: $d4 $d5 $d6
    rst $10                                       ; $70b1: $d7
    ret c                                         ; $70b2: $d8

    reti                                          ; $70b3: $d9


    jp c, $db00                                   ; $70b4: $da $00 $db

    call c, $dedd                                 ; $70b7: $dc $dd $de
    rst $18                                       ; $70ba: $df
    ldh [$e1], a                                  ; $70bb: $e0 $e1
    ld [c], a                                     ; $70bd: $e2
    nop                                           ; $70be: $00
    db $e3                                        ; $70bf: $e3
    db $e4                                        ; $70c0: $e4
    push hl                                       ; $70c1: $e5
    and $e7                                       ; $70c2: $e6 $e7
    or d                                          ; $70c4: $b2
    and l                                         ; $70c5: $a5
    ld [$eb00], a                                 ; $70c6: $ea $00 $eb
    db $ec                                        ; $70c9: $ec
    db $ed                                        ; $70ca: $ed
    xor $ef                                       ; $70cb: $ee $ef
    ldh a, [$f1]                                  ; $70cd: $f0 $f1
    ld a, [c]                                     ; $70cf: $f2
    nop                                           ; $70d0: $00
    di                                            ; $70d1: $f3
    db $f4                                        ; $70d2: $f4
    push af                                       ; $70d3: $f5
    or $f7                                        ; $70d4: $f6 $f7
    ld hl, sp-$07                                 ; $70d6: $f8 $f9
    ld a, [$fb00]                                 ; $70d8: $fa $00 $fb
    db $fc                                        ; $70db: $fc
    db $fd                                        ; $70dc: $fd
    cp $fa                                        ; $70dd: $fe $fa
    ld sp, hl                                     ; $70df: $f9
    rst $38                                       ; $70e0: $ff
    db $fc                                        ; $70e1: $fc
    nop                                           ; $70e2: $00
    ld de, $fbe8                                  ; $70e3: $11 $e8 $fb
    ld a, [$0302]                                 ; $70e6: $fa $02 $03
    inc b                                         ; $70e9: $04
    dec b                                         ; $70ea: $05
    nop                                           ; $70eb: $00
    ld b, $0b                                     ; $70ec: $06 $0b
    ld [$f909], sp                                ; $70ee: $08 $09 $f9
    ld a, [$0b0a]                                 ; $70f1: $fa $0a $0b
    nop                                           ; $70f4: $00
    inc c                                         ; $70f5: $0c
    dec c                                         ; $70f6: $0d
    ld c, $fa                                     ; $70f7: $0e $fa
    ld d, $10                                     ; $70f9: $16 $10
    dec d                                         ; $70fb: $15
    inc de                                        ; $70fc: $13
    ld [$1413], sp                                ; $70fd: $08 $13 $14
    dec d                                         ; $7100: $15
    ld d, $08                                     ; $7101: $16 $08
    xor b                                         ; $7103: $a8
    rla                                           ; $7104: $17
    jr @+$1b                                      ; $7105: $18 $19

    inc b                                         ; $7107: $04
    ld a, [de]                                    ; $7108: $1a
    dec de                                        ; $7109: $1b
    inc e                                         ; $710a: $1c
    dec e                                         ; $710b: $1d
    ld e, $08                                     ; $710c: $1e $08
    xor b                                         ; $710e: $a8
    rra                                           ; $710f: $1f
    jr nz, jr_0c0_7112                            ; $7110: $20 $00

jr_0c0_7112:
    ld hl, $2322                                  ; $7112: $21 $22 $23
    inc h                                         ; $7115: $24
    dec h                                         ; $7116: $25
    ld h, $1f                                     ; $7117: $26 $1f
    jr nz, @+$0a                                  ; $7119: $20 $08

    dec h                                         ; $711b: $25
    ld [hl+], a                                   ; $711c: $22
    inc hl                                        ; $711d: $23
    ld [hl+], a                                   ; $711e: $22
    ld [$2778], sp                                ; $711f: $08 $78 $27
    jr z, @+$2b                                   ; $7122: $28 $29

    nop                                           ; $7124: $00
    ld a, [hl+]                                   ; $7125: $2a
    cpl                                           ; $7126: $2f
    inc l                                         ; $7127: $2c
    dec l                                         ; $7128: $2d
    ld l, $29                                     ; $7129: $2e $29
    jr z, jr_0c0_715c                             ; $712b: $28 $2f

    and d                                         ; $712d: $a2
    ld [$3020], sp                                ; $712e: $08 $20 $30
    stop                                          ; $7131: $10 $00
    ld l, $2e                                     ; $7133: $2e $2e
    cpl                                           ; $7135: $2f
    ld [$3120], sp                                ; $7136: $08 $20 $31
    ld bc, $3032                                  ; $7139: $01 $32 $30
    inc sp                                        ; $713c: $33
    inc [hl]                                      ; $713d: $34
    dec [hl]                                      ; $713e: $35
    ld [hl], $37                                  ; $713f: $36 $37
    ld [$0070], sp                                ; $7141: $08 $70 $00
    dec [hl]                                      ; $7144: $35
    jr nc, @+$35                                  ; $7145: $30 $33

    jr c, jr_0c0_717e                             ; $7147: $38 $35

    ld [hl-], a                                   ; $7149: $32
    scf                                           ; $714a: $37
    add hl, sp                                    ; $714b: $39
    ld bc, $3b3a                                  ; $714c: $01 $3a $3b
    jr c, jr_0c0_718d                             ; $714f: $38 $3c

    dec a                                         ; $7151: $3d
    ld a, $3f                                     ; $7152: $3e $3f
    ld [$00a8], sp                                ; $7154: $08 $a8 $00
    ld b, b                                       ; $7157: $40
    ld b, c                                       ; $7158: $41
    ld b, d                                       ; $7159: $42
    ld b, e                                       ; $715a: $43
    ld b, h                                       ; $715b: $44

jr_0c0_715c:
    ld h, h                                       ; $715c: $64
    ld h, h                                       ; $715d: $64
    ld b, l                                       ; $715e: $45
    jr nz, jr_0c0_71a7                            ; $715f: $20 $46

    ld b, a                                       ; $7161: $47
    ld a, [bc]                                    ; $7162: $0a
    sbc b                                         ; $7163: $98
    ld c, e                                       ; $7164: $4b
    ld c, c                                       ; $7165: $49
    ld c, d                                       ; $7166: $4a
    ld c, e                                       ; $7167: $4b
    ld d, b                                       ; $7168: $50
    dec b                                         ; $7169: $05
    ld c, l                                       ; $716a: $4d
    ld c, [hl]                                    ; $716b: $4e
    ld c, a                                       ; $716c: $4f
    ld d, b                                       ; $716d: $50
    ld d, c                                       ; $716e: $51
    ld a, [bc]                                    ; $716f: $0a
    sbc b                                         ; $7170: $98
    ld d, d                                       ; $7171: $52
    ld bc, $68e0                                  ; $7172: $01 $e0 $68
    ld [bc], a                                    ; $7175: $02
    ld bc, $23f8                                  ; $7176: $01 $f8 $23
    jr jr_0c0_719d                                ; $7179: $18 $22

    ld a, [hl+]                                   ; $717b: $2a
    sbc b                                         ; $717c: $98
    inc bc                                        ; $717d: $03

jr_0c0_717e:
    inc bc                                        ; $717e: $03
    inc hl                                        ; $717f: $23
    ld l, e                                       ; $7180: $6b
    inc bc                                        ; $7181: $03
    ld bc, $23f8                                  ; $7182: $01 $f8 $23
    cp b                                          ; $7185: $b8
    ld b, $01                                     ; $7186: $06 $01
    ld b, b                                       ; $7188: $40
    ld h, $0d                                     ; $7189: $26 $0d
    ld c, b                                       ; $718b: $48
    inc c                                         ; $718c: $0c

jr_0c0_718d:
    ret nc                                        ; $718d: $d0

    ld [$f82a], a                                 ; $718e: $ea $2a $f8
    ld c, e                                       ; $7191: $4b
    ld hl, sp+$7a                                 ; $7192: $f8 $7a
    jr @+$03                                      ; $7194: $18 $01

    ld bc, $00e0                                  ; $7196: $01 $e0 $00
    ld bc, $05e0                                  ; $7199: $01 $e0 $05
    add a                                         ; $719c: $87

jr_0c0_719d:
    ld bc, $05f8                                  ; $719d: $01 $f8 $05
    dec b                                         ; $71a0: $05
    rlca                                          ; $71a1: $07
    rlca                                          ; $71a2: $07
    dec b                                         ; $71a3: $05
    ld [$9004], sp                                ; $71a4: $08 $04 $90

jr_0c0_71a7:
    dec de                                        ; $71a7: $1b
    nop                                           ; $71a8: $00
    cp $1e                                        ; $71a9: $fe $1e
    ld [$0809], sp                                ; $71ab: $08 $09 $08
    ld [$0d40], sp                                ; $71ae: $08 $40 $0d
    ld [$4008], sp                                ; $71b1: $08 $08 $40
    rlca                                          ; $71b4: $07
    ld hl, sp+$29                                 ; $71b5: $f8 $29
    or b                                          ; $71b7: $b0
    inc b                                         ; $71b8: $04
    ldh [rSB], a                                  ; $71b9: $e0 $01
    ld hl, sp+$23                                 ; $71bb: $f8 $23
    ret nc                                        ; $71bd: $d0

    nop                                           ; $71be: $00
    jp hl                                         ; $71bf: $e9


    add b                                         ; $71c0: $80
    nop                                           ; $71c1: $00
    dec b                                         ; $71c2: $05
    nop                                           ; $71c3: $00
    ld h, h                                       ; $71c4: $64
    ld h, h                                       ; $71c5: $64
    ld h, h                                       ; $71c6: $64
    ld h, h                                       ; $71c7: $64
    ld h, h                                       ; $71c8: $64
    ld h, h                                       ; $71c9: $64
    ld h, h                                       ; $71ca: $64
    ld h, h                                       ; $71cb: $64
    ld h, h                                       ; $71cc: $64
    ld h, h                                       ; $71cd: $64
    ld h, h                                       ; $71ce: $64
    ld h, h                                       ; $71cf: $64
    sbc l                                         ; $71d0: $9d
    sbc l                                         ; $71d1: $9d
    ld h, h                                       ; $71d2: $64
    ld h, h                                       ; $71d3: $64
    ret nc                                        ; $71d4: $d0

    ld h, h                                       ; $71d5: $64
    sbc a                                         ; $71d6: $9f
    and b                                         ; $71d7: $a0
    ld h, h                                       ; $71d8: $64
    ld h, h                                       ; $71d9: $64
    ld h, h                                       ; $71da: $64
    ld h, h                                       ; $71db: $64
    ld h, h                                       ; $71dc: $64
    ld h, h                                       ; $71dd: $64
    and e                                         ; $71de: $a3
    and h                                         ; $71df: $a4
    ld h, h                                       ; $71e0: $64
    ld h, h                                       ; $71e1: $64
    ld h, h                                       ; $71e2: $64
    ld h, h                                       ; $71e3: $64
    ld h, h                                       ; $71e4: $64
    sbc l                                         ; $71e5: $9d
    ld h, h                                       ; $71e6: $64
    ld h, h                                       ; $71e7: $64
    ld d, h                                       ; $71e8: $54
    ld h, h                                       ; $71e9: $64
    sbc a                                         ; $71ea: $9f
    and b                                         ; $71eb: $a0
    ld h, h                                       ; $71ec: $64
    ld h, h                                       ; $71ed: $64
    ld h, h                                       ; $71ee: $64
    ld h, h                                       ; $71ef: $64
    ld h, h                                       ; $71f0: $64
    ld d, l                                       ; $71f1: $55
    ld h, h                                       ; $71f2: $64
    ld h, h                                       ; $71f3: $64
    ld h, h                                       ; $71f4: $64
    ld d, [hl]                                    ; $71f5: $56
    ld h, h                                       ; $71f6: $64
    ld h, h                                       ; $71f7: $64
    sbc l                                         ; $71f8: $9d
    sbc l                                         ; $71f9: $9d
    ld h, h                                       ; $71fa: $64
    ld h, h                                       ; $71fb: $64
    ld h, h                                       ; $71fc: $64
    ld h, h                                       ; $71fd: $64
    sbc a                                         ; $71fe: $9f
    and b                                         ; $71ff: $a0
    ld h, h                                       ; $7200: $64
    ld h, h                                       ; $7201: $64
    ld h, h                                       ; $7202: $64
    ld h, h                                       ; $7203: $64
    ld h, h                                       ; $7204: $64
    ld h, h                                       ; $7205: $64
    and e                                         ; $7206: $a3
    and h                                         ; $7207: $a4
    ld h, h                                       ; $7208: $64
    ld h, h                                       ; $7209: $64
    ld h, h                                       ; $720a: $64
    ld h, h                                       ; $720b: $64
    sbc l                                         ; $720c: $9d
    sbc l                                         ; $720d: $9d
    ld h, h                                       ; $720e: $64
    ld h, h                                       ; $720f: $64
    ld d, h                                       ; $7210: $54
    ld h, h                                       ; $7211: $64
    sbc a                                         ; $7212: $9f
    and b                                         ; $7213: $a0
    ld h, h                                       ; $7214: $64
    ld h, h                                       ; $7215: $64
    ld h, h                                       ; $7216: $64

Jump_0c0_7217:
    ld h, h                                       ; $7217: $64
    ld h, h                                       ; $7218: $64
    ld h, h                                       ; $7219: $64
    ld h, h                                       ; $721a: $64
    ld h, h                                       ; $721b: $64
    ld h, h                                       ; $721c: $64
    ld h, h                                       ; $721d: $64
    ld h, h                                       ; $721e: $64
    ld h, h                                       ; $721f: $64
    sbc l                                         ; $7220: $9d
    sbc l                                         ; $7221: $9d
    ld h, h                                       ; $7222: $64
    ld h, h                                       ; $7223: $64
    ret nc                                        ; $7224: $d0

    ld h, h                                       ; $7225: $64
    sbc a                                         ; $7226: $9f
    and b                                         ; $7227: $a0
    ld h, h                                       ; $7228: $64
    ld h, h                                       ; $7229: $64
    ld h, h                                       ; $722a: $64
    ld h, h                                       ; $722b: $64
    ld h, h                                       ; $722c: $64
    ld d, l                                       ; $722d: $55
    ld h, h                                       ; $722e: $64
    ld h, h                                       ; $722f: $64
    ld h, h                                       ; $7230: $64
    ld d, [hl]                                    ; $7231: $56
    ld h, h                                       ; $7232: $64
    ld h, h                                       ; $7233: $64
    sbc l                                         ; $7234: $9d
    sbc l                                         ; $7235: $9d
    ld h, h                                       ; $7236: $64
    ld h, h                                       ; $7237: $64
    ld h, h                                       ; $7238: $64

Jump_0c0_7239:
    ld h, h                                       ; $7239: $64
    sbc a                                         ; $723a: $9f
    and b                                         ; $723b: $a0
    ld h, h                                       ; $723c: $64
    ld h, h                                       ; $723d: $64
    ld h, h                                       ; $723e: $64
    sbc l                                         ; $723f: $9d
    sbc l                                         ; $7240: $9d
    ld h, h                                       ; $7241: $64
    ret nc                                        ; $7242: $d0

    ld h, h                                       ; $7243: $64
    ld h, h                                       ; $7244: $64
    and [hl]                                      ; $7245: $a6
    ld h, h                                       ; $7246: $64
    ld h, h                                       ; $7247: $64
    ld h, h                                       ; $7248: $64
    ld h, h                                       ; $7249: $64
    ld h, h                                       ; $724a: $64
    ld h, h                                       ; $724b: $64
    and a                                         ; $724c: $a7
    ld h, h                                       ; $724d: $64
    ld h, h                                       ; $724e: $64
    xor b                                         ; $724f: $a8
    xor c                                         ; $7250: $a9
    xor d                                         ; $7251: $aa
    ld h, h                                       ; $7252: $64
    ld h, h                                       ; $7253: $64
    xor h                                         ; $7254: $ac
    xor l                                         ; $7255: $ad
    xor [hl]                                      ; $7256: $ae
    xor a                                         ; $7257: $af
    or b                                          ; $7258: $b0
    or c                                          ; $7259: $b1
    ld [hl], c                                    ; $725a: $71
    or e                                          ; $725b: $b3
    ld h, h                                       ; $725c: $64
    ld h, h                                       ; $725d: $64
    or l                                          ; $725e: $b5
    or [hl]                                       ; $725f: $b6
    or a                                          ; $7260: $b7
    cp b                                          ; $7261: $b8
    ld h, h                                       ; $7262: $64
    cp c                                          ; $7263: $b9
    ld d, a                                       ; $7264: $57
    xor d                                         ; $7265: $aa
    ld e, e                                       ; $7266: $5b
    ld e, c                                       ; $7267: $59
    ld e, d                                       ; $7268: $5a
    xor l                                         ; $7269: $ad
    xor [hl]                                      ; $726a: $ae
    xor a                                         ; $726b: $af
    ld e, e                                       ; $726c: $5b
    ld e, h                                       ; $726d: $5c
    ld h, h                                       ; $726e: $64
    ld h, h                                       ; $726f: $64
    ld e, l                                       ; $7270: $5d
    ld e, [hl]                                    ; $7271: $5e
    ld h, h                                       ; $7272: $64
    ld h, h                                       ; $7273: $64
    ld e, a                                       ; $7274: $5f
    ld h, b                                       ; $7275: $60
    ld h, h                                       ; $7276: $64
    cp c                                          ; $7277: $b9
    ld d, a                                       ; $7278: $57
    xor d                                         ; $7279: $aa
    ld h, c                                       ; $727a: $61
    ld h, d                                       ; $727b: $62
    ld h, e                                       ; $727c: $63
    ld h, h                                       ; $727d: $64
    xor [hl]                                      ; $727e: $ae
    xor a                                         ; $727f: $af
    or b                                          ; $7280: $b0
    or c                                          ; $7281: $b1
    ld [hl], c                                    ; $7282: $71
    or e                                          ; $7283: $b3
    ld h, h                                       ; $7284: $64
    ld h, h                                       ; $7285: $64
    or l                                          ; $7286: $b5
    or [hl]                                       ; $7287: $b6
    or a                                          ; $7288: $b7
    cp b                                          ; $7289: $b8
    ld h, h                                       ; $728a: $64
    cp c                                          ; $728b: $b9
    ld d, a                                       ; $728c: $57
    xor d                                         ; $728d: $aa
    ld e, e                                       ; $728e: $5b
    ld e, c                                       ; $728f: $59
    ld e, d                                       ; $7290: $5a
    xor l                                         ; $7291: $ad
    xor [hl]                                      ; $7292: $ae
    xor a                                         ; $7293: $af
    ld h, h                                       ; $7294: $64
    and [hl]                                      ; $7295: $a6
    ld h, h                                       ; $7296: $64
    ld h, h                                       ; $7297: $64
    ld h, h                                       ; $7298: $64
    ld h, h                                       ; $7299: $64
    ld h, h                                       ; $729a: $64
    ld h, h                                       ; $729b: $64
    and a                                         ; $729c: $a7
    ld h, h                                       ; $729d: $64
    ld h, h                                       ; $729e: $64
    xor b                                         ; $729f: $a8
    xor c                                         ; $72a0: $a9
    xor d                                         ; $72a1: $aa
    ld h, h                                       ; $72a2: $64
    ld h, h                                       ; $72a3: $64
    xor h                                         ; $72a4: $ac
    xor l                                         ; $72a5: $ad
    xor [hl]                                      ; $72a6: $ae
    xor a                                         ; $72a7: $af
    ld e, e                                       ; $72a8: $5b
    ld e, h                                       ; $72a9: $5c
    ld h, h                                       ; $72aa: $64
    ld h, h                                       ; $72ab: $64
    ld e, l                                       ; $72ac: $5d
    ld e, [hl]                                    ; $72ad: $5e
    ld h, h                                       ; $72ae: $64
    ld h, h                                       ; $72af: $64
    ld e, a                                       ; $72b0: $5f
    ld h, b                                       ; $72b1: $60
    ld h, h                                       ; $72b2: $64
    cp c                                          ; $72b3: $b9
    ld d, a                                       ; $72b4: $57
    xor d                                         ; $72b5: $aa
    ld h, c                                       ; $72b6: $61
    ld h, d                                       ; $72b7: $62
    ld h, e                                       ; $72b8: $63
    ld h, h                                       ; $72b9: $64
    xor [hl]                                      ; $72ba: $ae
    xor a                                         ; $72bb: $af
    ld [hl], c                                    ; $72bc: $71
    or e                                          ; $72bd: $b3
    ld h, h                                       ; $72be: $64
    xor c                                         ; $72bf: $a9
    xor d                                         ; $72c0: $aa
    ld h, h                                       ; $72c1: $64
    xor h                                         ; $72c2: $ac
    xor l                                         ; $72c3: $ad
    cp d                                          ; $72c4: $ba
    cp e                                          ; $72c5: $bb
    cp h                                          ; $72c6: $bc
    ld h, h                                       ; $72c7: $64
    ret nc                                        ; $72c8: $d0

    cp [hl]                                       ; $72c9: $be
    ld h, h                                       ; $72ca: $64
    ld h, h                                       ; $72cb: $64
    ret nz                                        ; $72cc: $c0

    ld h, h                                       ; $72cd: $64
    pop bc                                        ; $72ce: $c1
    jp nz, $c4c3                                  ; $72cf: $c2 $c3 $c4

    push bc                                       ; $72d2: $c5
    add $c7                                       ; $72d3: $c6 $c7
    ret z                                         ; $72d5: $c8

    ret                                           ; $72d6: $c9


    jp z, $cccb                                   ; $72d7: $ca $cb $cc

    call $cfce                                    ; $72da: $cd $ce $cf
    ret nc                                        ; $72dd: $d0

    pop de                                        ; $72de: $d1
    jp nc, $d4d3                                  ; $72df: $d2 $d3 $d4

    push de                                       ; $72e2: $d5
    sub $73                                       ; $72e3: $d6 $73
    ld h, [hl]                                    ; $72e5: $66
    ld h, a                                       ; $72e6: $67
    ld l, b                                       ; $72e7: $68
    ld l, c                                       ; $72e8: $69
    ret z                                         ; $72e9: $c8

    ret                                           ; $72ea: $c9


    jp z, Jump_0c0_686a                           ; $72eb: $ca $6a $68

    ld l, e                                       ; $72ee: $6b
    ld h, h                                       ; $72ef: $64
    ld l, h                                       ; $72f0: $6c
    ld l, l                                       ; $72f1: $6d
    ld l, [hl]                                    ; $72f2: $6e
    ld h, h                                       ; $72f3: $64
    ld l, a                                       ; $72f4: $6f
    ld [hl], b                                    ; $72f5: $70
    ld [hl], c                                    ; $72f6: $71
    ld [hl], d                                    ; $72f7: $72
    ld [hl], e                                    ; $72f8: $73
    ld h, [hl]                                    ; $72f9: $66
    ld [hl], h                                    ; $72fa: $74
    ld [hl], l                                    ; $72fb: $75
    halt                                          ; $72fc: $76
    ld [hl], a                                    ; $72fd: $77
    ret                                           ; $72fe: $c9


    jp z, $cccb                                   ; $72ff: $ca $cb $cc

    call $cfce                                    ; $7302: $cd $ce $cf
    ret nc                                        ; $7305: $d0

    pop de                                        ; $7306: $d1
    jp nc, $d4d3                                  ; $7307: $d2 $d3 $d4

    push de                                       ; $730a: $d5
    sub $73                                       ; $730b: $d6 $73
    ld h, [hl]                                    ; $730d: $66
    ld h, a                                       ; $730e: $67
    ld l, b                                       ; $730f: $68
    ld l, c                                       ; $7310: $69
    ret z                                         ; $7311: $c8

    ret                                           ; $7312: $c9


    jp z, $bbba                                   ; $7313: $ca $ba $bb

    cp h                                          ; $7316: $bc
    ld h, h                                       ; $7317: $64
    ret nc                                        ; $7318: $d0

    cp [hl]                                       ; $7319: $be
    ld h, h                                       ; $731a: $64
    ld h, h                                       ; $731b: $64
    ret nz                                        ; $731c: $c0

    ld h, h                                       ; $731d: $64
    pop bc                                        ; $731e: $c1
    jp nz, $c4c3                                  ; $731f: $c2 $c3 $c4

    push bc                                       ; $7322: $c5
    add $c7                                       ; $7323: $c6 $c7
    ret z                                         ; $7325: $c8

    ret                                           ; $7326: $c9


    jp z, Jump_0c0_686a                           ; $7327: $ca $6a $68

    ld l, e                                       ; $732a: $6b
    ld h, h                                       ; $732b: $64
    ld l, h                                       ; $732c: $6c
    ld l, l                                       ; $732d: $6d
    ld l, [hl]                                    ; $732e: $6e
    ld h, h                                       ; $732f: $64
    ld l, a                                       ; $7330: $6f
    ld [hl], b                                    ; $7331: $70
    ld [hl], c                                    ; $7332: $71
    ld [hl], d                                    ; $7333: $72
    ld [hl], e                                    ; $7334: $73
    ld h, [hl]                                    ; $7335: $66
    ld [hl], h                                    ; $7336: $74
    ld [hl], l                                    ; $7337: $75
    halt                                          ; $7338: $76
    ld [hl], a                                    ; $7339: $77
    ret                                           ; $733a: $c9


    jp z, $cecd                                   ; $733b: $ca $cd $ce

    ld l, [hl]                                    ; $733e: $6e
    jp $c6c4                                      ; $733f: $c3 $c4 $c6


    rst $00                                       ; $7342: $c7
    ret z                                         ; $7343: $c8

    rst $10                                       ; $7344: $d7
    ret c                                         ; $7345: $d8

    reti                                          ; $7346: $d9


    jp c, $dcdb                                   ; $7347: $da $db $dc

    db $dd                                        ; $734a: $dd
    sbc $df                                       ; $734b: $de $df
    ldh [$e1], a                                  ; $734d: $e0 $e1
    ld [c], a                                     ; $734f: $e2
    db $e3                                        ; $7350: $e3
    db $e4                                        ; $7351: $e4
    push hl                                       ; $7352: $e5
    and $e7                                       ; $7353: $e6 $e7
    or d                                          ; $7355: $b2
    and l                                         ; $7356: $a5
    ld [$eceb], a                                 ; $7357: $ea $eb $ec
    db $ed                                        ; $735a: $ed
    xor $ef                                       ; $735b: $ee $ef
    ldh a, [$f1]                                  ; $735d: $f0 $f1
    ld a, [c]                                     ; $735f: $f2
    di                                            ; $7360: $f3
    db $f4                                        ; $7361: $f4
    push af                                       ; $7362: $f5
    or $78                                        ; $7363: $f6 $78
    ld a, d                                       ; $7365: $7a
    and d                                         ; $7366: $a2
    ld a, e                                       ; $7367: $7b
    or h                                          ; $7368: $b4
    or d                                          ; $7369: $b2
    and l                                         ; $736a: $a5
    ld [$7ba2], a                                 ; $736b: $ea $a2 $7b
    sbc [hl]                                      ; $736e: $9e
    sbc h                                         ; $736f: $9c
    adc [hl]                                      ; $7370: $8e
    nop                                           ; $7371: $00
    jp hl                                         ; $7372: $e9


    cp a                                          ; $7373: $bf
    cp l                                          ; $7374: $bd
    sbc e                                         ; $7375: $9b
    ld c, h                                       ; $7376: $4c
    ld c, b                                       ; $7377: $48
    ld a, b                                       ; $7378: $78
    ld a, d                                       ; $7379: $7a
    ld a, c                                       ; $737a: $79
    ld h, l                                       ; $737b: $65
    ld e, b                                       ; $737c: $58
    dec hl                                        ; $737d: $2b
    rlca                                          ; $737e: $07
    ld [$eceb], a                                 ; $737f: $ea $eb $ec
    db $ed                                        ; $7382: $ed
    xor $ef                                       ; $7383: $ee $ef
    ldh a, [$f1]                                  ; $7385: $f0 $f1
    ld a, [c]                                     ; $7387: $f2
    di                                            ; $7388: $f3
    db $f4                                        ; $7389: $f4
    push af                                       ; $738a: $f5
    or $78                                        ; $738b: $f6 $78
    ld a, d                                       ; $738d: $7a
    and d                                         ; $738e: $a2
    ld a, e                                       ; $738f: $7b
    or h                                          ; $7390: $b4
    or d                                          ; $7391: $b2
    and l                                         ; $7392: $a5
    ld [$d8d7], a                                 ; $7393: $ea $d7 $d8
    reti                                          ; $7396: $d9


    jp c, $dcdb                                   ; $7397: $da $db $dc

    db $dd                                        ; $739a: $dd
    sbc $df                                       ; $739b: $de $df
    ldh [$e1], a                                  ; $739d: $e0 $e1
    ld [c], a                                     ; $739f: $e2
    db $e3                                        ; $73a0: $e3
    db $e4                                        ; $73a1: $e4
    push hl                                       ; $73a2: $e5
    and $e7                                       ; $73a3: $e6 $e7
    or d                                          ; $73a5: $b2
    and l                                         ; $73a6: $a5
    ld [$7ba2], a                                 ; $73a7: $ea $a2 $7b
    sbc [hl]                                      ; $73aa: $9e
    sbc h                                         ; $73ab: $9c
    adc [hl]                                      ; $73ac: $8e
    nop                                           ; $73ad: $00
    jp hl                                         ; $73ae: $e9


    cp a                                          ; $73af: $bf
    cp l                                          ; $73b0: $bd
    sbc e                                         ; $73b1: $9b
    ld c, h                                       ; $73b2: $4c
    ld c, b                                       ; $73b3: $48
    ld a, b                                       ; $73b4: $78
    ld a, d                                       ; $73b5: $7a
    ld a, c                                       ; $73b6: $79
    ld h, l                                       ; $73b7: $65
    ld e, b                                       ; $73b8: $58
    dec hl                                        ; $73b9: $2b
    rlca                                          ; $73ba: $07
    ld [$eeed], a                                 ; $73bb: $ea $ed $ee
    jp hl                                         ; $73be: $e9


    db $e3                                        ; $73bf: $e3
    db $e4                                        ; $73c0: $e4
    and $e7                                       ; $73c1: $e6 $e7
    or d                                          ; $73c3: $b2
    rst $30                                       ; $73c4: $f7
    ld hl, sp-$07                                 ; $73c5: $f8 $f9
    ld a, [$fcfb]                                 ; $73c7: $fa $fb $fc
    db $fd                                        ; $73ca: $fd
    cp $fa                                        ; $73cb: $fe $fa
    ld sp, hl                                     ; $73cd: $f9
    rst $38                                       ; $73ce: $ff
    db $fc                                        ; $73cf: $fc
    ld de, $fbe8                                  ; $73d0: $11 $e8 $fb
    ld a, [$0302]                                 ; $73d3: $fa $02 $03
    inc b                                         ; $73d6: $04
    dec b                                         ; $73d7: $05
    ld b, $0b                                     ; $73d8: $06 $0b
    ld [$f909], sp                                ; $73da: $08 $09 $f9
    ld a, [$0b0a]                                 ; $73dd: $fa $0a $0b
    inc c                                         ; $73e0: $0c
    dec c                                         ; $73e1: $0d
    ld c, $fa                                     ; $73e2: $0e $fa
    ld bc, $a1e8                                  ; $73e4: $01 $e8 $a1
    xor e                                         ; $73e7: $ab
    ld [bc], a                                    ; $73e8: $02
    inc bc                                        ; $73e9: $03
    inc b                                         ; $73ea: $04
    dec b                                         ; $73eb: $05
    and c                                         ; $73ec: $a1
    xor e                                         ; $73ed: $ab
    ld a, [$96fc]                                 ; $73ee: $fa $fc $96
    add e                                         ; $73f1: $83
    ld a, [$81fb]                                 ; $73f2: $fa $fb $81
    ld [de], a                                    ; $73f5: $12
    ei                                            ; $73f6: $fb
    db $fc                                        ; $73f7: $fc
    ld de, $0fe8                                  ; $73f8: $11 $e8 $0f
    ld d, e                                       ; $73fb: $53
    ld a, [$04fc]                                 ; $73fc: $fa $fc $04
    dec b                                         ; $73ff: $05
    ld b, $0b                                     ; $7400: $06 $0b
    ld [$f909], sp                                ; $7402: $08 $09 $f9
    ld a, [$0b0a]                                 ; $7405: $fa $0a $0b
    inc c                                         ; $7408: $0c
    dec c                                         ; $7409: $0d
    ld c, $fa                                     ; $740a: $0e $fa
    ld bc, $a1e8                                  ; $740c: $01 $e8 $a1
    xor e                                         ; $740f: $ab
    ld [bc], a                                    ; $7410: $02
    inc bc                                        ; $7411: $03
    inc b                                         ; $7412: $04
    dec b                                         ; $7413: $05
    rst $30                                       ; $7414: $f7
    ld hl, sp-$07                                 ; $7415: $f8 $f9
    ld a, [$fcfb]                                 ; $7417: $fa $fb $fc
    db $fd                                        ; $741a: $fd
    cp $fa                                        ; $741b: $fe $fa
    ld sp, hl                                     ; $741d: $f9
    rst $38                                       ; $741e: $ff
    db $fc                                        ; $741f: $fc
    ld de, $fbe8                                  ; $7420: $11 $e8 $fb
    ld a, [$0302]                                 ; $7423: $fa $02 $03
    inc b                                         ; $7426: $04
    dec b                                         ; $7427: $05
    and c                                         ; $7428: $a1
    xor e                                         ; $7429: $ab
    ld a, [$96fc]                                 ; $742a: $fa $fc $96
    add e                                         ; $742d: $83
    ld a, [$81fb]                                 ; $742e: $fa $fb $81
    ld [de], a                                    ; $7431: $12
    ei                                            ; $7432: $fb
    db $fc                                        ; $7433: $fc
    ld de, $0fe8                                  ; $7434: $11 $e8 $0f
    ld d, e                                       ; $7437: $53
    ld a, [$04fc]                                 ; $7438: $fa $fc $04
    dec b                                         ; $743b: $05
    ld [$fa09], sp                                ; $743c: $08 $09 $fa
    ld de, $fae8                                  ; $743f: $11 $e8 $fa
    ld [bc], a                                    ; $7442: $02
    inc bc                                        ; $7443: $03
    ld b, $06                                     ; $7444: $06 $06
    ld b, $06                                     ; $7446: $06 $06
    ld b, $06                                     ; $7448: $06 $06
    ld b, $06                                     ; $744a: $06 $06
    ld b, $06                                     ; $744c: $06 $06
    ld b, $06                                     ; $744e: $06 $06
    ld h, $06                                     ; $7450: $26 $06
    ld b, $06                                     ; $7452: $06 $06
    ld b, $06                                     ; $7454: $06 $06
    ld b, $06                                     ; $7456: $06 $06
    ld b, $06                                     ; $7458: $06 $06
    ld b, $06                                     ; $745a: $06 $06
    ld b, $06                                     ; $745c: $06 $06
    ld b, $06                                     ; $745e: $06 $06
    ld b, $06                                     ; $7460: $06 $06
    ld b, $06                                     ; $7462: $06 $06
    ld b, $06                                     ; $7464: $06 $06
    ld b, $06                                     ; $7466: $06 $06
    ld b, $06                                     ; $7468: $06 $06
    ld b, $06                                     ; $746a: $06 $06
    ld b, $06                                     ; $746c: $06 $06
    ld b, $06                                     ; $746e: $06 $06
    ld b, $06                                     ; $7470: $06 $06
    ld b, $06                                     ; $7472: $06 $06
    ld b, $06                                     ; $7474: $06 $06
    ld b, $06                                     ; $7476: $06 $06
    ld h, $06                                     ; $7478: $26 $06
    ld b, $06                                     ; $747a: $06 $06
    ld b, $06                                     ; $747c: $06 $06
    ld b, $06                                     ; $747e: $06 $06
    ld b, $06                                     ; $7480: $06 $06
    ld b, $06                                     ; $7482: $06 $06
    ld b, $06                                     ; $7484: $06 $06
    ld b, $06                                     ; $7486: $06 $06
    ld b, $06                                     ; $7488: $06 $06
    ld b, $06                                     ; $748a: $06 $06
    ld h, $06                                     ; $748c: $26 $06
    ld b, $06                                     ; $748e: $06 $06
    ld b, $06                                     ; $7490: $06 $06
    ld b, $06                                     ; $7492: $06 $06
    ld b, $06                                     ; $7494: $06 $06
    ld b, $06                                     ; $7496: $06 $06
    ld b, $06                                     ; $7498: $06 $06
    ld b, $06                                     ; $749a: $06 $06
    ld b, $06                                     ; $749c: $06 $06
    ld b, $06                                     ; $749e: $06 $06
    ld h, $06                                     ; $74a0: $26 $06
    ld b, $06                                     ; $74a2: $06 $06
    ld b, $06                                     ; $74a4: $06 $06
    ld b, $06                                     ; $74a6: $06 $06
    ld b, $06                                     ; $74a8: $06 $06
    ld b, $06                                     ; $74aa: $06 $06
    ld b, $06                                     ; $74ac: $06 $06
    ld b, $06                                     ; $74ae: $06 $06
    ld b, $06                                     ; $74b0: $06 $06
    ld b, $06                                     ; $74b2: $06 $06
    ld h, $06                                     ; $74b4: $26 $06
    ld b, $06                                     ; $74b6: $06 $06
    ld b, $06                                     ; $74b8: $06 $06
    ld b, $06                                     ; $74ba: $06 $06
    ld b, $06                                     ; $74bc: $06 $06
    ld b, $26                                     ; $74be: $06 $26
    ld b, $06                                     ; $74c0: $06 $06
    ld b, $06                                     ; $74c2: $06 $06
    ld b, $06                                     ; $74c4: $06 $06
    ld b, $06                                     ; $74c6: $06 $06
    ld b, $06                                     ; $74c8: $06 $06
    ld b, $06                                     ; $74ca: $06 $06
    ld b, $06                                     ; $74cc: $06 $06
    ld b, $06                                     ; $74ce: $06 $06
    ld b, $06                                     ; $74d0: $06 $06
    ld b, $06                                     ; $74d2: $06 $06
    ld b, $06                                     ; $74d4: $06 $06
    ld b, $06                                     ; $74d6: $06 $06
    ld b, $06                                     ; $74d8: $06 $06
    ld h, $06                                     ; $74da: $26 $06
    ld b, $06                                     ; $74dc: $06 $06
    ld b, $06                                     ; $74de: $06 $06
    ld b, $06                                     ; $74e0: $06 $06
    ld b, $06                                     ; $74e2: $06 $06
    ld b, $06                                     ; $74e4: $06 $06
    ld b, $06                                     ; $74e6: $06 $06
    ld b, $06                                     ; $74e8: $06 $06
    ld b, $06                                     ; $74ea: $06 $06
    ld b, $06                                     ; $74ec: $06 $06
    ld b, $06                                     ; $74ee: $06 $06
    ld b, $06                                     ; $74f0: $06 $06
    ld b, $06                                     ; $74f2: $06 $06
    ld b, $06                                     ; $74f4: $06 $06
    ld b, $06                                     ; $74f6: $06 $06
    ld b, $06                                     ; $74f8: $06 $06
    ld b, $06                                     ; $74fa: $06 $06
    ld b, $06                                     ; $74fc: $06 $06
    ld b, $06                                     ; $74fe: $06 $06
    ld b, $06                                     ; $7500: $06 $06
    ld h, $06                                     ; $7502: $26 $06
    ld b, $06                                     ; $7504: $06 $06
    ld b, $06                                     ; $7506: $06 $06
    ld b, $06                                     ; $7508: $06 $06
    ld b, $06                                     ; $750a: $06 $06
    ld b, $06                                     ; $750c: $06 $06
    ld b, $06                                     ; $750e: $06 $06
    ld b, $06                                     ; $7510: $06 $06
    ld b, $06                                     ; $7512: $06 $06
    ld b, $06                                     ; $7514: $06 $06
    ld b, $06                                     ; $7516: $06 $06
    ld b, $06                                     ; $7518: $06 $06
    ld b, $06                                     ; $751a: $06 $06
    ld b, $06                                     ; $751c: $06 $06
    ld b, $06                                     ; $751e: $06 $06
    ld b, $06                                     ; $7520: $06 $06
    ld b, $06                                     ; $7522: $06 $06
    ld b, $06                                     ; $7524: $06 $06
    ld b, $06                                     ; $7526: $06 $06
    ld b, $06                                     ; $7528: $06 $06
    ld b, $06                                     ; $752a: $06 $06
    ld b, $06                                     ; $752c: $06 $06
    ld b, $06                                     ; $752e: $06 $06
    ld b, $06                                     ; $7530: $06 $06
    ld b, $06                                     ; $7532: $06 $06
    ld b, $06                                     ; $7534: $06 $06
    ld b, $06                                     ; $7536: $06 $06
    ld b, $06                                     ; $7538: $06 $06
    ld b, $06                                     ; $753a: $06 $06
    ld h, $06                                     ; $753c: $26 $06
    ld b, $06                                     ; $753e: $06 $06
    ld b, $06                                     ; $7540: $06 $06
    ld b, $06                                     ; $7542: $06 $06
    ld b, $06                                     ; $7544: $06 $06
    ld b, $06                                     ; $7546: $06 $06
    ld b, $06                                     ; $7548: $06 $06
    ld b, $06                                     ; $754a: $06 $06
    ld b, $06                                     ; $754c: $06 $06
    ld b, $06                                     ; $754e: $06 $06
    ld b, $06                                     ; $7550: $06 $06
    ld b, $06                                     ; $7552: $06 $06
    ld b, $06                                     ; $7554: $06 $06
    ld b, $06                                     ; $7556: $06 $06
    ld b, $06                                     ; $7558: $06 $06
    ld b, $06                                     ; $755a: $06 $06
    ld b, $06                                     ; $755c: $06 $06
    ld b, $06                                     ; $755e: $06 $06
    ld b, $06                                     ; $7560: $06 $06
    ld b, $06                                     ; $7562: $06 $06
    ld b, $06                                     ; $7564: $06 $06
    ld b, $06                                     ; $7566: $06 $06
    ld b, $06                                     ; $7568: $06 $06
    ld b, $06                                     ; $756a: $06 $06
    ld b, $06                                     ; $756c: $06 $06
    ld b, $06                                     ; $756e: $06 $06
    ld b, $06                                     ; $7570: $06 $06
    ld b, $06                                     ; $7572: $06 $06
    ld b, $06                                     ; $7574: $06 $06
    ld b, $06                                     ; $7576: $06 $06
    ld b, $06                                     ; $7578: $06 $06
    ld b, $06                                     ; $757a: $06 $06
    ld b, $06                                     ; $757c: $06 $06
    ld b, $06                                     ; $757e: $06 $06
    ld b, $06                                     ; $7580: $06 $06
    ld b, $06                                     ; $7582: $06 $06
    ld b, $06                                     ; $7584: $06 $06
    ld b, $06                                     ; $7586: $06 $06
    ld b, $06                                     ; $7588: $06 $06
    ld b, $06                                     ; $758a: $06 $06
    ld b, $06                                     ; $758c: $06 $06
    ld b, $06                                     ; $758e: $06 $06
    ld b, $06                                     ; $7590: $06 $06
    ld b, $06                                     ; $7592: $06 $06
    ld b, $06                                     ; $7594: $06 $06
    ld b, $06                                     ; $7596: $06 $06
    ld b, $06                                     ; $7598: $06 $06
    ld b, $06                                     ; $759a: $06 $06
    ld b, $06                                     ; $759c: $06 $06
    ld b, $06                                     ; $759e: $06 $06
    ld b, $06                                     ; $75a0: $06 $06
    ld b, $06                                     ; $75a2: $06 $06
    ld b, $06                                     ; $75a4: $06 $06
    ld b, $06                                     ; $75a6: $06 $06
    ld b, $06                                     ; $75a8: $06 $06
    ld b, $06                                     ; $75aa: $06 $06
    ld b, $06                                     ; $75ac: $06 $06
    ld b, $06                                     ; $75ae: $06 $06
    ld b, $06                                     ; $75b0: $06 $06
    ld b, $06                                     ; $75b2: $06 $06
    ld b, $06                                     ; $75b4: $06 $06
    ld b, $06                                     ; $75b6: $06 $06
    ld b, $06                                     ; $75b8: $06 $06
    ld b, $06                                     ; $75ba: $06 $06
    ld b, $06                                     ; $75bc: $06 $06
    ld b, $06                                     ; $75be: $06 $06
    ld b, $06                                     ; $75c0: $06 $06
    ld b, $06                                     ; $75c2: $06 $06
    ld b, $06                                     ; $75c4: $06 $06
    ld b, $06                                     ; $75c6: $06 $06
    ld b, $06                                     ; $75c8: $06 $06
    ld b, $06                                     ; $75ca: $06 $06
    ld b, $06                                     ; $75cc: $06 $06
    ld b, $06                                     ; $75ce: $06 $06
    ld b, $06                                     ; $75d0: $06 $06
    ld b, $06                                     ; $75d2: $06 $06
    ld b, $06                                     ; $75d4: $06 $06
    ld b, $06                                     ; $75d6: $06 $06
    ld b, $06                                     ; $75d8: $06 $06
    ld b, $06                                     ; $75da: $06 $06
    ld b, $06                                     ; $75dc: $06 $06
    ld b, $06                                     ; $75de: $06 $06
    ld b, $06                                     ; $75e0: $06 $06
    ld b, $06                                     ; $75e2: $06 $06
    ld b, $06                                     ; $75e4: $06 $06
    ld b, $06                                     ; $75e6: $06 $06
    ld b, $06                                     ; $75e8: $06 $06
    ld b, $06                                     ; $75ea: $06 $06
    ld b, $06                                     ; $75ec: $06 $06
    ld b, $06                                     ; $75ee: $06 $06
    ld b, $06                                     ; $75f0: $06 $06
    ld b, $06                                     ; $75f2: $06 $06
    ld b, $06                                     ; $75f4: $06 $06
    ld b, $06                                     ; $75f6: $06 $06
    ld b, $06                                     ; $75f8: $06 $06
    ld b, $06                                     ; $75fa: $06 $06
    ld b, $06                                     ; $75fc: $06 $06
    ld b, $06                                     ; $75fe: $06 $06
    ld b, $06                                     ; $7600: $06 $06
    ld b, $06                                     ; $7602: $06 $06
    ld b, $06                                     ; $7604: $06 $06
    ld b, $06                                     ; $7606: $06 $06
    ld b, $06                                     ; $7608: $06 $06
    ld b, $06                                     ; $760a: $06 $06
    ld b, $06                                     ; $760c: $06 $06
    ld b, $06                                     ; $760e: $06 $06
    ld b, $06                                     ; $7610: $06 $06
    ld b, $06                                     ; $7612: $06 $06
    ld b, $06                                     ; $7614: $06 $06
    ld b, $06                                     ; $7616: $06 $06
    ld b, $06                                     ; $7618: $06 $06
    ld b, $06                                     ; $761a: $06 $06
    ld b, $06                                     ; $761c: $06 $06
    ld b, $06                                     ; $761e: $06 $06
    ld b, $06                                     ; $7620: $06 $06
    ld b, $06                                     ; $7622: $06 $06
    ld b, $06                                     ; $7624: $06 $06
    ld b, $06                                     ; $7626: $06 $06
    ld b, $06                                     ; $7628: $06 $06
    ld b, $06                                     ; $762a: $06 $06
    ld b, $06                                     ; $762c: $06 $06
    ld b, $06                                     ; $762e: $06 $06
    ld b, $06                                     ; $7630: $06 $06
    ld b, $06                                     ; $7632: $06 $06
    ld b, $06                                     ; $7634: $06 $06
    ld b, $06                                     ; $7636: $06 $06
    ld b, $06                                     ; $7638: $06 $06
    ld b, $06                                     ; $763a: $06 $06
    ld b, $06                                     ; $763c: $06 $06
    ld b, $06                                     ; $763e: $06 $06
    ld b, $06                                     ; $7640: $06 $06
    ld b, $06                                     ; $7642: $06 $06
    ld bc, $0101                                  ; $7644: $01 $01 $01
    ld bc, $0101                                  ; $7647: $01 $01 $01
    ld bc, $0101                                  ; $764a: $01 $01 $01
    ld bc, $0101                                  ; $764d: $01 $01 $01
    ld bc, $0101                                  ; $7650: $01 $01 $01
    ld bc, $0101                                  ; $7653: $01 $01 $01
    ld bc, $0101                                  ; $7656: $01 $01 $01
    ld bc, $0101                                  ; $7659: $01 $01 $01
    ld bc, $0101                                  ; $765c: $01 $01 $01
    ld bc, $0101                                  ; $765f: $01 $01 $01
    ld bc, $0101                                  ; $7662: $01 $01 $01

jr_0c0_7665:
    ld bc, $0101                                  ; $7665: $01 $01 $01
    ld bc, $0101                                  ; $7668: $01 $01 $01
    ld bc, $0101                                  ; $766b: $01 $01 $01
    ld bc, $0101                                  ; $766e: $01 $01 $01
    ld bc, $0101                                  ; $7671: $01 $01 $01
    ld bc, $0101                                  ; $7674: $01 $01 $01
    ld bc, $0101                                  ; $7677: $01 $01 $01
    ld bc, $0101                                  ; $767a: $01 $01 $01
    ld bc, $0101                                  ; $767d: $01 $01 $01
    ld bc, $0101                                  ; $7680: $01 $01 $01

jr_0c0_7683:
    ld bc, $0101                                  ; $7683: $01 $01 $01
    ld bc, $0101                                  ; $7686: $01 $01 $01
    ld bc, $0101                                  ; $7689: $01 $01 $01
    ld bc, $0101                                  ; $768c: $01 $01 $01
    ld bc, $0101                                  ; $768f: $01 $01 $01
    ld bc, $0101                                  ; $7692: $01 $01 $01
    ld bc, $0101                                  ; $7695: $01 $01 $01

jr_0c0_7698:
    ld bc, $0101                                  ; $7698: $01 $01 $01
    ld bc, $0101                                  ; $769b: $01 $01 $01
    ld bc, $0101                                  ; $769e: $01 $01 $01
    ld bc, $0101                                  ; $76a1: $01 $01 $01
    ld bc, $0101                                  ; $76a4: $01 $01 $01
    ld bc, $0101                                  ; $76a7: $01 $01 $01
    ld bc, $0101                                  ; $76aa: $01 $01 $01
    ld bc, $0101                                  ; $76ad: $01 $01 $01
    ld bc, $0101                                  ; $76b0: $01 $01 $01
    ld bc, $0101                                  ; $76b3: $01 $01 $01
    ld bc, $0101                                  ; $76b6: $01 $01 $01
    ld bc, $0101                                  ; $76b9: $01 $01 $01
    ld bc, $0101                                  ; $76bc: $01 $01 $01

jr_0c0_76bf:
    ld bc, $0101                                  ; $76bf: $01 $01 $01
    ld bc, $2001                                  ; $76c2: $01 $01 $20
    nop                                           ; $76c5: $00
    jr nz, jr_0c0_76c8                            ; $76c6: $20 $00

jr_0c0_76c8:
    add e                                         ; $76c8: $83
    ld [bc], a                                    ; $76c9: $02
    ld b, b                                       ; $76ca: $40
    add b                                         ; $76cb: $80
    ld bc, $8180                                  ; $76cc: $01 $80 $81
    add d                                         ; $76cf: $82
    add e                                         ; $76d0: $83
    add h                                         ; $76d1: $84
    add c                                         ; $76d2: $81
    add d                                         ; $76d3: $82
    ld [bc], a                                    ; $76d4: $02
    add l                                         ; $76d5: $85
    add [hl]                                      ; $76d6: $86
    add a                                         ; $76d7: $87
    adc b                                         ; $76d8: $88
    adc c                                         ; $76d9: $89
    adc d                                         ; $76da: $8a
    jr nz, jr_0c0_7665                            ; $76db: $20 $88

    adc e                                         ; $76dd: $8b
    nop                                           ; $76de: $00
    adc h                                         ; $76df: $8c
    adc l                                         ; $76e0: $8d
    adc [hl]                                      ; $76e1: $8e
    adc e                                         ; $76e2: $8b
    adc h                                         ; $76e3: $8c
    adc a                                         ; $76e4: $8f
    sub b                                         ; $76e5: $90
    sub c                                         ; $76e6: $91
    db $10                                        ; $76e7: $10
    sub d                                         ; $76e8: $92
    sub e                                         ; $76e9: $93
    sub h                                         ; $76ea: $94
    ld b, b                                       ; $76eb: $40
    jr z, jr_0c0_7683                             ; $76ec: $28 $95

    sub [hl]                                      ; $76ee: $96

jr_0c0_76ef:
    sub a                                         ; $76ef: $97
    sbc b                                         ; $76f0: $98
    ld b, b                                       ; $76f1: $40
    sbc c                                         ; $76f2: $99
    ld c, l                                       ; $76f3: $4d
    jr nz, @-$64                                  ; $76f4: $20 $9a

    sbc e                                         ; $76f6: $9b
    sbc h                                         ; $76f7: $9c
    sbc l                                         ; $76f8: $9d
    sbc d                                         ; $76f9: $9a
    sbc e                                         ; $76fa: $9b
    ld [bc], a                                    ; $76fb: $02
    sbc [hl]                                      ; $76fc: $9e
    sbc a                                         ; $76fd: $9f
    and b                                         ; $76fe: $a0
    and c                                         ; $76ff: $a1
    and d                                         ; $7700: $a2
    and e                                         ; $7701: $a3
    ld h, b                                       ; $7702: $60
    db $10                                        ; $7703: $10
    and h                                         ; $7704: $a4
    nop                                           ; $7705: $00
    and l                                         ; $7706: $a5
    and [hl]                                      ; $7707: $a6
    and a                                         ; $7708: $a7
    xor b                                         ; $7709: $a8
    xor c                                         ; $770a: $a9
    xor d                                         ; $770b: $aa
    xor e                                         ; $770c: $ab
    xor h                                         ; $770d: $ac
    add [hl]                                      ; $770e: $86
    ld l, [hl]                                    ; $770f: $6e
    jr jr_0c0_76bf                                ; $7710: $18 $ad

    xor [hl]                                      ; $7712: $ae
    xor [hl]                                      ; $7713: $ae
    xor l                                         ; $7714: $ad
    inc b                                         ; $7715: $04
    jr z, jr_0c0_7698                             ; $7716: $28 $80

    ld [$00b9], sp                                ; $7718: $08 $b9 $00
    cp d                                          ; $771b: $ba
    cp e                                          ; $771c: $bb
    cp h                                          ; $771d: $bc
    cp l                                          ; $771e: $bd
    cp [hl]                                       ; $771f: $be
    cp a                                          ; $7720: $bf
    ret nz                                        ; $7721: $c0

    pop bc                                        ; $7722: $c1
    db $10                                        ; $7723: $10
    jp nz, $c4c3                                  ; $7724: $c2 $c3 $c4

    add b                                         ; $7727: $80
    jr jr_0c0_76ef                                ; $7728: $18 $c5

    add $81                                       ; $772a: $c6 $81
    add d                                         ; $772c: $82
    ld [bc], a                                    ; $772d: $02
    rst $00                                       ; $772e: $c7
    add a                                         ; $772f: $87
    add a                                         ; $7730: $87
    ret z                                         ; $7731: $c8

    ret                                           ; $7732: $c9


    add a                                         ; $7733: $87
    and b                                         ; $7734: $a0
    nop                                           ; $7735: $00
    jp z, $cb00                                   ; $7736: $ca $00 $cb

    call z, $cecd                                 ; $7739: $cc $cd $ce
    rst $08                                       ; $773c: $cf
    ret nc                                        ; $773d: $d0

    pop de                                        ; $773e: $d1
    jp nc, $d304                                  ; $773f: $d2 $04 $d3

    call nc, $d6d5                                ; $7742: $d4 $d5 $d6
    rst $10                                       ; $7745: $d7
    add b                                         ; $7746: $80
    db $10                                        ; $7747: $10
    ret c                                         ; $7748: $d8

    reti                                          ; $7749: $d9


    nop                                           ; $774a: $00
    adc e                                         ; $774b: $8b
    adc h                                         ; $774c: $8c
    jp c, $dcdb                                   ; $774d: $da $db $dc

    db $dd                                        ; $7750: $dd
    sbc $df                                       ; $7751: $de $df
    nop                                           ; $7753: $00
    add b                                         ; $7754: $80
    add b                                         ; $7755: $80
    ldh [$e1], a                                  ; $7756: $e0 $e1
    ld [c], a                                     ; $7758: $e2
    db $e3                                        ; $7759: $e3
    db $e4                                        ; $775a: $e4
    push hl                                       ; $775b: $e5
    nop                                           ; $775c: $00
    and $e7                                       ; $775d: $e6 $e7
    rst $20                                       ; $775f: $e7
    and $e8                                       ; $7760: $e6 $e8
    jp hl                                         ; $7762: $e9


    ld [$40eb], a                                 ; $7763: $ea $eb $40
    db $ec                                        ; $7766: $ec
    add b                                         ; $7767: $80
    db $10                                        ; $7768: $10
    db $ed                                        ; $7769: $ed
    xor $9a                                       ; $776a: $ee $9a
    sbc e                                         ; $776c: $9b
    rst $28                                       ; $776d: $ef
    ldh a, [rP1]                                  ; $776e: $f0 $00
    pop af                                        ; $7770: $f1
    ld a, [c]                                     ; $7771: $f2
    di                                            ; $7772: $f3
    db $f4                                        ; $7773: $f4
    add b                                         ; $7774: $80
    add b                                         ; $7775: $80
    push af                                       ; $7776: $f5
    or $00                                        ; $7777: $f6 $00
    rst $30                                       ; $7779: $f7
    ld hl, sp-$07                                 ; $777a: $f8 $f9
    ld a, [$fcfb]                                 ; $777c: $fa $fb $fc
    db $fc                                        ; $777f: $fc
    ei                                            ; $7780: $fb
    ld [bc], a                                    ; $7781: $02
    db $fd                                        ; $7782: $fd
    cp $ff                                        ; $7783: $fe $ff
    nop                                           ; $7785: $00
    ld bc, $8002                                  ; $7786: $01 $02 $80
    ld l, b                                       ; $7789: $68
    ld c, $04                                     ; $778a: $0e $04
    rrca                                          ; $778c: $0f
    db $10                                        ; $778d: $10
    ld de, $1312                                  ; $778e: $11 $12 $13
    jr nz, jr_0c0_779b                            ; $7791: $20 $08

    inc d                                         ; $7793: $14
    dec d                                         ; $7794: $15
    ld [$1716], sp                                ; $7795: $08 $16 $17
    jr jr_0c0_77b3                                ; $7798: $18 $19

    ld [de], a                                    ; $779a: $12

jr_0c0_779b:
    ld l, c                                       ; $779b: $69
    ld a, [de]                                    ; $779c: $1a
    dec de                                        ; $779d: $1b
    inc e                                         ; $779e: $1c
    db $10                                        ; $779f: $10
    dec e                                         ; $77a0: $1d
    ld e, $1f                                     ; $77a1: $1e $1f
    or h                                          ; $77a3: $b4
    ld [$2322], sp                                ; $77a4: $08 $22 $23
    inc h                                         ; $77a7: $24
    dec h                                         ; $77a8: $25
    jr nz, @+$28                                  ; $77a9: $20 $26

    daa                                           ; $77ab: $27
    ld [hl-], a                                   ; $77ac: $32
    ld l, c                                       ; $77ad: $69
    jr z, jr_0c0_77d9                             ; $77ae: $28 $29

    ld a, [hl+]                                   ; $77b0: $2a
    dec hl                                        ; $77b1: $2b
    inc l                                         ; $77b2: $2c

jr_0c0_77b3:
    nop                                           ; $77b3: $00
    dec l                                         ; $77b4: $2d
    ld l, $2f                                     ; $77b5: $2e $2f
    jr nc, jr_0c0_77ea                            ; $77b7: $30 $31

    ld [hl-], a                                   ; $77b9: $32
    inc sp                                        ; $77ba: $33
    inc [hl]                                      ; $77bb: $34
    db $10                                        ; $77bc: $10
    dec [hl]                                      ; $77bd: $35
    ld [hl], $37                                  ; $77be: $36 $37
    ld d, d                                       ; $77c0: $52
    ld l, c                                       ; $77c1: $69
    jr c, jr_0c0_77fd                             ; $77c2: $38 $39

    ld a, [hl-]                                   ; $77c4: $3a
    dec sp                                        ; $77c5: $3b
    nop                                           ; $77c6: $00
    inc a                                         ; $77c7: $3c
    dec a                                         ; $77c8: $3d
    ld a, $3f                                     ; $77c9: $3e $3f
    ld b, b                                       ; $77cb: $40
    ld b, c                                       ; $77cc: $41
    ld b, d                                       ; $77cd: $42
    ld b, e                                       ; $77ce: $43
    ld [$4544], sp                                ; $77cf: $08 $44 $45
    ld b, [hl]                                    ; $77d2: $46
    ld b, a                                       ; $77d3: $47
    ld [hl], d                                    ; $77d4: $72
    ld [hl], c                                    ; $77d5: $71
    ld c, b                                       ; $77d6: $48
    ld c, c                                       ; $77d7: $49
    ld c, d                                       ; $77d8: $4a

jr_0c0_77d9:
    jr nz, jr_0c0_7826                            ; $77d9: $20 $4b

    ld c, h                                       ; $77db: $4c
    nop                                           ; $77dc: $00
    add hl, bc                                    ; $77dd: $09
    ld c, l                                       ; $77de: $4d
    ld c, [hl]                                    ; $77df: $4e
    ld c, a                                       ; $77e0: $4f
    ld d, b                                       ; $77e1: $50
    ld d, c                                       ; $77e2: $51
    add d                                         ; $77e3: $82
    sub c                                         ; $77e4: $91
    ld a, c                                       ; $77e5: $79
    ld d, d                                       ; $77e6: $52
    ld d, e                                       ; $77e7: $53
    ld d, h                                       ; $77e8: $54
    ld d, l                                       ; $77e9: $55

jr_0c0_77ea:
    ld d, [hl]                                    ; $77ea: $56
    nop                                           ; $77eb: $00
    add hl, bc                                    ; $77ec: $09
    ld d, a                                       ; $77ed: $57
    ld [$5958], sp                                ; $77ee: $08 $58 $59
    ld e, d                                       ; $77f1: $5a
    ld e, e                                       ; $77f2: $5b
    or c                                          ; $77f3: $b1
    add c                                         ; $77f4: $81
    ld e, h                                       ; $77f5: $5c
    ld e, l                                       ; $77f6: $5d
    ld e, [hl]                                    ; $77f7: $5e
    nop                                           ; $77f8: $00
    ld e, a                                       ; $77f9: $5f
    ld h, b                                       ; $77fa: $60
    ld h, c                                       ; $77fb: $61
    ld h, d                                       ; $77fc: $62

jr_0c0_77fd:
    ld h, e                                       ; $77fd: $63
    ld h, h                                       ; $77fe: $64
    ld h, l                                       ; $77ff: $65
    ld h, [hl]                                    ; $7800: $66
    ld b, b                                       ; $7801: $40
    ld h, a                                       ; $7802: $67
    ret nc                                        ; $7803: $d0

    adc c                                         ; $7804: $89
    add b                                         ; $7805: $80
    ld l, b                                       ; $7806: $68
    ld l, c                                       ; $7807: $69
    ld l, d                                       ; $7808: $6a
    ld l, e                                       ; $7809: $6b
    ld l, h                                       ; $780a: $6c
    inc c                                         ; $780b: $0c
    ld l, l                                       ; $780c: $6d
    ld l, [hl]                                    ; $780d: $6e
    ld l, a                                       ; $780e: $6f
    ld [hl], b                                    ; $780f: $70
    ld e, $90                                     ; $7810: $1e $90
    inc bc                                        ; $7812: $03
    ld a, [de]                                    ; $7813: $1a
    ld [hl], c                                    ; $7814: $71
    ld [hl], c                                    ; $7815: $71
    ldh a, [rNR33]                                ; $7816: $f0 $1d
    ret nz                                        ; $7818: $c0

    dec de                                        ; $7819: $1b
    ld hl, sp+$3d                                 ; $781a: $f8 $3d
    ld hl, sp+$7c                                 ; $781c: $f8 $7c
    sbc b                                         ; $781e: $98
    and $72                                       ; $781f: $e6 $72
    ld [hl], e                                    ; $7821: $73
    and $00                                       ; $7822: $e6 $00
    and $74                                       ; $7824: $e6 $74

jr_0c0_7826:
    ld [hl], l                                    ; $7826: $75
    and $e6                                       ; $7827: $e6 $e6
    halt                                          ; $7829: $76
    ld [hl], a                                    ; $782a: $77
    and $00                                       ; $782b: $e6 $00
    and $78                                       ; $782d: $e6 $78
    ld a, c                                       ; $782f: $79
    and $e6                                       ; $7830: $e6 $e6
    ld a, d                                       ; $7832: $7a
    ld a, e                                       ; $7833: $7b
    and $00                                       ; $7834: $e6 $00
    and $7c                                       ; $7836: $e6 $7c
    ld a, l                                       ; $7838: $7d
    and $e6                                       ; $7839: $e6 $e6
    add e                                         ; $783b: $83
    ld a, [hl]                                    ; $783c: $7e
    and $00                                       ; $783d: $e6 $00
    and $7f                                       ; $783f: $e6 $7f
    add b                                         ; $7841: $80
    and $fb                                       ; $7842: $e6 $fb
    add c                                         ; $7844: $81
    add d                                         ; $7845: $82
    ei                                            ; $7846: $fb
    nop                                           ; $7847: $00
    ei                                            ; $7848: $fb
    add e                                         ; $7849: $83
    add h                                         ; $784a: $84
    ei                                            ; $784b: $fb
    ei                                            ; $784c: $fb
    add l                                         ; $784d: $85
    add [hl]                                      ; $784e: $86
    ei                                            ; $784f: $fb
    nop                                           ; $7850: $00
    ei                                            ; $7851: $fb
    add a                                         ; $7852: $87
    adc b                                         ; $7853: $88
    ei                                            ; $7854: $fb
    ei                                            ; $7855: $fb
    adc c                                         ; $7856: $89
    adc d                                         ; $7857: $8a
    ei                                            ; $7858: $fb
    nop                                           ; $7859: $00
    ei                                            ; $785a: $fb
    adc e                                         ; $785b: $8b
    adc h                                         ; $785c: $8c
    ei                                            ; $785d: $fb
    ei                                            ; $785e: $fb
    adc l                                         ; $785f: $8d
    adc [hl]                                      ; $7860: $8e
    ei                                            ; $7861: $fb
    nop                                           ; $7862: $00
    ei                                            ; $7863: $fb
    adc a                                         ; $7864: $8f
    sub b                                         ; $7865: $90
    ei                                            ; $7866: $fb
    ei                                            ; $7867: $fb
    sub c                                         ; $7868: $91
    sub d                                         ; $7869: $92
    ei                                            ; $786a: $fb
    nop                                           ; $786b: $00
    ei                                            ; $786c: $fb
    sub e                                         ; $786d: $93
    sub h                                         ; $786e: $94
    ei                                            ; $786f: $fb
    ei                                            ; $7870: $fb
    sub l                                         ; $7871: $95
    sub [hl]                                      ; $7872: $96
    ei                                            ; $7873: $fb
    nop                                           ; $7874: $00
    ei                                            ; $7875: $fb
    sub a                                         ; $7876: $97
    sbc b                                         ; $7877: $98
    ei                                            ; $7878: $fb
    ei                                            ; $7879: $fb
    sbc c                                         ; $787a: $99
    sbc d                                         ; $787b: $9a
    ei                                            ; $787c: $fb
    nop                                           ; $787d: $00
    ei                                            ; $787e: $fb
    sbc e                                         ; $787f: $9b
    sbc h                                         ; $7880: $9c
    ei                                            ; $7881: $fb
    ei                                            ; $7882: $fb
    sbc l                                         ; $7883: $9d
    sbc [hl]                                      ; $7884: $9e
    ei                                            ; $7885: $fb
    inc c                                         ; $7886: $0c
    ei                                            ; $7887: $fb
    sbc a                                         ; $7888: $9f
    and b                                         ; $7889: $a0
    ei                                            ; $788a: $fb
    ld l, h                                       ; $788b: $6c
    ld c, d                                       ; $788c: $4a
    inc c                                         ; $788d: $0c
    adc b                                         ; $788e: $88
    and $a3                                       ; $788f: $e6 $a3
    ld hl, $e6a4                                  ; $7891: $21 $a4 $e6
    sbc [hl]                                      ; $7894: $9e
    ld [bc], a                                    ; $7895: $02
    and $e6                                       ; $7896: $e6 $e6
    xor b                                         ; $7898: $a8
    xor c                                         ; $7899: $a9
    ld [$0000], sp                                ; $789a: $08 $00 $00
    xor d                                         ; $789d: $aa
    and l                                         ; $789e: $a5
    and $ab                                       ; $789f: $e6 $ab
    xor h                                         ; $78a1: $ac
    xor l                                         ; $78a2: $ad
    and l                                         ; $78a3: $a5
    and [hl]                                      ; $78a4: $a6
    ld b, b                                       ; $78a5: $40
    xor [hl]                                      ; $78a6: $ae
    inc d                                         ; $78a7: $14
    nop                                           ; $78a8: $00
    xor a                                         ; $78a9: $af
    or b                                          ; $78aa: $b0
    and l                                         ; $78ab: $a5
    and [hl]                                      ; $78ac: $a6
    or c                                          ; $78ad: $b1
    or d                                          ; $78ae: $b2
    nop                                           ; $78af: $00
    ei                                            ; $78b0: $fb
    or e                                          ; $78b1: $b3
    or h                                          ; $78b2: $b4
    ei                                            ; $78b3: $fb
    or l                                          ; $78b4: $b5
    or [hl]                                       ; $78b5: $b6
    or a                                          ; $78b6: $b7
    cp b                                          ; $78b7: $b8
    inc b                                         ; $78b8: $04
    ei                                            ; $78b9: $fb
    cp c                                          ; $78ba: $b9
    cp d                                          ; $78bb: $ba
    ei                                            ; $78bc: $fb
    or l                                          ; $78bd: $b5
    and a                                         ; $78be: $a7
    ld [hl+], a                                   ; $78bf: $22
    or l                                          ; $78c0: $b5
    jp nz, $c300                                  ; $78c1: $c2 $00 $c3

    cp [hl]                                       ; $78c4: $be
    or l                                          ; $78c5: $b5
    cp e                                          ; $78c6: $bb
    call nz, $b5c5                                ; $78c7: $c4 $c5 $b5
    add $02                                       ; $78ca: $c6 $02
    rst $00                                       ; $78cc: $c7
    ret z                                         ; $78cd: $c8

    ei                                            ; $78ce: $fb
    ret                                           ; $78cf: $c9


    jp z, $a0fb                                   ; $78d0: $ca $fb $a0

    ld a, [bc]                                    ; $78d3: $0a
    ei                                            ; $78d4: $fb
    and b                                         ; $78d5: $a0
    and c                                         ; $78d6: $a1
    ld [bc], a                                    ; $78d7: $02
    res 4, d                                      ; $78d8: $cb $a2
    ld a, [de]                                    ; $78da: $1a
    ret c                                         ; $78db: $d8

    set 3, c                                      ; $78dc: $cb $d9
    jp c, $43db                                   ; $78de: $da $db $43

    res 3, l                                      ; $78e1: $cb $9d
    ld [bc], a                                    ; $78e3: $02
    set 3, a                                      ; $78e4: $cb $df
    ldh [$e1], a                                  ; $78e6: $e0 $e1
    add b                                         ; $78e8: $80
    ldh a, [$bd]                                  ; $78e9: $f0 $bd
    ld [bc], a                                    ; $78eb: $02
    nop                                           ; $78ec: $00
    and l                                         ; $78ed: $a5
    push hl                                       ; $78ee: $e5
    and $a5                                       ; $78ef: $e6 $a5
    and l                                         ; $78f1: $a5
    and [hl]                                      ; $78f2: $a6
    rst $20                                       ; $78f3: $e7
    and $00                                       ; $78f4: $e6 $00
    add c                                         ; $78f6: $81
    add d                                         ; $78f7: $82
    ret                                           ; $78f8: $c9


    add a                                         ; $78f9: $87
    and l                                         ; $78fa: $a5
    add sp, $72                                   ; $78fb: $e8 $72
    db $e4                                        ; $78fd: $e4
    nop                                           ; $78fe: $00
    add c                                         ; $78ff: $81
    add d                                         ; $7900: $82
    jp hl                                         ; $7901: $e9


    ld [$8281], a                                 ; $7902: $ea $81 $82
    db $eb                                        ; $7905: $eb
    db $ec                                        ; $7906: $ec
    nop                                           ; $7907: $00
    add c                                         ; $7908: $81
    add d                                         ; $7909: $82
    ld [hl], d                                    ; $790a: $72
    db $e4                                        ; $790b: $e4
    cp [hl]                                       ; $790c: $be
    db $ed                                        ; $790d: $ed
    xor $ef                                       ; $790e: $ee $ef
    ld b, b                                       ; $7910: $40

jr_0c0_7911:
    or l                                          ; $7911: $b5
    jp z, $b502                                   ; $7912: $ca $02 $b5

    di                                            ; $7915: $f3
    db $f4                                        ; $7916: $f4
    push af                                       ; $7917: $f5
    adc e                                         ; $7918: $8b
    adc h                                         ; $7919: $8c
    ld [hl+], a                                   ; $791a: $22
    sbc $df                                       ; $791b: $de $df
    call $8b0a                                    ; $791d: $cd $0a $8b
    adc h                                         ; $7920: $8c
    ld a, [$0103]                                 ; $7921: $fa $03 $01

jr_0c0_7924:
    db $fc                                        ; $7924: $fc
    nop                                           ; $7925: $00
    db $fd                                        ; $7926: $fd
    adc e                                         ; $7927: $8b
    adc h                                         ; $7928: $8c
    cp $ff                                        ; $7929: $fe $ff
    push de                                       ; $792b: $d5
    nop                                           ; $792c: $00
    ld bc, $fb00                                  ; $792d: $01 $00 $fb
    rlc d                                         ; $7930: $cb $02
    inc bc                                        ; $7932: $03
    pop hl                                        ; $7933: $e1
    rlc h                                         ; $7934: $cb $04
    dec b                                         ; $7936: $05
    nop                                           ; $7937: $00
    ld b, $9a                                     ; $7938: $06 $9a
    sbc e                                         ; $793a: $9b
    di                                            ; $793b: $f3
    db $f4                                        ; $793c: $f4
    rlca                                          ; $793d: $07
    ld [$0009], sp                                ; $793e: $08 $09 $00
    ld a, [bc]                                    ; $7941: $0a
    sbc d                                         ; $7942: $9a
    sbc e                                         ; $7943: $9b
    dec bc                                        ; $7944: $0b
    inc c                                         ; $7945: $0c
    sbc d                                         ; $7946: $9a
    sbc e                                         ; $7947: $9b
    dec c                                         ; $7948: $0d
    dec b                                         ; $7949: $05
    ld c, $9a                                     ; $794a: $0e $9a
    sbc e                                         ; $794c: $9b
    rrca                                          ; $794d: $0f
    stop                                          ; $794e: $10 $00
    jp hl                                         ; $7950: $e9


    nop                                           ; $7951: $00
    ld bc, $d4f8                                  ; $7952: $01 $f8 $d4
    inc hl                                        ; $7955: $23
    ld hl, sp+$45                                 ; $7956: $f8 $45
    nop                                           ; $7958: $00
    inc b                                         ; $7959: $04
    ld bc, $0200                                  ; $795a: $01 $00 $02
    ld c, l                                       ; $795d: $4d
    xor b                                         ; $795e: $a8
    inc bc                                        ; $795f: $03
    inc bc                                        ; $7960: $03
    sub $1f                                       ; $7961: $d6 $1f
    ld [$4822], sp                                ; $7963: $08 $22 $48
    jr nz, @+$06                                  ; $7966: $20 $04

    ld b, b                                       ; $7968: $40
    inc bc                                        ; $7969: $03
    ld bc, $2000                                  ; $796a: $01 $00 $20
    jr nz, jr_0c0_7973                            ; $796d: $20 $04

    ld h, e                                       ; $796f: $63
    inc b                                         ; $7970: $04
    sub b                                         ; $7971: $90
    ld b, b                                       ; $7972: $40

jr_0c0_7973:
    inc h                                         ; $7973: $24
    jr z, jr_0c0_7978                             ; $7974: $28 $02

    ld [bc], a                                    ; $7976: $02
    ld [bc], a                                    ; $7977: $02

jr_0c0_7978:
    inc hl                                        ; $7978: $23
    ld [$2027], sp                                ; $7979: $08 $27 $20
    db $fd                                        ; $797c: $fd

jr_0c0_797d:
    or c                                          ; $797d: $b1
    ld [hl], b                                    ; $797e: $70
    rra                                           ; $797f: $1f
    nop                                           ; $7980: $00
    jr nz, jr_0c0_7983                            ; $7981: $20 $00

jr_0c0_7983:
    ld d, h                                       ; $7983: $54
    ld [$9820], sp                                ; $7984: $08 $20 $98
    ld a, c                                       ; $7987: $79
    jr nc, jr_0c0_79aa                            ; $7988: $30 $20

    ld a, [hl+]                                   ; $798a: $2a
    ld [$027f], sp                                ; $798b: $08 $7f $02
    and l                                         ; $798e: $a5
    jr jr_0c0_7911                                ; $798f: $18 $80

    ld b, b                                       ; $7991: $40
    jr nz, jr_0c0_7924                            ; $7992: $20 $90

    cp l                                          ; $7994: $bd
    ld d, b                                       ; $7995: $50
    and c                                         ; $7996: $a1
    nop                                           ; $7997: $00
    ld b, b                                       ; $7998: $40
    jr @-$77                                      ; $7999: $18 $87

    db $10                                        ; $799b: $10

jr_0c0_799c:
    xor l                                         ; $799c: $ad
    jr nz, @-$6e                                  ; $799d: $20 $90

    ld bc, $0948                                  ; $799f: $01 $48 $09
    ld bc, $9020                                  ; $79a2: $01 $20 $90
    halt                                          ; $79a5: $76
    db $10                                        ; $79a6: $10
    ld bc, $1001                                  ; $79a7: $01 $01 $10

jr_0c0_79aa:
    di                                            ; $79aa: $f3
    inc hl                                        ; $79ab: $23
    ld bc, $7860                                  ; $79ac: $01 $60 $78
    pop bc                                        ; $79af: $c1
    db $10                                        ; $79b0: $10
    dec de                                        ; $79b1: $1b
    nop                                           ; $79b2: $00
    inc b                                         ; $79b3: $04
    inc b                                         ; $79b4: $04
    jr nz, jr_0c0_79c7                            ; $79b5: $20 $10

    ld a, $89                                     ; $79b7: $3e $89
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    jr nz, @-$5f                                  ; $79bb: $20 $9f

    sub b                                         ; $79bd: $90
    ld hl, $1f38                                  ; $79be: $21 $38 $1f
    xor b                                         ; $79c1: $a8
    ld b, d                                       ; $79c2: $42
    jr z, jr_0c0_79e4                             ; $79c3: $28 $1f

    or b                                          ; $79c5: $b0
    and h                                         ; $79c6: $a4

jr_0c0_79c7:
    ld hl, $fa0b                                  ; $79c7: $21 $0b $fa
    ld hl, sp+$2d                                 ; $79ca: $f8 $2d
    ld a, [$fa4f]                                 ; $79cc: $fa $4f $fa
    ld [hl], c                                    ; $79cf: $71
    ld a, d                                       ; $79d0: $7a
    inc c                                         ; $79d1: $0c
    ld c, d                                       ; $79d2: $4a
    inc c                                         ; $79d3: $0c
    ld h, b                                       ; $79d4: $60
    ld [$0020], sp                                ; $79d5: $08 $20 $00
    ld a, l                                       ; $79d8: $7d
    ld [$f804], sp                                ; $79d9: $08 $04 $f8
    inc h                                         ; $79dc: $24
    ret nc                                        ; $79dd: $d0

    ld h, b                                       ; $79de: $60
    ret nc                                        ; $79df: $d0

    adc b                                         ; $79e0: $88

jr_0c0_79e1:
    ld [bc], a                                    ; $79e1: $02
    ld h, b                                       ; $79e2: $60
    nop                                           ; $79e3: $00

jr_0c0_79e4:
    ld [$2064], sp                                ; $79e4: $08 $64 $20
    cp a                                          ; $79e7: $bf
    ld [$2800], sp                                ; $79e8: $08 $00 $28
    ld [hl], b                                    ; $79eb: $70
    nop                                           ; $79ec: $00
    ld [bc], a                                    ; $79ed: $02
    ld [$0814], sp                                ; $79ee: $08 $14 $08
    ld a, [bc]                                    ; $79f1: $0a
    db $10                                        ; $79f2: $10
    jr nz, @+$22                                  ; $79f3: $20 $20

    ld [$bd30], sp                                ; $79f5: $08 $30 $bd

jr_0c0_79f8:
    jr jr_0c0_7a1a                                ; $79f8: $18 $20

jr_0c0_79fa:
    ld l, b                                       ; $79fa: $68
    jr nz, jr_0c0_797d                            ; $79fb: $20 $80

    ld [bc], a                                    ; $79fd: $02
    sub b                                         ; $79fe: $90
    add b                                         ; $79ff: $80

Call_0c0_7a00:
    ld hl, sp+$71                                 ; $7a00: $f8 $71
    db $10                                        ; $7a02: $10
    jr z, @-$7a                                   ; $7a03: $28 $84

    db $10                                        ; $7a05: $10
    rst $38                                       ; $7a06: $ff
    jr @+$05                                      ; $7a07: $18 $03

    ld [hl], d                                    ; $7a09: $72
    ld [$00f8], sp                                ; $7a0a: $08 $f8 $00
    inc b                                         ; $7a0d: $04
    jr nz, jr_0c0_7a66                            ; $7a0e: $20 $56

    ld e, b                                       ; $7a10: $58
    xor h                                         ; $7a11: $ac
    dec bc                                        ; $7a12: $0b
    ld d, h                                       ; $7a13: $54

jr_0c0_7a14:
    jr jr_0c0_7a1a                                ; $7a14: $18 $04

    jr c, jr_0c0_79f8                             ; $7a16: $38 $e0

    xor h                                         ; $7a18: $ac
    ld d, b                                       ; $7a19: $50

jr_0c0_7a1a:
    jr nz, jr_0c0_799c                            ; $7a1a: $20 $80

    nop                                           ; $7a1c: $00
    jp hl                                         ; $7a1d: $e9


    inc d                                         ; $7a1e: $14
    nop                                           ; $7a1f: $00
    ld [de], a                                    ; $7a20: $12
    nop                                           ; $7a21: $00
    ld b, d                                       ; $7a22: $42
    ld bc, $8048                                  ; $7a23: $01 $48 $80
    ld bc, $81c8                                  ; $7a26: $01 $c8 $81
    add d                                         ; $7a29: $82
    rra                                           ; $7a2a: $1f
    ld c, b                                       ; $7a2b: $48
    add e                                         ; $7a2c: $83

jr_0c0_7a2d:
    add h                                         ; $7a2d: $84
    add b                                         ; $7a2e: $80
    nop                                           ; $7a2f: $00
    add l                                         ; $7a30: $85
    add [hl]                                      ; $7a31: $86
    add a                                         ; $7a32: $87
    adc b                                         ; $7a33: $88
    adc c                                         ; $7a34: $89
    adc d                                         ; $7a35: $8a
    adc e                                         ; $7a36: $8b
    adc h                                         ; $7a37: $8c
    add b                                         ; $7a38: $80
    ld [hl], $30                                  ; $7a39: $36 $30
    adc l                                         ; $7a3b: $8d
    adc [hl]                                      ; $7a3c: $8e
    add b                                         ; $7a3d: $80
    adc a                                         ; $7a3e: $8f
    sub b                                         ; $7a3f: $90
    sub c                                         ; $7a40: $91

jr_0c0_7a41:
    sub d                                         ; $7a41: $92
    ld [$9493], sp                                ; $7a42: $08 $93 $94
    sub l                                         ; $7a45: $95
    sub [hl]                                      ; $7a46: $96
    ld c, d                                       ; $7a47: $4a
    jr nc, jr_0c0_79e1                            ; $7a48: $30 $97

    sbc b                                         ; $7a4a: $98
    add b                                         ; $7a4b: $80
    nop                                           ; $7a4c: $00
    sbc c                                         ; $7a4d: $99
    sbc d                                         ; $7a4e: $9a
    sbc e                                         ; $7a4f: $9b
    sbc h                                         ; $7a50: $9c
    sbc l                                         ; $7a51: $9d
    sbc [hl]                                      ; $7a52: $9e
    sbc a                                         ; $7a53: $9f
    and b                                         ; $7a54: $a0
    add b                                         ; $7a55: $80
    ld e, [hl]                                    ; $7a56: $5e

jr_0c0_7a57:
    jr z, jr_0c0_79fa                             ; $7a57: $28 $a1

    and d                                         ; $7a59: $a2
    and e                                         ; $7a5a: $a3
    add b                                         ; $7a5b: $80
    and h                                         ; $7a5c: $a4
    and l                                         ; $7a5d: $a5
    and [hl]                                      ; $7a5e: $a6
    inc b                                         ; $7a5f: $04
    and a                                         ; $7a60: $a7
    xor b                                         ; $7a61: $a8
    xor c                                         ; $7a62: $a9
    xor d                                         ; $7a63: $aa
    xor e                                         ; $7a64: $ab
    ld [hl], d                                    ; $7a65: $72

jr_0c0_7a66:
    jr nc, jr_0c0_7a14                            ; $7a66: $30 $ac

    xor l                                         ; $7a68: $ad
    nop                                           ; $7a69: $00
    add b                                         ; $7a6a: $80
    xor [hl]                                      ; $7a6b: $ae
    xor a                                         ; $7a6c: $af
    or b                                          ; $7a6d: $b0
    or c                                          ; $7a6e: $b1
    or d                                          ; $7a6f: $b2
    or e                                          ; $7a70: $b3
    or h                                          ; $7a71: $b4
    ld b, b                                       ; $7a72: $40
    or l                                          ; $7a73: $b5
    add [hl]                                      ; $7a74: $86

jr_0c0_7a75:
    jr nc, jr_0c0_7a2d                            ; $7a75: $30 $b6

    or a                                          ; $7a77: $b7
    add b                                         ; $7a78: $80
    xor [hl]                                      ; $7a79: $ae
    add b                                         ; $7a7a: $80
    cp b                                          ; $7a7b: $b8
    ld [$bab9], sp                                ; $7a7c: $08 $b9 $ba
    cp e                                          ; $7a7f: $bb
    cp h                                          ; $7a80: $bc
    inc d                                         ; $7a81: $14
    jr c, jr_0c0_7a41                             ; $7a82: $38 $bd

    cp [hl]                                       ; $7a84: $be
    add b                                         ; $7a85: $80
    nop                                           ; $7a86: $00
    cp a                                          ; $7a87: $bf
    add b                                         ; $7a88: $80
    ret nz                                        ; $7a89: $c0

    pop bc                                        ; $7a8a: $c1
    jp nz, $bc80                                  ; $7a8b: $c2 $80 $bc

    jp $ae80                                      ; $7a8e: $c3 $80 $ae


    jr z, jr_0c0_7a57                             ; $7a91: $28 $c4

    push bc                                       ; $7a93: $c5
    add $c7                                       ; $7a94: $c6 $c7
    ret z                                         ; $7a96: $c8

    add b                                         ; $7a97: $80
    ret                                           ; $7a98: $c9


    nop                                           ; $7a99: $00
    jp z, $80cb                                   ; $7a9a: $ca $cb $80

    call z, $cecd                                 ; $7a9d: $cc $cd $ce
    rst $08                                       ; $7aa0: $cf
    ret nc                                        ; $7aa1: $d0

    jr nz, jr_0c0_7a75                            ; $7aa2: $20 $d1

    jp nc, Jump_000_00c7                          ; $7aa4: $d2 $c7 $00

    db $d3                                        ; $7aa7: $d3
    call nc, $d6d5                                ; $7aa8: $d4 $d5 $d6
    rst $10                                       ; $7aab: $d7
    nop                                           ; $7aac: $00
    add b                                         ; $7aad: $80
    ret c                                         ; $7aae: $d8

    reti                                          ; $7aaf: $d9


    jp c, $dcdb                                   ; $7ab0: $da $db $dc

    db $dd                                        ; $7ab3: $dd
    sbc $08                                       ; $7ab4: $de $08
    rst $18                                       ; $7ab6: $df
    ldh [$e1], a                                  ; $7ab7: $e0 $e1
    ld [c], a                                     ; $7ab9: $e2
    db $db                                        ; $7aba: $db
    nop                                           ; $7abb: $00
    db $e3                                        ; $7abc: $e3
    db $e4                                        ; $7abd: $e4
    push hl                                       ; $7abe: $e5
    nop                                           ; $7abf: $00
    and $d7                                       ; $7ac0: $e6 $d7
    rst $20                                       ; $7ac2: $e7
    add sp, -$59                                  ; $7ac3: $e8 $a7
    jp hl                                         ; $7ac5: $e9


    ld [$02eb], a                                 ; $7ac6: $ea $eb $02
    cp h                                          ; $7ac9: $bc
    db $ec                                        ; $7aca: $ec
    db $ed                                        ; $7acb: $ed
    xor $ef                                       ; $7acc: $ee $ef
    ldh a, [$ef]                                  ; $7ace: $f0 $ef
    nop                                           ; $7ad0: $00
    pop af                                        ; $7ad1: $f1
    nop                                           ; $7ad2: $00
    ld a, [c]                                     ; $7ad3: $f2
    di                                            ; $7ad4: $f3
    db $f4                                        ; $7ad5: $f4
    push af                                       ; $7ad6: $f5
    or $f7                                        ; $7ad7: $f6 $f7
    ld hl, sp-$07                                 ; $7ad9: $f8 $f9
    nop                                           ; $7adb: $00
    ld a, [$fcfb]                                 ; $7adc: $fa $fb $fc
    db $fd                                        ; $7adf: $fd

jr_0c0_7ae0:
    cp $ff                                        ; $7ae0: $fe $ff
    nop                                           ; $7ae2: $00
    ld bc, $0200                                  ; $7ae3: $01 $00 $02
    ld [bc], a                                    ; $7ae6: $02
    inc bc                                        ; $7ae7: $03
    inc b                                         ; $7ae8: $04
    dec b                                         ; $7ae9: $05
    ld b, $07                                     ; $7aea: $06 $07
    ld [$0900], sp                                ; $7aec: $08 $00 $09
    ld a, [bc]                                    ; $7aef: $0a
    dec bc                                        ; $7af0: $0b
    inc c                                         ; $7af1: $0c
    dec c                                         ; $7af2: $0d
    ld c, $80                                     ; $7af3: $0e $80
    rrca                                          ; $7af5: $0f
    nop                                           ; $7af6: $00
    db $10                                        ; $7af7: $10
    ld de, $1312                                  ; $7af8: $11 $12 $13
    inc d                                         ; $7afb: $14
    inc d                                         ; $7afc: $14
    dec d                                         ; $7afd: $15
    ld d, $00                                     ; $7afe: $16 $00
    rla                                           ; $7b00: $17
    jr jr_0c0_7b1c                                ; $7b01: $18 $19

    ld a, [de]                                    ; $7b03: $1a
    dec de                                        ; $7b04: $1b
    inc e                                         ; $7b05: $1c
    dec e                                         ; $7b06: $1d
    ld e, $00                                     ; $7b07: $1e $00
    rra                                           ; $7b09: $1f
    jr nz, jr_0c0_7b2d                            ; $7b0a: $20 $21

    ld [hl+], a                                   ; $7b0c: $22
    inc hl                                        ; $7b0d: $23
    inc h                                         ; $7b0e: $24
    dec h                                         ; $7b0f: $25
    ld h, $00                                     ; $7b10: $26 $00
    ret nz                                        ; $7b12: $c0

    ret nz                                        ; $7b13: $c0

    daa                                           ; $7b14: $27
    jr z, jr_0c0_7b40                             ; $7b15: $28 $29

    ld a, [hl+]                                   ; $7b17: $2a
    dec hl                                        ; $7b18: $2b
    inc l                                         ; $7b19: $2c
    nop                                           ; $7b1a: $00
    dec l                                         ; $7b1b: $2d

jr_0c0_7b1c:
    ld l, $2f                                     ; $7b1c: $2e $2f
    jr nc, @+$33                                  ; $7b1e: $30 $31

    ld [hl-], a                                   ; $7b20: $32
    inc sp                                        ; $7b21: $33
    inc [hl]                                      ; $7b22: $34
    jr nz, jr_0c0_7b5a                            ; $7b23: $20 $35

    ld [hl], $3d                                  ; $7b25: $36 $3d
    ld de, $3837                                  ; $7b27: $11 $37 $38
    add hl, sp                                    ; $7b2a: $39
    ld a, [hl-]                                   ; $7b2b: $3a
    dec sp                                        ; $7b2c: $3b

jr_0c0_7b2d:
    nop                                           ; $7b2d: $00
    inc a                                         ; $7b2e: $3c
    dec a                                         ; $7b2f: $3d
    ld a, $3f                                     ; $7b30: $3e $3f
    ld b, b                                       ; $7b32: $40
    ld b, c                                       ; $7b33: $41
    ld b, d                                       ; $7b34: $42
    ld b, e                                       ; $7b35: $43
    add b                                         ; $7b36: $80
    ld c, a                                       ; $7b37: $4f
    ld sp, $4544                                  ; $7b38: $31 $44 $45
    ld b, e                                       ; $7b3b: $43
    ld b, [hl]                                    ; $7b3c: $46
    ld b, a                                       ; $7b3d: $47
    ld c, b                                       ; $7b3e: $48
    ld c, c                                       ; $7b3f: $49

jr_0c0_7b40:
    dec d                                         ; $7b40: $15
    ld c, d                                       ; $7b41: $4a
    ld c, e                                       ; $7b42: $4b
    scf                                           ; $7b43: $37
    ld h, d                                       ; $7b44: $62
    add hl, de                                    ; $7b45: $19
    rlca                                          ; $7b46: $07
    ld bc, $0120                                  ; $7b47: $01 $20 $01
    add hl, bc                                    ; $7b4a: $09
    jr z, jr_0c0_7ae0                             ; $7b4b: $28 $93

    ld [$0140], sp                                ; $7b4d: $08 $40 $01
    ld bc, $5016                                  ; $7b50: $01 $16 $50
    inc bc                                        ; $7b53: $03
    inc bc                                        ; $7b54: $03
    ld [de], a                                    ; $7b55: $12
    ld [$1003], sp                                ; $7b56: $08 $03 $10
    and e                                         ; $7b59: $a3

jr_0c0_7b5a:
    inc d                                         ; $7b5a: $14
    ret z                                         ; $7b5b: $c8

    inc bc                                        ; $7b5c: $03
    jr z, jr_0c0_7b67                             ; $7b5d: $28 $08

    nop                                           ; $7b5f: $00
    nop                                           ; $7b60: $00
    ld bc, $0804                                  ; $7b61: $01 $04 $08
    inc d                                         ; $7b64: $14

jr_0c0_7b65:
    ld h, b                                       ; $7b65: $60
    ld a, l                                       ; $7b66: $7d

jr_0c0_7b67:
    rlca                                          ; $7b67: $07

jr_0c0_7b68:
    rla                                           ; $7b68: $17
    ld [$c814], sp                                ; $7b69: $08 $14 $c8
    ld h, h                                       ; $7b6c: $64
    db $10                                        ; $7b6d: $10
    jr z, jr_0c0_7b68                             ; $7b6e: $28 $f8

    ld h, h                                       ; $7b70: $64
    ld [$5003], sp                                ; $7b71: $08 $03 $50
    jr z, jr_0c0_7be6                             ; $7b74: $28 $70

    ld [bc], a                                    ; $7b76: $02
    ld bc, $5a08                                  ; $7b77: $01 $08 $5a
    nop                                           ; $7b7a: $00
    inc d                                         ; $7b7b: $14
    ret nz                                        ; $7b7c: $c0

    ld b, a                                       ; $7b7d: $47
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    ld b, e                                       ; $7b81: $43
    ld hl, $5028                                  ; $7b82: $21 $28 $50
    rlca                                          ; $7b85: $07
    nop                                           ; $7b86: $00
    inc b                                         ; $7b87: $04
    inc b                                         ; $7b88: $04
    and h                                         ; $7b89: $a4
    nop                                           ; $7b8a: $00
    inc a                                         ; $7b8b: $3c
    db $10                                        ; $7b8c: $10
    jr nz, @+$05                                  ; $7b8d: $20 $03

jr_0c0_7b8f:
    inc hl                                        ; $7b8f: $23
    ld c, a                                       ; $7b90: $4f
    ld [$0103], sp                                ; $7b91: $08 $03 $01
    inc b                                         ; $7b94: $04
    inc b                                         ; $7b95: $04
    dec b                                         ; $7b96: $05
    ld a, [bc]                                    ; $7b97: $0a
    inc b                                         ; $7b98: $04
    inc b                                         ; $7b99: $04
    ld b, $00                                     ; $7b9a: $06 $00
    inc d                                         ; $7b9c: $14
    ld d, b                                       ; $7b9d: $50
    dec b                                         ; $7b9e: $05
    inc d                                         ; $7b9f: $14
    ld [$c505], sp                                ; $7ba0: $08 $05 $c5
    ld h, h                                       ; $7ba3: $64
    jr @+$29                                      ; $7ba4: $18 $27

    jr @+$05                                      ; $7ba6: $18 $03

    inc bc                                        ; $7ba8: $03
    dec b                                         ; $7ba9: $05
    ld bc, $0310                                  ; $7baa: $01 $10 $03
    ld a, b                                       ; $7bad: $78
    nop                                           ; $7bae: $00
    rst $28                                       ; $7baf: $ef
    ld d, a                                       ; $7bb0: $57
    nop                                           ; $7bb1: $00
    ld a, b                                       ; $7bb2: $78
    jr jr_0c0_7bcb                                ; $7bb3: $18 $16

    ld [$9501], sp                                ; $7bb5: $08 $01 $95
    ld [$1012], sp                                ; $7bb8: $08 $12 $10
    ld d, $18                                     ; $7bbb: $16 $18
    cpl                                           ; $7bbd: $2f
    jr nz, jr_0c0_7c00                            ; $7bbe: $20 $40

    inc hl                                        ; $7bc0: $23
    inc de                                        ; $7bc1: $13
    jr jr_0c0_7bd8                                ; $7bc2: $18 $14

    nop                                           ; $7bc4: $00
    dec d                                         ; $7bc5: $15
    nop                                           ; $7bc6: $00
    ld h, h                                       ; $7bc7: $64
    nop                                           ; $7bc8: $00
    ld [hl+], a                                   ; $7bc9: $22
    add c                                         ; $7bca: $81

jr_0c0_7bcb:
    add d                                         ; $7bcb: $82
    ld bc, $8370                                  ; $7bcc: $01 $70 $83
    add h                                         ; $7bcf: $84
    add b                                         ; $7bd0: $80
    ld bc, $8570                                  ; $7bd1: $01 $70 $85
    db $e4                                        ; $7bd4: $e4
    inc d                                         ; $7bd5: $14
    ld hl, sp+$28                                 ; $7bd6: $f8 $28

jr_0c0_7bd8:
    ld hl, sp+$57                                 ; $7bd8: $f8 $57
    jr z, jr_0c0_7b65                             ; $7bda: $28 $89

    adc d                                         ; $7bdc: $8a
    ld d, b                                       ; $7bdd: $50
    ld a, b                                       ; $7bde: $78

jr_0c0_7bdf:
    adc e                                         ; $7bdf: $8b
    adc h                                         ; $7be0: $8c
    add c                                         ; $7be1: $81
    ld h, h                                       ; $7be2: $64
    ld a, b                                       ; $7be3: $78
    adc l                                         ; $7be4: $8d
    adc [hl]                                      ; $7be5: $8e

jr_0c0_7be6:
    add b                                         ; $7be6: $80
    add l                                         ; $7be7: $85
    add [hl]                                      ; $7be8: $86
    add a                                         ; $7be9: $87
    ld bc, $7e70                                  ; $7bea: $01 $70 $7e
    adc b                                         ; $7bed: $88
    or h                                          ; $7bee: $b4
    ld hl, sp-$4c                                 ; $7bef: $f8 $b4
    ld hl, sp-$24                                 ; $7bf1: $f8 $dc
    ld hl, sp-$4c                                 ; $7bf3: $f8 $b4
    ld hl, sp-$4c                                 ; $7bf5: $f8 $b4
    ld hl, sp-$4c                                 ; $7bf7: $f8 $b4
    jr c, @-$75                                   ; $7bf9: $38 $89

    ld b, b                                       ; $7bfb: $40
    adc d                                         ; $7bfc: $8a
    ld [bc], a                                    ; $7bfd: $02
    jr jr_0c0_7b8f                                ; $7bfe: $18 $8f

jr_0c0_7c00:
    sub b                                         ; $7c00: $90
    sub c                                         ; $7c01: $91
    sub d                                         ; $7c02: $92
    sub e                                         ; $7c03: $93
    and e                                         ; $7c04: $a3
    nop                                           ; $7c05: $00
    sub h                                         ; $7c06: $94
    sub l                                         ; $7c07: $95
    sub [hl]                                      ; $7c08: $96
    sub a                                         ; $7c09: $97
    sbc b                                         ; $7c0a: $98
    and e                                         ; $7c0b: $a3
    adc e                                         ; $7c0c: $8b
    adc h                                         ; $7c0d: $8c
    add b                                         ; $7c0e: $80
    ld [bc], a                                    ; $7c0f: $02
    jr @-$65                                      ; $7c10: $18 $99

    sbc d                                         ; $7c12: $9a
    sbc e                                         ; $7c13: $9b
    sbc h                                         ; $7c14: $9c
    sbc l                                         ; $7c15: $9d
    and h                                         ; $7c16: $a4
    sbc [hl]                                      ; $7c17: $9e
    ld bc, $a09f                                  ; $7c18: $01 $9f $a0
    and c                                         ; $7c1b: $a1
    and d                                         ; $7c1c: $a2
    and h                                         ; $7c1d: $a4
    adc l                                         ; $7c1e: $8d
    adc [hl]                                      ; $7c1f: $8e
    ld [bc], a                                    ; $7c20: $02
    jr jr_0c0_7bdf                                ; $7c21: $18 $bc

    add e                                         ; $7c23: $83
    ld c, c                                       ; $7c24: $49
    ld bc, $f801                                  ; $7c25: $01 $01 $f8
    inc hl                                        ; $7c28: $23
    ld hl, sp+$45                                 ; $7c29: $f8 $45
    ld hl, sp+$67                                 ; $7c2b: $f8 $67
    ld d, b                                       ; $7c2d: $50
    dec b                                         ; $7c2e: $05
    dec b                                         ; $7c2f: $05
    rst $28                                       ; $7c30: $ef
    inc d                                         ; $7c31: $14
    ld hl, sp+$28                                 ; $7c32: $f8 $28
    xor b                                         ; $7c34: $a8
    or b                                          ; $7c35: $b0
    ld [$0103], sp                                ; $7c36: $08 $03 $01
    ld hl, sp+$23                                 ; $7c39: $f8 $23
    ld hl, sp+$45                                 ; $7c3b: $f8 $45
    ld hl, sp+$67                                 ; $7c3d: $f8 $67
    ld d, b                                       ; $7c3f: $50
    jr c, @+$09                                   ; $7c40: $38 $07

    rlca                                          ; $7c42: $07
    inc d                                         ; $7c43: $14
    ld hl, sp+$28                                 ; $7c44: $f8 $28
    xor b                                         ; $7c46: $a8
    or b                                          ; $7c47: $b0
    ld [$0505], sp                                ; $7c48: $08 $05 $05
    inc b                                         ; $7c4b: $04
    rlca                                          ; $7c4c: $07
    inc b                                         ; $7c4d: $04
    rlca                                          ; $7c4e: $07
    rlca                                          ; $7c4f: $07
    ld b, $06                                     ; $7c50: $06 $06
    cp a                                          ; $7c52: $bf
    db $10                                        ; $7c53: $10
    push bc                                       ; $7c54: $c5
    jr jr_0c0_7c5f                                ; $7c55: $18 $08

    ld bc, $14f0                                  ; $7c57: $01 $f0 $14
    ld b, b                                       ; $7c5a: $40
    dec d                                         ; $7c5b: $15
    ld [$5828], sp                                ; $7c5c: $08 $28 $58

jr_0c0_7c5f:
    sbc e                                         ; $7c5f: $9b
    ld sp, $0015                                  ; $7c60: $31 $15 $00
    ld e, $00                                     ; $7c63: $1e $00
    pop hl                                        ; $7c65: $e1
    nop                                           ; $7c66: $00
    ld b, b                                       ; $7c67: $40

jr_0c0_7c68:
    dec h                                         ; $7c68: $25
    ld bc, $3180                                  ; $7c69: $01 $80 $31
    daa                                           ; $7c6c: $27

jr_0c0_7c6d:
    dec hl                                        ; $7c6d: $2b
    inc l                                         ; $7c6e: $2c
    ld [hl-], a                                   ; $7c6f: $32
    inc sp                                        ; $7c70: $33
    nop                                           ; $7c71: $00
    jr c, jr_0c0_7cad                             ; $7c72: $38 $39

    jr z, @+$2f                                   ; $7c74: $28 $2d

    ld l, $34                                     ; $7c76: $2e $34
    ld a, [hl-]                                   ; $7c78: $3a
    dec l                                         ; $7c79: $2d
    nop                                           ; $7c7a: $00
    dec l                                         ; $7c7b: $2d
    dec l                                         ; $7c7c: $2d
    ld c, c                                       ; $7c7d: $49
    ld [hl], $3f                                  ; $7c7e: $36 $3f
    ld de, $0f12                                  ; $7c80: $11 $12 $0f
    nop                                           ; $7c83: $00
    inc de                                        ; $7c84: $13
    inc d                                         ; $7c85: $14
    dec d                                         ; $7c86: $15
    ld d, $17                                     ; $7c87: $16 $17
    jr @+$1a                                      ; $7c89: $18 $18

    add hl, de                                    ; $7c8b: $19
    nop                                           ; $7c8c: $00
    ld a, [de]                                    ; $7c8d: $1a
    dec de                                        ; $7c8e: $1b
    inc e                                         ; $7c8f: $1c
    dec e                                         ; $7c90: $1d
    ld e, $1f                                     ; $7c91: $1e $1f
    rra                                           ; $7c93: $1f
    jr nz, jr_0c0_7c96                            ; $7c94: $20 $00

jr_0c0_7c96:
    ld hl, $2218                                  ; $7c96: $21 $18 $22
    inc hl                                        ; $7c99: $23
    dec h                                         ; $7c9a: $25
    inc h                                         ; $7c9b: $24
    nop                                           ; $7c9c: $00
    ld bc, $022c                                  ; $7c9d: $01 $2c $02
    nop                                           ; $7ca0: $00
    ld bc, $0920                                  ; $7ca1: $01 $20 $09
    add hl, bc                                    ; $7ca4: $09
    nop                                           ; $7ca5: $00
    ld c, $00                                     ; $7ca6: $0e $00
    add hl, hl                                    ; $7ca8: $29
    dec h                                         ; $7ca9: $25
    add hl, bc                                    ; $7caa: $09
    ld a, [hl+]                                   ; $7cab: $2a
    nop                                           ; $7cac: $00

jr_0c0_7cad:
    inc bc                                        ; $7cad: $03
    inc b                                         ; $7cae: $04
    dec d                                         ; $7caf: $15
    jr nz, jr_0c0_7cbc                            ; $7cb0: $20 $0a

    dec bc                                        ; $7cb2: $0b
    ld e, $00                                     ; $7cb3: $1e $00
    adc c                                         ; $7cb5: $89
    ld c, $00                                     ; $7cb6: $0e $00
    cpl                                           ; $7cb8: $2f
    dec h                                         ; $7cb9: $25
    jr nc, @+$29                                  ; $7cba: $30 $27

jr_0c0_7cbc:
    db $10                                        ; $7cbc: $10
    dec b                                         ; $7cbd: $05
    ld b, $2e                                     ; $7cbe: $06 $2e
    nop                                           ; $7cc0: $00
    ld b, h                                       ; $7cc1: $44
    inc c                                         ; $7cc2: $0c
    ld [hl-], a                                   ; $7cc3: $32
    jr nz, jr_0c0_7cfb                            ; $7cc4: $20 $35

    dec h                                         ; $7cc6: $25
    scf                                           ; $7cc7: $37
    inc a                                         ; $7cc8: $3c
    db $10                                        ; $7cc9: $10
    rlca                                          ; $7cca: $07
    ld [$43a3], sp                                ; $7ccb: $08 $a3 $43
    nop                                           ; $7cce: $00
    dec c                                         ; $7ccf: $0d
    ld b, a                                       ; $7cd0: $47
    jr nz, jr_0c0_7d0e                            ; $7cd1: $20 $3b

    dec h                                         ; $7cd3: $25
    inc a                                         ; $7cd4: $3c
    ld d, c                                       ; $7cd5: $51
    jr z, jr_0c0_7d31                             ; $7cd6: $28 $59

    jr jr_0c0_7c68                                ; $7cd8: $18 $8e

    inc sp                                        ; $7cda: $33
    ld [$253e], sp                                ; $7cdb: $08 $3e $25
    ld b, b                                       ; $7cde: $40
    ld h, b                                       ; $7cdf: $60
    jr @+$6e                                      ; $7ce0: $18 $6c

    jr z, jr_0c0_7d17                             ; $7ce2: $28 $33

    ld [$3141], sp                                ; $7ce4: $08 $41 $31
    dec h                                         ; $7ce7: $25
    ld b, d                                       ; $7ce8: $42
    ld h, b                                       ; $7ce9: $60
    jr jr_0c0_7c6d                                ; $7cea: $18 $81

    ld c, b                                       ; $7cec: $48
    ld b, e                                       ; $7ced: $43
    dec h                                         ; $7cee: $25
    ld b, h                                       ; $7cef: $44
    ld h, b                                       ; $7cf0: $60
    nop                                           ; $7cf1: $00
    ret z                                         ; $7cf2: $c8

    ld h, a                                       ; $7cf3: $67
    ld [$086b], sp                                ; $7cf4: $08 $6b $08
    ld bc, $8102                                  ; $7cf7: $01 $02 $81
    db $10                                        ; $7cfa: $10

jr_0c0_7cfb:
    ld b, l                                       ; $7cfb: $45
    dec h                                         ; $7cfc: $25
    ld b, [hl]                                    ; $7cfd: $46
    db $e4                                        ; $7cfe: $e4
    ld h, b                                       ; $7cff: $60
    nop                                           ; $7d00: $00
    ld h, a                                       ; $7d01: $67
    ld [$086b], sp                                ; $7d02: $08 $6b $08
    inc bc                                        ; $7d05: $03
    inc b                                         ; $7d06: $04
    add c                                         ; $7d07: $81
    ld [$4709], sp                                ; $7d08: $08 $09 $47
    inc l                                         ; $7d0b: $2c
    dec h                                         ; $7d0c: $25
    ld c, b                                       ; $7d0d: $48

jr_0c0_7d0e:
    cp d                                          ; $7d0e: $ba
    nop                                           ; $7d0f: $00
    ld c, $6d                                     ; $7d10: $0e $6d
    jr nc, @-$7d                                  ; $7d12: $30 $81

    nop                                           ; $7d14: $00
    ld a, [bc]                                    ; $7d15: $0a
    dec bc                                        ; $7d16: $0b

jr_0c0_7d17:
    ld c, $4a                                     ; $7d17: $0e $4a
    dec h                                         ; $7d19: $25
    ld c, e                                       ; $7d1a: $4b
    nop                                           ; $7d1b: $00
    and e                                         ; $7d1c: $a3
    ld [$38d6], sp                                ; $7d1d: $08 $d6 $38
    xor [hl]                                      ; $7d20: $ae
    nop                                           ; $7d21: $00
    ld c, h                                       ; $7d22: $4c
    jr c, jr_0c0_7d4a                             ; $7d23: $38 $25

    ld c, l                                       ; $7d25: $4d
    and e                                         ; $7d26: $a3
    db $10                                        ; $7d27: $10
    sub $30                                       ; $7d28: $d6 $30
    xor [hl]                                      ; $7d2a: $ae
    ld [$253d], sp                                ; $7d2b: $08 $3d $25
    inc hl                                        ; $7d2e: $23
    nop                                           ; $7d2f: $00
    db $10                                        ; $7d30: $10

jr_0c0_7d31:
    rra                                           ; $7d31: $1f
    ld hl, $1f20                                  ; $7d32: $21 $20 $1f
    rra                                           ; $7d35: $1f
    ld e, $1d                                     ; $7d36: $1e $1d
    nop                                           ; $7d38: $00
    inc e                                         ; $7d39: $1c
    dec de                                        ; $7d3a: $1b

jr_0c0_7d3b:
    ld a, [de]                                    ; $7d3b: $1a
    add hl, de                                    ; $7d3c: $19
    jr jr_0c0_7d57                                ; $7d3d: $18 $18

    rla                                           ; $7d3f: $17
    ld d, $00                                     ; $7d40: $16 $00
    rra                                           ; $7d42: $1f
    ld h, $13                                     ; $7d43: $26 $13
    dec h                                         ; $7d45: $25
    ld [de], a                                    ; $7d46: $12
    ld de, $363f                                  ; $7d47: $11 $3f $36

jr_0c0_7d4a:
    ld b, b                                       ; $7d4a: $40
    ld c, c                                       ; $7d4b: $49
    inc [hl]                                      ; $7d4c: $34
    ld bc, $343a                                  ; $7d4d: $01 $3a $34
    ld l, $2d                                     ; $7d50: $2e $2d
    jr z, @+$3b                                   ; $7d52: $28 $39

    ld [bc], a                                    ; $7d54: $02
    jr c, jr_0c0_7d8a                             ; $7d55: $38 $33

jr_0c0_7d57:
    ld [hl-], a                                   ; $7d57: $32
    inc l                                         ; $7d58: $2c
    dec hl                                        ; $7d59: $2b
    daa                                           ; $7d5a: $27
    ld h, h                                       ; $7d5b: $64
    adc c                                         ; $7d5c: $89
    dec h                                         ; $7d5d: $25
    ld c, a                                       ; $7d5e: $4f
    dec h                                         ; $7d5f: $25
    and $58                                       ; $7d60: $e6 $58
    nop                                           ; $7d62: $00
    nop                                           ; $7d63: $00
    dec d                                         ; $7d64: $15
    ld hl, sp+$2a                                 ; $7d65: $f8 $2a
    ld hl, sp+$54                                 ; $7d67: $f8 $54
    ld hl, sp+$69                                 ; $7d69: $f8 $69
    ld hl, sp-$15                                 ; $7d6b: $f8 $eb
    sub e                                         ; $7d6d: $93
    ld hl, sp-$43                                 ; $7d6e: $f8 $bd
    ld hl, sp-$2e                                 ; $7d70: $f8 $d2
    add sp, $02                                   ; $7d72: $e8 $02
    ld bc, $0480                                  ; $7d74: $01 $80 $04
    dec d                                         ; $7d77: $15
    ld hl, sp+$2c                                 ; $7d78: $f8 $2c
    jr c, jr_0c0_7d3b                             ; $7d7a: $38 $bf

    dec a                                         ; $7d7c: $3d
    ld l, c                                       ; $7d7d: $69
    nop                                           ; $7d7e: $00
    dec d                                         ; $7d7f: $15
    ld hl, sp+$2a                                 ; $7d80: $f8 $2a
    ld hl, sp+$54                                 ; $7d82: $f8 $54
    ld hl, sp+$69                                 ; $7d84: $f8 $69
    ld hl, sp-$6d                                 ; $7d86: $f8 $93
    ld hl, sp-$43                                 ; $7d88: $f8 $bd

jr_0c0_7d8a:
    ld hl, sp-$71                                 ; $7d8a: $f8 $8f

jr_0c0_7d8c:
    jp nc, $62d0                                  ; $7d8c: $d2 $d0 $62

    ld [bc], a                                    ; $7d8f: $02
    ld h, d                                       ; $7d90: $62
    ld bc, $1360                                  ; $7d91: $01 $60 $13
    add b                                         ; $7d94: $80
    rla                                           ; $7d95: $17
    db $10                                        ; $7d96: $10
    dec sp                                        ; $7d97: $3b
    sub c                                         ; $7d98: $91
    ld a, a                                       ; $7d99: $7f
    ld bc, $6001                                  ; $7d9a: $01 $01 $60
    dec d                                         ; $7d9d: $15
    ld hl, sp+$2a                                 ; $7d9e: $f8 $2a
    ld hl, sp+$54                                 ; $7da0: $f8 $54
    ld hl, sp+$69                                 ; $7da2: $f8 $69
    ld hl, sp-$6d                                 ; $7da4: $f8 $93
    ld hl, sp-$43                                 ; $7da6: $f8 $bd
    ld hl, sp-$80                                 ; $7da8: $f8 $80
    jp nc, Jump_000_14e8                          ; $7daa: $d2 $e8 $14

    nop                                           ; $7dad: $00
    ld a, [de]                                    ; $7dae: $1a
    nop                                           ; $7daf: $00
    di                                            ; $7db0: $f3
    nop                                           ; $7db1: $00
    ld a, a                                       ; $7db2: $7f
    jr nz, @+$03                                  ; $7db3: $20 $01

    ld hl, sp+$23                                 ; $7db5: $f8 $23
    ld hl, sp+$45                                 ; $7db7: $f8 $45
    ld hl, sp+$67                                 ; $7db9: $f8 $67
    ld hl, sp-$77                                 ; $7dbb: $f8 $89
    ld hl, sp-$55                                 ; $7dbd: $f8 $ab
    ld hl, sp-$33                                 ; $7dbf: $f8 $cd
    ld hl, sp+$00                                 ; $7dc1: $f8 $00
    jr nz, jr_0c0_7d8c                            ; $7dc3: $20 $c7

    ret z                                         ; $7dc5: $c8

jr_0c0_7dc6:
    inc h                                         ; $7dc6: $24
    dec h                                         ; $7dc7: $25
    ld h, $27                                     ; $7dc8: $26 $27
    jr z, jr_0c0_7dcc                             ; $7dca: $28 $00

jr_0c0_7dcc:
    add hl, hl                                    ; $7dcc: $29
    ld a, [hl+]                                   ; $7dcd: $2a
    dec hl                                        ; $7dce: $2b
    inc l                                         ; $7dcf: $2c
    dec l                                         ; $7dd0: $2d
    ld l, $2f                                     ; $7dd1: $2e $2f
    jr nc, jr_0c0_7dd5                            ; $7dd3: $30 $00

jr_0c0_7dd5:
    ld sp, $c932                                  ; $7dd5: $31 $32 $c9
    add a                                         ; $7dd8: $87
    inc [hl]                                      ; $7dd9: $34
    add h                                         ; $7dda: $84
    scf                                           ; $7ddb: $37
    jr c, jr_0c0_7dde                             ; $7ddc: $38 $00

jr_0c0_7dde:
    add hl, sp                                    ; $7dde: $39
    ld a, [hl-]                                   ; $7ddf: $3a
    dec sp                                        ; $7de0: $3b
    inc a                                         ; $7de1: $3c
    dec a                                         ; $7de2: $3d
    ld a, $3f                                     ; $7de3: $3e $3f
    ld b, b                                       ; $7de5: $40
    nop                                           ; $7de6: $00
    ld b, c                                       ; $7de7: $41
    ld b, d                                       ; $7de8: $42
    ld b, e                                       ; $7de9: $43
    ld b, h                                       ; $7dea: $44
    ld b, l                                       ; $7deb: $45
    ld b, [hl]                                    ; $7dec: $46
    add e                                         ; $7ded: $83
    add d                                         ; $7dee: $82
    nop                                           ; $7def: $00
    ld [hl], c                                    ; $7df0: $71
    ld [hl], b                                    ; $7df1: $70
    ld c, e                                       ; $7df2: $4b
    ld c, h                                       ; $7df3: $4c
    ld c, l                                       ; $7df4: $4d
    ld c, [hl]                                    ; $7df5: $4e
    ld c, a                                       ; $7df6: $4f
    ld d, b                                       ; $7df7: $50
    nop                                           ; $7df8: $00
    ld d, c                                       ; $7df9: $51
    ld d, d                                       ; $7dfa: $52
    ld d, e                                       ; $7dfb: $53
    ld d, h                                       ; $7dfc: $54
    ld d, l                                       ; $7dfd: $55
    ld d, [hl]                                    ; $7dfe: $56
    ld d, a                                       ; $7dff: $57
    ld e, b                                       ; $7e00: $58
    nop                                           ; $7e01: $00
    ld e, c                                       ; $7e02: $59
    ld e, d                                       ; $7e03: $5a
    ld l, a                                       ; $7e04: $6f
    ld e, [hl]                                    ; $7e05: $5e
    ld e, l                                       ; $7e06: $5d
    ld e, h                                       ; $7e07: $5c
    ld e, a                                       ; $7e08: $5f
    ld h, b                                       ; $7e09: $60
    nop                                           ; $7e0a: $00
    ld h, c                                       ; $7e0b: $61
    ld h, d                                       ; $7e0c: $62
    ld h, e                                       ; $7e0d: $63
    ld h, h                                       ; $7e0e: $64
    ld h, l                                       ; $7e0f: $65
    ld h, [hl]                                    ; $7e10: $66
    ld h, a                                       ; $7e11: $67
    ld l, b                                       ; $7e12: $68
    nop                                           ; $7e13: $00
    ld l, c                                       ; $7e14: $69
    ld l, d                                       ; $7e15: $6a
    ld l, e                                       ; $7e16: $6b
    ld l, h                                       ; $7e17: $6c
    ld l, l                                       ; $7e18: $6d
    ld l, [hl]                                    ; $7e19: $6e
    ld e, e                                       ; $7e1a: $5b
    ld c, d                                       ; $7e1b: $4a
    nop                                           ; $7e1c: $00
    ld c, c                                       ; $7e1d: $49
    ld c, b                                       ; $7e1e: $48
    ld [hl], d                                    ; $7e1f: $72
    ld [hl], e                                    ; $7e20: $73
    ld [hl], h                                    ; $7e21: $74
    ld [hl], l                                    ; $7e22: $75
    halt                                          ; $7e23: $76
    ld [hl], a                                    ; $7e24: $77
    nop                                           ; $7e25: $00
    ld a, b                                       ; $7e26: $78
    ld a, c                                       ; $7e27: $79
    ld a, d                                       ; $7e28: $7a
    ld a, e                                       ; $7e29: $7b
    ld a, h                                       ; $7e2a: $7c
    ld a, l                                       ; $7e2b: $7d
    ld a, [hl]                                    ; $7e2c: $7e
    ld a, a                                       ; $7e2d: $7f
    ld bc, $8180                                  ; $7e2e: $01 $80 $81
    ld b, a                                       ; $7e31: $47
    ld [hl], $35                                  ; $7e32: $36 $35
    inc sp                                        ; $7e34: $33
    add l                                         ; $7e35: $85
    ld bc, $0060                                  ; $7e36: $01 $60 $00
    add [hl]                                      ; $7e39: $86
    inc hl                                        ; $7e3a: $23
    ld [hl+], a                                   ; $7e3b: $22
    jr nz, jr_0c0_7dc6                            ; $7e3c: $20 $88

    adc c                                         ; $7e3e: $89
    adc d                                         ; $7e3f: $8a
    adc e                                         ; $7e40: $8b
    nop                                           ; $7e41: $00
    adc h                                         ; $7e42: $8c
    adc l                                         ; $7e43: $8d
    adc [hl]                                      ; $7e44: $8e
    adc a                                         ; $7e45: $8f
    sub b                                         ; $7e46: $90
    sub c                                         ; $7e47: $91
    sub d                                         ; $7e48: $92
    sub e                                         ; $7e49: $93
    ld [$9594], sp                                ; $7e4a: $08 $94 $95
    sub [hl]                                      ; $7e4d: $96
    sub a                                         ; $7e4e: $97
    ld a, c                                       ; $7e4f: $79
    add hl, bc                                    ; $7e50: $09
    sbc b                                         ; $7e51: $98
    sbc c                                         ; $7e52: $99
    sbc d                                         ; $7e53: $9a
    nop                                           ; $7e54: $00
    sbc e                                         ; $7e55: $9b
    sbc h                                         ; $7e56: $9c
    sbc l                                         ; $7e57: $9d
    sbc [hl]                                      ; $7e58: $9e
    sbc a                                         ; $7e59: $9f
    and b                                         ; $7e5a: $a0
    and c                                         ; $7e5b: $a1
    and d                                         ; $7e5c: $a2
    inc b                                         ; $7e5d: $04
    and e                                         ; $7e5e: $a3
    and h                                         ; $7e5f: $a4
    and l                                         ; $7e60: $a5
    and [hl]                                      ; $7e61: $a6
    and a                                         ; $7e62: $a7
    adc l                                         ; $7e63: $8d
    add hl, bc                                    ; $7e64: $09
    xor b                                         ; $7e65: $a8
    xor c                                         ; $7e66: $a9
    nop                                           ; $7e67: $00
    xor d                                         ; $7e68: $aa
    xor e                                         ; $7e69: $ab
    xor h                                         ; $7e6a: $ac
    xor l                                         ; $7e6b: $ad
    xor [hl]                                      ; $7e6c: $ae
    xor a                                         ; $7e6d: $af
    or b                                          ; $7e6e: $b0
    or c                                          ; $7e6f: $b1
    ld [bc], a                                    ; $7e70: $02
    or d                                          ; $7e71: $b2
    or e                                          ; $7e72: $b3
    or h                                          ; $7e73: $b4
    or l                                          ; $7e74: $b5
    or [hl]                                       ; $7e75: $b6
    or a                                          ; $7e76: $b7
    and c                                         ; $7e77: $a1
    add hl, bc                                    ; $7e78: $09
    cp b                                          ; $7e79: $b8
    nop                                           ; $7e7a: $00
    cp c                                          ; $7e7b: $b9
    cp d                                          ; $7e7c: $ba
    cp e                                          ; $7e7d: $bb
    cp h                                          ; $7e7e: $bc
    cp l                                          ; $7e7f: $bd
    cp [hl]                                       ; $7e80: $be
    cp a                                          ; $7e81: $bf
    ret nz                                        ; $7e82: $c0

    ld bc, $c2c1                                  ; $7e83: $01 $c1 $c2
    jp $c5c4                                      ; $7e86: $c3 $c4 $c5


    add $21                                       ; $7e89: $c6 $21
    or l                                          ; $7e8b: $b5
    add hl, bc                                    ; $7e8c: $09
    rst $38                                       ; $7e8d: $ff
    or h                                          ; $7e8e: $b4
    ld l, b                                       ; $7e8f: $68
    ret                                           ; $7e90: $c9


    add hl, bc                                    ; $7e91: $09
    or h                                          ; $7e92: $b4
    ld l, b                                       ; $7e93: $68
    db $dd                                        ; $7e94: $dd
    add hl, bc                                    ; $7e95: $09
    or h                                          ; $7e96: $b4
    ld l, b                                       ; $7e97: $68
    pop af                                        ; $7e98: $f1
    add hl, bc                                    ; $7e99: $09
    or h                                          ; $7e9a: $b4
    ld l, b                                       ; $7e9b: $68
    dec b                                         ; $7e9c: $05
    ld [bc], a                                    ; $7e9d: $02
    ld a, a                                       ; $7e9e: $7f
    nop                                           ; $7e9f: $00
    ld bc, $23f8                                  ; $7ea0: $01 $f8 $23
    ld hl, sp+$45                                 ; $7ea3: $f8 $45
    ld hl, sp+$67                                 ; $7ea5: $f8 $67
    ld hl, sp-$77                                 ; $7ea7: $f8 $89
    ld hl, sp-$55                                 ; $7ea9: $f8 $ab
    ld hl, sp-$33                                 ; $7eab: $f8 $cd
    ld hl, sp+$13                                 ; $7ead: $f8 $13
    nop                                           ; $7eaf: $00
    ld [$1108], sp                                ; $7eb0: $08 $08 $11
    ld a, b                                       ; $7eb3: $78
    ld [$0106], sp                                ; $7eb4: $08 $06 $01
    ld h, b                                       ; $7eb7: $60
    dec h                                         ; $7eb8: $25
    ld [$1490], sp                                ; $7eb9: $08 $90 $14
    ld l, b                                       ; $7ebc: $68
    ld [bc], a                                    ; $7ebd: $02
    ld [bc], a                                    ; $7ebe: $02
    inc d                                         ; $7ebf: $14
    ld hl, sp+$06                                 ; $7ec0: $f8 $06
    ld b, $0e                                     ; $7ec2: $06 $0e
    ld c, $ea                                     ; $7ec4: $0e $ea
    ld h, l                                       ; $7ec6: $65
    jr jr_0c0_7ecb                                ; $7ec7: $18 $02

    ld h, b                                       ; $7ec9: $60
    ld h, [hl]                                    ; $7eca: $66

jr_0c0_7ecb:
    ld bc, $010c                                  ; $7ecb: $01 $0c $01
    nop                                           ; $7ece: $00
    rrca                                          ; $7ecf: $0f
    ld bc, $0d00                                  ; $7ed0: $01 $00 $0d
    rrca                                          ; $7ed3: $0f
    dec c                                         ; $7ed4: $0d
    rrca                                          ; $7ed5: $0f
    rrca                                          ; $7ed6: $0f
    ld c, $01                                     ; $7ed7: $0e $01
    nop                                           ; $7ed9: $00
    ld a, c                                       ; $7eda: $79
    add hl, bc                                    ; $7edb: $09
    inc d                                         ; $7edc: $14
    sbc b                                         ; $7edd: $98
    jr nz, jr_0c0_7ee8                            ; $7ede: $20 $08

    ld e, e                                       ; $7ee0: $5b
    dec bc                                        ; $7ee1: $0b
    ld bc, $0d10                                  ; $7ee2: $01 $10 $0d
    ld bc, $1400                                  ; $7ee5: $01 $00 $14

jr_0c0_7ee8:
    add b                                         ; $7ee8: $80
    dec b                                         ; $7ee9: $05
    or l                                          ; $7eea: $b5
    add hl, bc                                    ; $7eeb: $09
    or h                                          ; $7eec: $b4
    ld l, b                                       ; $7eed: $68
    ldh [rNR14], a                                ; $7eee: $e0 $14
    ld hl, sp+$28                                 ; $7ef0: $f8 $28
    xor b                                         ; $7ef2: $a8
    or h                                          ; $7ef3: $b4
    db $10                                        ; $7ef4: $10

    db $14, $00, $13, $00, $3b, $00, $56, $80, $01, $d0, $84, $01, $30, $82, $01, $30
    db $13, $38, $83, $dc, $01, $30, $28, $30, $83, $3c, $f8, $29, $20, $3c, $f8, $84
    db $84, $f8, $9d, $00, $3c, $f8, $2b, $30, $b4, $68, $3c, $80, $82, $82, $81, $f7
    db $01, $f8, $23, $f8, $45, $f8, $67, $70, $85, $01, $08, $4f, $11, $82, $38, $57
    db $02, $01, $80, $00, $01, $30, $07, $01, $30, $14, $80, $27, $38, $fe, $14, $d8
    db $3c, $88, $50, $f8, $62, $60, $50, $f8, $a0, $f8, $c6, $08, $01, $f0, $01, $f8
    db $23, $f8, $45, $f8, $67, $70, $03, $04, $05, $06, $60, $07, $05, $10, $82, $38

    inc d                                         ; $7f65: $14
    nop                                           ; $7f66: $00
    inc de                                        ; $7f67: $13
    nop                                           ; $7f68: $00
    ld b, d                                       ; $7f69: $42
    nop                                           ; $7f6a: $00
    ld d, [hl]                                    ; $7f6b: $56
    add b                                         ; $7f6c: $80
    ld bc, $84d0                                  ; $7f6d: $01 $d0 $84

jr_0c0_7f70:
    ld bc, $8230                                  ; $7f70: $01 $30 $82
    ld bc, $1330                                  ; $7f73: $01 $30 $13
    jr c, @-$7b                                   ; $7f76: $38 $83

    call c, Call_000_3001                         ; $7f78: $dc $01 $30
    jr z, @+$32                                   ; $7f7b: $28 $30

    add e                                         ; $7f7d: $83
    inc a                                         ; $7f7e: $3c
    ld hl, sp+$29                                 ; $7f7f: $f8 $29
    jr nz, jr_0c0_7fbf                            ; $7f81: $20 $3c

    ld hl, sp-$7c                                 ; $7f83: $f8 $84
    add h                                         ; $7f85: $84
    ld hl, sp-$63                                 ; $7f86: $f8 $9d
    nop                                           ; $7f88: $00
    inc a                                         ; $7f89: $3c
    ld hl, sp+$2b                                 ; $7f8a: $f8 $2b
    jr nc, @-$4a                                  ; $7f8c: $30 $b4

    ld l, b                                       ; $7f8e: $68
    inc a                                         ; $7f8f: $3c
    add b                                         ; $7f90: $80
    add d                                         ; $7f91: $82
    add d                                         ; $7f92: $82
    add c                                         ; $7f93: $81
    rst $30                                       ; $7f94: $f7
    ld bc, $23f8                                  ; $7f95: $01 $f8 $23
    ld hl, sp+$45                                 ; $7f98: $f8 $45
    ld hl, sp+$67                                 ; $7f9a: $f8 $67
    ld [hl], b                                    ; $7f9c: $70
    add l                                         ; $7f9d: $85
    ld bc, $4f08                                  ; $7f9e: $01 $08 $4f
    ld de, $3882                                  ; $7fa1: $11 $82 $38
    ld d, a                                       ; $7fa4: $57
    nop                                           ; $7fa5: $00
    ld bc, $0280                                  ; $7fa6: $01 $80 $02
    ld bc, $0730                                  ; $7fa9: $01 $30 $07
    ld bc, $1430                                  ; $7fac: $01 $30 $14
    add b                                         ; $7faf: $80
    daa                                           ; $7fb0: $27
    jr c, jr_0c0_7f70                             ; $7fb1: $38 $bd

    inc d                                         ; $7fb3: $14
    ld b, b                                       ; $7fb4: $40
    inc bc                                        ; $7fb5: $03
    ld bc, $3c30                                  ; $7fb6: $01 $30 $3c
    jr c, @+$16                                   ; $7fb9: $38 $14

    ld hl, sp+$27                                 ; $7fbb: $f8 $27
    jr jr_0c0_7fc3                                ; $7fbd: $18 $04

jr_0c0_7fbf:
    ld bc, $fb30                                  ; $7fbf: $01 $30 $fb
    ld a, b                                       ; $7fc2: $78

jr_0c0_7fc3:
    jr nz, jr_0c0_7fd6                            ; $7fc3: $20 $11

    jr c, @+$16                                   ; $7fc5: $38 $14

    jr c, jr_0c0_7fe0                             ; $7fc7: $38 $17

    ld d, b                                       ; $7fc9: $50
    and b                                         ; $7fca: $a0
    jr c, jr_0c0_7fd2                             ; $7fcb: $38 $05

    ld bc, $1330                                  ; $7fcd: $01 $30 $13
    add b                                         ; $7fd0: $80
    adc a                                         ; $7fd1: $8f

jr_0c0_7fd2:
    inc d                                         ; $7fd2: $14
    jr nc, jr_0c0_7fda                            ; $7fd3: $30 $05

    dec b                                         ; $7fd5: $05

jr_0c0_7fd6:
    ld bc, $f801                                  ; $7fd6: $01 $01 $f8
    inc hl                                        ; $7fd9: $23

jr_0c0_7fda:
    ld hl, sp+$45                                 ; $7fda: $f8 $45
    ld hl, sp+$67                                 ; $7fdc: $f8 $67
    ld [hl], b                                    ; $7fde: $70
    ret nz                                        ; $7fdf: $c0

jr_0c0_7fe0:
    ld c, d                                       ; $7fe0: $4a
    add hl, sp                                    ; $7fe1: $39
    add d                                         ; $7fe2: $82
    jr c, @+$01                                   ; $7fe3: $38 $ff

    ld a, a                                       ; $7fe5: $7f
    ld d, [hl]                                    ; $7fe6: $56
    rra                                           ; $7fe7: $1f
    pop hl                                        ; $7fe8: $e1
    dec e                                         ; $7fe9: $1d
    and c                                         ; $7fea: $a1
    nop                                           ; $7feb: $00
    rst $38                                       ; $7fec: $ff
    ld a, a                                       ; $7fed: $7f
    halt                                          ; $7fee: $76
    ld a, [hl]                                    ; $7fef: $7e
    push de                                       ; $7ff0: $d5
    ld d, b                                       ; $7ff1: $50
    dec b                                         ; $7ff2: $05
    inc b                                         ; $7ff3: $04
    rst $38                                       ; $7ff4: $ff
    ld a, a                                       ; $7ff5: $7f
    db $fc                                        ; $7ff6: $fc
    add hl, de                                    ; $7ff7: $19
    xor a                                         ; $7ff8: $af
    nop                                           ; $7ff9: $00
    inc b                                         ; $7ffa: $04
    ld [$ffff], sp                                ; $7ffb: $08 $ff $ff

Jump_0c0_7ffe:
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
