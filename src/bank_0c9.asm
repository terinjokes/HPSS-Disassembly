; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c9", ROMX[$4000], BANK[$c9]

    db $c9

    add b                                         ; $4001: $80
    ld [$0640], sp                                ; $4002: $08 $40 $06
    ld [$00e0], sp                                ; $4005: $08 $e0 $00
    ld d, c                                       ; $4008: $51
    add b                                         ; $4009: $80
    inc b                                         ; $400a: $04
    ld c, b                                       ; $400b: $48
    or e                                          ; $400c: $b3
    rrca                                          ; $400d: $0f
    ld l, c                                       ; $400e: $69
    ld b, b                                       ; $400f: $40
    rla                                           ; $4010: $17
    inc b                                         ; $4011: $04
    ld c, b                                       ; $4012: $48
    ld [bc], a                                    ; $4013: $02
    db $fd                                        ; $4014: $fd
    nop                                           ; $4015: $00
    rst $38                                       ; $4016: $ff
    dec d                                         ; $4017: $15
    ld [$a200], a                                 ; $4018: $ea $00 $a2
    ld e, l                                       ; $401b: $5d
    dec d                                         ; $401c: $15
    ld [$55aa], a                                 ; $401d: $ea $aa $55
    ld d, l                                       ; $4020: $55
    xor d                                         ; $4021: $aa

jr_0c9_4022:
    inc c                                         ; $4022: $0c
    xor d                                         ; $4023: $aa
    ld d, l                                       ; $4024: $55
    ld de, $08ee                                  ; $4025: $11 $ee $08
    jr @+$06                                      ; $4028: $18 $04

    jr @-$10                                      ; $402a: $18 $ee

    ld de, $4b00                                  ; $402c: $11 $00 $4b
    db $f4                                        ; $402f: $f4
    or l                                          ; $4030: $b5
    ld a, [$cef1]                                 ; $4031: $fa $f1 $ce
    sub c                                         ; $4034: $91
    ldh [$0c], a                                  ; $4035: $e0 $0c
    set 6, h                                      ; $4037: $cb $f4
    and l                                         ; $4039: $a5
    ld a, [$0804]                                 ; $403a: $fa $04 $08
    ld d, b                                       ; $403d: $50
    jr jr_0c9_4040                                ; $403e: $18 $00

jr_0c9_4040:
    rst $38                                       ; $4040: $ff
    ld b, b                                       ; $4041: $40
    nop                                           ; $4042: $00
    ld e, b                                       ; $4043: $58
    db $20, $b2                                   ; $4044: $20 $b2
    rrca                                          ; $4046: $0f
    ld l, l                                       ; $4047: $6d
    rra                                           ; $4048: $1f
    rrca                                          ; $4049: $0f
    ld [hl], e                                    ; $404a: $73
    ld hl, $0789                                  ; $404b: $21 $89 $07
    ld e, b                                       ; $404e: $58
    jr z, @+$01                                   ; $404f: $28 $ff

    rst $38                                       ; $4051: $ff
    xor d                                         ; $4052: $aa
    rst $38                                       ; $4053: $ff
    inc b                                         ; $4054: $04
    ld [$d506], sp                                ; $4055: $08 $06 $d5
    rst $38                                       ; $4058: $ff
    sub l                                         ; $4059: $95
    ld [$0c80], a                                 ; $405a: $ea $80 $0c
    jr nz, @+$16                                  ; $405d: $20 $14

    ld [$0455], sp                                ; $405f: $08 $55 $04
    rst $38                                       ; $4062: $ff
    rst $38                                       ; $4063: $ff
    nop                                           ; $4064: $00
    xor a                                         ; $4065: $af
    ld d, b                                       ; $4066: $50
    db $10                                        ; $4067: $10
    ld e, b                                       ; $4068: $58
    rst $38                                       ; $4069: $ff
    nop                                           ; $406a: $00
    sub h                                         ; $406b: $94

jr_0c9_406c:
    jr nz, jr_0c9_40c6                            ; $406c: $20 $58

    push af                                       ; $406e: $f5
    ld a, [bc]                                    ; $406f: $0a
    inc a                                         ; $4070: $3c
    ld [$04ab], sp                                ; $4071: $08 $ab $04
    db $10                                        ; $4074: $10
    ld d, l                                       ; $4075: $55
    rst $38                                       ; $4076: $ff
    jr jr_0c9_4022                                ; $4077: $18 $a9

    ld d, a                                       ; $4079: $57
    ld bc, $000c                                  ; $407a: $01 $0c $00
    ld l, d                                       ; $407d: $6a
    nop                                           ; $407e: $00
    rst $38                                       ; $407f: $ff
    ld d, d                                       ; $4080: $52
    xor l                                         ; $4081: $ad
    ld [$5fa0], sp                                ; $4082: $08 $a0 $5f
    ld d, h                                       ; $4085: $54
    xor e                                         ; $4086: $ab
    sub h                                         ; $4087: $94
    jr c, jr_0c9_40df                             ; $4088: $38 $55

    xor d                                         ; $408a: $aa
    cp e                                          ; $408b: $bb
    ld b, $44                                     ; $408c: $06 $44
    ld d, l                                       ; $408e: $55
    xor d                                         ; $408f: $aa
    rst $38                                       ; $4090: $ff
    nop                                           ; $4091: $00
    inc b                                         ; $4092: $04
    jr jr_0c9_40a1                                ; $4093: $18 $0c

    jr c, jr_0c9_406c                             ; $4095: $38 $d5

    jr @+$2c                                      ; $4097: $18 $2a

    rst $38                                       ; $4099: $ff
    nop                                           ; $409a: $00
    xor b                                         ; $409b: $a8
    jr z, @-$46                                   ; $409c: $28 $b8

    ld [$ffde], sp                                ; $409e: $08 $de $ff

jr_0c9_40a1:
    xor c                                         ; $40a1: $a9
    ld b, d                                       ; $40a2: $42
    rst $38                                       ; $40a3: $ff
    nop                                           ; $40a4: $00
    ld c, c                                       ; $40a5: $49
    ld h, b                                       ; $40a6: $60
    add b                                         ; $40a7: $80
    rst $38                                       ; $40a8: $ff
    rst $38                                       ; $40a9: $ff
    nop                                           ; $40aa: $00
    add hl, hl                                    ; $40ab: $29
    or d                                          ; $40ac: $b2
    ld bc, $6c0f                                  ; $40ad: $01 $0f $6c
    rra                                           ; $40b0: $1f
    ldh a, [$7f]                                  ; $40b1: $f0 $7f
    add b                                         ; $40b3: $80
    rst $38                                       ; $40b4: $ff
    ld c, b                                       ; $40b5: $48
    ld [$dd02], sp                                ; $40b6: $08 $02 $dd
    ld [hl+], a                                   ; $40b9: $22
    rst $38                                       ; $40ba: $ff
    nop                                           ; $40bb: $00
    ld [hl], a                                    ; $40bc: $77
    adc b                                         ; $40bd: $88
    ld l, e                                       ; $40be: $6b
    stop                                          ; $40bf: $10 $00
    add c                                         ; $40c1: $81
    jr nz, jr_0c9_40fc                            ; $40c2: $20 $38

    ld l, l                                       ; $40c4: $6d
    rra                                           ; $40c5: $1f

jr_0c9_40c6:
    ei                                            ; $40c6: $fb
    ld a, a                                       ; $40c7: $7f
    sub l                                         ; $40c8: $95
    rst $38                                       ; $40c9: $ff
    ld d, h                                       ; $40ca: $54
    ld [$24e0], sp                                ; $40cb: $08 $e0 $24
    ld c, b                                       ; $40ce: $48
    jr z, jr_0c9_40f9                             ; $40cf: $28 $28

    ld b, $28                                     ; $40d1: $06 $28
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    ld [bc], a                                    ; $40d5: $02
    ld [bc], a                                    ; $40d6: $02
    jr nz, jr_0c9_40d9                            ; $40d7: $20 $00

jr_0c9_40d9:
    jr nz, jr_0c9_40df                            ; $40d9: $20 $04

    inc b                                         ; $40db: $04
    add hl, bc                                    ; $40dc: $09
    add hl, bc                                    ; $40dd: $09
    ld d, e                                       ; $40de: $53

jr_0c9_40df:
    ld d, e                                       ; $40df: $53
    xor a                                         ; $40e0: $af
    nop                                           ; $40e1: $00
    xor a                                         ; $40e2: $af
    ld [hl], l                                    ; $40e3: $75
    ld a, a                                       ; $40e4: $7f
    ld [bc], a                                    ; $40e5: $02
    ld [bc], a                                    ; $40e6: $02
    ld [$1208], sp                                ; $40e7: $08 $08 $12
    nop                                           ; $40ea: $00
    ld [de], a                                    ; $40eb: $12
    and l                                         ; $40ec: $a5
    and l                                         ; $40ed: $a5
    ld e, a                                       ; $40ee: $5f
    ld e, a                                       ; $40ef: $5f
    ld [$d0ff], a                                 ; $40f0: $ea $ff $d0

Call_0c9_40f3:
    nop                                           ; $40f3: $00
    rst $38                                       ; $40f4: $ff
    xor c                                         ; $40f5: $a9
    cp $00                                        ; $40f6: $fe $00
    nop                                           ; $40f8: $00

jr_0c9_40f9:
    ld bc, $a701                                  ; $40f9: $01 $01 $a7

jr_0c9_40fc:
    ld [$faa7], sp                                ; $40fc: $08 $a7 $fa
    rst $38                                       ; $40ff: $ff

Jump_0c9_4100:
    jr nz, jr_0c9_4168                            ; $4100: $20 $66

    ld bc, $40bf                                  ; $4102: $01 $bf $40
    ld a, l                                       ; $4105: $7d
    nop                                           ; $4106: $00
    add d                                         ; $4107: $82
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    daa                                           ; $410a: $27
    daa                                           ; $410b: $27
    ld a, [$10ff]                                 ; $410c: $fa $ff $10
    add c                                         ; $410f: $81
    call nc, Call_0c9_7d00                        ; $4110: $d4 $00 $7d
    add d                                         ; $4113: $82
    rst $38                                       ; $4114: $ff
    nop                                           ; $4115: $00
    cp $01                                        ; $4116: $fe $01
    ld c, e                                       ; $4118: $4b
    ld bc, $ff00                                  ; $4119: $01 $00 $ff
    or l                                          ; $411c: $b5
    rst $38                                       ; $411d: $ff
    dec de                                        ; $411e: $1b
    rst $38                                       ; $411f: $ff
    or a                                          ; $4120: $b7
    ld a, a                                       ; $4121: $7f
    ld e, a                                       ; $4122: $5f
    nop                                           ; $4123: $00
    cp a                                          ; $4124: $bf
    sub a                                         ; $4125: $97
    ld a, a                                       ; $4126: $7f
    sbc a                                         ; $4127: $9f
    ld a, a                                       ; $4128: $7f
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    ldh [rP1], a                                  ; $412b: $e0 $00
    ldh [$5f], a                                  ; $412d: $e0 $5f
    rst $38                                       ; $412f: $ff
    ld [$4aff], sp                                ; $4130: $08 $ff $4a
    or l                                          ; $4133: $b5
    cp [hl]                                       ; $4134: $be
    ld b, $41                                     ; $4135: $06 $41
    rst $38                                       ; $4137: $ff
    nop                                           ; $4138: $00
    ld a, a                                       ; $4139: $7f
    add b                                         ; $413a: $80
    ld h, c                                       ; $413b: $61
    nop                                           ; $413c: $00
    ld [de], a                                    ; $413d: $12
    db $10                                        ; $413e: $10
    inc b                                         ; $413f: $04
    ld bc, $a8ff                                  ; $4140: $01 $ff $a8
    ld d, a                                       ; $4143: $57
    db $fd                                        ; $4144: $fd
    ld [bc], a                                    ; $4145: $02
    cp [hl]                                       ; $4146: $be
    ld b, c                                       ; $4147: $41
    xor h                                         ; $4148: $ac
    ld c, b                                       ; $4149: $48
    adc b                                         ; $414a: $88
    ld b, d                                       ; $414b: $42
    add hl, bc                                    ; $414c: $09
    ld bc, $8001                                  ; $414d: $01 $01 $80
    inc h                                         ; $4150: $24
    db $10                                        ; $4151: $10
    ld [$5208], sp                                ; $4152: $08 $08 $52
    inc b                                         ; $4155: $04
    ld d, d                                       ; $4156: $52
    dec b                                         ; $4157: $05
    dec b                                         ; $4158: $05
    dec bc                                        ; $4159: $0b
    dec bc                                        ; $415a: $0b
    jr nc, jr_0c9_4165                            ; $415b: $30 $08

    dec h                                         ; $415d: $25
    dec h                                         ; $415e: $25
    nop                                           ; $415f: $00
    dec bc                                        ; $4160: $0b
    dec bc                                        ; $4161: $0b
    ld d, [hl]                                    ; $4162: $56
    ld d, a                                       ; $4163: $57
    cp b                                          ; $4164: $b8

jr_0c9_4165:
    cp a                                          ; $4165: $bf
    ld h, l                                       ; $4166: $65
    ld a, d                                       ; $4167: $7a

jr_0c9_4168:
    nop                                           ; $4168: $00
    rst $08                                       ; $4169: $cf
    ldh a, [rNR22]                                ; $416a: $f0 $17
    rla                                           ; $416c: $17
    xor l                                         ; $416d: $ad
    xor a                                         ; $416e: $af
    ld [hl], l                                    ; $416f: $75
    ld a, [hl]                                    ; $4170: $7e
    ld [bc], a                                    ; $4171: $02
    and l                                         ; $4172: $a5
    ld a, [$f40b]                                 ; $4173: $fa $0b $f4
    and a                                         ; $4176: $a7
    ld e, b                                       ; $4177: $58
    ld [hl], d                                    ; $4178: $72
    add hl, bc                                    ; $4179: $09
    and d                                         ; $417a: $a2
    nop                                           ; $417b: $00
    rst $38                                       ; $417c: $ff
    db $10                                        ; $417d: $10
    rst $28                                       ; $417e: $ef
    ld l, d                                       ; $417f: $6a
    sub l                                         ; $4180: $95
    cp h                                          ; $4181: $bc
    ld b, e                                       ; $4182: $43
    or h                                          ; $4183: $b4
    nop                                           ; $4184: $00
    inc bc                                        ; $4185: $03
    ld c, [hl]                                    ; $4186: $4e
    ld bc, $0087                                  ; $4187: $01 $87 $00
    ld l, $01                                     ; $418a: $2e $01
    add $00                                       ; $418c: $c6 $00
    ld sp, hl                                     ; $418e: $f9
    sbc e                                         ; $418f: $9b
    db $f4                                        ; $4190: $f4
    ld b, [hl]                                    ; $4191: $46
    ld hl, sp-$15                                 ; $4192: $f8 $eb
    db $f4                                        ; $4194: $f4
    ld b, a                                       ; $4195: $47
    nop                                           ; $4196: $00
    ld hl, sp+$23                                 ; $4197: $f8 $23
    db $fc                                        ; $4199: $fc
    ld [hl], l                                    ; $419a: $75
    ld a, [$fd22]                                 ; $419b: $fa $22 $fd
    rst $10                                       ; $419e: $d7
    nop                                           ; $419f: $00

jr_0c9_41a0:
    jr z, jr_0c9_41a0                             ; $41a0: $28 $fe

    nop                                           ; $41a2: $00
    call nc, $a800                                ; $41a3: $d4 $00 $a8
    nop                                           ; $41a6: $00
    ld b, b                                       ; $41a7: $40
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    and d                                         ; $41aa: $a2
    nop                                           ; $41ab: $00
    push de                                       ; $41ac: $d5
    nop                                           ; $41ad: $00
    cp l                                          ; $41ae: $bd
    ld b, d                                       ; $41af: $42
    ld d, l                                       ; $41b0: $55
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    add e                                         ; $41b3: $83
    nop                                           ; $41b4: $00
    inc bc                                        ; $41b5: $03
    nop                                           ; $41b6: $00
    rlca                                          ; $41b7: $07
    nop                                           ; $41b8: $00
    ld c, l                                       ; $41b9: $4d
    nop                                           ; $41ba: $00
    ld [bc], a                                    ; $41bb: $02
    cp d                                          ; $41bc: $ba
    dec b                                         ; $41bd: $05
    db $e4                                        ; $41be: $e4
    dec de                                        ; $41bf: $1b
    ld b, b                                       ; $41c0: $40
    cp a                                          ; $41c1: $bf
    ld e, a                                       ; $41c2: $5f
    ld [$bfbf], sp                                ; $41c3: $08 $bf $bf
    ld a, a                                       ; $41c6: $7f
    rra                                           ; $41c7: $1f
    xor [hl]                                      ; $41c8: $ae
    nop                                           ; $41c9: $00
    rra                                           ; $41ca: $1f
    rst $38                                       ; $41cb: $ff
    ld d, a                                       ; $41cc: $57
    jr nc, @+$01                                  ; $41cd: $30 $ff

    dec sp                                        ; $41cf: $3b
    add $21                                       ; $41d0: $c6 $21
    db $10                                        ; $41d2: $10
    ld e, c                                       ; $41d3: $59
    inc b                                         ; $41d4: $04
    inc b                                         ; $41d5: $04
    ld de, $0011                                  ; $41d6: $11 $11 $00
    ld c, d                                       ; $41d9: $4a
    ld c, d                                       ; $41da: $4a
    inc de                                        ; $41db: $13
    inc de                                        ; $41dc: $13
    ld h, $27                                     ; $41dd: $26 $27
    ld e, h                                       ; $41df: $5c
    ld e, a                                       ; $41e0: $5f
    nop                                           ; $41e1: $00
    ld a, [hl-]                                   ; $41e2: $3a
    dec a                                         ; $41e3: $3d
    ld b, $07                                     ; $41e4: $06 $07
    sbc c                                         ; $41e6: $99
    sbc a                                         ; $41e7: $9f
    inc [hl]                                      ; $41e8: $34
    dec sp                                        ; $41e9: $3b
    nop                                           ; $41ea: $00
    set 6, h                                      ; $41eb: $cb $f4
    dec d                                         ; $41ed: $15
    ld [$d42b], a                                 ; $41ee: $ea $2b $d4
    ld d, a                                       ; $41f1: $57
    xor b                                         ; $41f2: $a8
    nop                                           ; $41f3: $00
    rst $38                                       ; $41f4: $ff
    nop                                           ; $41f5: $00
    or a                                          ; $41f6: $b7
    ret z                                         ; $41f7: $c8

    ld e, l                                       ; $41f8: $5d
    add b                                         ; $41f9: $80
    db $f4                                        ; $41fa: $f4
    nop                                           ; $41fb: $00
    nop                                           ; $41fc: $00
    jp c, $b700                                   ; $41fd: $da $00 $b7

    ld [$005f], sp                                ; $4200: $08 $5f $00
    cp e                                          ; $4203: $bb
    inc b                                         ; $4204: $04
    nop                                           ; $4205: $00
    ld [hl], h                                    ; $4206: $74
    dec bc                                        ; $4207: $0b
    push de                                       ; $4208: $d5
    nop                                           ; $4209: $00
    ld a, [bc]                                    ; $420a: $0a
    nop                                           ; $420b: $00
    ld d, $01                                     ; $420c: $16 $01
    nop                                           ; $420e: $00
    xor a                                         ; $420f: $af
    nop                                           ; $4210: $00
    db $fd                                        ; $4211: $fd
    nop                                           ; $4212: $00
    cp [hl]                                       ; $4213: $be
    ld b, c                                       ; $4214: $41
    ld [hl], h                                    ; $4215: $74
    adc e                                         ; $4216: $8b
    nop                                           ; $4217: $00
    and b                                         ; $4218: $a0
    ld e, a                                       ; $4219: $5f
    ld d, a                                       ; $421a: $57
    nop                                           ; $421b: $00
    ei                                            ; $421c: $fb
    inc b                                         ; $421d: $04
    sbc $01                                       ; $421e: $de $01
    nop                                           ; $4220: $00
    cp e                                          ; $4221: $bb
    ld b, h                                       ; $4222: $44
    db $f4                                        ; $4223: $f4
    dec bc                                        ; $4224: $0b
    xor d                                         ; $4225: $aa
    ld d, l                                       ; $4226: $55
    ld bc, $00ff                                  ; $4227: $01 $ff $00
    inc de                                        ; $422a: $13
    rst $38                                       ; $422b: $ff
    ld [hl], c                                    ; $422c: $71
    cp $3a                                        ; $422d: $fe $3a
    rst $38                                       ; $422f: $ff
    sub b                                         ; $4230: $90
    ld a, a                                       ; $4231: $7f
    ld bc, $ff3a                                  ; $4232: $01 $3a $ff
    ld e, l                                       ; $4235: $5d
    rst $38                                       ; $4236: $ff
    cp a                                          ; $4237: $bf
    rst $38                                       ; $4238: $ff
    ld a, e                                       ; $4239: $7b
    ld d, [hl]                                    ; $423a: $56
    ld [bc], a                                    ; $423b: $02
    nop                                           ; $423c: $00
    ld l, d                                       ; $423d: $6a
    sub l                                         ; $423e: $95
    add b                                         ; $423f: $80
    ld a, a                                       ; $4240: $7f
    inc b                                         ; $4241: $04
    rst $38                                       ; $4242: $ff
    dec hl                                        ; $4243: $2b
    rst $38                                       ; $4244: $ff
    nop                                           ; $4245: $00
    ld a, a                                       ; $4246: $7f
    rst $38                                       ; $4247: $ff
    rst $28                                       ; $4248: $ef
    rst $38                                       ; $4249: $ff
    sub $ff                                       ; $424a: $d6 $ff
    dec l                                         ; $424c: $2d
    rst $38                                       ; $424d: $ff
    nop                                           ; $424e: $00
    ld [hl+], a                                   ; $424f: $22
    rst $38                                       ; $4250: $ff
    rla                                           ; $4251: $17
    rst $38                                       ; $4252: $ff
    xor [hl]                                      ; $4253: $ae
    rst $38                                       ; $4254: $ff
    db $f4                                        ; $4255: $f4
    rst $38                                       ; $4256: $ff
    dec b                                         ; $4257: $05
    add sp, -$01                                  ; $4258: $e8 $ff
    ld d, d                                       ; $425a: $52
    rst $38                                       ; $425b: $ff
    add b                                         ; $425c: $80
    ld d, e                                       ; $425d: $53
    ld [bc], a                                    ; $425e: $02
    rst $38                                       ; $425f: $ff
    halt                                          ; $4260: $76
    ld bc, $a040                                  ; $4261: $01 $40 $a0
    ld e, e                                       ; $4264: $5b
    ld [bc], a                                    ; $4265: $02
    db $10                                        ; $4266: $10
    rst $28                                       ; $4267: $ef
    nop                                           ; $4268: $00
    rst $38                                       ; $4269: $ff
    add h                                         ; $426a: $84
    ld a, a                                       ; $426b: $7f
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    rst $38                                       ; $426e: $ff
    ld a, [bc]                                    ; $426f: $0a
    ld a, [bc]                                    ; $4270: $0a
    dec b                                         ; $4271: $05
    dec b                                         ; $4272: $05
    inc bc                                        ; $4273: $03
    inc bc                                        ; $4274: $03
    nop                                           ; $4275: $00
    inc h                                         ; $4276: $24
    daa                                           ; $4277: $27
    ld e, d                                       ; $4278: $5a
    ld e, a                                       ; $4279: $5f
    or h                                          ; $427a: $b4
    cp a                                          ; $427b: $bf
    ld h, d                                       ; $427c: $62
    ld a, l                                       ; $427d: $7d
    nop                                           ; $427e: $00
    push bc                                       ; $427f: $c5
    ld a, [$fad5]                                 ; $4280: $fa $d5 $fa
    and e                                         ; $4283: $a3
    db $fc                                        ; $4284: $fc
    ld d, [hl]                                    ; $4285: $56
    ld hl, sp+$00                                 ; $4286: $f8 $00
    adc a                                         ; $4288: $8f
    ldh a, [rNR52]                                ; $4289: $f0 $26
    ret c                                         ; $428b: $d8

    ld d, e                                       ; $428c: $53
    xor b                                         ; $428d: $a8
    cp [hl]                                       ; $428e: $be
    ld b, b                                       ; $428f: $40
    db $10                                        ; $4290: $10
    ei                                            ; $4291: $fb
    inc b                                         ; $4292: $04
    halt                                          ; $4293: $76
    ld e, $03                                     ; $4294: $1e $03
    ret nz                                        ; $4296: $c0

    nop                                           ; $4297: $00
    ld b, l                                       ; $4298: $45
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    adc [hl]                                      ; $429b: $8e
    nop                                           ; $429c: $00
    rla                                           ; $429d: $17
    nop                                           ; $429e: $00
    dec c                                         ; $429f: $0d
    ld [bc], a                                    ; $42a0: $02
    rla                                           ; $42a1: $17
    nop                                           ; $42a2: $00
    nop                                           ; $42a3: $00

jr_0c9_42a4:
    jp hl                                         ; $42a4: $e9


    rla                                           ; $42a5: $17
    ld [hl], b                                    ; $42a6: $70
    rrca                                          ; $42a7: $0f
    db $e4                                        ; $42a8: $e4
    rra                                           ; $42a9: $1f
    ld [hl], c                                    ; $42aa: $71
    rrca                                          ; $42ab: $0f
    nop                                           ; $42ac: $00
    ld [c], a                                     ; $42ad: $e2
    rra                                           ; $42ae: $1f
    push bc                                       ; $42af: $c5
    ccf                                           ; $42b0: $3f
    xor e                                         ; $42b1: $ab
    ld e, a                                       ; $42b2: $5f
    ld d, a                                       ; $42b3: $57
    cp a                                          ; $42b4: $bf
    sub b                                         ; $42b5: $90
    ld e, $03                                     ; $42b6: $1e $03
    rst $38                                       ; $42b8: $ff
    xor a                                         ; $42b9: $af
    jp nc, $f902                                  ; $42ba: $d2 $02 $f9

    cp $e0                                        ; $42bd: $fe $e0
    rst $38                                       ; $42bf: $ff
    nop                                           ; $42c0: $00
    jp $86fc                                      ; $42c1: $c3 $fc $86


    ld hl, sp-$51                                 ; $42c4: $f8 $af
    rst $38                                       ; $42c6: $ff
    ld a, h                                       ; $42c7: $7c
    rst $38                                       ; $42c8: $ff
    nop                                           ; $42c9: $00
    ld [c], a                                     ; $42ca: $e2
    db $fd                                        ; $42cb: $fd
    dec d                                         ; $42cc: $15
    ld [$906f], a                                 ; $42cd: $ea $6f $90
    push de                                       ; $42d0: $d5
    nop                                           ; $42d1: $00
    db $10                                        ; $42d2: $10
    ld [c], a                                     ; $42d3: $e2
    nop                                           ; $42d4: $00
    add c                                         ; $42d5: $81
    ld a, [bc]                                    ; $42d6: $0a
    inc bc                                        ; $42d7: $03
    db $10                                        ; $42d8: $10
    rst $28                                       ; $42d9: $ef
    xor b                                         ; $42da: $a8
    ld d, a                                       ; $42db: $57
    nop                                           ; $42dc: $00
    pop de                                        ; $42dd: $d1
    cpl                                           ; $42de: $2f
    ld h, d                                       ; $42df: $62
    sbc a                                         ; $42e0: $9f
    or l                                          ; $42e1: $b5
    ld c, a                                       ; $42e2: $4f
    db $e3                                        ; $42e3: $e3
    rra                                           ; $42e4: $1f
    nop                                           ; $42e5: $00
    rst $00                                       ; $42e6: $c7
    ccf                                           ; $42e7: $3f
    ld e, b                                       ; $42e8: $58
    rst $38                                       ; $42e9: $ff
    or b                                          ; $42ea: $b0
    rst $38                                       ; $42eb: $ff
    ld h, b                                       ; $42ec: $60
    rst $38                                       ; $42ed: $ff
    ld d, [hl]                                    ; $42ee: $56
    call nc, $0084                                ; $42ef: $d4 $84 $00
    ld b, b                                       ; $42f2: $40
    adc b                                         ; $42f3: $88
    nop                                           ; $42f4: $00
    ld b, d                                       ; $42f5: $42
    ld e, [hl]                                    ; $42f6: $5e
    inc bc                                        ; $42f7: $03
    jp nz, $200a                                  ; $42f8: $c2 $0a $20

    adc b                                         ; $42fb: $88
    sub d                                         ; $42fc: $92
    db $10                                        ; $42fd: $10
    ld bc, $03ff                                  ; $42fe: $01 $ff $03
    dec a                                         ; $4301: $3d
    ld [hl+], a                                   ; $4302: $22
    rrca                                          ; $4303: $0f
    rst $38                                       ; $4304: $ff
    ccf                                           ; $4305: $3f
    add b                                         ; $4306: $80
    ld h, $03                                     ; $4307: $26 $03
    rst $28                                       ; $4309: $ef
    ldh a, [$cf]                                  ; $430a: $f0 $cf
    ldh a, [rP1]                                  ; $430c: $f0 $00
    rst $38                                       ; $430e: $ff
    ld [bc], a                                    ; $430f: $02
    adc b                                         ; $4310: $88
    add hl, bc                                    ; $4311: $09
    inc bc                                        ; $4312: $03
    ldh a, [rIE]                                  ; $4313: $f0 $ff
    db $fc                                        ; $4315: $fc
    ld [hl], $03                                  ; $4316: $36 $03
    rst $08                                       ; $4318: $cf
    ccf                                           ; $4319: $3f
    rst $20                                       ; $431a: $e7
    ld c, b                                       ; $431b: $48
    rra                                           ; $431c: $1f
    ldh a, [$0a]                                  ; $431d: $f0 $0a
    inc b                                         ; $431f: $04
    ei                                            ; $4320: $fb
    ld [hl-], a                                   ; $4321: $32
    jr jr_0c9_42a4                                ; $4322: $18 $80

    rst $38                                       ; $4324: $ff
    ret nz                                        ; $4325: $c0

    nop                                           ; $4326: $00
    rst $38                                       ; $4327: $ff
    dec bc                                        ; $4328: $0b
    db $f4                                        ; $4329: $f4
    xor l                                         ; $432a: $ad
    ret nc                                        ; $432b: $d0

    ld e, [hl]                                    ; $432c: $5e
    and b                                         ; $432d: $a0
    jr jr_0c9_4330                                ; $432e: $18 $00

jr_0c9_4330:
    ldh [$28], a                                  ; $4330: $e0 $28
    ret nc                                        ; $4332: $d0

    or h                                          ; $4333: $b4
    ret nz                                        ; $4334: $c0

    ld a, [de]                                    ; $4335: $1a
    ldh [$95], a                                  ; $4336: $e0 $95
    ld [$afe0], sp                                ; $4338: $08 $e0 $af
    nop                                           ; $433b: $00
    dec b                                         ; $433c: $05
    sub b                                         ; $433d: $90
    ld bc, $0015                                  ; $433e: $01 $15 $00
    dec hl                                        ; $4341: $2b
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    ld a, a                                       ; $4344: $7f
    nop                                           ; $4345: $00
    cp h                                          ; $4346: $bc
    inc bc                                        ; $4347: $03
    ld l, b                                       ; $4348: $68
    rla                                           ; $4349: $17
    xor [hl]                                      ; $434a: $ae
    nop                                           ; $434b: $00
    ld bc, $27d9                                  ; $434c: $01 $d9 $27
    ld [hl], d                                    ; $434f: $72
    rrca                                          ; $4350: $0f
    pop de                                        ; $4351: $d1
    cpl                                           ; $4352: $2f
    and a                                         ; $4353: $a7
    nop                                           ; $4354: $00
    ld e, a                                       ; $4355: $5f
    ld a, [bc]                                    ; $4356: $0a
    rst $38                                       ; $4357: $ff
    inc [hl]                                      ; $4358: $34
    rst $38                                       ; $4359: $ff
    ld l, b                                       ; $435a: $68
    rst $30                                       ; $435b: $f7
    dec a                                         ; $435c: $3d
    ld [$7aff], sp                                ; $435d: $08 $ff $7a
    rst $38                                       ; $4360: $ff
    db $fd                                        ; $4361: $fd
    ld [de], a                                    ; $4362: $12
    ld bc, $ff46                                  ; $4363: $01 $46 $ff
    adc e                                         ; $4366: $8b
    nop                                           ; $4367: $00
    rst $38                                       ; $4368: $ff
    dec h                                         ; $4369: $25
    rst $18                                       ; $436a: $df
    ld b, e                                       ; $436b: $43
    cp a                                          ; $436c: $bf
    dec e                                         ; $436d: $1d
    ldh [$36], a                                  ; $436e: $e0 $36
    nop                                           ; $4370: $00
    ret z                                         ; $4371: $c8

    ld c, d                                       ; $4372: $4a
    and b                                         ; $4373: $a0
    inc a                                         ; $4374: $3c
    ret nz                                        ; $4375: $c0

    sub h                                         ; $4376: $94
    ldh [$3c], a                                  ; $4377: $e0 $3c
    ld [bc], a                                    ; $4379: $02
    ret nz                                        ; $437a: $c0

    ld d, $e8                                     ; $437b: $16 $e8
    adc l                                         ; $437d: $8d
    ldh a, [$03]                                  ; $437e: $f0 $03
    ld b, b                                       ; $4380: $40
    db $10                                        ; $4381: $10
    rlca                                          ; $4382: $07
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    ld a, [bc]                                    ; $4385: $0a
    ld bc, $0007                                  ; $4386: $01 $07 $00
    rrca                                          ; $4389: $0f
    nop                                           ; $438a: $00
    inc c                                         ; $438b: $0c
    nop                                           ; $438c: $00
    ld bc, $1f6a                                  ; $438d: $01 $6a $1f
    add $3f                                       ; $4390: $c6 $3f
    ld h, h                                       ; $4392: $64
    sbc a                                         ; $4393: $9f
    ret z                                         ; $4394: $c8

    nop                                           ; $4395: $00
    ccf                                           ; $4396: $3f
    ld l, h                                       ; $4397: $6c
    rra                                           ; $4398: $1f
    ret z                                         ; $4399: $c8

    ccf                                           ; $439a: $3f
    adc b                                         ; $439b: $88
    ld a, a                                       ; $439c: $7f
    jp z, Jump_000_3f43                           ; $439d: $ca $43 $3f

    ld b, h                                       ; $43a0: $44
    add hl, bc                                    ; $43a1: $09
    nop                                           ; $43a2: $00
    rst $38                                       ; $43a3: $ff
    ld [$b2f7], sp                                ; $43a4: $08 $f7 $b2
    ld [$0b7c], sp                                ; $43a7: $08 $7c $0b
    ld b, b                                       ; $43aa: $40
    rlca                                          ; $43ab: $07
    ld [bc], a                                    ; $43ac: $02
    nop                                           ; $43ad: $00
    rrca                                          ; $43ae: $0f
    rst $38                                       ; $43af: $ff
    inc c                                         ; $43b0: $0c
    rst $38                                       ; $43b1: $ff
    sbc [hl]                                      ; $43b2: $9e
    ld a, l                                       ; $43b3: $7d
    nop                                           ; $43b4: $00
    dec de                                        ; $43b5: $1b
    db $fc                                        ; $43b6: $fc
    add hl, de                                    ; $43b7: $19
    db $fc                                        ; $43b8: $fc
    ld a, [de]                                    ; $43b9: $1a
    db $fc                                        ; $43ba: $fc
    rst $00                                       ; $43bb: $c7
    ld hl, sp+$00                                 ; $43bc: $f8 $00
    xor a                                         ; $43be: $af
    ldh a, [rRP]                                  ; $43bf: $f0 $56
    jp hl                                         ; $43c1: $e9


    ccf                                           ; $43c2: $3f
    ret nz                                        ; $43c3: $c0

    ld [hl], a                                    ; $43c4: $77
    add b                                         ; $43c5: $80
    nop                                           ; $43c6: $00
    db $eb                                        ; $43c7: $eb
    nop                                           ; $43c8: $00
    ld d, l                                       ; $43c9: $55
    nop                                           ; $43ca: $00
    ld bc, $e700                                  ; $43cb: $01 $00 $e7
    rra                                           ; $43ce: $1f
    nop                                           ; $43cf: $00
    ld c, e                                       ; $43d0: $4b
    cp a                                          ; $43d1: $bf
    add a                                         ; $43d2: $87
    ld a, a                                       ; $43d3: $7f
    ld c, e                                       ; $43d4: $4b
    cp a                                          ; $43d5: $bf
    sub h                                         ; $43d6: $94
    ld a, a                                       ; $43d7: $7f
    nop                                           ; $43d8: $00
    inc bc                                        ; $43d9: $03
    db $fc                                        ; $43da: $fc
    add a                                         ; $43db: $87
    ld a, b                                       ; $43dc: $78
    sbc a                                         ; $43dd: $9f
    ld h, b                                       ; $43de: $60
    db $e4                                        ; $43df: $e4
    ei                                            ; $43e0: $fb
    ld b, b                                       ; $43e1: $40
    ldh [$ce], a                                  ; $43e2: $e0 $ce
    nop                                           ; $43e4: $00
    ldh a, [rIE]                                  ; $43e5: $f0 $ff
    ld hl, sp-$01                                 ; $43e7: $f8 $ff
    cp b                                          ; $43e9: $b8
    ld a, a                                       ; $43ea: $7f
    nop                                           ; $43eb: $00
    ld hl, sp+$3f                                 ; $43ec: $f8 $3f
    ld hl, sp+$3f                                 ; $43ee: $f8 $3f
    xor d                                         ; $43f0: $aa
    ret nc                                        ; $43f1: $d0

    ld d, a                                       ; $43f2: $57
    add sp, $00                                   ; $43f3: $e8 $00
    inc hl                                        ; $43f5: $23
    db $fc                                        ; $43f6: $fc
    db $10                                        ; $43f7: $10
    rst $38                                       ; $43f8: $ff
    adc d                                         ; $43f9: $8a
    ld a, a                                       ; $43fa: $7f
    ld b, l                                       ; $43fb: $45
    cp a                                          ; $43fc: $bf
    nop                                           ; $43fd: $00
    srl a                                         ; $43fe: $cb $3f
    and l                                         ; $4400: $a5
    ld e, a                                       ; $4401: $5f
    jp nz, $e53f                                  ; $4402: $c2 $3f $e5

    rra                                           ; $4405: $1f
    nop                                           ; $4406: $00
    rrca                                          ; $4407: $0f
    rst $38                                       ; $4408: $ff
    ld l, $ff                                     ; $4409: $2e $ff
    ld e, h                                       ; $440b: $5c
    rst $38                                       ; $440c: $ff
    ld l, b                                       ; $440d: $68
    rst $38                                       ; $440e: $ff
    nop                                           ; $440f: $00
    db $d3                                        ; $4410: $d3
    db $fc                                        ; $4411: $fc
    and l                                         ; $4412: $a5
    ld a, [$fea1]                                 ; $4413: $fa $a1 $fe
    ld d, d                                       ; $4416: $52
    db $ed                                        ; $4417: $ed
    db $10                                        ; $4418: $10
    add l                                         ; $4419: $85
    ld a, [$e42f]                                 ; $441a: $fa $2f $e4
    nop                                           ; $441d: $00
    or l                                          ; $441e: $b5
    ld b, b                                       ; $441f: $40
    ld a, [$2000]                                 ; $4420: $fa $00 $20
    ret nc                                        ; $4423: $d0

    nop                                           ; $4424: $00
    ld c, h                                       ; $4425: $4c
    add hl, bc                                    ; $4426: $09
    ld l, b                                       ; $4427: $68
    rla                                           ; $4428: $17
    db $f4                                        ; $4429: $f4
    dec bc                                        ; $442a: $0b
    cp d                                          ; $442b: $ba
    ld [$5c05], sp                                ; $442c: $08 $05 $5c
    inc bc                                        ; $442f: $03
    ld l, $a4                                     ; $4430: $2e $a4
    nop                                           ; $4432: $00
    or a                                          ; $4433: $b7
    add sp, $4f                                   ; $4434: $e8 $4f
    nop                                           ; $4436: $00
    ldh a, [$e6]                                  ; $4437: $f0 $e6
    ld hl, sp+$33                                 ; $4439: $f8 $33
    db $fc                                        ; $443b: $fc
    ld e, c                                       ; $443c: $59
    cp $34                                        ; $443d: $fe $34
    nop                                           ; $443f: $00
    rst $38                                       ; $4440: $ff
    add hl, de                                    ; $4441: $19
    cp $4c                                        ; $4442: $fe $4c
    cp a                                          ; $4444: $bf
    rla                                           ; $4445: $17
    nop                                           ; $4446: $00
    xor a                                         ; $4447: $af
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    db $db                                        ; $444a: $db
    inc b                                         ; $444b: $04
    ld [hl], l                                    ; $444c: $75
    ld a, [bc]                                    ; $444d: $0a
    ld a, [$d405]                                 ; $444e: $fa $05 $d4
    nop                                           ; $4451: $00
    dec hl                                        ; $4452: $2b
    and d                                         ; $4453: $a2
    ld e, a                                       ; $4454: $5f
    dec b                                         ; $4455: $05
    rst $38                                       ; $4456: $ff
    xor b                                         ; $4457: $a8
    ld e, a                                       ; $4458: $5f
    ld c, b                                       ; $4459: $48
    nop                                           ; $445a: $00
    cp a                                          ; $445b: $bf
    sbc b                                         ; $445c: $98
    ld a, a                                       ; $445d: $7f
    ld c, b                                       ; $445e: $48
    rst $38                                       ; $445f: $ff
    jr @+$01                                      ; $4460: $18 $ff

    ld c, h                                       ; $4462: $4c
    ld a, $ff                                     ; $4463: $3e $ff
    cp b                                          ; $4465: $b8
    ld b, [hl]                                    ; $4466: $46
    ld bc, $021e                                  ; $4467: $01 $1e $02
    ld a, $01                                     ; $446a: $3e $01
    inc a                                         ; $446c: $3c
    add hl, bc                                    ; $446d: $09
    ret z                                         ; $446e: $c8

    jr @+$1a                                      ; $446f: $18 $18

jr_0c9_4471:
    ld [bc], a                                    ; $4471: $02
    db $fc                                        ; $4472: $fc
    jr jr_0c9_4471                                ; $4473: $18 $fc

    dec e                                         ; $4475: $1d
    cp $1f                                        ; $4476: $fe $1f
    ld [hl], d                                    ; $4478: $72
    ld bc, $900f                                  ; $4479: $01 $0f $90
    call z, Call_000_2700                         ; $447c: $cc $00 $27
    rst $18                                       ; $447f: $df
    ld d, b                                       ; $4480: $50
    dec bc                                        ; $4481: $0b
    ld bc, $0700                                  ; $4482: $01 $00 $07
    add b                                         ; $4485: $80
    nop                                           ; $4486: $00
    sbc e                                         ; $4487: $9b
    call nz, $e8f6                                ; $4488: $c4 $f6 $e8
    ld [$f6f4], a                                 ; $448b: $ea $f4 $f6
    ld hl, sp+$18                                 ; $448e: $f8 $18
    ld a, [$c500]                                 ; $4490: $fa $00 $c5
    ld h, e                                       ; $4493: $63
    dec bc                                        ; $4494: $0b
    ret z                                         ; $4495: $c8

    dec bc                                        ; $4496: $0b
    ld bc, $0305                                  ; $4497: $01 $05 $03
    inc b                                         ; $449a: $04
    rlca                                          ; $449b: $07
    rrca                                          ; $449c: $0f
    ld hl, sp+$3f                                 ; $449d: $f8 $3f
    ld a, c                                       ; $449f: $79
    or [hl]                                       ; $44a0: $b6
    nop                                           ; $44a1: $00
    jr c, jr_0c9_4523                             ; $44a2: $38 $7f

    ld d, b                                       ; $44a4: $50
    ld [hl], b                                    ; $44a5: $70
    sub h                                         ; $44a6: $94
    ld bc, $02e0                                  ; $44a7: $01 $e0 $02
    nop                                           ; $44aa: $00
    ld h, a                                       ; $44ab: $67
    sbc a                                         ; $44ac: $9f
    jp z, $103f                                   ; $44ad: $ca $3f $10

    sub l                                         ; $44b0: $95
    ld a, a                                       ; $44b1: $7f
    ld a, [bc]                                    ; $44b2: $0a
    or b                                          ; $44b3: $b0
    nop                                           ; $44b4: $00
    jr c, @+$01                                   ; $44b5: $38 $ff

    or c                                          ; $44b7: $b1
    cp $00                                        ; $44b8: $fe $00
    ld h, [hl]                                    ; $44ba: $66
    ld hl, sp+$0a                                 ; $44bb: $f8 $0a
    db $f4                                        ; $44bd: $f4
    rla                                           ; $44be: $17
    add sp, $2e                                   ; $44bf: $e8 $2e
    ret nc                                        ; $44c1: $d0

    inc b                                         ; $44c2: $04
    ld e, e                                       ; $44c3: $5b
    and b                                         ; $44c4: $a0
    ld l, $c0                                     ; $44c5: $2e $c0
    db $fd                                        ; $44c7: $fd
    sbc [hl]                                      ; $44c8: $9e
    inc bc                                        ; $44c9: $03
    rst $30                                       ; $44ca: $f7
    nop                                           ; $44cb: $00
    ld h, b                                       ; $44cc: $60
    and b                                         ; $44cd: $a0
    ld a, [hl+]                                   ; $44ce: $2a
    inc bc                                        ; $44cf: $03
    and l                                         ; $44d0: $a5
    inc de                                        ; $44d1: $13
    nop                                           ; $44d2: $00
    dec c                                         ; $44d3: $0d
    nop                                           ; $44d4: $00
    ld d, a                                       ; $44d5: $57
    nop                                           ; $44d6: $00
    ld d, b                                       ; $44d7: $50
    xor [hl]                                      ; $44d8: $ae
    ld e, b                                       ; $44d9: $58
    ld de, $a40b                                  ; $44da: $11 $0b $a4
    ld bc, $000f                                  ; $44dd: $01 $0f $00
    ld e, a                                       ; $44e0: $5f
    nop                                           ; $44e1: $00
    inc b                                         ; $44e2: $04
    or h                                          ; $44e3: $b4
    inc bc                                        ; $44e4: $03
    db $fd                                        ; $44e5: $fd
    ld [bc], a                                    ; $44e6: $02
    sub [hl]                                      ; $44e7: $96
    inc a                                         ; $44e8: $3c
    nop                                           ; $44e9: $00
    sub a                                         ; $44ea: $97
    ld l, a                                       ; $44eb: $6f
    ld d, b                                       ; $44ec: $50
    ld b, e                                       ; $44ed: $43
    inc h                                         ; $44ee: $24
    ld bc, $a84e                                  ; $44ef: $01 $4e $a8
    nop                                           ; $44f2: $00
    ld sp, $53fe                                  ; $44f3: $31 $fe $53
    rst $38                                       ; $44f6: $ff
    nop                                           ; $44f7: $00
    xor l                                         ; $44f8: $ad
    rst $38                                       ; $44f9: $ff
    ld a, [$d1ff]                                 ; $44fa: $fa $ff $d1
    cp $8a                                        ; $44fd: $fe $8a
    push af                                       ; $44ff: $f5
    ld bc, $ea15                                  ; $4500: $01 $15 $ea
    xor a                                         ; $4503: $af
    ld d, b                                       ; $4504: $50
    ld a, l                                       ; $4505: $7d
    add b                                         ; $4506: $80
    xor b                                         ; $4507: $a8
    ld a, [bc]                                    ; $4508: $0a
    ld bc, $0e00                                  ; $4509: $01 $00 $0e
    rst $38                                       ; $450c: $ff
    ld b, l                                       ; $450d: $45
    cp a                                          ; $450e: $bf
    xor d                                         ; $450f: $aa
    ld e, a                                       ; $4510: $5f
    ld c, e                                       ; $4511: $4b
    scf                                           ; $4512: $37
    ld bc, $1fe5                                  ; $4513: $01 $e5 $1f
    ld d, c                                       ; $4516: $51
    cpl                                           ; $4517: $2f
    nop                                           ; $4518: $00
    rst $38                                       ; $4519: $ff
    ld c, b                                       ; $451a: $48
    ld [hl], h                                    ; $451b: $74
    ld [bc], a                                    ; $451c: $02
    and d                                         ; $451d: $a2
    add h                                         ; $451e: $84
    add hl, de                                    ; $451f: $19
    add b                                         ; $4520: $80
    ld b, h                                       ; $4521: $44
    ld [bc], a                                    ; $4522: $02

jr_0c9_4523:
    inc bc                                        ; $4523: $03
    rst $38                                       ; $4524: $ff
    ld bc, $042e                                  ; $4525: $01 $2e $04
    nop                                           ; $4528: $00
    ld [hl+], a                                   ; $4529: $22
    rst $38                                       ; $452a: $ff
    add d                                         ; $452b: $82
    ld c, d                                       ; $452c: $4a
    ld [hl+], a                                   ; $452d: $22
    db $fc                                        ; $452e: $fc
    ld hl, sp-$06                                 ; $452f: $f8 $fa
    dec hl                                        ; $4531: $2b
    ld [bc], a                                    ; $4532: $02
    ccf                                           ; $4533: $3f
    pop bc                                        ; $4534: $c1
    ld b, d                                       ; $4535: $42
    ld [bc], a                                    ; $4536: $02
    ld a, [de]                                    ; $4537: $1a
    dec c                                         ; $4538: $0d
    ld bc, $0ffe                                  ; $4539: $01 $fe $0f

Jump_0c9_453c:
    rra                                           ; $453c: $1f
    ld e, a                                       ; $453d: $5f
    ld c, e                                       ; $453e: $4b
    ld [bc], a                                    ; $453f: $02
    ld l, d                                       ; $4540: $6a
    db $fc                                        ; $4541: $fc
    ld b, d                                       ; $4542: $42
    ld [bc], a                                    ; $4543: $02
    sub a                                         ; $4544: $97
    inc e                                         ; $4545: $1c
    call nz, Call_000_30fa                        ; $4546: $c4 $fa $30
    ld b, b                                       ; $4549: $40
    inc a                                         ; $454a: $3c
    dec d                                         ; $454b: $15
    res 0, b                                      ; $454c: $cb $80
    jp c, $9703                                   ; $454e: $da $03 $97

    add sp, $2d                                   ; $4551: $e8 $2d
    ret nc                                        ; $4553: $d0

    ld a, [de]                                    ; $4554: $1a
    ldh [$b4], a                                  ; $4555: $e0 $b4
    nop                                           ; $4557: $00
    ld b, b                                       ; $4558: $40
    ld a, b                                       ; $4559: $78
    add b                                         ; $455a: $80
    or b                                          ; $455b: $b0
    ld b, b                                       ; $455c: $40
    db $db                                        ; $455d: $db
    nop                                           ; $455e: $00
    xor [hl]                                      ; $455f: $ae
    nop                                           ; $4560: $00
    ld bc, $02fd                                  ; $4561: $01 $fd $02

jr_0c9_4564:
    ld e, d                                       ; $4564: $5a
    dec b                                         ; $4565: $05
    cp l                                          ; $4566: $bd
    ld [bc], a                                    ; $4567: $02
    ld a, d                                       ; $4568: $7a
    nop                                           ; $4569: $00
    dec b                                         ; $456a: $05
    inc [hl]                                      ; $456b: $34
    dec bc                                        ; $456c: $0b
    ld h, b                                       ; $456d: $60
    rra                                           ; $456e: $1f
    ei                                            ; $456f: $fb
    inc b                                         ; $4570: $04
    rst $18                                       ; $4571: $df
    ld bc, $7a20                                  ; $4572: $01 $20 $7a
    add l                                         ; $4575: $85
    call nc, $a92b                                ; $4576: $d4 $2b $a9
    ld d, [hl]                                    ; $4579: $56
    inc l                                         ; $457a: $2c
    inc bc                                        ; $457b: $03
    add d                                         ; $457c: $82
    and [hl]                                      ; $457d: $a6
    dec b                                         ; $457e: $05
    ld [$5115], a                                 ; $457f: $ea $15 $51
    xor a                                         ; $4582: $af
    add e                                         ; $4583: $83
    ld h, d                                       ; $4584: $62
    inc bc                                        ; $4585: $03
    ld a, [hl+]                                   ; $4586: $2a
    nop                                           ; $4587: $00
    rst $38                                       ; $4588: $ff
    ld d, h                                       ; $4589: $54
    rst $38                                       ; $458a: $ff
    xor b                                         ; $458b: $a8
    rst $38                                       ; $458c: $ff
    pop af                                        ; $458d: $f1
    cp $42                                        ; $458e: $fe $42
    nop                                           ; $4590: $00
    db $fd                                        ; $4591: $fd
    adc e                                         ; $4592: $8b
    db $f4                                        ; $4593: $f4
    dec d                                         ; $4594: $15
    add sp, $2f                                   ; $4595: $e8 $2f
    ret nc                                        ; $4597: $d0

    or h                                          ; $4598: $b4
    nop                                           ; $4599: $00
    ld b, b                                       ; $459a: $40
    ld e, b                                       ; $459b: $58
    and b                                         ; $459c: $a0
    or b                                          ; $459d: $b0
    ld b, b                                       ; $459e: $40
    ld h, c                                       ; $459f: $61
    add b                                         ; $45a0: $80
    ld [$0020], a                                 ; $45a1: $ea $20 $00
    pop de                                        ; $45a4: $d1

Jump_0c9_45a5:
    db $f4                                        ; $45a5: $f4
    db $10                                        ; $45a6: $10
    ld [$5400], sp                                ; $45a7: $08 $00 $54
    nop                                           ; $45aa: $00
    cp d                                          ; $45ab: $ba
    nop                                           ; $45ac: $00
    nop                                           ; $45ad: $00
    rst $30                                       ; $45ae: $f7
    nop                                           ; $45af: $00
    and $1b                                       ; $45b0: $e6 $1b
    ld d, d                                       ; $45b2: $52
    dec c                                         ; $45b3: $0d
    ld hl, sp+$00                                 ; $45b4: $f8 $00
    rlca                                          ; $45b6: $07
    ld d, b                                       ; $45b7: $50
    rrca                                          ; $45b8: $0f
    ld sp, hl                                     ; $45b9: $f9

Jump_0c9_45ba:
    ld b, $70                                     ; $45ba: $06 $70
    rrca                                          ; $45bc: $0f
    jp z, Jump_000_1511                           ; $45bd: $ca $11 $15

    ldh a, [rIF]                                  ; $45c0: $f0 $0f
    ld hl, sp+$0a                                 ; $45c2: $f8 $0a
    and h                                         ; $45c4: $a4
    rst $38                                       ; $45c5: $ff
    ld [hl], b                                    ; $45c6: $70
    ld l, $01                                     ; $45c7: $2e $01
    ld e, d                                       ; $45c9: $5a
    ld e, h                                       ; $45ca: $5c
    and $01                                       ; $45cb: $e6 $01
    rla                                           ; $45cd: $17
    ret nz                                        ; $45ce: $c0

    dec d                                         ; $45cf: $15
    ret nc                                        ; $45d0: $d0

    ld a, [bc]                                    ; $45d1: $0a
    ld b, h                                       ; $45d2: $44
    call nc, $8102                                ; $45d3: $d4 $02 $81
    ret z                                         ; $45d6: $c8

    inc d                                         ; $45d7: $14
    inc bc                                        ; $45d8: $03
    dec a                                         ; $45d9: $3d
    dec e                                         ; $45da: $1d
    jr z, @-$07                                   ; $45db: $28 $f7

    ld b, l                                       ; $45dd: $45
    dec e                                         ; $45de: $1d
    db $10                                        ; $45df: $10
    rst $28                                       ; $45e0: $ef
    ld l, b                                       ; $45e1: $68
    jr nz, jr_0c9_4564                            ; $45e2: $20 $80

    ldh a, [rLY]                                  ; $45e4: $f0 $44
    ld bc, $00c0                                  ; $45e6: $01 $c0 $00
    ldh [rP1], a                                  ; $45e9: $e0 $00
    ld e, b                                       ; $45eb: $58
    ld [bc], a                                    ; $45ec: $02
    add b                                         ; $45ed: $80
    xor l                                         ; $45ee: $ad
    ld b, b                                       ; $45ef: $40
    ld e, a                                       ; $45f0: $5f
    and b                                         ; $45f1: $a0
    dec a                                         ; $45f2: $3d
    sbc b                                         ; $45f3: $98
    nop                                           ; $45f4: $00
    rst $28                                       ; $45f5: $ef
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    ld e, l                                       ; $45f8: $5d
    ld [bc], a                                    ; $45f9: $02
    ld a, [$b405]                                 ; $45fa: $fa $05 $b4
    dec bc                                        ; $45fd: $0b
    ld a, d                                       ; $45fe: $7a
    dec bc                                        ; $45ff: $0b
    dec b                                         ; $4600: $05
    and b                                         ; $4601: $a0
    ld e, a                                       ; $4602: $5f
    dec bc                                        ; $4603: $0b
    ldh [$03], a                                  ; $4604: $e0 $03
    ld l, $84                                     ; $4606: $2e $84
    inc bc                                        ; $4608: $03
    sub b                                         ; $4609: $90
    ld [$2001], sp                                ; $460a: $08 $01 $20
    rst $38                                       ; $460d: $ff
    ld h, d                                       ; $460e: $62
    db $fd                                        ; $460f: $fd
    ld [$f0fd], a                                 ; $4610: $ea $fd $f0
    ld d, [hl]                                    ; $4613: $56
    dec b                                         ; $4614: $05
    nop                                           ; $4615: $00
    ld d, h                                       ; $4616: $54
    rst $38                                       ; $4617: $ff
    jr z, @+$01                                   ; $4618: $28 $ff

    dec d                                         ; $461a: $15
    cp $82                                        ; $461b: $fe $82
    ld a, a                                       ; $461d: $7f
    nop                                           ; $461e: $00
    ld c, c                                       ; $461f: $49
    cp a                                          ; $4620: $bf
    jp c, $f500                                   ; $4621: $da $00 $f5

    nop                                           ; $4624: $00
    ld e, e                                       ; $4625: $5b
    add b                                         ; $4626: $80
    nop                                           ; $4627: $00
    cp l                                          ; $4628: $bd
    ld b, d                                       ; $4629: $42
    halt                                          ; $462a: $76
    adc c                                         ; $462b: $89
    ld e, a                                       ; $462c: $5f
    and b                                         ; $462d: $a0
    ld a, [hl+]                                   ; $462e: $2a
    push de                                       ; $462f: $d5
    ld a, [bc]                                    ; $4630: $0a
    dec d                                         ; $4631: $15
    ld [$00fd], a                                 ; $4632: $ea $fd $00
    jp nz, $0104                                  ; $4635: $c2 $04 $01

    ld c, d                                       ; $4638: $4a
    ld b, $55                                     ; $4639: $06 $55
    ld [bc], a                                    ; $463b: $02
    ld b, c                                       ; $463c: $41
    cp a                                          ; $463d: $bf
    adc b                                         ; $463e: $88
    ld a, a                                       ; $463f: $7f
    inc hl                                        ; $4640: $23
    rst $18                                       ; $4641: $df
    sbc h                                         ; $4642: $9c
    dec bc                                        ; $4643: $0b
    xor e                                         ; $4644: $ab
    ld [bc], a                                    ; $4645: $02
    ld e, a                                       ; $4646: $5f
    rla                                           ; $4647: $17
    rst $38                                       ; $4648: $ff
    inc a                                         ; $4649: $3c
    rst $38                                       ; $464a: $ff
    ld a, c                                       ; $464b: $79
    ld h, $04                                     ; $464c: $26 $04
    ld sp, hl                                     ; $464e: $f9

jr_0c9_464f:
    jr z, jr_0c9_464f                             ; $464f: $28 $fe

    xor a                                         ; $4651: $af
    ld [$d200], sp                                ; $4652: $08 $00 $d2
    adc [hl]                                      ; $4655: $8e
    dec b                                         ; $4656: $05
    dec bc                                        ; $4657: $0b
    db $f4                                        ; $4658: $f4
    ld d, a                                       ; $4659: $57
    nop                                           ; $465a: $00
    xor b                                         ; $465b: $a8
    cp l                                          ; $465c: $bd
    ld b, b                                       ; $465d: $40
    ld l, b                                       ; $465e: $68
    add b                                         ; $465f: $80
    db $e4                                        ; $4660: $e4
    rst $38                                       ; $4661: $ff
    ld [hl], d                                    ; $4662: $72
    xor c                                         ; $4663: $a9
    sub d                                         ; $4664: $92
    ld bc, $3817                                  ; $4665: $01 $17 $38
    ld [bc], a                                    ; $4668: $02
    push de                                       ; $4669: $d5
    ld a, b                                       ; $466a: $78
    ld [bc], a                                    ; $466b: $02
    xor l                                         ; $466c: $ad
    ld [bc], a                                    ; $466d: $02
    ld [hl], b                                    ; $466e: $70
    ld c, $a8                                     ; $466f: $0e $a8
    cp d                                          ; $4671: $ba
    dec bc                                        ; $4672: $0b
    rst $38                                       ; $4673: $ff
    ld h, d                                       ; $4674: $62
    inc b                                         ; $4675: $04
    cp e                                          ; $4676: $bb
    db $e4                                        ; $4677: $e4
    inc b                                         ; $4678: $04
    dec bc                                        ; $4679: $0b
    ldh a, [rNR52]                                ; $467a: $f0 $26
    ld [$a1d9], sp                                ; $467c: $08 $d9 $a1
    cp $d0                                        ; $467f: $fe $d0
    ld d, [hl]                                    ; $4681: $56
    inc bc                                        ; $4682: $03
    cpl                                           ; $4683: $2f
    rst $38                                       ; $4684: $ff
    add a                                         ; $4685: $87
    nop                                           ; $4686: $00
    ld a, a                                       ; $4687: $7f
    ld [c], a                                     ; $4688: $e2
    rra                                           ; $4689: $1f
    ld d, c                                       ; $468a: $51
    xor a                                         ; $468b: $af
    ld [hl+], a                                   ; $468c: $22
    rst $18                                       ; $468d: $df
    ld b, l                                       ; $468e: $45
    ld [bc], a                                    ; $468f: $02
    cp a                                          ; $4690: $bf
    inc bc                                        ; $4691: $03
    rst $38                                       ; $4692: $ff
    ld d, $ff                                     ; $4693: $16 $ff
    xor h                                         ; $4695: $ac
    ld [hl+], a                                   ; $4696: $22
    ld bc, $00f9                                  ; $4697: $01 $f9 $00
    cp $55                                        ; $469a: $fe $55
    ld a, [$f4ab]                                 ; $469c: $fa $ab $f4
    ld d, $e8                                     ; $469f: $16 $e8
    dec a                                         ; $46a1: $3d
    ld [bc], a                                    ; $46a2: $02
    ret nz                                        ; $46a3: $c0

    ld a, d                                       ; $46a4: $7a
    add b                                         ; $46a5: $80
    call nc, $ac20                                ; $46a6: $d4 $20 $ac
    jp nz, $a002                                  ; $46a9: $c2 $02 $a0

    nop                                           ; $46ac: $00
    ld e, a                                       ; $46ad: $5f
    ld e, d                                       ; $46ae: $5a
    dec h                                         ; $46af: $25
    db $f4                                        ; $46b0: $f4
    dec bc                                        ; $46b1: $0b
    ld l, l                                       ; $46b2: $6d
    ld [bc], a                                    ; $46b3: $02
    jp c, $0520                                   ; $46b4: $da $20 $05

    ld l, l                                       ; $46b7: $6d
    ld [hl-], a                                   ; $46b8: $32
    dec b                                         ; $46b9: $05
    ld d, l                                       ; $46ba: $55
    ld a, [bc]                                    ; $46bb: $0a
    adc b                                         ; $46bc: $88
    rst $30                                       ; $46bd: $f7
    ld h, d                                       ; $46be: $62
    inc c                                         ; $46bf: $0c
    db $fd                                        ; $46c0: $fd
    jr nc, @+$01                                  ; $46c1: $30 $ff

    dec e                                         ; $46c3: $1d
    inc c                                         ; $46c4: $0c
    ld de, $08c8                                  ; $46c5: $11 $c8 $08
    rlca                                          ; $46c8: $07
    rst $38                                       ; $46c9: $ff
    inc d                                         ; $46ca: $14
    cp h                                          ; $46cb: $bc
    rst $38                                       ; $46cc: $ff
    ld l, d                                       ; $46cd: $6a
    jr nz, @+$06                                  ; $46ce: $20 $04

    xor c                                         ; $46d0: $a9
    ld e, d                                       ; $46d1: $5a
    ld bc, $ea95                                  ; $46d2: $01 $95 $ea
    db $10                                        ; $46d5: $10
    cpl                                           ; $46d6: $2f
    ret nc                                        ; $46d7: $d0

    ld e, d                                       ; $46d8: $5a
    ld c, b                                       ; $46d9: $48
    nop                                           ; $46da: $00
    ld e, $ff                                     ; $46db: $1e $ff
    xor l                                         ; $46dd: $ad
    ld e, a                                       ; $46de: $5f
    db $10                                        ; $46df: $10
    ld d, [hl]                                    ; $46e0: $56
    xor a                                         ; $46e1: $af
    xor e                                         ; $46e2: $ab
    ld b, [hl]                                    ; $46e3: $46
    inc b                                         ; $46e4: $04
    ld l, c                                       ; $46e5: $69
    rla                                           ; $46e6: $17
    db $f4                                        ; $46e7: $f4
    nop                                           ; $46e8: $00
    nop                                           ; $46e9: $00
    ld e, d                                       ; $46ea: $5a
    add b                                         ; $46eb: $80
    cp a                                          ; $46ec: $bf
    ld b, b                                       ; $46ed: $40
    ld l, l                                       ; $46ee: $6d
    sub b                                         ; $46ef: $90
    ld d, a                                       ; $46f0: $57
    xor b                                         ; $46f1: $a8
    add b                                         ; $46f2: $80
    jr nc, jr_0c9_46fa                            ; $46f3: $30 $05

    add sp, -$5e                                  ; $46f5: $e8 $a2
    db $fd                                        ; $46f7: $fd
    ld d, $01                                     ; $46f8: $16 $01

jr_0c9_46fa:
    dec bc                                        ; $46fa: $0b
    nop                                           ; $46fb: $00
    db $10                                        ; $46fc: $10
    ld b, [hl]                                    ; $46fd: $46
    ld bc, $a2ab                                  ; $46fe: $01 $ab $a2
    inc b                                         ; $4701: $04
    sub d                                         ; $4702: $92
    nop                                           ; $4703: $00
    ld l, c                                       ; $4704: $69
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    ei                                            ; $4707: $fb
    nop                                           ; $4708: $00
    cp e                                          ; $4709: $bb
    ld a, a                                       ; $470a: $7f
    rla                                           ; $470b: $17
    rst $38                                       ; $470c: $ff
    cp a                                          ; $470d: $bf
    ld a, a                                       ; $470e: $7f
    nop                                           ; $470f: $00
    ld d, a                                       ; $4710: $57
    cp a                                          ; $4711: $bf
    sbc a                                         ; $4712: $9f
    ld a, a                                       ; $4713: $7f
    rst $10                                       ; $4714: $d7
    ccf                                           ; $4715: $3f
    sbc a                                         ; $4716: $9f
    ld a, a                                       ; $4717: $7f
    nop                                           ; $4718: $00
    rst $18                                       ; $4719: $df
    ccf                                           ; $471a: $3f
    ld a, c                                       ; $471b: $79
    rlca                                          ; $471c: $07
    cp h                                          ; $471d: $bc
    inc bc                                        ; $471e: $03
    ld e, l                                       ; $471f: $5d
    inc bc                                        ; $4720: $03
    nop                                           ; $4721: $00
    ld a, [hl-]                                   ; $4722: $3a
    dec b                                         ; $4723: $05
    inc l                                         ; $4724: $2c
    inc bc                                        ; $4725: $03
    ld e, c                                       ; $4726: $59
    rlca                                          ; $4727: $07
    or b                                          ; $4728: $b0
    rrca                                          ; $4729: $0f
    nop                                           ; $472a: $00
    db $f4                                        ; $472b: $f4
    dec bc                                        ; $472c: $0b
    ld a, d                                       ; $472d: $7a
    db $fd                                        ; $472e: $fd
    push af                                       ; $472f: $f5
    cp $6b                                        ; $4730: $fe $6b
    db $fc                                        ; $4732: $fc
    ld b, b                                       ; $4733: $40
    ld h, l                                       ; $4734: $65
    xor h                                         ; $4735: $ac
    rlca                                          ; $4736: $07
    ld h, a                                       ; $4737: $67
    ld hl, sp-$33                                 ; $4738: $f8 $cd
    ldh a, [$96]                                  ; $473a: $f0 $96
    add sp, $44                                   ; $473c: $e8 $44
    db $fd                                        ; $473e: $fd
    and [hl]                                      ; $473f: $a6
    ld bc, $00fc                                  ; $4740: $01 $fc $00
    ld d, b                                       ; $4743: $50
    jp nc, Jump_000_0515                          ; $4744: $d2 $15 $05

    nop                                           ; $4747: $00
    nop                                           ; $4748: $00
    xor d                                         ; $4749: $aa
    ld bc, $011e                                  ; $474a: $01 $1e $01
    inc l                                         ; $474d: $2c
    inc bc                                        ; $474e: $03
    ld e, d                                       ; $474f: $5a
    dec b                                         ; $4750: $05
    ld bc, $0bb5                                  ; $4751: $01 $b5 $0b
    ld l, b                                       ; $4754: $68
    rla                                           ; $4755: $17
    jp nc, $a92f                                  ; $4756: $d2 $2f $a9

    cp b                                          ; $4759: $b8
    inc b                                         ; $475a: $04
    nop                                           ; $475b: $00
    jr z, @+$01                                   ; $475c: $28 $ff

    sub h                                         ; $475e: $94
    ld a, e                                       ; $475f: $7b
    dec hl                                        ; $4760: $2b
    db $f4                                        ; $4761: $f4
    halt                                          ; $4762: $76
    add sp, $00                                   ; $4763: $e8 $00
    ld c, l                                       ; $4765: $4d
    ldh a, [$da]                                  ; $4766: $f0 $da
    ldh [$ae], a                                  ; $4768: $e0 $ae
    ret nc                                        ; $476a: $d0

    ld e, l                                       ; $476b: $5d
    and b                                         ; $476c: $a0
    jr jr_0c9_47cc                                ; $476d: $18 $5d

    and b                                         ; $476f: $a0
    ld [$05f8], a                                 ; $4770: $ea $f8 $05
    ld [hl], a                                    ; $4773: $77
    ld c, $10                                     ; $4774: $0e $10
    nop                                           ; $4776: $00
    xor d                                         ; $4777: $aa
    ret nz                                        ; $4778: $c0

    ld [c], a                                     ; $4779: $e2
    inc bc                                        ; $477a: $03
    adc d                                         ; $477b: $8a
    dec bc                                        ; $477c: $0b
    rra                                           ; $477d: $1f
    nop                                           ; $477e: $00
    ld c, d                                       ; $477f: $4a
    dec b                                         ; $4780: $05
    sub [hl]                                      ; $4781: $96
    ld bc, $2d40                                  ; $4782: $01 $40 $2d
    ld [hl], $0c                                  ; $4785: $36 $0c
    nop                                           ; $4787: $00
    push bc                                       ; $4788: $c5
    cp $68                                        ; $4789: $fe $68
    rst $38                                       ; $478b: $ff
    ld d, c                                       ; $478c: $51
    nop                                           ; $478d: $00
    cp $2a                                        ; $478e: $fe $2a
    db $fd                                        ; $4790: $fd
    or c                                          ; $4791: $b1
    ld a, [hl]                                    ; $4792: $7e
    ld e, b                                       ; $4793: $58
    cp a                                          ; $4794: $bf
    xor l                                         ; $4795: $ad
    nop                                           ; $4796: $00
    ld e, a                                       ; $4797: $5f
    ret z                                         ; $4798: $c8

    ccf                                           ; $4799: $3f
    pop de                                        ; $479a: $d1
    nop                                           ; $479b: $00
    cp c                                          ; $479c: $b9
    ld b, b                                       ; $479d: $40
    ld [hl], c                                    ; $479e: $71
    nop                                           ; $479f: $00
    add b                                         ; $47a0: $80
    cp e                                          ; $47a1: $bb
    ld b, b                                       ; $47a2: $40
    ld e, l                                       ; $47a3: $5d
    and b                                         ; $47a4: $a0
    cp e                                          ; $47a5: $bb
    ld b, b                                       ; $47a6: $40
    ld l, a                                       ; $47a7: $6f
    dec e                                         ; $47a8: $1d
    sub b                                         ; $47a9: $90
    dec a                                         ; $47aa: $3d
    ret nz                                        ; $47ab: $c0

    sub h                                         ; $47ac: $94

jr_0c9_47ad:
    ld [$0898], sp                                ; $47ad: $08 $98 $08
    ld h, $0e                                     ; $47b0: $26 $0e
    cp a                                          ; $47b2: $bf
    xor h                                         ; $47b3: $ac
    nop                                           ; $47b4: $00
    ld h, b                                       ; $47b5: $60

jr_0c9_47b6:
    ld b, $3b                                     ; $47b6: $06 $3b
    dec b                                         ; $47b8: $05
    jr nz, @+$01                                  ; $47b9: $20 $ff

    nop                                           ; $47bb: $00
    ld [bc], a                                    ; $47bc: $02
    jr z, jr_0c9_47ad                             ; $47bd: $28 $ee

    db $10                                        ; $47bf: $10
    db $fc                                        ; $47c0: $fc
    nop                                           ; $47c1: $00
    db $fc                                        ; $47c2: $fc
    ld b, b                                       ; $47c3: $40
    db $fc                                        ; $47c4: $fc
    db $10                                        ; $47c5: $10
    jr c, @+$40                                   ; $47c6: $38 $3e

    ld bc, $1f1f                                  ; $47c8: $01 $1f $1f
    ld a, [bc]                                    ; $47cb: $0a

jr_0c9_47cc:
    dec d                                         ; $47cc: $15
    add b                                         ; $47cd: $80
    jr nz, jr_0c9_47e8                            ; $47ce: $20 $18

    cp a                                          ; $47d0: $bf
    ld b, b                                       ; $47d1: $40
    rst $38                                       ; $47d2: $ff
    nop                                           ; $47d3: $00
    rst $18                                       ; $47d4: $df
    ccf                                           ; $47d5: $3f
    cp e                                          ; $47d6: $bb
    ld h, b                                       ; $47d7: $60
    call nz, Call_000_0808                        ; $47d8: $c4 $08 $08
    ld [hl-], a                                   ; $47db: $32
    ld [$03fd], sp                                ; $47dc: $08 $fd $03
    inc sp                                        ; $47df: $33
    inc a                                         ; $47e0: $3c
    ccf                                           ; $47e1: $3f
    ld de, $f700                                  ; $47e2: $11 $00 $f7
    ld [$203a], sp                                ; $47e5: $08 $3a $20

jr_0c9_47e8:
    rra                                           ; $47e8: $1f
    rst $18                                       ; $47e9: $df
    ldh [rNR23], a                                ; $47ea: $e0 $18
    jr nz, @+$04                                  ; $47ec: $20 $02

    ld [bc], a                                    ; $47ee: $02
    ld hl, sp+$00                                 ; $47ef: $f8 $00
    ld a, b                                       ; $47f1: $78

jr_0c9_47f2:
    ld hl, sp-$04                                 ; $47f2: $f8 $fc
    ld a, [bc]                                    ; $47f4: $0a
    db $10                                        ; $47f5: $10
    cp e                                          ; $47f6: $bb
    nop                                           ; $47f7: $00
    ld b, h                                       ; $47f8: $44
    push af                                       ; $47f9: $f5
    ld a, [bc]                                    ; $47fa: $0a
    ld hl, sp+$07                                 ; $47fb: $f8 $07
    ld a, $30                                     ; $47fd: $3e $30
    ccf                                           ; $47ff: $3f
    nop                                           ; $4800: $00
    jr nz, jr_0c9_4882                            ; $4801: $20 $7f

    db $10                                        ; $4803: $10
    rst $38                                       ; $4804: $ff
    ld [$46b9], sp                                ; $4805: $08 $b9 $46
    sbc a                                         ; $4808: $9f
    ld [bc], a                                    ; $4809: $02
    ld bc, $148b                                  ; $480a: $01 $8b $14
    ld e, a                                       ; $480d: $5f
    and b                                         ; $480e: $a0
    ld a, a                                       ; $480f: $7f
    ld [hl], b                                    ; $4810: $70
    jr nc, @-$37                                  ; $4811: $30 $c7

    ld [$8300], sp                                ; $4813: $08 $00 $83
    add b                                         ; $4816: $80
    add e                                         ; $4817: $83
    ld a, [hl]                                    ; $4818: $7e
    jr nc, @+$01                                  ; $4819: $30 $ff

    nop                                           ; $481b: $00
    rst $28                                       ; $481c: $ef
    inc b                                         ; $481d: $04
    db $10                                        ; $481e: $10
    rst $38                                       ; $481f: $ff

jr_0c9_4820:
    nop                                           ; $4820: $00
    ei                                            ; $4821: $fb
    inc b                                         ; $4822: $04
    sub b                                         ; $4823: $90

jr_0c9_4824:
    jr c, jr_0c9_4824                             ; $4824: $38 $fe

    ld bc, $b511                                  ; $4826: $01 $11 $b5
    ld c, d                                       ; $4829: $4a

jr_0c9_482a:
    ld [$4880], a                                 ; $482a: $ea $80 $48
    jr nz, jr_0c9_482a                            ; $482d: $20 $fb

    inc b                                         ; $482f: $04
    add b                                         ; $4830: $80
    jr z, @-$17                                   ; $4831: $28 $e7

    or [hl]                                       ; $4833: $b6
    jr jr_0c9_47b6                                ; $4834: $18 $80

    jr z, @-$3a                                   ; $4836: $28 $c4

    jr c, @-$01                                   ; $4838: $38 $fd

    ld [bc], a                                    ; $483a: $02
    ld a, [bc]                                    ; $483b: $0a
    jr c, @-$7e                                   ; $483c: $38 $80

    jr jr_0c9_4820                                ; $483e: $18 $e0

    jr z, jr_0c9_47f2                             ; $4840: $28 $b0

    jp nz, $eb08                                  ; $4842: $c2 $08 $eb

    add b                                         ; $4845: $80
    nop                                           ; $4846: $00
    ldh a, [$08]                                  ; $4847: $f0 $08
    di                                            ; $4849: $f3
    nop                                           ; $484a: $00
    pop hl                                        ; $484b: $e1
    ld bc, $e104                                  ; $484c: $01 $04 $e1
    nop                                           ; $484f: $00
    db $e3                                        ; $4850: $e3
    db $10                                        ; $4851: $10
    rst $38                                       ; $4852: $ff
    ld [bc], a                                    ; $4853: $02
    nop                                           ; $4854: $00
    rst $30                                       ; $4855: $f7
    ld [$88c0], sp                                ; $4856: $08 $c0 $88
    nop                                           ; $4859: $00
    adc d                                         ; $485a: $8a
    db $10                                        ; $485b: $10
    rst $00                                       ; $485c: $c7
    nop                                           ; $485d: $00
    rst $38                                       ; $485e: $ff
    jr nz, @-$1b                                  ; $485f: $20 $e3

    inc h                                         ; $4861: $24
    nop                                           ; $4862: $00
    db $fc                                        ; $4863: $fc
    nop                                           ; $4864: $00
    ld [$3716], a                                 ; $4865: $ea $16 $37
    jr c, jr_0c9_4888                             ; $4868: $38 $1e

jr_0c9_486a:
    ld bc, $0b00                                  ; $486a: $01 $00 $0b
    inc d                                         ; $486d: $14
    inc d                                         ; $486e: $14
    dec bc                                        ; $486f: $0b
    ld a, [hl+]                                   ; $4870: $2a
    dec e                                         ; $4871: $1d
    ld b, b                                       ; $4872: $40
    cp a                                          ; $4873: $bf
    nop                                           ; $4874: $00
    inc d                                         ; $4875: $14
    dec bc                                        ; $4876: $0b
    jr z, @+$19                                   ; $4877: $28 $17

    ld d, c                                       ; $4879: $51
    xor [hl]                                      ; $487a: $ae
    and d                                         ; $487b: $a2
    ld e, l                                       ; $487c: $5d
    nop                                           ; $487d: $00
    ld c, b                                       ; $487e: $48
    or a                                          ; $487f: $b7
    add c                                         ; $4880: $81
    ld a, a                                       ; $4881: $7f

jr_0c9_4882:
    jr nz, @+$01                                  ; $4882: $20 $ff

    add h                                         ; $4884: $84
    rst $38                                       ; $4885: $ff
    nop                                           ; $4886: $00
    ld d, a                                       ; $4887: $57

jr_0c9_4888:
    xor b                                         ; $4888: $a8
    ld a, [bc]                                    ; $4889: $0a
    push af                                       ; $488a: $f5
    dec b                                         ; $488b: $05
    ld a, [$ed12]                                 ; $488c: $fa $12 $ed
    ld [$dea1], sp                                ; $488f: $08 $a1 $de
    db $10                                        ; $4892: $10
    rst $28                                       ; $4893: $ef
    ld l, l                                       ; $4894: $6d
    ld [$807f], sp                                ; $4895: $08 $7f $80
    xor $00                                       ; $4898: $ee $00
    ld de, $827d                                  ; $489a: $11 $7d $82
    db $eb                                        ; $489d: $eb
    inc d                                         ; $489e: $14
    ld d, h                                       ; $489f: $54
    xor e                                         ; $48a0: $ab
    add hl, hl                                    ; $48a1: $29
    nop                                           ; $48a2: $00
    sub $12                                       ; $48a3: $d6 $12
    db $ed                                        ; $48a5: $ed
    nop                                           ; $48a6: $00
    rst $38                                       ; $48a7: $ff
    rst $18                                       ; $48a8: $df
    jr nz, jr_0c9_486a                            ; $48a9: $20 $bf

    nop                                           ; $48ab: $00
    ld b, b                                       ; $48ac: $40
    db $fd                                        ; $48ad: $fd
    ld [bc], a                                    ; $48ae: $02
    ld [$5415], a                                 ; $48af: $ea $15 $54
    xor e                                         ; $48b2: $ab
    jr z, jr_0c9_48f5                             ; $48b3: $28 $40

    rst $10                                       ; $48b5: $d7
    inc b                                         ; $48b6: $04

Call_0c9_48b7:
    ld [$29d0], sp                                ; $48b7: $08 $d0 $29
    and b                                         ; $48ba: $a0
    ld e, c                                       ; $48bb: $59
    ld c, b                                       ; $48bc: $48
    or a                                          ; $48bd: $b7
    nop                                           ; $48be: $00
    sub c                                         ; $48bf: $91
    ld l, [hl]                                    ; $48c0: $6e
    inc b                                         ; $48c1: $04
    ei                                            ; $48c2: $fb
    jr nz, @-$1f                                  ; $48c3: $20 $df

    sub b                                         ; $48c5: $90
    ld a, a                                       ; $48c6: $7f
    nop                                           ; $48c7: $00
    ld [bc], a                                    ; $48c8: $02
    rst $38                                       ; $48c9: $ff
    dec sp                                        ; $48ca: $3b
    call nz, Call_0c9_6897                        ; $48cb: $c4 $97 $68
    cpl                                           ; $48ce: $2f
    ret nc                                        ; $48cf: $d0

    nop                                           ; $48d0: $00
    dec d                                         ; $48d1: $15
    ld [$b44b], a                                 ; $48d2: $ea $4b $b4
    dec h                                         ; $48d5: $25
    jp c, $fd42                                   ; $48d6: $da $42 $fd

    nop                                           ; $48d9: $00
    ld bc, $83fe                                  ; $48da: $01 $fe $83
    nop                                           ; $48dd: $00
    push bc                                       ; $48de: $c5
    ld [bc], a                                    ; $48df: $02
    cp a                                          ; $48e0: $bf
    ld d, b                                       ; $48e1: $50
    nop                                           ; $48e2: $00
    cp $11                                        ; $48e3: $fe $11
    call Call_0c9_4e02                            ; $48e5: $cd $02 $4e
    add c                                         ; $48e8: $81
    db $fd                                        ; $48e9: $fd
    ld [bc], a                                    ; $48ea: $02
    nop                                           ; $48eb: $00
    ld l, d                                       ; $48ec: $6a
    sub l                                         ; $48ed: $95
    db $fd                                        ; $48ee: $fd
    ld [bc], a                                    ; $48ef: $02
    rst $28                                       ; $48f0: $ef
    db $10                                        ; $48f1: $10
    ld e, a                                       ; $48f2: $5f
    and b                                         ; $48f3: $a0
    nop                                           ; $48f4: $00

jr_0c9_48f5:
    cp [hl]                                       ; $48f5: $be
    ld b, c                                       ; $48f6: $41
    ld c, e                                       ; $48f7: $4b
    or h                                          ; $48f8: $b4
    sub h                                         ; $48f9: $94
    ld l, e                                       ; $48fa: $6b
    ld a, [hl+]                                   ; $48fb: $2a
    db $dd                                        ; $48fc: $dd
    ld [bc], a                                    ; $48fd: $02
    ld b, b                                       ; $48fe: $40
    cp a                                          ; $48ff: $bf
    db $f4                                        ; $4900: $f4
    dec bc                                        ; $4901: $0b
    xor b                                         ; $4902: $a8
    ld d, a                                       ; $4903: $57
    add b                                         ; $4904: $80
    ld c, b                                       ; $4905: $48
    jp nc, Jump_000_2d10                          ; $4906: $d2 $10 $2d

    and b                                         ; $4909: $a0
    ld e, a                                       ; $490a: $5f
    ld d, b                                       ; $490b: $50
    sbc b                                         ; $490c: $98
    inc h                                         ; $490d: $24
    jp c, $fc42                                   ; $490e: $da $42 $fc

    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    cp $af                                        ; $4913: $fe $af
    ld [hl], b                                    ; $4915: $70
    db $fd                                        ; $4916: $fd
    ld [hl+], a                                   ; $4917: $22
    cp a                                          ; $4918: $bf
    ld h, b                                       ; $4919: $60
    nop                                           ; $491a: $00
    cp $21                                        ; $491b: $fe $21
    dec c                                         ; $491d: $0d
    ld [de], a                                    ; $491e: $12
    ld c, $01                                     ; $491f: $0e $01
    ld c, $0e                                     ; $4921: $0e $0e
    nop                                           ; $4923: $00
    ld a, [bc]                                    ; $4924: $0a
    inc b                                         ; $4925: $04
    push hl                                       ; $4926: $e5
    ld [hl+], a                                   ; $4927: $22
    rst $28                                       ; $4928: $ef
    jr nc, jr_0c9_498a                            ; $4929: $30 $5f

    ldh [rP1], a                                  ; $492b: $e0 $00
    cp $41                                        ; $492d: $fe $41
    ld c, e                                       ; $492f: $4b
    db $f4                                        ; $4930: $f4
    inc d                                         ; $4931: $14
    dec bc                                        ; $4932: $0b
    ld a, [bc]                                    ; $4933: $0a
    dec c                                         ; $4934: $0d
    stop                                          ; $4935: $10 $00
    rrca                                          ; $4937: $0f
    ld de, $0167                                  ; $4938: $11 $67 $01
    ld [hl+], a                                   ; $493b: $22
    rst $38                                       ; $493c: $ff
    ld d, l                                       ; $493d: $55
    rst $38                                       ; $493e: $ff
    nop                                           ; $493f: $00
    xor [hl]                                      ; $4940: $ae
    rst $38                                       ; $4941: $ff
    ld a, a                                       ; $4942: $7f
    rst $38                                       ; $4943: $ff
    ei                                            ; $4944: $fb
    rst $38                                       ; $4945: $ff
    rst $38                                       ; $4946: $ff
    rst $38                                       ; $4947: $ff
    ld bc, $ff09                                  ; $4948: $01 $09 $ff
    ld d, d                                       ; $494b: $52
    rst $38                                       ; $494c: $ff
    cp b                                          ; $494d: $b8
    rst $38                                       ; $494e: $ff
    ld l, h                                       ; $494f: $6c
    ld a, [bc]                                    ; $4950: $0a
    nop                                           ; $4951: $00
    ld b, b                                       ; $4952: $40
    ld [hl], a                                    ; $4953: $77
    db $10                                        ; $4954: $10
    db $10                                        ; $4955: $10
    ld [de], a                                    ; $4956: $12
    rst $38                                       ; $4957: $ff
    inc h                                         ; $4958: $24
    rst $38                                       ; $4959: $ff
    ld bc, $013f                 ; $495a: $01 $3f $01
    ld [hl+], a                                   ; $495d: $22
    ccf                                           ; $495e: $3f
    ld b, l                                       ; $495f: $45
    rst $38                                       ; $4960: $ff
    xor e                                         ; $4961: $ab
    rst $38                                       ; $4962: $ff
    cp $20                                        ; $4963: $fe $20
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    rst $38                                       ; $4968: $ff
    dec h                                         ; $4969: $25
    rst $38                                       ; $496a: $ff
    ld c, d                                       ; $496b: $4a
    rst $38                                       ; $496c: $ff
    cp l                                          ; $496d: $bd
    rst $38                                       ; $496e: $ff
    inc b                                         ; $496f: $04
    sbc $ff                                       ; $4970: $de $ff
    cp a                                          ; $4972: $bf
    rst $38                                       ; $4973: $ff
    rst $30                                       ; $4974: $f7
    jr nc, jr_0c9_4977                            ; $4975: $30 $00

jr_0c9_4977:
    add c                                         ; $4977: $81
    rst $38                                       ; $4978: $ff
    nop                                           ; $4979: $00
    ld b, d                                       ; $497a: $42
    rst $38                                       ; $497b: $ff
    adc b                                         ; $497c: $88
    rst $38                                       ; $497d: $ff
    ld de, $2aff                                  ; $497e: $11 $ff $2a
    rst $38                                       ; $4981: $ff
    ld b, b                                       ; $4982: $40
    ld d, a                                       ; $4983: $57
    ld a, $00                                     ; $4984: $3e $00
    rst $38                                       ; $4986: $ff
    rst $38                                       ; $4987: $ff
    inc b                                         ; $4988: $04
    rst $38                                       ; $4989: $ff

jr_0c9_498a:
    ld c, c                                       ; $498a: $49
    rst $38                                       ; $498b: $ff
    inc b                                         ; $498c: $04
    sub a                                         ; $498d: $97
    rst $38                                       ; $498e: $ff
    cpl                                           ; $498f: $2f
    rst $38                                       ; $4990: $ff
    ld e, e                                       ; $4991: $5b
    ld e, $10                                     ; $4992: $1e $10
    rst $38                                       ; $4994: $ff
    rst $38                                       ; $4995: $ff
    nop                                           ; $4996: $00
    jr z, @+$01                                   ; $4997: $28 $ff

    ld b, d                                       ; $4999: $42
    db $fd                                        ; $499a: $fd
    xor c                                         ; $499b: $a9
    cp $d4                                        ; $499c: $fe $d4
    rst $38                                       ; $499e: $ff
    inc b                                         ; $499f: $04
    ld a, [$dfff]                                 ; $49a0: $fa $ff $df
    rst $38                                       ; $49a3: $ff
    db $fd                                        ; $49a4: $fd
    ld h, b                                       ; $49a5: $60
    nop                                           ; $49a6: $00
    ret nc                                        ; $49a7: $d0

    cpl                                           ; $49a8: $2f
    nop                                           ; $49a9: $00
    add hl, hl                                    ; $49aa: $29
    sub $00                                       ; $49ab: $d6 $00
    rst $38                                       ; $49ad: $ff
    ld b, c                                       ; $49ae: $41
    rst $38                                       ; $49af: $ff
    xor d                                         ; $49b0: $aa
    rst $38                                       ; $49b1: $ff
    ld h, c                                       ; $49b2: $61
    ld [hl], l                                    ; $49b3: $75
    jr nc, jr_0c9_49c6                            ; $49b4: $30 $10

    ld h, b                                       ; $49b6: $60
    ld [$ff41], sp                                ; $49b7: $08 $41 $ff
    and d                                         ; $49ba: $a2
    rst $38                                       ; $49bb: $ff
    ld h, b                                       ; $49bc: $60
    jr z, jr_0c9_49e0                             ; $49bd: $28 $21

    db $10                                        ; $49bf: $10
    ld c, $20                                     ; $49c0: $0e $20
    ld e, b                                       ; $49c2: $58
    ld bc, $100f                                  ; $49c3: $01 $0f $10

jr_0c9_49c6:
    rra                                           ; $49c6: $1f
    and b                                         ; $49c7: $a0
    ld c, b                                       ; $49c8: $48
    nop                                           ; $49c9: $00
    and a                                         ; $49ca: $a7
    inc bc                                        ; $49cb: $03
    sub [hl]                                      ; $49cc: $96
    inc bc                                        ; $49cd: $03
    db $eb                                        ; $49ce: $eb
    rlca                                          ; $49cf: $07
    cp [hl]                                       ; $49d0: $be
    ld c, l                                       ; $49d1: $4d
    nop                                           ; $49d2: $00
    or b                                          ; $49d3: $b0
    ld hl, sp-$0c                                 ; $49d4: $f8 $f4
    ld hl, sp+$4b                                 ; $49d6: $f8 $4b
    ld e, $8f                                     ; $49d8: $1e $8f
    rlca                                          ; $49da: $07
    nop                                           ; $49db: $00
    pop bc                                        ; $49dc: $c1
    nop                                           ; $49dd: $00
    or b                                          ; $49de: $b0
    inc bc                                        ; $49df: $03

jr_0c9_49e0:
    sbc e                                         ; $49e0: $9b
    rst $20                                       ; $49e1: $e7
    ld a, a                                       ; $49e2: $7f
    cp $00                                        ; $49e3: $fe $00
    ld [hl], d                                    ; $49e5: $72
    inc a                                         ; $49e6: $3c
    add a                                         ; $49e7: $87
    jr c, jr_0c9_4a5e                             ; $49e8: $38 $74

    rst $38                                       ; $49ea: $ff
    xor $9f                                       ; $49eb: $ee $9f
    nop                                           ; $49ed: $00
    dec a                                         ; $49ee: $3d
    ldh a, [$f4]                                  ; $49ef: $f0 $f4
    ld sp, hl                                     ; $49f1: $f9
    add hl, sp                                    ; $49f2: $39
    cp $84                                        ; $49f3: $fe $84
    rra                                           ; $49f5: $1f
    nop                                           ; $49f6: $00
    db $db                                        ; $49f7: $db
    rlca                                          ; $49f8: $07
    ld l, e                                       ; $49f9: $6b
    sbc a                                         ; $49fa: $9f
    ccf                                           ; $49fb: $3f
    rst $38                                       ; $49fc: $ff
    db $ec                                        ; $49fd: $ec
    ei                                            ; $49fe: $fb
    nop                                           ; $49ff: $00
    rst $08                                       ; $4a00: $cf
    ld h, $64                                     ; $4a01: $26 $64
    rra                                           ; $4a03: $1f
    inc de                                        ; $4a04: $13
    rst $38                                       ; $4a05: $ff
    and b                                         ; $4a06: $a0
    ret nz                                        ; $4a07: $c0

    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    add b                                         ; $4a0a: $80
    ret z                                         ; $4a0b: $c8

    dec b                                         ; $4a0c: $05
    or a                                          ; $4a0d: $b7
    db $eb                                        ; $4a0e: $eb
    and e                                         ; $4a0f: $a3
    ld e, a                                       ; $4a10: $5f
    nop                                           ; $4a11: $00
    push af                                       ; $4a12: $f5
    adc e                                         ; $4a13: $8b
    rst $28                                       ; $4a14: $ef
    rst $10                                       ; $4a15: $d7
    rst $10                                       ; $4a16: $d7
    rst $38                                       ; $4a17: $ff
    ld a, c                                       ; $4a18: $79
    rst $38                                       ; $4a19: $ff
    inc b                                         ; $4a1a: $04
    ccf                                           ; $4a1b: $3f
    ldh [$79], a                                  ; $4a1c: $e0 $79
    and $e1                                       ; $4a1e: $e6 $e1
    sub d                                         ; $4a20: $92
    nop                                           ; $4a21: $00
    db $10                                        ; $4a22: $10
    ret nz                                        ; $4a23: $c0

    nop                                           ; $4a24: $00
    cp a                                          ; $4a25: $bf
    ret nz                                        ; $4a26: $c0

    db $dd                                        ; $4a27: $dd
    ldh [$ea], a                                  ; $4a28: $e0 $ea

jr_0c9_4a2a:
    ld [hl], l                                    ; $4a2a: $75
    sbc [hl]                                      ; $4a2b: $9e
    ld a, a                                       ; $4a2c: $7f
    nop                                           ; $4a2d: $00
    dec e                                         ; $4a2e: $1d
    rst $38                                       ; $4a2f: $ff
    jr nc, jr_0c9_4a2a                            ; $4a30: $30 $f8

    ldh [$f0], a                                  ; $4a32: $e0 $f0
    ld b, a                                       ; $4a34: $47
    inc bc                                        ; $4a35: $03
    nop                                           ; $4a36: $00
    db $ed                                        ; $4a37: $ed
    inc bc                                        ; $4a38: $03
    db $dd                                        ; $4a39: $dd
    inc bc                                        ; $4a3a: $03
    ld e, e                                       ; $4a3b: $5b
    cp [hl]                                       ; $4a3c: $be
    cp [hl]                                       ; $4a3d: $be
    ld hl, sp+$00                                 ; $4a3e: $f8 $00
    ld a, b                                       ; $4a40: $78
    ldh a, [$78]                                  ; $4a41: $f0 $78
    and b                                         ; $4a43: $a0
    or b                                          ; $4a44: $b0
    ld h, b                                       ; $4a45: $60
    ld c, a                                       ; $4a46: $4f
    add a                                         ; $4a47: $87
    nop                                           ; $4a48: $00
    ccf                                           ; $4a49: $3f
    add $fd                                       ; $4a4a: $c6 $fd
    cp $98                                        ; $4a4c: $fe $98
    ld a, a                                       ; $4a4e: $7f
    add hl, de                                    ; $4a4f: $19
    ld c, $00                                     ; $4a50: $0e $00
    inc bc                                        ; $4a52: $03
    rlca                                          ; $4a53: $07
    inc bc                                        ; $4a54: $03
    ld bc, $0107                                  ; $4a55: $01 $07 $01
    cp $fb                                        ; $4a58: $fe $fb
    nop                                           ; $4a5a: $00
    sbc d                                         ; $4a5b: $9a
    rst $38                                       ; $4a5c: $ff
    ld a, [hl]                                    ; $4a5d: $7e

jr_0c9_4a5e:
    rlca                                          ; $4a5e: $07
    ld l, a                                       ; $4a5f: $6f
    inc bc                                        ; $4a60: $03
    push bc                                       ; $4a61: $c5
    cp e                                          ; $4a62: $bb
    nop                                           ; $4a63: $00
    rst $38                                       ; $4a64: $ff
    rst $38                                       ; $4a65: $ff
    db $fc                                        ; $4a66: $fc
    rst $38                                       ; $4a67: $ff
    ret nz                                        ; $4a68: $c0

    db $fd                                        ; $4a69: $fd
    add e                                         ; $4a6a: $83
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    ld [bc], a                                    ; $4a6d: $02
    nop                                           ; $4a6e: $00
    xor d                                         ; $4a6f: $aa
    ld b, c                                       ; $4a70: $41
    jp c, Jump_0c9_45a5                           ; $4a71: $da $a5 $45

    ei                                            ; $4a74: $fb
    ld b, b                                       ; $4a75: $40
    and $12                                       ; $4a76: $e6 $12
    ld bc, $1f7f                                  ; $4a78: $01 $7f $1f
    ccf                                           ; $4a7b: $3f
    rst $38                                       ; $4a7c: $ff
    cp $38                                        ; $4a7d: $fe $38
    nop                                           ; $4a7f: $00
    ld [hl], b                                    ; $4a80: $70
    ldh [$d1], a                                  ; $4a81: $e0 $d1
    ldh [$ca], a                                  ; $4a83: $e0 $ca
    ldh a, [$ee]                                  ; $4a85: $f0 $ee
    ei                                            ; $4a87: $fb
    nop                                           ; $4a88: $00
    ld a, a                                       ; $4a89: $7f
    add a                                         ; $4a8a: $87
    add $01                                       ; $4a8b: $c6 $01
    ld a, [hl]                                    ; $4a8d: $7e
    ldh [$7b], a                                  ; $4a8e: $e0 $7b
    inc d                                         ; $4a90: $14
    nop                                           ; $4a91: $00
    ccf                                           ; $4a92: $3f
    ld a, [de]                                    ; $4a93: $1a
    ld e, a                                       ; $4a94: $5f
    ccf                                           ; $4a95: $3f
    xor l                                         ; $4a96: $ad
    ld [hl], e                                    ; $4a97: $73
    pop de                                        ; $4a98: $d1
    ret nz                                        ; $4a99: $c0

    nop                                           ; $4a9a: $00
    call $9aa0                                    ; $4a9b: $cd $a0 $9a
    pop hl                                        ; $4a9e: $e1
    or $f8                                        ; $4a9f: $f6 $f8
    db $fc                                        ; $4aa1: $fc
    rst $38                                       ; $4aa2: $ff
    nop                                           ; $4aa3: $00
    pop hl                                        ; $4aa4: $e1
    rst $38                                       ; $4aa5: $ff
    ld b, c                                       ; $4aa6: $41
    ldh [$da], a                                  ; $4aa7: $e0 $da
    ld b, b                                       ; $4aa9: $40
    rla                                           ; $4aaa: $17
    add sp, $00                                   ; $4aab: $e8 $00
    push hl                                       ; $4aad: $e5
    jp c, $ff71                                   ; $4aae: $da $71 $ff

    dec [hl]                                      ; $4ab1: $35
    dec bc                                        ; $4ab2: $0b
    and e                                         ; $4ab3: $a3
    ld e, a                                       ; $4ab4: $5f
    nop                                           ; $4ab5: $00
    ld [hl], a                                    ; $4ab6: $77
    rst $38                                       ; $4ab7: $ff
    rst $00                                       ; $4ab8: $c7
    rst $38                                       ; $4ab9: $ff
    rst $08                                       ; $4aba: $cf
    inc hl                                        ; $4abb: $23
    ld e, a                                       ; $4abc: $5f
    jr c, jr_0c9_4abf                             ; $4abd: $38 $00

jr_0c9_4abf:
    ld a, h                                       ; $4abf: $7c
    ldh a, [rOCPD]                                ; $4ac0: $f0 $6b
    ldh a, [$bd]                                  ; $4ac2: $f0 $bd
    ret nz                                        ; $4ac4: $c0

    ld de, $40ee                                  ; $4ac5: $11 $ee $40
    and h                                         ; $4ac8: $a4
    ld l, $01                                     ; $4ac9: $2e $01
    db $fd                                        ; $4acb: $fd
    rst $38                                       ; $4acc: $ff
    ld e, a                                       ; $4acd: $5f
    ccf                                           ; $4ace: $3f
    ld d, $0b                                     ; $4acf: $16 $0b
    nop                                           ; $4ad1: $00
    inc b                                         ; $4ad2: $04
    inc bc                                        ; $4ad3: $03
    cp a                                          ; $4ad4: $bf
    ld c, $67                                     ; $4ad5: $0e $67
    sbc [hl]                                      ; $4ad7: $9e
    ld l, [hl]                                    ; $4ad8: $6e
    rst $38                                       ; $4ad9: $ff
    nop                                           ; $4ada: $00
    ld sp, hl                                     ; $4adb: $f9
    rst $38                                       ; $4adc: $ff
    xor e                                         ; $4add: $ab
    pop bc                                        ; $4ade: $c1
    ld c, [hl]                                    ; $4adf: $4e
    ld bc, $13ef                                  ; $4ae0: $01 $ef $13
    nop                                           ; $4ae3: $00
    ld b, a                                       ; $4ae4: $47
    cp a                                          ; $4ae5: $bf
    add c                                         ; $4ae6: $81
    nop                                           ; $4ae7: $00
    jp hl                                         ; $4ae8: $e9


    nop                                           ; $4ae9: $00
    ld l, d                                       ; $4aea: $6a
    sub c                                         ; $4aeb: $91
    ld [$a45b], sp                                ; $4aec: $08 $5b $a4
    ld c, c                                       ; $4aef: $49
    cp a                                          ; $4af0: $bf
    ld d, b                                       ; $4af1: $50
    ld bc, $9afe                                  ; $4af2: $01 $fe $9a
    inc c                                         ; $4af5: $0c
    nop                                           ; $4af6: $00
    push af                                       ; $4af7: $f5
    ld a, [$7ffd]                                 ; $4af8: $fa $fd $7f
    ei                                            ; $4afb: $fb
    ld a, l                                       ; $4afc: $7d
    ldh [$f0], a                                  ; $4afd: $e0 $f0
    nop                                           ; $4aff: $00

Jump_0c9_4b00:
    ret c                                         ; $4b00: $d8

    ldh [rHDMA5], a                               ; $4b01: $e0 $55
    cp b                                          ; $4b03: $b8
    dec e                                         ; $4b04: $1d
    rrca                                          ; $4b05: $0f
    cpl                                           ; $4b06: $2f
    rlca                                          ; $4b07: $07
    nop                                           ; $4b08: $00
    ccf                                           ; $4b09: $3f
    rst $38                                       ; $4b0a: $ff
    ld d, h                                       ; $4b0b: $54
    rst $38                                       ; $4b0c: $ff
    and a                                         ; $4b0d: $a7
    ld hl, sp+$5c                                 ; $4b0e: $f8 $5c
    ldh a, [rP1]                                  ; $4b10: $f0 $00
    xor b                                         ; $4b12: $a8
    ldh a, [$e4]                                  ; $4b13: $f0 $e4
    ld hl, sp-$55                                 ; $4b15: $f8 $ab
    db $f4                                        ; $4b17: $f4
    or l                                          ; $4b18: $b5
    ld a, [$f700]                                 ; $4b19: $fa $00 $f7
    ld hl, sp-$26                                 ; $4b1c: $f8 $da
    dec a                                         ; $4b1e: $3d
    ld e, l                                       ; $4b1f: $5d
    ld c, $0a                                     ; $4b20: $0e $0a
    rlca                                          ; $4b22: $07
    nop                                           ; $4b23: $00
    inc [hl]                                      ; $4b24: $34
    inc bc                                        ; $4b25: $03
    rst $18                                       ; $4b26: $df
    ld bc, $03fc                                  ; $4b27: $01 $fc $03
    jp hl                                         ; $4b2a: $e9


    rla                                           ; $4b2b: $17
    nop                                           ; $4b2c: $00
    jp hl                                         ; $4b2d: $e9


    rlca                                          ; $4b2e: $07
    or $0b                                        ; $4b2f: $f6 $0b
    ld l, b                                       ; $4b31: $68
    sub a                                         ; $4b32: $97
    and e                                         ; $4b33: $a3
    ld e, [hl]                                    ; $4b34: $5e
    nop                                           ; $4b35: $00
    rrca                                          ; $4b36: $0f
    rst $38                                       ; $4b37: $ff
    sbc l                                         ; $4b38: $9d
    cp $da                                        ; $4b39: $fe $da
    db $fc                                        ; $4b3b: $fc
    ld c, e                                       ; $4b3c: $4b
    cp h                                          ; $4b3d: $bc
    nop                                           ; $4b3e: $00
    dec de                                        ; $4b3f: $1b
    cp $ef                                        ; $4b40: $fe $ef
    ld a, [c]                                     ; $4b42: $f2
    sub $eb                                       ; $4b43: $d6 $eb
    ei                                            ; $4b45: $fb
    cp $00                                        ; $4b46: $fe $00
    ld b, $ff                                     ; $4b48: $06 $ff
    ld d, e                                       ; $4b4a: $53
    xor a                                         ; $4b4b: $af
    ld e, c                                       ; $4b4c: $59
    rlca                                          ; $4b4d: $07
    dec l                                         ; $4b4e: $2d
    jp $0d00                                      ; $4b4f: $c3 $00 $0d


    ld b, $02                                     ; $4b52: $06 $02
    rlca                                          ; $4b54: $07
    ld b, l                                       ; $4b55: $45
    inc bc                                        ; $4b56: $03
    xor l                                         ; $4b57: $ad
    inc bc                                        ; $4b58: $03
    nop                                           ; $4b59: $00
    jp nc, Jump_0c9_5a07                          ; $4b5a: $d2 $07 $5a

    and a                                         ; $4b5d: $a7
    add l                                         ; $4b5e: $85
    cp $f9                                        ; $4b5f: $fe $f9
    cp $04                                        ; $4b61: $fe $04
    db $f4                                        ; $4b63: $f4
    rrca                                          ; $4b64: $0f
    inc l                                         ; $4b65: $2c
    rst $18                                       ; $4b66: $df
    ld e, d                                       ; $4b67: $5a
    cp d                                          ; $4b68: $ba
    ld bc, $ff1f                                  ; $4b69: $01 $1f $ff
    nop                                           ; $4b6c: $00
    sub $2f                                       ; $4b6d: $d6 $2f
    db $eb                                        ; $4b6f: $eb
    rla                                           ; $4b70: $17
    ld d, e                                       ; $4b71: $53
    xor a                                         ; $4b72: $af
    cp d                                          ; $4b73: $ba
    dec e                                         ; $4b74: $1d
    nop                                           ; $4b75: $00
    adc [hl]                                      ; $4b76: $8e
    rrca                                          ; $4b77: $0f
    ld e, l                                       ; $4b78: $5d
    adc a                                         ; $4b79: $8f
    and d                                         ; $4b7a: $a2
    reti                                          ; $4b7b: $d9


    inc [hl]                                      ; $4b7c: $34
    ld sp, hl                                     ; $4b7d: $f9
    nop                                           ; $4b7e: $00
    ld l, e                                       ; $4b7f: $6b
    dec e                                         ; $4b80: $1d
    dec d                                         ; $4b81: $15
    rrca                                          ; $4b82: $0f
    rrca                                          ; $4b83: $0f
    rlca                                          ; $4b84: $07
    sub $2f                                       ; $4b85: $d6 $2f
    nop                                           ; $4b87: $00
    dec l                                         ; $4b88: $2d
    sbc $1c                                       ; $4b89: $de $1c
    rst $38                                       ; $4b8b: $ff
    adc $ff                                       ; $4b8c: $ce $ff
    db $db                                        ; $4b8e: $db
    add a                                         ; $4b8f: $87
    nop                                           ; $4b90: $00
    add d                                         ; $4b91: $82
    ld bc, $0000                                  ; $4b92: $01 $00 $00
    add b                                         ; $4b95: $80
    nop                                           ; $4b96: $00
    xor b                                         ; $4b97: $a8
    rra                                           ; $4b98: $1f
    nop                                           ; $4b99: $00
    ld [hl-], a                                   ; $4b9a: $32
    rrca                                          ; $4b9b: $0f
    ld [hl], l                                    ; $4b9c: $75
    adc a                                         ; $4b9d: $8f
    and e                                         ; $4b9e: $a3
    rst $18                                       ; $4b9f: $df
    ld d, l                                       ; $4ba0: $55
    rst $38                                       ; $4ba1: $ff
    nop                                           ; $4ba2: $00
    db $eb                                        ; $4ba3: $eb
    rst $38                                       ; $4ba4: $ff
    db $fc                                        ; $4ba5: $fc
    ld a, a                                       ; $4ba6: $7f
    cp a                                          ; $4ba7: $bf
    ld a, b                                       ; $4ba8: $78
    dec d                                         ; $4ba9: $15
    db $eb                                        ; $4baa: $eb
    jr jr_0c9_4bae                                ; $4bab: $18 $01

    rst $38                                       ; $4bad: $ff

jr_0c9_4bae:
    dec hl                                        ; $4bae: $2b
    inc e                                         ; $4baf: $1c
    ld [bc], a                                    ; $4bb0: $02
    xor h                                         ; $4bb1: $ac
    nop                                           ; $4bb2: $00
    db $fc                                        ; $4bb3: $fc
    di                                            ; $4bb4: $f3
    inc c                                         ; $4bb5: $0c
    nop                                           ; $4bb6: $00
    xor [hl]                                      ; $4bb7: $ae
    dec b                                         ; $4bb8: $05
    ld e, h                                       ; $4bb9: $5c
    cp a                                          ; $4bba: $bf
    xor d                                         ; $4bbb: $aa
    rra                                           ; $4bbc: $1f
    dec [hl]                                      ; $4bbd: $35
    rst $08                                       ; $4bbe: $cf
    inc b                                         ; $4bbf: $04
    sbc [hl]                                      ; $4bc0: $9e
    rst $38                                       ; $4bc1: $ff
    rst $30                                       ; $4bc2: $f7
    rrca                                          ; $4bc3: $0f
    rst $18                                       ; $4bc4: $df
    ld h, [hl]                                    ; $4bc5: $66
    nop                                           ; $4bc6: $00
    db $dd                                        ; $4bc7: $dd

jr_0c9_4bc8:
    inc bc                                        ; $4bc8: $03
    db $10                                        ; $4bc9: $10
    inc bc                                        ; $4bca: $03
    cp $0a                                        ; $4bcb: $fe $0a
    ld a, [hl-]                                   ; $4bcd: $3a
    ld [bc], a                                    ; $4bce: $02
    cp l                                          ; $4bcf: $bd
    rst $38                                       ; $4bd0: $ff
    ld [hl], a                                    ; $4bd1: $77
    ld hl, sp+$00                                 ; $4bd2: $f8 $00
    reti                                          ; $4bd4: $d9


    ldh [rNR41], a                                ; $4bd5: $e0 $20
    ret nz                                        ; $4bd7: $c0

    ld d, l                                       ; $4bd8: $55
    add b                                         ; $4bd9: $80
    and [hl]                                      ; $4bda: $a6
    inc bc                                        ; $4bdb: $03
    nop                                           ; $4bdc: $00
    call nc, $fe03                                ; $4bdd: $d4 $03 $fe

Jump_0c9_4be0:
    inc bc                                        ; $4be0: $03
    ei                                            ; $4be1: $fb
    rlca                                          ; $4be2: $07
    or h                                          ; $4be3: $b4
    ld c, a                                       ; $4be4: $4f
    nop                                           ; $4be5: $00
    ld c, l                                       ; $4be6: $4d
    cp b                                          ; $4be7: $b8
    cp b                                          ; $4be8: $b8
    ldh a, [$d6]                                  ; $4be9: $f0 $d6
    ld hl, sp+$41                                 ; $4beb: $f8 $41
    add b                                         ; $4bed: $80
    nop                                           ; $4bee: $00
    xor d                                         ; $4bef: $aa
    ld bc, $a354                                  ; $4bf0: $01 $54 $a3
    dec hl                                        ; $4bf3: $2b
    rst $10                                       ; $4bf4: $d7
    xor $ff                                       ; $4bf5: $ee $ff
    nop                                           ; $4bf7: $00
    cp b                                          ; $4bf8: $b8
    ld a, [hl]                                    ; $4bf9: $7e
    ld h, a                                       ; $4bfa: $67
    jr c, jr_0c9_4bc8                             ; $4bfb: $38 $cb

    inc [hl]                                      ; $4bfd: $34
    dec a                                         ; $4bfe: $3d
    ldh a, [rSB]                                  ; $4bff: $f0 $01
    ld h, a                                       ; $4c01: $67
    ld hl, sp-$1e                                 ; $4c02: $f8 $e2
    db $fd                                        ; $4c04: $fd
    add hl, de                                    ; $4c05: $19
    cp $a4                                        ; $4c06: $fe $a4
    ld [c], a                                     ; $4c08: $e2
    ld bc, $b300                                  ; $4c09: $01 $00 $b3
    ld c, a                                       ; $4c0c: $4f
    ld c, e                                       ; $4c0d: $4b
    cp a                                          ; $4c0e: $bf
    db $fd                                        ; $4c0f: $fd
    ld b, $54                                     ; $4c10: $06 $54
    cpl                                           ; $4c12: $2f
    nop                                           ; $4c13: $00
    and $1f                                       ; $4c14: $e6 $1f
    inc sp                                        ; $4c16: $33
    rst $38                                       ; $4c17: $ff
    and c                                         ; $4c18: $a1
    ret nz                                        ; $4c19: $c0

    ld b, d                                       ; $4c1a: $42
    add b                                         ; $4c1b: $80
    nop                                           ; $4c1c: $00
    sub l                                         ; $4c1d: $95
    nop                                           ; $4c1e: $00
    ld l, d                                       ; $4c1f: $6a
    add l                                         ; $4c20: $85
    ld [hl], h                                    ; $4c21: $74
    adc e                                         ; $4c22: $8b
    add hl, hl                                    ; $4c23: $29
    rst $10                                       ; $4c24: $d7
    ld b, b                                       ; $4c25: $40
    add e                                         ; $4c26: $83
    ld [hl], b                                    ; $4c27: $70
    ld [$a7ff], sp                                ; $4c28: $08 $ff $a7
    ld a, b                                       ; $4c2b: $78
    ld e, l                                       ; $4c2c: $5d
    ld [c], a                                     ; $4c2d: $e2
    ld l, d                                       ; $4c2e: $6a
    nop                                           ; $4c2f: $00
    push af                                       ; $4c30: $f5
    ld a, [hl-]                                   ; $4c31: $3a
    ret nz                                        ; $4c32: $c0

    ld a, a                                       ; $4c33: $7f
    add b                                         ; $4c34: $80
    cp a                                          ; $4c35: $bf
    ret nz                                        ; $4c36: $c0

    sub a                                         ; $4c37: $97
    nop                                           ; $4c38: $00
    add sp, $4a                                   ; $4c39: $e8 $4a
    push af                                       ; $4c3b: $f5
    xor b                                         ; $4c3c: $a8
    ld a, a                                       ; $4c3d: $7f
    ld e, [hl]                                    ; $4c3e: $5e
    cp a                                          ; $4c3f: $bf
    add hl, de                                    ; $4c40: $19
    nop                                           ; $4c41: $00
    rst $38                                       ; $4c42: $ff
    ld l, c                                       ; $4c43: $69
    ld e, $07                                     ; $4c44: $1e $07
    ld e, $83                                     ; $4c46: $1e $83
    rrca                                          ; $4c48: $0f
    ld c, e                                       ; $4c49: $4b
    nop                                           ; $4c4a: $00
    rlca                                          ; $4c4b: $07
    ld b, e                                       ; $4c4c: $43
    inc bc                                        ; $4c4d: $03
    dec l                                         ; $4c4e: $2d
    add e                                         ; $4c4f: $83
    ld e, c                                       ; $4c50: $59
    add e                                         ; $4c51: $83
    add hl, sp                                    ; $4c52: $39
    nop                                           ; $4c53: $00
    rst $00                                       ; $4c54: $c7
    jr nz, @+$01                                  ; $4c55: $20 $ff

    call c, $fdff                                 ; $4c57: $dc $ff $fd
    adc a                                         ; $4c5a: $8f
    jp $8f00                                      ; $4c5b: $c3 $00 $8f


    ld b, a                                       ; $4c5e: $47
    add a                                         ; $4c5f: $87
    cp [hl]                                       ; $4c60: $be
    rst $00                                       ; $4c61: $c7
    push bc                                       ; $4c62: $c5
    cp $f8                                        ; $4c63: $fe $f8
    nop                                           ; $4c65: $00
    cp $17                                        ; $4c66: $fe $17
    rst $38                                       ; $4c68: $ff
    sbc b                                         ; $4c69: $98
    rst $38                                       ; $4c6a: $ff
    inc l                                         ; $4c6b: $2c
    ei                                            ; $4c6c: $fb
    ld [hl], h                                    ; $4c6d: $74
    nop                                           ; $4c6e: $00
    ei                                            ; $4c6f: $fb
    or $fb                                        ; $4c70: $f6 $fb
    ei                                            ; $4c72: $fb
    cp $ee                                        ; $4c73: $fe $ee
    rra                                           ; $4c75: $1f
    ld l, d                                       ; $4c76: $6a
    nop                                           ; $4c77: $00
    rlca                                          ; $4c78: $07
    sub h                                         ; $4c79: $94
    db $eb                                        ; $4c7a: $eb
    and a                                         ; $4c7b: $a7
    rst $38                                       ; $4c7c: $ff
    dec hl                                        ; $4c7d: $2b
    rst $10                                       ; $4c7e: $d7
    adc c                                         ; $4c7f: $89
    jr nz, @+$04                                  ; $4c80: $20 $02

    add a                                         ; $4c82: $87
    add sp, $09                                   ; $4c83: $e8 $09
    ld bc, $41bf                                  ; $4c85: $01 $bf $41
    ret nz                                        ; $4c88: $c0

    rst $38                                       ; $4c89: $ff
    db $10                                        ; $4c8a: $10
    ld [$f5ff], a                                 ; $4c8b: $ea $ff $f5
    inc l                                         ; $4c8e: $2c
    inc bc                                        ; $4c8f: $03
    db $fc                                        ; $4c90: $fc
    ccf                                           ; $4c91: $3f
    jp c, Jump_000_003c                           ; $4c92: $da $3c $00

    add sp, $30                                   ; $4c95: $e8 $30
    ldh a, [$60]                                  ; $4c97: $f0 $60
    dec [hl]                                      ; $4c99: $35
    ld hl, sp-$10                                 ; $4c9a: $f8 $f0
    ld hl, sp+$00                                 ; $4c9c: $f8 $00
    ld hl, sp-$20                                 ; $4c9e: $f8 $e0
    ld a, [$7fe0]                                 ; $4ca0: $fa $e0 $7f
    ldh a, [rWX]                                  ; $4ca3: $f0 $4b
    inc [hl]                                      ; $4ca5: $34
    nop                                           ; $4ca6: $00
    dec [hl]                                      ; $4ca7: $35
    ld a, [de]                                    ; $4ca8: $1a
    cp d                                          ; $4ca9: $ba
    rra                                           ; $4caa: $1f
    or d                                          ; $4cab: $b2
    ld e, a                                       ; $4cac: $5f
    db $ec                                        ; $4cad: $ec
    cp [hl]                                       ; $4cae: $be
    nop                                           ; $4caf: $00
    sbc d                                         ; $4cb0: $9a
    db $fc                                        ; $4cb1: $fc
    ld [hl], b                                    ; $4cb2: $70
    ld hl, sp-$60                                 ; $4cb3: $f8 $a0
    ld [hl], b                                    ; $4cb5: $70
    ld [hl], b                                    ; $4cb6: $70
    and b                                         ; $4cb7: $a0
    nop                                           ; $4cb8: $00
    inc l                                         ; $4cb9: $2c
    ldh [$f4], a                                  ; $4cba: $e0 $f4
    ld h, b                                       ; $4cbc: $60
    cp d                                          ; $4cbd: $ba
    ld a, l                                       ; $4cbe: $7d
    add hl, sp                                    ; $4cbf: $39
    ld e, $40                                     ; $4cc0: $1e $40
    add hl, bc                                    ; $4cc2: $09
    add b                                         ; $4cc3: $80
    ld bc, $0305                                  ; $4cc4: $01 $05 $03
    dec bc                                        ; $4cc7: $0b
    ld bc, $0112                                  ; $4cc8: $01 $12 $01
    nop                                           ; $4ccb: $00
    ld d, $01                                     ; $4ccc: $16 $01
    ld l, b                                       ; $4cce: $68
    rlca                                          ; $4ccf: $07
    ld l, l                                       ; $4cd0: $6d
    sub e                                         ; $4cd1: $93
    rst $10                                       ; $4cd2: $d7
    cp e                                          ; $4cd3: $bb
    db $10                                        ; $4cd4: $10
    xor e                                         ; $4cd5: $ab
    rst $38                                       ; $4cd6: $ff
    ld e, a                                       ; $4cd7: $5f
    jr nz, @+$03                                  ; $4cd8: $20 $01

    sbc $f5                                       ; $4cda: $de $f5
    ret nz                                        ; $4cdc: $c0

    db $fd                                        ; $4cdd: $fd
    ld bc, $a5da                                  ; $4cde: $01 $da $a5
    ld a, b                                       ; $4ce1: $78
    and a                                         ; $4ce2: $a7
    ld b, l                                       ; $4ce3: $45
    ei                                            ; $4ce4: $fb
    and h                                         ; $4ce5: $a4
    ld d, h                                       ; $4ce6: $54
    nop                                           ; $4ce7: $00
    ld bc, $ffbb                                  ; $4ce8: $01 $bb $ff
    ld l, a                                       ; $4ceb: $6f
    cp a                                          ; $4cec: $bf
    ld a, a                                       ; $4ced: $7f
    rra                                           ; $4cee: $1f
    pop hl                                        ; $4cef: $e1
    inc a                                         ; $4cf0: $3c
    ld [bc], a                                    ; $4cf1: $02
    inc b                                         ; $4cf2: $04
    jp hl                                         ; $4cf3: $e9


    ld a, [c]                                     ; $4cf4: $f2
    push af                                       ; $4cf5: $f5
    ld a, [$90a8]                                 ; $4cf6: $fa $a8 $90
    ld bc, $07d0                                  ; $4cf9: $01 $d0 $07
    nop                                           ; $4cfc: $00
    ret nz                                        ; $4cfd: $c0

    ld bc, $3f3f                                  ; $4cfe: $01 $3f $3f
    inc de                                        ; $4d01: $13
    ld a, a                                       ; $4d02: $7f
    add sp, $73                                   ; $4d03: $e8 $73
    nop                                           ; $4d05: $00
    ld a, e                                       ; $4d06: $7b
    ret nz                                        ; $4d07: $c0

    or l                                          ; $4d08: $b5
    ret nz                                        ; $4d09: $c0

    rst $30                                       ; $4d0a: $f7
    add b                                         ; $4d0b: $80
    rst $00                                       ; $4d0c: $c7
    xor b                                         ; $4d0d: $a8
    nop                                           ; $4d0e: $00
    adc h                                         ; $4d0f: $8c
    di                                            ; $4d10: $f3
    ld [hl], d                                    ; $4d11: $72
    ld hl, sp-$49                                 ; $4d12: $f8 $b7
    db $fc                                        ; $4d14: $fc
    ld hl, sp-$01                                 ; $4d15: $f8 $ff
    nop                                           ; $4d17: $00
    xor $ff                                       ; $4d18: $ee $ff
    call z, Call_0c9_40f3                         ; $4d1a: $cc $f3 $40
    pop hl                                        ; $4d1d: $e1
    ret nz                                        ; $4d1e: $c0

    ld b, b                                       ; $4d1f: $40
    nop                                           ; $4d20: $00
    ld a, [$bc40]                                 ; $4d21: $fa $40 $bc
    inc bc                                        ; $4d24: $03
    ld [hl], c                                    ; $4d25: $71
    rrca                                          ; $4d26: $0f
    dec hl                                        ; $4d27: $2b
    ld d, a                                       ; $4d28: $57
    ld b, b                                       ; $4d29: $40
    rlca                                          ; $4d2a: $07
    cp d                                          ; $4d2b: $ba
    inc bc                                        ; $4d2c: $03
    rst $10                                       ; $4d2d: $d7
    rst $38                                       ; $4d2e: $ff
    ld a, a                                       ; $4d2f: $7f
    rst $00                                       ; $4d30: $c7
    cp e                                          ; $4d31: $bb
    inc hl                                        ; $4d32: $23
    nop                                           ; $4d33: $00
    sub l                                         ; $4d34: $95
    add sp, $2a                                   ; $4d35: $e8 $2a
    push de                                       ; $4d37: $d5
    ld de, $a3ee                                  ; $4d38: $11 $ee $a3
    cp $10                                        ; $4d3b: $fe $10
    db $f4                                        ; $4d3d: $f4
    rst $38                                       ; $4d3e: $ff
    sub $aa                                       ; $4d3f: $d6 $aa
    nop                                           ; $4d41: $00
    ld a, l                                       ; $4d42: $7d
    rst $38                                       ; $4d43: $ff
    cp [hl]                                       ; $4d44: $be
    rrca                                          ; $4d45: $0f
    nop                                           ; $4d46: $00
    or a                                          ; $4d47: $b7
    ld c, $46                                     ; $4d48: $0e $46
    cp a                                          ; $4d4a: $bf
    xor $bf                                       ; $4d4b: $ee $bf
    ld a, [hl]                                    ; $4d4d: $7e
    rst $38                                       ; $4d4e: $ff
    nop                                           ; $4d4f: $00
    ld a, b                                       ; $4d50: $78
    rst $38                                       ; $4d51: $ff
    db $eb                                        ; $4d52: $eb
    pop af                                        ; $4d53: $f1
    xor d                                         ; $4d54: $aa
    pop bc                                        ; $4d55: $c1
    adc e                                         ; $4d56: $8b
    nop                                           ; $4d57: $00
    nop                                           ; $4d58: $00
    push de                                       ; $4d59: $d5
    nop                                           ; $4d5a: $00
    ei                                            ; $4d5b: $fb
    nop                                           ; $4d5c: $00
    ld l, [hl]                                    ; $4d5d: $6e
    add c                                         ; $4d5e: $81
    xor h                                         ; $4d5f: $ac
    ld d, e                                       ; $4d60: $53
    nop                                           ; $4d61: $00
    dec hl                                        ; $4d62: $2b
    call nc, $ad52                                ; $4d63: $d4 $52 $ad
    dec hl                                        ; $4d66: $2b
    rst $18                                       ; $4d67: $df
    db $ed                                        ; $4d68: $ed
    ld a, [c]                                     ; $4d69: $f2
    nop                                           ; $4d6a: $00
    ld d, d                                       ; $4d6b: $52
    db $fd                                        ; $4d6c: $fd
    jp hl                                         ; $4d6d: $e9


    ld a, a                                       ; $4d6e: $7f
    rst $38                                       ; $4d6f: $ff
    ld a, a                                       ; $4d70: $7f
    or $79                                        ; $4d71: $f6 $79
    nop                                           ; $4d73: $00
    ldh [$f0], a                                  ; $4d74: $e0 $f0
    ret nc                                        ; $4d76: $d0

    ldh [$da], a                                  ; $4d77: $e0 $da
    ldh [rNR22], a                                ; $4d79: $e0 $17
    add sp, $00                                   ; $4d7b: $e8 $00
    cp d                                          ; $4d7d: $ba
    push bc                                       ; $4d7e: $c5
    ld sp, hl                                     ; $4d7f: $f9
    sub $ec                                       ; $4d80: $d6 $ec
    ei                                            ; $4d82: $fb
    ld a, l                                       ; $4d83: $7d
    rst $38                                       ; $4d84: $ff
    add b                                         ; $4d85: $80
    ld c, d                                       ; $4d86: $4a
    ld a, [bc]                                    ; $4d87: $0a
    xor l                                         ; $4d88: $ad
    ld a, [$3c5b]                                 ; $4d89: $fa $5b $3c
    dec d                                         ; $4d8c: $15
    ld a, b                                       ; $4d8d: $78
    ld a, [c]                                     ; $4d8e: $f2
    nop                                           ; $4d8f: $00
    ld a, b                                       ; $4d90: $78
    ld a, [hl-]                                   ; $4d91: $3a
    ldh a, [$ef]                                  ; $4d92: $f0 $ef
    ldh a, [$f7]                                  ; $4d94: $f0 $f7
    ld hl, sp-$06                                 ; $4d96: $f8 $fa
    nop                                           ; $4d98: $00
    dec a                                         ; $4d99: $3d
    ld e, a                                       ; $4d9a: $5f
    inc c                                         ; $4d9b: $0c
    rst $18                                       ; $4d9c: $df
    ccf                                           ; $4d9d: $3f
    ld l, [hl]                                    ; $4d9e: $6e
    rra                                           ; $4d9f: $1f
    ld e, $08                                     ; $4da0: $1e $08
    inc bc                                        ; $4da2: $03
    sub h                                         ; $4da3: $94
    inc bc                                        ; $4da4: $03
    and l                                         ; $4da5: $a5
    add [hl]                                      ; $4da6: $86
    inc bc                                        ; $4da7: $03
    ld [hl], a                                    ; $4da8: $77
    dec bc                                        ; $4da9: $0b
    jr z, jr_0c9_4dac                             ; $4daa: $28 $00

jr_0c9_4dac:
    sub a                                         ; $4dac: $97
    call nc, $e001                                ; $4dad: $d4 $01 $e0
    dec bc                                        ; $4db0: $0b
    xor c                                         ; $4db1: $a9
    ld d, a                                       ; $4db2: $57
    and l                                         ; $4db3: $a5
    db $10                                        ; $4db4: $10
    ld e, a                                       ; $4db5: $5f
    rst $28                                       ; $4db6: $ef
    cp [hl]                                       ; $4db7: $be
    ld c, d                                       ; $4db8: $4a
    ld a, [bc]                                    ; $4db9: $0a
    or $eb                                        ; $4dba: $f6 $eb
    adc e                                         ; $4dbc: $8b
    rst $38                                       ; $4dbd: $ff
    nop                                           ; $4dbe: $00
    db $ed                                        ; $4dbf: $ed
    cp $d9                                        ; $4dc0: $fe $d9
    cp $e8                                        ; $4dc2: $fe $e8
    inc e                                         ; $4dc4: $1c
    adc d                                         ; $4dc5: $8a
    inc c                                         ; $4dc6: $0c
    nop                                           ; $4dc7: $00
    dec c                                         ; $4dc8: $0d
    ld b, $06                                     ; $4dc9: $06 $06
    rlca                                          ; $4dcb: $07
    ld b, a                                       ; $4dcc: $47
    inc bc                                        ; $4dcd: $03
    db $10                                        ; $4dce: $10
    ld hl, sp+$00                                 ; $4dcf: $f8 $00
    cp b                                          ; $4dd1: $b8
    dec c                                         ; $4dd2: $0d
    dec e                                         ; $4dd3: $1d
    rrca                                          ; $4dd4: $0f
    rra                                           ; $4dd5: $1f
    rlca                                          ; $4dd6: $07
    xor h                                         ; $4dd7: $ac
    rlca                                          ; $4dd8: $07
    add b                                         ; $4dd9: $80
    ld c, d                                       ; $4dda: $4a
    ld a, [bc]                                    ; $4ddb: $0a
    ld a, d                                       ; $4ddc: $7a
    rst $18                                       ; $4ddd: $df
    ld b, b                                       ; $4dde: $40
    ld b, $25                                     ; $4ddf: $06 $25
    dec b                                         ; $4de1: $05
    nop                                           ; $4de2: $00
    ld [hl], l                                    ; $4de3: $75
    ld l, d                                       ; $4de4: $6a
    and b                                         ; $4de5: $a0
    ld a, a                                       ; $4de6: $7f
    ld b, b                                       ; $4de7: $40
    rst $38                                       ; $4de8: $ff
    rst $38                                       ; $4de9: $ff
    rst $38                                       ; $4dea: $ff
    nop                                           ; $4deb: $00
    inc e                                         ; $4dec: $1c
    rst $28                                       ; $4ded: $ef
    and h                                         ; $4dee: $a4
    ld c, a                                       ; $4def: $4f
    ld e, b                                       ; $4df0: $58
    adc a                                         ; $4df1: $8f

jr_0c9_4df2:
    and h                                         ; $4df2: $a4
    ld c, a                                       ; $4df3: $4f
    inc b                                         ; $4df4: $04
    dec h                                         ; $4df5: $25
    ld a, d                                       ; $4df6: $7a
    ret nz                                        ; $4df7: $c0

    ld a, a                                       ; $4df8: $7f
    ld h, b                                       ; $4df9: $60
    stop                                          ; $4dfa: $10 $00
    rla                                           ; $4dfc: $17
    db $e3                                        ; $4dfd: $e3
    nop                                           ; $4dfe: $00
    xor e                                         ; $4dff: $ab
    ld d, e                                       ; $4e00: $53
    rlca                                          ; $4e01: $07

Call_0c9_4e02:
    ei                                            ; $4e02: $fb
    dec bc                                        ; $4e03: $0b
    rst $30                                       ; $4e04: $f7
    ld d, l                                       ; $4e05: $55
    ld hl, $0200                                  ; $4e06: $21 $00 $02
    db $fd                                        ; $4e09: $fd
    dec b                                         ; $4e0a: $05
    ei                                            ; $4e0b: $fb
    rst $38                                       ; $4e0c: $ff
    rst $38                                       ; $4e0d: $ff
    ld a, [bc]                                    ; $4e0e: $0a
    rst $30                                       ; $4e0f: $f7
    nop                                           ; $4e10: $00
    ld d, h                                       ; $4e11: $54
    and a                                         ; $4e12: $a7
    ld a, [bc]                                    ; $4e13: $0a
    rst $30                                       ; $4e14: $f7
    nop                                           ; $4e15: $00
    rst $38                                       ; $4e16: $ff
    ld h, $7c                                     ; $4e17: $26 $7c
    nop                                           ; $4e19: $00
    add $7c                                       ; $4e1a: $c6 $7c
    ld h, [hl]                                    ; $4e1c: $66
    db $fc                                        ; $4e1d: $fc
    cp $fc                                        ; $4e1e: $fe $fc
    ld d, $e4                                     ; $4e20: $16 $e4
    nop                                           ; $4e22: $00
    xor [hl]                                      ; $4e23: $ae
    ld d, h                                       ; $4e24: $54
    ld b, $fc                                     ; $4e25: $06 $fc
    ld c, $f4                                     ; $4e27: $0e $f4
    xor l                                         ; $4e29: $ad
    ld a, l                                       ; $4e2a: $7d
    nop                                           ; $4e2b: $00
    rst $18                                       ; $4e2c: $df
    ccf                                           ; $4e2d: $3f
    ld a, [c]                                     ; $4e2e: $f2
    rra                                           ; $4e2f: $1f
    db $fd                                        ; $4e30: $fd
    inc bc                                        ; $4e31: $03
    cp $01                                        ; $4e32: $fe $01
    nop                                           ; $4e34: $00
    db $fd                                        ; $4e35: $fd
    inc bc                                        ; $4e36: $03
    di                                            ; $4e37: $f3
    rrca                                          ; $4e38: $0f
    add a                                         ; $4e39: $87
    ld a, a                                       ; $4e3a: $7f
    rst $18                                       ; $4e3b: $df
    ld h, b                                       ; $4e3c: $60
    nop                                           ; $4e3d: $00
    rst $18                                       ; $4e3e: $df
    ld h, b                                       ; $4e3f: $60
    rst $38                                       ; $4e40: $ff
    jr nz, jr_0c9_4df2                            ; $4e41: $20 $af

    ld [hl], b                                    ; $4e43: $70
    rst $28                                       ; $4e44: $ef
    stop                                          ; $4e45: $10 $00
    ld c, a                                       ; $4e47: $4f
    or b                                          ; $4e48: $b0
    and a                                         ; $4e49: $a7
    ld e, b                                       ; $4e4a: $58
    rlca                                          ; $4e4b: $07
    ld hl, sp-$01                                 ; $4e4c: $f8 $ff
    nop                                           ; $4e4e: $00
    add b                                         ; $4e4f: $80
    ld [bc], a                                    ; $4e50: $02
    ld [$55aa], sp                                ; $4e51: $08 $aa $55
    rst $38                                       ; $4e54: $ff
    nop                                           ; $4e55: $00
    ld d, l                                       ; $4e56: $55
    xor d                                         ; $4e57: $aa
    xor d                                         ; $4e58: $aa
    inc b                                         ; $4e59: $04
    ld d, l                                       ; $4e5a: $55
    nop                                           ; $4e5b: $00
    rst $38                                       ; $4e5c: $ff
    rst $38                                       ; $4e5d: $ff
    ret nz                                        ; $4e5e: $c0

    db $10                                        ; $4e5f: $10
    ld e, b                                       ; $4e60: $58
    ccf                                           ; $4e61: $3f
    db $e3                                        ; $4e62: $e3
    nop                                           ; $4e63: $00

jr_0c9_4e64:
    ld a, a                                       ; $4e64: $7f
    ret nz                                        ; $4e65: $c0

    ld a, a                                       ; $4e66: $7f
    ret nz                                        ; $4e67: $c0

    ld c, d                                       ; $4e68: $4a
    or l                                          ; $4e69: $b5
    rst $18                                       ; $4e6a: $df
    jr nz, jr_0c9_4e6d                            ; $4e6b: $20 $00

jr_0c9_4e6d:
    push de                                       ; $4e6d: $d5
    ld a, [hl+]                                   ; $4e6e: $2a
    ld [$6015], a                                 ; $4e6f: $ea $15 $60
    sbc a                                         ; $4e72: $9f
    db $dd                                        ; $4e73: $dd
    ld [c], a                                     ; $4e74: $e2
    nop                                           ; $4e75: $00
    xor $f1                                       ; $4e76: $ee $f1
    rst $30                                       ; $4e78: $f7
    ld hl, sp-$05                                 ; $4e79: $f8 $fb
    db $fc                                        ; $4e7b: $fc
    db $fd                                        ; $4e7c: $fd
    cp $10                                        ; $4e7d: $fe $10
    cp $ff                                        ; $4e7f: $fe $ff
    cp $98                                        ; $4e81: $fe $98
    nop                                           ; $4e83: $00
    ld [hl], l                                    ; $4e84: $75
    ld a, [hl+]                                   ; $4e85: $2a
    ld h, b                                       ; $4e86: $60
    ccf                                           ; $4e87: $3f
    nop                                           ; $4e88: $00
    ld h, b                                       ; $4e89: $60
    ccf                                           ; $4e8a: $3f
    ld a, a                                       ; $4e8b: $7f
    ccf                                           ; $4e8c: $3f
    ld a, h                                       ; $4e8d: $7c
    cpl                                           ; $4e8e: $2f
    ld h, h                                       ; $4e8f: $64
    ccf                                           ; $4e90: $3f

jr_0c9_4e91:
    ld b, b                                       ; $4e91: $40
    ld a, b                                       ; $4e92: $78
    inc b                                         ; $4e93: $04
    nop                                           ; $4e94: $00
    xor a                                         ; $4e95: $af
    rst $38                                       ; $4e96: $ff
    ld b, b                                       ; $4e97: $40
    rst $38                                       ; $4e98: $ff
    adc c                                         ; $4e99: $89
    or $00                                        ; $4e9a: $f6 $00
    ld b, b                                       ; $4e9c: $40
    rst $38                                       ; $4e9d: $ff
    add b                                         ; $4e9e: $80
    rst $38                                       ; $4e9f: $ff
    db $fd                                        ; $4ea0: $fd
    rst $38                                       ; $4ea1: $ff
    ld a, [hl-]                                   ; $4ea2: $3a
    db $dd                                        ; $4ea3: $dd
    nop                                           ; $4ea4: $00
    ld d, b                                       ; $4ea5: $50
    cp a                                          ; $4ea6: $bf
    push af                                       ; $4ea7: $f5
    rst $38                                       ; $4ea8: $ff
    xor b                                         ; $4ea9: $a8
    rra                                           ; $4eaa: $1f
    ld d, b                                       ; $4eab: $50
    sbc a                                         ; $4eac: $9f
    nop                                           ; $4ead: $00
    xor d                                         ; $4eae: $aa
    ld e, l                                       ; $4eaf: $5d
    db $10                                        ; $4eb0: $10
    rst $38                                       ; $4eb1: $ff
    ld a, d                                       ; $4eb2: $7a
    rst $38                                       ; $4eb3: $ff
    xor e                                         ; $4eb4: $ab
    ld b, c                                       ; $4eb5: $41
    nop                                           ; $4eb6: $00
    dec d                                         ; $4eb7: $15
    jp hl                                         ; $4eb8: $e9


    ld d, a                                       ; $4eb9: $57
    rst $38                                       ; $4eba: $ff
    dec hl                                        ; $4ebb: $2b
    pop de                                        ; $4ebc: $d1
    inc d                                         ; $4ebd: $14
    jp hl                                         ; $4ebe: $e9


    jr nz, jr_0c9_4e64                            ; $4ebf: $20 $a3

    ld e, l                                       ; $4ec1: $5d
    ld l, d                                       ; $4ec2: $6a
    nop                                           ; $4ec3: $00
    rst $38                                       ; $4ec4: $ff
    ld [$85f7], sp                                ; $4ec5: $08 $f7 $85
    ld a, [$f600]                                 ; $4ec8: $fa $00 $f6
    db $fc                                        ; $4ecb: $fc
    xor [hl]                                      ; $4ecc: $ae
    inc e                                         ; $4ecd: $1c
    ld d, [hl]                                    ; $4ece: $56
    sbc h                                         ; $4ecf: $9c
    xor [hl]                                      ; $4ed0: $ae
    ld e, h                                       ; $4ed1: $5c
    nop                                           ; $4ed2: $00
    ld d, $fc                                     ; $4ed3: $16 $fc
    ld a, [hl]                                    ; $4ed5: $7e
    db $fc                                        ; $4ed6: $fc
    xor [hl]                                      ; $4ed7: $ae
    ld b, h                                       ; $4ed8: $44
    ld d, $ec                                     ; $4ed9: $16 $ec
    nop                                           ; $4edb: $00
    nop                                           ; $4edc: $00
    ldh [$e0], a                                  ; $4edd: $e0 $e0
    db $10                                        ; $4edf: $10
    ldh [rNR10], a                                ; $4ee0: $e0 $10
    ret nz                                        ; $4ee2: $c0

    jr nz, jr_0c9_4ee5                            ; $4ee3: $20 $00

jr_0c9_4ee5:
    sub b                                         ; $4ee5: $90
    ld d, b                                       ; $4ee6: $50
    jr z, jr_0c9_4e91                             ; $4ee7: $28 $a8

    push de                                       ; $4ee9: $d5
    push de                                       ; $4eea: $d5
    ld a, [$08fa]                                 ; $4eeb: $fa $fa $08
    rst $38                                       ; $4eee: $ff
    ld bc, $01fe                                  ; $4eef: $01 $fe $01
    and h                                         ; $4ef2: $a4
    ld [$02fd], sp                                ; $4ef3: $08 $fd $02
    cp $00                                        ; $4ef6: $fe $00
    ld bc, $0ef1                                  ; $4ef8: $01 $f1 $0e

jr_0c9_4efb:
    rst $20                                       ; $4efb: $e7
    ld hl, sp-$0d                                 ; $4efc: $f8 $f3
    inc c                                         ; $4efe: $0c
    ei                                            ; $4eff: $fb
    nop                                           ; $4f00: $00
    inc b                                         ; $4f01: $04
    rst $30                                       ; $4f02: $f7
    ld [$0cf3], sp                                ; $4f03: $08 $f3 $0c
    rst $28                                       ; $4f06: $ef
    db $10                                        ; $4f07: $10
    rst $28                                       ; $4f08: $ef
    ld bc, $f710                                  ; $4f09: $01 $10 $f7
    jr @+$01                                      ; $4f0c: $18 $ff

    rrca                                          ; $4f0e: $0f
    rst $08                                       ; $4f0f: $cf
    jr nc, jr_0c9_4f1a                            ; $4f10: $30 $08

    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    ld [$38c7], sp                                ; $4f14: $08 $c7 $38
    rst $28                                       ; $4f17: $ef
    db $10                                        ; $4f18: $10
    rst $18                                       ; $4f19: $df

jr_0c9_4f1a:
    jr nz, jr_0c9_4efb                            ; $4f1a: $20 $df

    jr @+$22                                      ; $4f1c: $18 $20

    rst $38                                       ; $4f1e: $ff
    jr nz, @-$2e                                  ; $4f1f: $20 $d0

    jr @-$28                                      ; $4f21: $18 $d6

    ld [$807f], sp                                ; $4f23: $08 $7f $80
    cp a                                          ; $4f26: $bf
    ld bc, $bc40                                  ; $4f27: $01 $40 $bc
    ld a, a                                       ; $4f2a: $7f
    rst $00                                       ; $4f2b: $c7
    ld hl, sp-$45                                 ; $4f2c: $f8 $bb
    call nz, Call_000_18e4                        ; $4f2e: $c4 $e4 $18
    ld bc, $c03f                                  ; $4f31: $01 $3f $c0
    ld c, a                                       ; $4f34: $4f
    or b                                          ; $4f35: $b0
    or e                                          ; $4f36: $b3
    call z, $ae6f                                 ; $4f37: $cc $6f $ae
    nop                                           ; $4f3a: $00
    jr nz, jr_0c9_4fa6                            ; $4f3b: $20 $69

    ld [hl], $b4                                  ; $4f3d: $36 $b4
    ld [$3f7d], sp                                ; $4f3f: $08 $7d $3f
    ld a, d                                       ; $4f42: $7a
    dec a                                         ; $4f43: $3d
    ld [hl], b                                    ; $4f44: $70
    ld [$283f], sp                                ; $4f45: $08 $3f $28
    rst $18                                       ; $4f48: $df
    db $10                                        ; $4f49: $10
    ld e, [hl]                                    ; $4f4a: $5e
    ld bc, $7fe0                                  ; $4f4b: $01 $e0 $7f
    ld l, c                                       ; $4f4e: $69
    ld [$c0f6], sp                                ; $4f4f: $08 $f6 $c0
    ld a, a                                       ; $4f52: $7f
    jr nz, @+$6a                                  ; $4f53: $20 $68

    ld bc, $fd03                                  ; $4f55: $01 $03 $fd
    ld bc, $ff00                                  ; $4f58: $01 $00 $ff
    ld d, a                                       ; $4f5b: $57
    rst $38                                       ; $4f5c: $ff
    ld a, [hl+]                                   ; $4f5d: $2a
    rst $10                                       ; $4f5e: $d7
    ld d, h                                       ; $4f5f: $54
    adc a                                         ; $4f60: $8f
    ld a, [hl+]                                   ; $4f61: $2a
    nop                                           ; $4f62: $00
    rst $00                                       ; $4f63: $c7
    inc d                                         ; $4f64: $14
    rst $28                                       ; $4f65: $ef
    rst $38                                       ; $4f66: $ff
    rst $38                                       ; $4f67: $ff
    and d                                         ; $4f68: $a2
    db $dd                                        ; $4f69: $dd
    add b                                         ; $4f6a: $80
    add c                                         ; $4f6b: $81
    ld a, [hl]                                    ; $4f6c: $7e
    ld bc, $fd02                                  ; $4f6d: $01 $02 $fd
    dec d                                         ; $4f70: $15
    pop hl                                        ; $4f71: $e1
    xor d                                         ; $4f72: $aa
    ld d, l                                       ; $4f73: $55
    ld l, b                                       ; $4f74: $68
    add hl, bc                                    ; $4f75: $09
    dec c                                         ; $4f76: $0d
    rlca                                          ; $4f77: $07
    db $fc                                        ; $4f78: $fc
    dec b                                         ; $4f79: $05
    cp $c4                                        ; $4f7a: $fe $c4
    nop                                           ; $4f7c: $00
    jr nz, jr_0c9_4faf                            ; $4f7d: $20 $30

    nop                                           ; $4f7f: $00
    ld b, b                                       ; $4f80: $40
    add hl, bc                                    ; $4f81: $09
    sbc c                                         ; $4f82: $99
    and b                                         ; $4f83: $a0
    ld bc, $ff01                                  ; $4f84: $01 $01 $ff
    jr nz, @+$1a                                  ; $4f87: $20 $18

    db $10                                        ; $4f89: $10

jr_0c9_4f8a:
    jr nc, jr_0c9_4f8a                            ; $4f8a: $30 $fe

    add b                                         ; $4f8c: $80
    inc b                                         ; $4f8d: $04
    ld bc, $2099                                  ; $4f8e: $01 $99 $20
    jr c, jr_0c9_4ff3                             ; $4f91: $38 $60

    rst $38                                       ; $4f93: $ff

jr_0c9_4f94:
    ld h, b                                       ; $4f94: $60
    jr jr_0c9_4fc7                                ; $4f95: $18 $30

    jr z, jr_0c9_4f9d                             ; $4f97: $28 $04

    rst $38                                       ; $4f99: $ff
    ld b, b                                       ; $4f9a: $40
    ld e, b                                       ; $4f9b: $58
    ld h, c                                       ; $4f9c: $61

jr_0c9_4f9d:
    nop                                           ; $4f9d: $00
    ld [hl-], a                                   ; $4f9e: $32
    ld bc, $086a                                  ; $4f9f: $01 $6a $08
    add sp, $3f                                   ; $4fa2: $e8 $3f
    ret nc                                        ; $4fa4: $d0

    ld a, a                                       ; $4fa5: $7f

jr_0c9_4fa6:
    ld l, $08                                     ; $4fa6: $2e $08
    add b                                         ; $4fa8: $80
    sub b                                         ; $4fa9: $90
    jr z, jr_0c9_4f94                             ; $4faa: $28 $e8

    ld b, $f5                                     ; $4fac: $06 $f5
    ld a, [bc]                                    ; $4fae: $0a

jr_0c9_4faf:
    di                                            ; $4faf: $f3
    ld [$0062], sp                                ; $4fb0: $08 $62 $00
    sbc l                                         ; $4fb3: $9d
    ld hl, sp+$04                                 ; $4fb4: $f8 $04
    rst $20                                       ; $4fb6: $e7
    jr @+$0d                                      ; $4fb7: $18 $0b

    and b                                         ; $4fb9: $a0
    xor $00                                       ; $4fba: $ee $00
    ld bc, $14e1                                  ; $4fbc: $01 $e1 $14
    or a                                          ; $4fbf: $b7
    ld c, h                                       ; $4fc0: $4c
    ld c, $d1                                     ; $4fc1: $0e $d1
    ld h, $00                                     ; $4fc3: $26 $00
    jr c, @-$1e                                   ; $4fc5: $38 $e0

jr_0c9_4fc7:
    rlca                                          ; $4fc7: $07
    ld h, e                                       ; $4fc8: $63
    ld e, [hl]                                    ; $4fc9: $5e
    jp hl                                         ; $4fca: $e9


    ld h, $e7                                     ; $4fcb: $26 $e7
    nop                                           ; $4fcd: $00
    jr jr_0c9_503e                                ; $4fce: $18 $6e

    sub b                                         ; $4fd0: $90
    adc $31                                       ; $4fd1: $ce $31
    ei                                            ; $4fd3: $fb
    ld [$0066], sp                                ; $4fd4: $08 $66 $00
    ld e, c                                       ; $4fd7: $59
    ld l, [hl]                                    ; $4fd8: $6e
    pop af                                        ; $4fd9: $f1
    xor a                                         ; $4fda: $af
    ld d, d                                       ; $4fdb: $52
    cp [hl]                                       ; $4fdc: $be
    sub b                                         ; $4fdd: $90
    dec a                                         ; $4fde: $3d
    nop                                           ; $4fdf: $00
    sub b                                         ; $4fe0: $90
    cp [hl]                                       ; $4fe1: $be
    nop                                           ; $4fe2: $00

jr_0c9_4fe3:
    ei                                            ; $4fe3: $fb
    inc b                                         ; $4fe4: $04
    xor [hl]                                      ; $4fe5: $ae
    ld e, e                                       ; $4fe6: $5b
    ld e, l                                       ; $4fe7: $5d
    nop                                           ; $4fe8: $00
    add [hl]                                      ; $4fe9: $86
    ld a, e                                       ; $4fea: $7b
    xor h                                         ; $4feb: $ac
    adc d                                         ; $4fec: $8a
    ld c, c                                       ; $4fed: $49
    sbc [hl]                                      ; $4fee: $9e
    daa                                           ; $4fef: $27
    db $eb                                        ; $4ff0: $eb
    nop                                           ; $4ff1: $00
    xor l                                         ; $4ff2: $ad

jr_0c9_4ff3:
    pop hl                                        ; $4ff3: $e1
    ld e, $47                                     ; $4ff4: $1e $47
    ld h, b                                       ; $4ff6: $60
    push hl                                       ; $4ff7: $e5
    jr jr_0c9_4fe3                                ; $4ff8: $18 $e9

    nop                                           ; $4ffa: $00
    rla                                           ; $4ffb: $17
    srl l                                         ; $4ffc: $cb $3d
    jp z, $7011                                   ; $4ffe: $ca $11 $70

    xor l                                         ; $5001: $ad
    add l                                         ; $5002: $85
    nop                                           ; $5003: $00
    ld a, b                                       ; $5004: $78
    ld a, a                                       ; $5005: $7f
    nop                                           ; $5006: $00
    dec h                                         ; $5007: $25
    sbc d                                         ; $5008: $9a
    halt                                          ; $5009: $76
    add c                                         ; $500a: $81
    pop bc                                        ; $500b: $c1
    nop                                           ; $500c: $00
    sbc [hl]                                      ; $500d: $9e
    push af                                       ; $500e: $f5
    dec bc                                        ; $500f: $0b
    ret                                           ; $5010: $c9


    inc [hl]                                      ; $5011: $34
    xor h                                         ; $5012: $ac
    ld de, $00bf                                  ; $5013: $11 $bf $00
    ld h, h                                       ; $5016: $64
    cp l                                          ; $5017: $bd
    ld b, b                                       ; $5018: $40
    ld e, [hl]                                    ; $5019: $5e
    and c                                         ; $501a: $a1
    db $fd                                        ; $501b: $fd
    inc bc                                        ; $501c: $03
    rst $28                                       ; $501d: $ef
    nop                                           ; $501e: $00
    ld [de], a                                    ; $501f: $12
    rst $38                                       ; $5020: $ff
    ld b, b                                       ; $5021: $40
    xor e                                         ; $5022: $ab
    ld a, h                                       ; $5023: $7c
    and l                                         ; $5024: $a5
    rst $18                                       ; $5025: $df
    or e                                          ; $5026: $b3
    nop                                           ; $5027: $00
    ld e, h                                       ; $5028: $5c
    ld d, e                                       ; $5029: $53
    inc a                                         ; $502a: $3c
    and l                                         ; $502b: $a5
    jp c, Jump_000_03bc                           ; $502c: $da $bc $03

    or c                                          ; $502f: $b1
    nop                                           ; $5030: $00

jr_0c9_5031:
    ld c, [hl]                                    ; $5031: $4e
    sub l                                         ; $5032: $95
    adc d                                         ; $5033: $8a
    jp c, Jump_000_2e05                           ; $5034: $da $05 $2e

    ret c                                         ; $5037: $d8

    ld l, [hl]                                    ; $5038: $6e
    nop                                           ; $5039: $00
    and b                                         ; $503a: $a0
    and $13                                       ; $503b: $e6 $13
    ld [de], a                                    ; $503d: $12

jr_0c9_503e:
    and h                                         ; $503e: $a4
    ld a, d                                       ; $503f: $7a
    add b                                         ; $5040: $80
    db $fd                                        ; $5041: $fd
    nop                                           ; $5042: $00
    ret nz                                        ; $5043: $c0

    ret c                                         ; $5044: $d8

    and $af                                       ; $5045: $e6 $af
    ld d, h                                       ; $5047: $54
    swap h                                        ; $5048: $cb $34
    ei                                            ; $504a: $fb
    nop                                           ; $504b: $00
    rrca                                          ; $504c: $0f
    sbc [hl]                                      ; $504d: $9e
    ld h, e                                       ; $504e: $63
    add $35                                       ; $504f: $c6 $35
    dec l                                         ; $5051: $2d
    ld d, e                                       ; $5052: $53
    xor [hl]                                      ; $5053: $ae
    nop                                           ; $5054: $00
    ld d, d                                       ; $5055: $52
    sbc c                                         ; $5056: $99
    halt                                          ; $5057: $76
    ld e, c                                       ; $5058: $59
    cp a                                          ; $5059: $bf
    add [hl]                                      ; $505a: $86
    ld l, e                                       ; $505b: $6b
    sbc b                                         ; $505c: $98
    nop                                           ; $505d: $00
    ld h, a                                       ; $505e: $67
    or e                                          ; $505f: $b3
    ld d, h                                       ; $5060: $54
    ld l, [hl]                                    ; $5061: $6e
    ld a, e                                       ; $5062: $7b
    db $ed                                        ; $5063: $ed
    add hl, bc                                    ; $5064: $09
    db $ed                                        ; $5065: $ed
    nop                                           ; $5066: $00
    ld [de], a                                    ; $5067: $12
    ld d, e                                       ; $5068: $53
    ld l, h                                       ; $5069: $6c
    sbc d                                         ; $506a: $9a
    ld d, l                                       ; $506b: $55
    scf                                           ; $506c: $37

jr_0c9_506d:
    add c                                         ; $506d: $81
    ld [$7700], sp                                ; $506e: $08 $00 $77
    ld c, [hl]                                    ; $5071: $4e
    jr nc, jr_0c9_5031                            ; $5072: $30 $bd

    ld b, $d6                                     ; $5074: $06 $d6
    ld a, l                                       ; $5076: $7d
    ld a, d                                       ; $5077: $7a
    nop                                           ; $5078: $00
    add l                                         ; $5079: $85
    ld e, e                                       ; $507a: $5b
    and h                                         ; $507b: $a4
    ret c                                         ; $507c: $d8

    rra                                           ; $507d: $1f
    ld c, $f7                                     ; $507e: $0e $f7
    ld [$9100], a                                 ; $5080: $ea $00 $91
    cp $14                                        ; $5083: $fe $14
    ld l, a                                       ; $5085: $6f
    sub b                                         ; $5086: $90
    cp d                                          ; $5087: $ba
    ld b, h                                       ; $5088: $44
    or e                                          ; $5089: $b3
    nop                                           ; $508a: $00
    rst $08                                       ; $508b: $cf
    sbc [hl]                                      ; $508c: $9e
    ld h, h                                       ; $508d: $64
    ld l, a                                       ; $508e: $6f
    jr nc, jr_0c9_506d                            ; $508f: $30 $dc

    ld bc, $00f8                                  ; $5091: $01 $f8 $00
    inc hl                                        ; $5094: $23
    rst $18                                       ; $5095: $df
    nop                                           ; $5096: $00
    db $db                                        ; $5097: $db
    jr nz, jr_0c9_50f7                            ; $5098: $20 $5d

    ld b, b                                       ; $509a: $40
    ld a, a                                       ; $509b: $7f
    nop                                           ; $509c: $00
    ld b, $6b                                     ; $509d: $06 $6b
    sub h                                         ; $509f: $94
    call $de13                                    ; $50a0: $cd $13 $de
    ld hl, $0044                                  ; $50a3: $21 $44 $00
    ld [hl], c                                    ; $50a6: $71
    ld a, h                                       ; $50a7: $7c
    inc bc                                        ; $50a8: $03
    push de                                       ; $50a9: $d5
    cp e                                          ; $50aa: $bb
    db $db                                        ; $50ab: $db
    ld b, $78                                     ; $50ac: $06 $78
    nop                                           ; $50ae: $00
    rst $20                                       ; $50af: $e7
    ld d, a                                       ; $50b0: $57
    xor b                                         ; $50b1: $a8
    db $fd                                        ; $50b2: $fd
    adc $d6                                       ; $50b3: $ce $d6
    xor c                                         ; $50b5: $a9
    sbc d                                         ; $50b6: $9a
    nop                                           ; $50b7: $00
    ld [hl], h                                    ; $50b8: $74
    cp h                                          ; $50b9: $bc
    ld c, d                                       ; $50ba: $4a
    and e                                         ; $50bb: $a3
    ld [hl], h                                    ; $50bc: $74
    cp e                                          ; $50bd: $bb
    ld h, b                                       ; $50be: $60
    ld a, [$0300]                                 ; $50bf: $fa $00 $03
    ld [hl], $dd                                  ; $50c2: $36 $dd
    xor e                                         ; $50c4: $ab
    ld a, h                                       ; $50c5: $7c
    ld [c], a                                     ; $50c6: $e2
    xor c                                         ; $50c7: $a9
    ld b, d                                       ; $50c8: $42
    nop                                           ; $50c9: $00
    cp l                                          ; $50ca: $bd
    rla                                           ; $50cb: $17
    ld l, b                                       ; $50cc: $68
    dec e                                         ; $50cd: $1d
    xor b                                         ; $50ce: $a8
    db $db                                        ; $50cf: $db
    ld [$00dd], sp                                ; $50d0: $08 $dd $00
    ld [hl], $f4                                  ; $50d3: $36 $f4
    dec de                                        ; $50d5: $1b
    rst $08                                       ; $50d6: $cf
    jr c, jr_0c9_5134                             ; $50d7: $38 $5b

    ld h, $77                                     ; $50d9: $26 $77
    nop                                           ; $50db: $00
    dec bc                                        ; $50dc: $0b
    and b                                         ; $50dd: $a0
    ld e, a                                       ; $50de: $5f

jr_0c9_50df:
    rla                                           ; $50df: $17
    add c                                         ; $50e0: $81
    and h                                         ; $50e1: $a4
    ld d, d                                       ; $50e2: $52
    ld [hl+], a                                   ; $50e3: $22
    nop                                           ; $50e4: $00

jr_0c9_50e5:
    jp hl                                         ; $50e5: $e9


    ld h, e                                       ; $50e6: $63
    adc l                                         ; $50e7: $8d
    ld hl, $90de                                  ; $50e8: $21 $de $90
    ld h, c                                       ; $50eb: $61
    rst $18                                       ; $50ec: $df
    nop                                           ; $50ed: $00
    ld h, d                                       ; $50ee: $62
    push de                                       ; $50ef: $d5
    ld l, $43                                     ; $50f0: $2e $43
    or b                                          ; $50f2: $b0
    rra                                           ; $50f3: $1f
    ldh [$9b], a                                  ; $50f4: $e0 $9b
    nop                                           ; $50f6: $00

jr_0c9_50f7:
    ld h, d                                       ; $50f7: $62
    push hl                                       ; $50f8: $e5
    jr jr_0c9_50df                                ; $50f9: $18 $e4

    sbc c                                         ; $50fb: $99
    reti                                          ; $50fc: $d9


    jr nc, jr_0c9_50e5                            ; $50fd: $30 $e6

    nop                                           ; $50ff: $00
    add hl, de                                    ; $5100: $19
    or l                                          ; $5101: $b5
    dec bc                                        ; $5102: $0b
    jp nz, $ae3f                                  ; $5103: $c2 $3f $ae

    ld [hl], c                                    ; $5106: $71
    ld h, b                                       ; $5107: $60
    nop                                           ; $5108: $00
    rst $10                                       ; $5109: $d7
    dec l                                         ; $510a: $2d
    ld d, d                                       ; $510b: $52
    ld a, [$fc65]                                 ; $510c: $fa $65 $fc
    dec bc                                        ; $510f: $0b
    sbc c                                         ; $5110: $99
    nop                                           ; $5111: $00
    ld h, a                                       ; $5112: $67
    db $f4                                        ; $5113: $f4
    ld e, c                                       ; $5114: $59
    inc l                                         ; $5115: $2c
    jp nc, Jump_000_2ddb                          ; $5116: $d2 $db $2d

    rst $00                                       ; $5119: $c7
    nop                                           ; $511a: $00
    xor e                                         ; $511b: $ab
    inc l                                         ; $511c: $2c
    call nc, Call_000_36c9                        ; $511d: $d4 $c9 $36
    rst $00                                       ; $5120: $c7
    inc a                                         ; $5121: $3c
    adc h                                         ; $5122: $8c
    nop                                           ; $5123: $00
    dec hl                                        ; $5124: $2b
    add sp, $15                                   ; $5125: $e8 $15
    ei                                            ; $5127: $fb
    ld l, l                                       ; $5128: $6d
    ld [hl+], a                                   ; $5129: $22
    db $fd                                        ; $512a: $fd
    ld [hl], e                                    ; $512b: $73
    nop                                           ; $512c: $00
    adc [hl]                                      ; $512d: $8e

Call_0c9_512e:
    rst $30                                       ; $512e: $f7
    sbc h                                         ; $512f: $9c
    rst $38                                       ; $5130: $ff
    ld h, b                                       ; $5131: $60
    push bc                                       ; $5132: $c5
    cp [hl]                                       ; $5133: $be

jr_0c9_5134:
    xor b                                         ; $5134: $a8
    nop                                           ; $5135: $00
    rla                                           ; $5136: $17
    adc l                                         ; $5137: $8d
    ld a, [c]                                     ; $5138: $f2
    ld sp, $d9fc                                  ; $5139: $31 $fc $d9
    ld l, b                                       ; $513c: $68
    rst $10                                       ; $513d: $d7
    nop                                           ; $513e: $00
    dec a                                         ; $513f: $3d
    ld [hl], a                                    ; $5140: $77
    adc [hl]                                      ; $5141: $8e
    cp l                                          ; $5142: $bd
    ld [hl], d                                    ; $5143: $72
    inc d                                         ; $5144: $14
    xor a                                         ; $5145: $af
    ld [hl], $00                                  ; $5146: $36 $00
    pop hl                                        ; $5148: $e1
    dec de                                        ; $5149: $1b
    and $4e                                       ; $514a: $e6 $4e
    sub c                                         ; $514c: $91
    cp $41                                        ; $514d: $fe $41
    ld a, [hl]                                    ; $514f: $7e
    nop                                           ; $5150: $00
    ld bc, $be40                                  ; $5151: $01 $40 $be
    inc a                                         ; $5154: $3c
    jp $b05f                                      ; $5155: $c3 $5f $b0


    call c, $2200                                 ; $5158: $dc $00 $22
    or l                                          ; $515b: $b5
    add hl, bc                                    ; $515c: $09
    rla                                           ; $515d: $17
    ld l, b                                       ; $515e: $68
    cp h                                          ; $515f: $bc
    ld b, e                                       ; $5160: $43
    and d                                         ; $5161: $a2
    nop                                           ; $5162: $00
    ld d, l                                       ; $5163: $55
    add sp, $17                                   ; $5164: $e8 $17
    ld a, l                                       ; $5166: $7d
    add d                                         ; $5167: $82
    ld [hl], a                                    ; $5168: $77
    sbc b                                         ; $5169: $98
    ei                                            ; $516a: $fb
    nop                                           ; $516b: $00
    ld c, h                                       ; $516c: $4c
    rst $10                                       ; $516d: $d7
    add hl, sp                                    ; $516e: $39
    rst $30                                       ; $516f: $f7
    ld [$42bf], sp                                ; $5170: $08 $bf $42
    ld hl, $cf00                                  ; $5173: $21 $00 $cf
    jp c, $f224                                   ; $5176: $da $24 $f2

    or e                                          ; $5179: $b3
    jp z, Jump_0c9_6315                           ; $517a: $ca $15 $63

    nop                                           ; $517d: $00
    or h                                          ; $517e: $b4
    ld e, $63                                     ; $517f: $1e $63
    ld h, h                                       ; $5181: $64
    sub a                                         ; $5182: $97
    ld a, a                                       ; $5183: $7f
    ldh [$87], a                                  ; $5184: $e0 $87
    nop                                           ; $5186: $00
    cp b                                          ; $5187: $b8
    push af                                       ; $5188: $f5
    jp z, Jump_0c9_45ba                           ; $5189: $ca $ba $45

    db $db                                        ; $518c: $db
    ld h, [hl]                                    ; $518d: $66
    or $00                                        ; $518e: $f6 $00
    dec a                                         ; $5190: $3d
    ret z                                         ; $5191: $c8

    scf                                           ; $5192: $37
    ld e, [hl]                                    ; $5193: $5e
    ldh [rNR13], a                                ; $5194: $e0 $13
    add sp, -$64                                  ; $5196: $e8 $9c
    nop                                           ; $5198: $00
    ld d, a                                       ; $5199: $57
    sbc a                                         ; $519a: $9f
    ldh a, [$ed]                                  ; $519b: $f0 $ed
    db $10                                        ; $519d: $10
    db $fd                                        ; $519e: $fd
    ld b, c                                       ; $519f: $41
    cp [hl]                                       ; $51a0: $be
    nop                                           ; $51a1: $00
    ld h, d                                       ; $51a2: $62
    dec d                                         ; $51a3: $15
    adc d                                         ; $51a4: $8a
    push hl                                       ; $51a5: $e5
    ld a, [bc]                                    ; $51a6: $0a
    ld b, [hl]                                    ; $51a7: $46
    dec a                                         ; $51a8: $3d
    ld sp, hl                                     ; $51a9: $f9
    nop                                           ; $51aa: $00
    ld b, $af                                     ; $51ab: $06 $af
    ret nc                                        ; $51ad: $d0

    cp [hl]                                       ; $51ae: $be
    ld b, c                                       ; $51af: $41
    ld [$6311], a                                 ; $51b0: $ea $11 $63
    nop                                           ; $51b3: $00
    inc a                                         ; $51b4: $3c
    adc a                                         ; $51b5: $8f

jr_0c9_51b6:
    ld h, b                                       ; $51b6: $60
    push af                                       ; $51b7: $f5
    ld a, [bc]                                    ; $51b8: $0a
    rst $28                                       ; $51b9: $ef
    ld e, b                                       ; $51ba: $58
    ld c, l                                       ; $51bb: $4d

jr_0c9_51bc:
    nop                                           ; $51bc: $00
    ld a, [c]                                     ; $51bd: $f2
    sbc e                                         ; $51be: $9b
    ld h, b                                       ; $51bf: $60
    ld c, h                                       ; $51c0: $4c
    or [hl]                                       ; $51c1: $b6
    ld a, a                                       ; $51c2: $7f
    add b                                         ; $51c3: $80
    cp $00                                        ; $51c4: $fe $00
    add e                                         ; $51c6: $83
    push af                                       ; $51c7: $f5
    ld a, [bc]                                    ; $51c8: $0a
    pop de                                        ; $51c9: $d1
    jr z, jr_0c9_51b6                             ; $51ca: $28 $ea

    ld hl, $00d7                                  ; $51cc: $21 $d7 $00
    jr z, jr_0c9_51bc                             ; $51cf: $28 $eb

    inc e                                         ; $51d1: $1c
    ld [hl], l                                    ; $51d2: $75
    add b                                         ; $51d3: $80
    cp $01                                        ; $51d4: $fe $01
    call Call_000_1400                            ; $51d6: $cd $00 $14
    ld [hl], h                                    ; $51d9: $74
    db $eb                                        ; $51da: $eb
    ld hl, sp+$3b                                 ; $51db: $f8 $3b
    rst $18                                       ; $51dd: $df
    db $10                                        ; $51de: $10
    push af                                       ; $51df: $f5
    nop                                           ; $51e0: $00
    ld a, [hl+]                                   ; $51e1: $2a
    ld sp, hl                                     ; $51e2: $f9
    add c                                         ; $51e3: $81
    or c                                          ; $51e4: $b1
    ld c, [hl]                                    ; $51e5: $4e
    dec [hl]                                      ; $51e6: $35
    ld c, d                                       ; $51e7: $4a
    db $db                                        ; $51e8: $db
    nop                                           ; $51e9: $00
    inc h                                         ; $51ea: $24
    cp $21                                        ; $51eb: $fe $21
    ei                                            ; $51ed: $fb
    inc h                                         ; $51ee: $24
    halt                                          ; $51ef: $76
    adc c                                         ; $51f0: $89
    db $d3                                        ; $51f1: $d3
    nop                                           ; $51f2: $00
    inc l                                         ; $51f3: $2c
    ei                                            ; $51f4: $fb
    ld b, h                                       ; $51f5: $44

jr_0c9_51f6:
    db $e3                                        ; $51f6: $e3
    inc e                                         ; $51f7: $1c
    ld b, a                                       ; $51f8: $47
    adc e                                         ; $51f9: $8b
    rst $30                                       ; $51fa: $f7
    nop                                           ; $51fb: $00
    dec hl                                        ; $51fc: $2b
    cp a                                          ; $51fd: $bf

jr_0c9_51fe:
    ld b, c                                       ; $51fe: $41
    cp c                                          ; $51ff: $b9
    adc $5e                                       ; $5200: $ce $5e
    cp d                                          ; $5202: $ba
    rst $38                                       ; $5203: $ff
    nop                                           ; $5204: $00
    ld [bc], a                                    ; $5205: $02
    jp $061b                                      ; $5206: $c3 $1b $06


    pop bc                                        ; $5209: $c1
    push af                                       ; $520a: $f5
    ld c, d                                       ; $520b: $4a
    db $eb                                        ; $520c: $eb
    nop                                           ; $520d: $00
    inc b                                         ; $520e: $04
    db $fc                                        ; $520f: $fc
    inc de                                        ; $5210: $13
    cp $30                                        ; $5211: $fe $30
    xor a                                         ; $5213: $af
    ld e, b                                       ; $5214: $58
    sbc a                                         ; $5215: $9f
    nop                                           ; $5216: $00
    ld h, b                                       ; $5217: $60
    cp $05                                        ; $5218: $fe $05
    adc [hl]                                      ; $521a: $8e
    ld a, e                                       ; $521b: $7b
    ld a, l                                       ; $521c: $7d
    add d                                         ; $521d: $82
    rst $30                                       ; $521e: $f7
    nop                                           ; $521f: $00
    nop                                           ; $5220: $00
    daa                                           ; $5221: $27
    sub b                                         ; $5222: $90
    xor $31                                       ; $5223: $ee $31
    xor [hl]                                      ; $5225: $ae
    ld b, c                                       ; $5226: $41
    ld a, a                                       ; $5227: $7f
    nop                                           ; $5228: $00
    add b                                         ; $5229: $80
    rst $10                                       ; $522a: $d7
    ld [$c13f], sp                                ; $522b: $08 $3f $c1
    reti                                          ; $522e: $d9


    add [hl]                                      ; $522f: $86
    ld e, l                                       ; $5230: $5d
    ld b, b                                       ; $5231: $40
    inc h                                         ; $5232: $24
    jr nz, jr_0c9_523f                            ; $5233: $20 $0a

    ld hl, sp+$0a                                 ; $5235: $f8 $0a
    ld h, a                                       ; $5237: $67
    ld e, b                                       ; $5238: $58
    ld l, h                                       ; $5239: $6c
    ldh a, [rDIV]                                 ; $523a: $f0 $04
    xor [hl]                                      ; $523c: $ae
    ld d, b                                       ; $523d: $50
    cp c                                          ; $523e: $b9

jr_0c9_523f:
    sub b                                         ; $523f: $90
    inc a                                         ; $5240: $3c
    jr nz, @+$04                                  ; $5241: $20 $02

    ld d, h                                       ; $5243: $54
    jr nz, jr_0c9_5246                            ; $5244: $20 $00

jr_0c9_5246:
    ld b, b                                       ; $5246: $40
    jr nz, jr_0c9_524a                            ; $5247: $20 $01

    ld [bc], a                                    ; $5249: $02

jr_0c9_524a:
    ret                                           ; $524a: $c9


    inc d                                         ; $524b: $14
    ld d, h                                       ; $524c: $54
    jr z, jr_0c9_524f                             ; $524d: $28 $00

jr_0c9_524f:
    ld e, $a7                                     ; $524f: $1e $a7
    db $eb                                        ; $5251: $eb
    dec l                                         ; $5252: $2d
    pop hl                                        ; $5253: $e1
    ld e, $a0                                     ; $5254: $1e $a0
    ld [$0000], sp                                ; $5256: $08 $00 $00
    ld [$1422], sp                                ; $5259: $08 $22 $14
    dec bc                                        ; $525c: $0b

jr_0c9_525d:
    db $10                                        ; $525d: $10
    jr nc, jr_0c9_5268                            ; $525e: $30 $08

    add b                                         ; $5260: $80
    jr nz, @+$1c                                  ; $5261: $20 $1a

    add b                                         ; $5263: $80
    ld bc, $0052                                  ; $5264: $01 $52 $00
    ret                                           ; $5267: $c9


jr_0c9_5268:
    jr nz, jr_0c9_51f6                            ; $5268: $20 $8c

    db $10                                        ; $526a: $10
    ld bc, $00de                                  ; $526b: $01 $de $00
    jr nz, jr_0c9_527a                            ; $526e: $20 $0a

    add sp, $06                                   ; $5270: $e8 $06
    sub b                                         ; $5272: $90
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    ld b, h                                       ; $5275: $44
    nop                                           ; $5276: $00
    ld c, h                                       ; $5277: $4c
    add e                                         ; $5278: $83
    ld h, b                                       ; $5279: $60

jr_0c9_527a:
    inc b                                         ; $527a: $04
    db $10                                        ; $527b: $10
    jr nz, jr_0c9_51fe                            ; $527c: $20 $80

    add b                                         ; $527e: $80
    ld a, [de]                                    ; $527f: $1a
    jr nz, jr_0c9_5282                            ; $5280: $20 $00

jr_0c9_5282:
    nop                                           ; $5282: $00
    ld b, b                                       ; $5283: $40
    nop                                           ; $5284: $00
    ld b, $94                                     ; $5285: $06 $94
    stop                                          ; $5287: $10 $00
    ld [de], a                                    ; $5289: $12
    ld bc, $1a80                                  ; $528a: $01 $80 $1a
    ld a, [hl+]                                   ; $528d: $2a
    sub c                                         ; $528e: $91
    inc b                                         ; $528f: $04
    ld [bc], a                                    ; $5290: $02
    inc bc                                        ; $5291: $03
    add a                                         ; $5292: $87
    ld h, b                                       ; $5293: $60
    xor b                                         ; $5294: $a8
    nop                                           ; $5295: $00
    ld [bc], a                                    ; $5296: $02
    call z, Call_000_1a80                         ; $5297: $cc $80 $1a
    ld h, b                                       ; $529a: $60
    jr c, jr_0c9_525d                             ; $529b: $38 $c0

    add b                                         ; $529d: $80
    ld a, [de]                                    ; $529e: $1a
    ld h, b                                       ; $529f: $60
    ld b, b                                       ; $52a0: $40
    xor [hl]                                      ; $52a1: $ae
    add h                                         ; $52a2: $84
    ld a, e                                       ; $52a3: $7b
    ld a, a                                       ; $52a4: $7f
    nop                                           ; $52a5: $00
    and l                                         ; $52a6: $a5
    inc b                                         ; $52a7: $04
    ld a, [de]                                    ; $52a8: $1a
    halt                                          ; $52a9: $76
    ld bc, $1ec1                                  ; $52aa: $01 $c1 $1e
    add b                                         ; $52ad: $80
    ld a, [bc]                                    ; $52ae: $0a
    ld l, h                                       ; $52af: $6c
    ld de, $3f00                                  ; $52b0: $11 $00 $3f
    ld h, h                                       ; $52b3: $64
    pop hl                                        ; $52b4: $e1
    db $10                                        ; $52b5: $10
    ld [de], a                                    ; $52b6: $12
    and b                                         ; $52b7: $a0
    ld [hl], h                                    ; $52b8: $74
    adc c                                         ; $52b9: $89
    nop                                           ; $52ba: $00
    ld hl, sp-$3d                                 ; $52bb: $f8 $c3

jr_0c9_52bd:
    ret nc                                        ; $52bd: $d0

    db $e4                                        ; $52be: $e4
    and [hl]                                      ; $52bf: $a6
    ld d, b                                       ; $52c0: $50
    reti                                          ; $52c1: $d9


    inc h                                         ; $52c2: $24
    inc b                                         ; $52c3: $04
    db $e3                                        ; $52c4: $e3
    add hl, bc                                    ; $52c5: $09
    ld e, $63                                     ; $52c6: $1e $63
    ld b, [hl]                                    ; $52c8: $46
    ld h, b                                       ; $52c9: $60
    ld d, d                                       ; $52ca: $52
    or d                                          ; $52cb: $b2
    ld d, h                                       ; $52cc: $54
    ld bc, $7a6e                                  ; $52cd: $01 $6e $7a
    db $ec                                        ; $52d0: $ec
    ld [$13ec], sp                                ; $52d1: $08 $ec $13
    ld d, d                                       ; $52d4: $52
    ld h, b                                       ; $52d5: $60
    ld [hl+], a                                   ; $52d6: $22
    nop                                           ; $52d7: $00
    adc $30                                       ; $52d8: $ce $30
    sbc l                                         ; $52da: $9d
    ld b, $16                                     ; $52db: $06 $16
    ld e, l                                       ; $52dd: $5d
    ld a, [de]                                    ; $52de: $1a
    dec b                                         ; $52df: $05
    nop                                           ; $52e0: $00
    cp e                                          ; $52e1: $bb
    inc b                                         ; $52e2: $04
    ret z                                         ; $52e3: $c8

    rrca                                          ; $52e4: $0f
    xor [hl]                                      ; $52e5: $ae
    rla                                           ; $52e6: $17
    ld a, [hl+]                                   ; $52e7: $2a
    ld bc, $6000                                  ; $52e8: $01 $00 $60
    inc bc                                        ; $52eb: $03
    db $d3                                        ; $52ec: $d3
    and l                                         ; $52ed: $a5
    jp Jump_0c9_7822                              ; $52ee: $c3 $22 $78


    jp Jump_0c9_4b00                              ; $52f1: $c3 $00 $4b


    add b                                         ; $52f4: $80
    push bc                                       ; $52f5: $c5
    jp nz, $c1a6                                  ; $52f6: $c2 $a6 $c1

    adc d                                         ; $52f9: $8a
    inc [hl]                                      ; $52fa: $34
    add b                                         ; $52fb: $80
    ld b, b                                       ; $52fc: $40
    ld h, d                                       ; $52fd: $62
    cp h                                          ; $52fe: $bc
    rla                                           ; $52ff: $17
    ld l, b                                       ; $5300: $68
    ld a, [bc]                                    ; $5301: $0a
    add b                                         ; $5302: $80
    add hl, sp                                    ; $5303: $39
    inc b                                         ; $5304: $04
    nop                                           ; $5305: $00
    ld b, $00                                     ; $5306: $06 $00
    ld d, b                                       ; $5308: $50
    add b                                         ; $5309: $80
    ld c, a                                       ; $530a: $4f
    ld [$061b], sp                                ; $530b: $08 $1b $06
    nop                                           ; $530e: $00
    rla                                           ; $530f: $17
    dec hl                                        ; $5310: $2b
    and b                                         ; $5311: $a0
    ld e, a                                       ; $5312: $5f
    ld a, [bc]                                    ; $5313: $0a
    nop                                           ; $5314: $00
    db $10                                        ; $5315: $10
    ld c, b                                       ; $5316: $48
    ld [$40b2], sp                                ; $5317: $08 $b2 $40
    ld h, b                                       ; $531a: $60
    nop                                           ; $531b: $00
    ld b, b                                       ; $531c: $40
    ld a, [de]                                    ; $531d: $1a
    cp $14                                        ; $531e: $fe $14
    ld l, b                                       ; $5320: $68
    ld bc, $4300                                  ; $5321: $01 $00 $43
    nop                                           ; $5324: $00
    ld d, l                                       ; $5325: $55
    nop                                           ; $5326: $00
    rla                                           ; $5327: $17
    nop                                           ; $5328: $00
    and b                                         ; $5329: $a0
    ld a, [hl+]                                   ; $532a: $2a
    nop                                           ; $532b: $00
    ld [$4000], sp                                ; $532c: $08 $00 $40
    ld [bc], a                                    ; $532f: $02
    adc $01                                       ; $5330: $ce $01
    inc h                                         ; $5332: $24
    nop                                           ; $5333: $00
    add b                                         ; $5334: $80
    and b                                         ; $5335: $a0
    ld a, [hl+]                                   ; $5336: $2a
    sub e                                         ; $5337: $93
    inc b                                         ; $5338: $04
    add b                                         ; $5339: $80
    ld h, b                                       ; $533a: $60
    jr c, jr_0c9_52bd                             ; $533b: $38 $80

    ld a, [bc]                                    ; $533d: $0a
    ld b, b                                       ; $533e: $40
    ret nz                                        ; $533f: $c0

    and b                                         ; $5340: $a0
    ld a, [hl+]                                   ; $5341: $2a
    and b                                         ; $5342: $a0
    ld b, b                                       ; $5343: $40
    add sp, $00                                   ; $5344: $e8 $00
    ld b, e                                       ; $5346: $43
    inc d                                         ; $5347: $14
    ld h, $60                                     ; $5348: $26 $60
    sub b                                         ; $534a: $90
    and b                                         ; $534b: $a0
    ld a, [hl+]                                   ; $534c: $2a
    ld a, [bc]                                    ; $534d: $0a
    nop                                           ; $534e: $00
    ld h, b                                       ; $534f: $60
    jr @-$5e                                      ; $5350: $18 $a0

    ld a, [de]                                    ; $5352: $1a
    cp h                                          ; $5353: $bc
    nop                                           ; $5354: $00
    ld c, d                                       ; $5355: $4a
    and c                                         ; $5356: $a1
    ld b, b                                       ; $5357: $40
    jp hl                                         ; $5358: $e9


    nop                                           ; $5359: $00
    ld b, d                                       ; $535a: $42
    dec d                                         ; $535b: $15
    ld h, b                                       ; $535c: $60
    nop                                           ; $535d: $00
    sub c                                         ; $535e: $91
    and b                                         ; $535f: $a0
    ld [hl], b                                    ; $5360: $70
    ldh [$a1], a                                  ; $5361: $e0 $a1
    ld b, b                                       ; $5363: $40
    and d                                         ; $5364: $a2
    ld h, b                                       ; $5365: $60
    nop                                           ; $5366: $00
    rrca                                          ; $5367: $0f
    rrca                                          ; $5368: $0f
    add c                                         ; $5369: $81
    sub h                                         ; $536a: $94
    ld c, d                                       ; $536b: $4a
    ld [hl-], a                                   ; $536c: $32
    pop bc                                        ; $536d: $c1
    ld h, e                                       ; $536e: $63
    ld bc, $3185                                  ; $536f: $01 $85 $31
    add $80                                       ; $5372: $c6 $80
    ld b, c                                       ; $5374: $41
    jp $a042                                      ; $5375: $c3 $42 $a0


    ld d, d                                       ; $5378: $52
    nop                                           ; $5379: $00
    ld a, [bc]                                    ; $537a: $0a
    sbc b                                         ; $537b: $98
    ld h, [hl]                                    ; $537c: $66
    add h                                         ; $537d: $84
    ld hl, $a204                                  ; $537e: $21 $04 $a2
    adc e                                         ; $5381: $8b
    nop                                           ; $5382: $00
    dec c                                         ; $5383: $0d
    daa                                           ; $5384: $27
    dec bc                                        ; $5385: $0b
    inc c                                         ; $5386: $0c
    ld b, h                                       ; $5387: $44
    add hl, de                                    ; $5388: $19
    ld b, $87                                     ; $5389: $06 $87
    jr nz, jr_0c9_5399                            ; $538b: $20 $0c

    inc c                                         ; $538d: $0c
    and b                                         ; $538e: $a0
    ld [bc], a                                    ; $538f: $02
    ld a, [$206c]                                 ; $5390: $fa $6c $20
    cp $70                                        ; $5393: $fe $70
    nop                                           ; $5395: $00
    adc [hl]                                      ; $5396: $8e
    db $f4                                        ; $5397: $f4
    sbc a                                         ; $5398: $9f

jr_0c9_5399:
    rst $38                                       ; $5399: $ff
    ld h, b                                       ; $539a: $60
    add $bc                                       ; $539b: $c6 $bc
    xor b                                         ; $539d: $a8
    nop                                           ; $539e: $00
    inc d                                         ; $539f: $14
    dec c                                         ; $53a0: $0d
    ld [de], a                                    ; $53a1: $12
    ld bc, $593c                                  ; $53a2: $01 $3c $59
    ld [$0077], sp                                ; $53a5: $08 $77 $00
    dec e                                         ; $53a8: $1d
    rla                                           ; $53a9: $17
    ld c, $7d                                     ; $53aa: $0e $7d
    ld [de], a                                    ; $53ac: $12
    sub h                                         ; $53ad: $94
    cpl                                           ; $53ae: $2f
    ld [hl], $00                                  ; $53af: $36 $00
    ld hl, $01e0                                  ; $53b1: $21 $e0 $01
    or $68                                        ; $53b4: $f6 $68
    jr nz, @-$04                                  ; $53b6: $20 $fa

    ld [hl], b                                    ; $53b8: $70
    nop                                           ; $53b9: $00
    add d                                         ; $53ba: $82
    ld hl, sp-$6d                                 ; $53bb: $f8 $93
    ld sp, hl                                     ; $53bd: $f9
    ld h, b                                       ; $53be: $60
    jp nz, $acb8                                  ; $53bf: $c2 $b8 $ac

    ld b, b                                       ; $53c2: $40
    db $10                                        ; $53c3: $10
    ret nz                                        ; $53c4: $c0

    ld [bc], a                                    ; $53c5: $02
    ld a, h                                       ; $53c6: $7c
    ld e, c                                       ; $53c7: $59
    ld l, b                                       ; $53c8: $68
    ld d, a                                       ; $53c9: $57
    dec a                                         ; $53ca: $3d
    ld [hl], a                                    ; $53cb: $77
    db $10                                        ; $53cc: $10
    ld c, $3d                                     ; $53cd: $0e $3d
    ld [hl], d                                    ; $53cf: $72
    jr nz, jr_0c9_53d2                            ; $53d0: $20 $00

jr_0c9_53d2:
    ld h, c                                       ; $53d2: $61
    inc de                                        ; $53d3: $13
    jp nz, TimerOverflowInterrupt                 ; $53d4: $c2 $50 $00

    add c                                         ; $53d7: $81
    ldh [rSTAT], a                                ; $53d8: $e0 $41
    ld h, b                                       ; $53da: $60
    ld bc, $a048                                  ; $53db: $01 $48 $a0
    jr nc, jr_0c9_53e0                            ; $53de: $30 $00

jr_0c9_53e0:
    pop bc                                        ; $53e0: $c1
    ld b, [hl]                                    ; $53e1: $46
    and b                                         ; $53e2: $a0
    ret nz                                        ; $53e3: $c0

    inc h                                         ; $53e4: $24
    ldh [$08], a                                  ; $53e5: $e0 $08
    ld h, [hl]                                    ; $53e7: $66
    rlca                                          ; $53e8: $07
    nop                                           ; $53e9: $00
    ld d, b                                       ; $53ea: $50
    nop                                           ; $53eb: $00
    ld hl, $5000                                  ; $53ec: $21 $00 $50
    nop                                           ; $53ef: $00
    ld [$0000], a                                 ; $53f0: $ea $00 $00
    push af                                       ; $53f3: $f5
    nop                                           ; $53f4: $00
    jp c, $ed00                                   ; $53f5: $da $00 $ed

    nop                                           ; $53f8: $00
    ld a, [hl]                                    ; $53f9: $7e
    add b                                         ; $53fa: $80
    nop                                           ; $53fb: $00
    add b                                         ; $53fc: $80
    nop                                           ; $53fd: $00
    dec h                                         ; $53fe: $25
    nop                                           ; $53ff: $00
    ld c, e                                       ; $5400: $4b
    nop                                           ; $5401: $00
    and l                                         ; $5402: $a5
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    ld a, a                                       ; $5405: $7f
    nop                                           ; $5406: $00

Call_0c9_5407:
    rst $28                                       ; $5407: $ef
    nop                                           ; $5408: $00
    cp $01                                        ; $5409: $fe $01
    push af                                       ; $540b: $f5
    ld a, [bc]                                    ; $540c: $0a

Call_0c9_540d:
    dec b                                         ; $540d: $05

jr_0c9_540e:
    add h                                         ; $540e: $84
    nop                                           ; $540f: $00
    jr nz, jr_0c9_5412                            ; $5410: $20 $00

jr_0c9_5412:
    push de                                       ; $5412: $d5
    jr nz, jr_0c9_5415                            ; $5413: $20 $00

jr_0c9_5415:
    or l                                          ; $5415: $b5
    db $10                                        ; $5416: $10
    ld [$000a], sp                                ; $5417: $08 $0a $00
    ld a, a                                       ; $541a: $7f
    add b                                         ; $541b: $80
    ld c, b                                       ; $541c: $48
    inc e                                         ; $541d: $1c
    nop                                           ; $541e: $00
    ld e, d                                       ; $541f: $5a
    ld l, $00                                     ; $5420: $2e $00
    rst $38                                       ; $5422: $ff
    add h                                         ; $5423: $84
    ld [hl+], a                                   ; $5424: $22
    nop                                           ; $5425: $00
    ld a, [$f505]                                 ; $5426: $fa $05 $f5
    ld a, [bc]                                    ; $5429: $0a
    ld b, b                                       ; $542a: $40
    jr z, jr_0c9_540e                             ; $542b: $28 $e1

    ld e, $01                                     ; $542d: $1e $01
    ret nz                                        ; $542f: $c0

    ld hl, $40a1                                  ; $5430: $21 $a1 $40
    ld de, $00e0                                  ; $5433: $11 $e0 $00
    ld a, [hl-]                                   ; $5436: $3a
    nop                                           ; $5437: $00
    ld bc, $3857                                  ; $5438: $01 $57 $38
    halt                                          ; $543b: $76
    rrca                                          ; $543c: $0f
    ld a, l                                       ; $543d: $7d
    inc bc                                        ; $543e: $03
    ld a, a                                       ; $543f: $7f
    ld b, h                                       ; $5440: $44
    nop                                           ; $5441: $00
    ld bc, $007f                                  ; $5442: $01 $7f $00
    dec hl                                        ; $5445: $2b
    ld bc, $01fe                                  ; $5446: $01 $fe $01
    rst $38                                       ; $5449: $ff
    inc b                                         ; $544a: $04
    nop                                           ; $544b: $00
    nop                                           ; $544c: $00
    rst $18                                       ; $544d: $df
    pop hl                                        ; $544e: $e1
    ld l, [hl]                                    ; $544f: $6e
    pop af                                        ; $5450: $f1
    rst $08                                       ; $5451: $cf
    dec a                                         ; $5452: $3d
    cp $01                                        ; $5453: $fe $01
    nop                                           ; $5455: $00
    cp a                                          ; $5456: $bf
    ld b, b                                       ; $5457: $40
    ld a, [hl]                                    ; $5458: $7e
    add c                                         ; $5459: $81
    ld a, l                                       ; $545a: $7d
    add d                                         ; $545b: $82
    ld l, $d1                                     ; $545c: $2e $d1
    nop                                           ; $545e: $00
    ld d, l                                       ; $545f: $55
    xor d                                         ; $5460: $aa
    ld a, [bc]                                    ; $5461: $0a
    push af                                       ; $5462: $f5
    jr nz, @-$1f                                  ; $5463: $20 $df

    inc b                                         ; $5465: $04
    ei                                            ; $5466: $fb
    nop                                           ; $5467: $00
    cp b                                          ; $5468: $b8
    ld b, a                                       ; $5469: $47
    ret nc                                        ; $546a: $d0

    cpl                                           ; $546b: $2f
    inc h                                         ; $546c: $24
    db $db                                        ; $546d: $db
    adc b                                         ; $546e: $88
    ld [hl], a                                    ; $546f: $77
    jr nc, jr_0c9_54b2                            ; $5470: $30 $40

    cp a                                          ; $5472: $bf
    ld d, e                                       ; $5473: $53
    nop                                           ; $5474: $00
    ld [bc], a                                    ; $5475: $02
    nop                                           ; $5476: $00
    cp a                                          ; $5477: $bf
    ld b, b                                       ; $5478: $40
    ld e, a                                       ; $5479: $5f

jr_0c9_547a:
    and b                                         ; $547a: $a0
    nop                                           ; $547b: $00
    ccf                                           ; $547c: $3f
    ret nz                                        ; $547d: $c0

    sbc a                                         ; $547e: $9f
    ld h, b                                       ; $547f: $60
    ld c, e                                       ; $5480: $4b
    or h                                          ; $5481: $b4
    dec d                                         ; $5482: $15
    ld [$2a00], a                                 ; $5483: $ea $00 $2a
    push de                                       ; $5486: $d5
    ld bc, $e8fe                                  ; $5487: $01 $fe $e8
    rla                                           ; $548a: $17
    ld a, [c]                                     ; $548b: $f2
    dec c                                         ; $548c: $0d
    nop                                           ; $548d: $00
    push hl                                       ; $548e: $e5
    ld a, [de]                                    ; $548f: $1a
    jp nc, $a42d                                  ; $5490: $d2 $2d $a4

    ld e, e                                       ; $5493: $5b
    ret nz                                        ; $5494: $c0

    ccf                                           ; $5495: $3f
    nop                                           ; $5496: $00
    sub b                                         ; $5497: $90
    ld l, a                                       ; $5498: $6f
    jr nz, jr_0c9_547a                            ; $5499: $20 $df

    add d                                         ; $549b: $82
    rst $20                                       ; $549c: $e7
    add b                                         ; $549d: $80
    db $db                                        ; $549e: $db
    nop                                           ; $549f: $00
    add d                                         ; $54a0: $82
    jp nc, $c1ac                                  ; $54a1: $d2 $ac $c1

    sbc h                                         ; $54a4: $9c
    pop hl                                        ; $54a5: $e1
    add d                                         ; $54a6: $82
    db $e4                                        ; $54a7: $e4
    nop                                           ; $54a8: $00
    add c                                         ; $54a9: $81
    jp c, $d282                                   ; $54aa: $da $82 $d2

    and c                                         ; $54ad: $a1
    rst $20                                       ; $54ae: $e7
    ld bc, $00db                                  ; $54af: $01 $db $00

jr_0c9_54b2:
    ld b, c                                       ; $54b2: $41
    ld d, e                                       ; $54b3: $53
    dec l                                         ; $54b4: $2d
    add e                                         ; $54b5: $83
    ld hl, $c127                                  ; $54b6: $21 $27 $c1
    dec de                                        ; $54b9: $1b
    ld [$13c1], sp                                ; $54ba: $08 $c1 $13
    dec l                                         ; $54bd: $2d
    ld b, e                                       ; $54be: $43
    add b                                         ; $54bf: $80
    ld [$1f60], sp                                ; $54c0: $08 $60 $1f
    ld [hl], a                                    ; $54c3: $77
    nop                                           ; $54c4: $00
    rrca                                          ; $54c5: $0f
    ld e, e                                       ; $54c6: $5b
    inc h                                         ; $54c7: $24
    ld c, l                                       ; $54c8: $4d
    ld [hl-], a                                   ; $54c9: $32
    ld d, [hl]                                    ; $54ca: $56
    add hl, sp                                    ; $54cb: $39
    ld e, e                                       ; $54cc: $5b
    ld b, b                                       ; $54cd: $40
    inc l                                         ; $54ce: $2c
    add b                                         ; $54cf: $80
    ld [$f907], sp                                ; $54d0: $08 $07 $f9
    xor $e1                                       ; $54d3: $ee $e1
    db $db                                        ; $54d5: $db
    dec b                                         ; $54d6: $05
    nop                                           ; $54d7: $00
    or d                                          ; $54d8: $b2
    dec c                                         ; $54d9: $0d
    ld l, e                                       ; $54da: $6b
    dec e                                         ; $54db: $1d
    jp c, $aa35                                   ; $54dc: $da $35 $aa

    rst $38                                       ; $54df: $ff
    nop                                           ; $54e0: $00
    xor d                                         ; $54e1: $aa
    push de                                       ; $54e2: $d5
    sub l                                         ; $54e3: $95
    ld [$f4cb], a                                 ; $54e4: $ea $cb $f4
    and c                                         ; $54e7: $a1
    cp $00                                        ; $54e8: $fe $00
    call nc, $aaff                                ; $54ea: $d4 $ff $aa
    rst $38                                       ; $54ed: $ff
    rst $38                                       ; $54ee: $ff
    rst $38                                       ; $54ef: $ff
    xor e                                         ; $54f0: $ab
    rst $38                                       ; $54f1: $ff
    nop                                           ; $54f2: $00
    ld d, l                                       ; $54f3: $55
    rst $38                                       ; $54f4: $ff
    ld b, e                                       ; $54f5: $43
    cp a                                          ; $54f6: $bf
    xor c                                         ; $54f7: $a9
    ld d, a                                       ; $54f8: $57
    ld d, e                                       ; $54f9: $53
    xor a                                         ; $54fa: $af
    jr jr_0c9_5506                                ; $54fb: $18 $09

    rst $30                                       ; $54fd: $f7
    xor c                                         ; $54fe: $a9
    stop                                          ; $54ff: $10 $00
    ret nz                                        ; $5501: $c0

    ld [$225f], sp                                ; $5502: $08 $5f $22
    ld l, l                                       ; $5505: $6d

jr_0c9_5506:
    nop                                           ; $5506: $00
    ld [hl], $7b                                  ; $5507: $36 $7b
    inc e                                         ; $5509: $1c
    ld l, a                                       ; $550a: $6f
    inc e                                         ; $550b: $1c
    ld e, e                                       ; $550c: $5b
    ld [hl], $7d                                  ; $550d: $36 $7d
    ld b, b                                       ; $550f: $40
    ld [bc], a                                    ; $5510: $02
    ret nz                                        ; $5511: $c0

    jr @-$40                                      ; $5512: $18 $be

    ld h, c                                       ; $5514: $61
    rst $30                                       ; $5515: $f7
    ld a, c                                       ; $5516: $79
    ld l, $f1                                     ; $5517: $2e $f1
    adc b                                         ; $5519: $88
    ret z                                         ; $551a: $c8

jr_0c9_551b:
    ld [$fb84], sp                                ; $551b: $08 $84 $fb
    ld b, b                                       ; $551e: $40
    jr c, jr_0c9_5521                             ; $551f: $38 $00

jr_0c9_5521:
    push af                                       ; $5521: $f5
    rst $38                                       ; $5522: $ff
    cp [hl]                                       ; $5523: $be
    jr nc, @+$01                                  ; $5524: $30 $ff

    ei                                            ; $5526: $fb
    ld a, $00                                     ; $5527: $3e $00
    jr nc, jr_0c9_552b                            ; $5529: $30 $00

jr_0c9_552b:
    rst $38                                       ; $552b: $ff
    adc b                                         ; $552c: $88
    ld a, a                                       ; $552d: $7f
    ld bc, $ff0a                                  ; $552e: $01 $0a $ff
    ld c, d                                       ; $5531: $4a
    rst $38                                       ; $5532: $ff
    sub a                                         ; $5533: $97
    ld c, h                                       ; $5534: $4c
    nop                                           ; $5535: $00
    ld a, a                                       ; $5536: $7f
    ld d, b                                       ; $5537: $50
    nop                                           ; $5538: $00
    ld [$f703], sp                                ; $5539: $08 $03 $f7
    add b                                         ; $553c: $80
    rst $38                                       ; $553d: $ff
    ld d, h                                       ; $553e: $54
    rst $38                                       ; $553f: $ff
    ld sp, hl                                     ; $5540: $f9
    jr nz, jr_0c9_5543                            ; $5541: $20 $00

jr_0c9_5543:
    ld c, $08                                     ; $5543: $0e $08
    nop                                           ; $5545: $00
    rst $38                                       ; $5546: $ff
    rst $38                                       ; $5547: $ff
    ld b, d                                       ; $5548: $42
    rst $38                                       ; $5549: $ff
    add h                                         ; $554a: $84
    rst $38                                       ; $554b: $ff
    dec hl                                        ; $554c: $2b
    rst $38                                       ; $554d: $ff
    inc b                                         ; $554e: $04
    ld d, [hl]                                    ; $554f: $56

jr_0c9_5550:
    rst $38                                       ; $5550: $ff
    db $fd                                        ; $5551: $fd
    rst $38                                       ; $5552: $ff
    rst $28                                       ; $5553: $ef
    jr nc, jr_0c9_5566                            ; $5554: $30 $10

    xor h                                         ; $5556: $ac
    pop bc                                        ; $5557: $c1
    nop                                           ; $5558: $00
    add b                                         ; $5559: $80
    push hl                                       ; $555a: $e5
    add d                                         ; $555b: $82
    ret c                                         ; $555c: $d8

    add c                                         ; $555d: $81
    jp nc, $c3ac                                  ; $555e: $d2 $ac $c3

    nop                                           ; $5561: $00
    push de                                       ; $5562: $d5
    ld [$f7a8], a                                 ; $5563: $ea $a8 $f7

jr_0c9_5566:
    rst $38                                       ; $5566: $ff
    rst $38                                       ; $5567: $ff
    dec e                                         ; $5568: $1d
    and e                                         ; $5569: $a3
    add d                                         ; $556a: $82
    cp d                                          ; $556b: $ba
    jr jr_0c9_551b                                ; $556c: $18 $ad

    ld b, e                                       ; $556e: $43
    ld d, e                                       ; $556f: $53
    xor a                                         ; $5570: $af
    add l                                         ; $5571: $85
    ld b, c                                       ; $5572: $41
    nop                                           ; $5573: $00
    db $dd                                        ; $5574: $dd
    nop                                           ; $5575: $00
    ld h, $5b                                     ; $5576: $26 $5b
    jr nz, jr_0c9_5550                            ; $5578: $20 $d6

    ld hl, $234d                                  ; $557a: $21 $4d $23
    db $db                                        ; $557d: $db
    nop                                           ; $557e: $00
    ld h, $77                                     ; $557f: $26 $77
    inc c                                         ; $5581: $0c
    ldh [$1f], a                                  ; $5582: $e0 $1f
    ld a, a                                       ; $5584: $7f
    add b                                         ; $5585: $80
    cp e                                          ; $5586: $bb
    nop                                           ; $5587: $00
    ld h, l                                       ; $5588: $65
    jp c, Jump_0c9_6b25                           ; $5589: $da $25 $6b

    sub l                                         ; $558c: $95
    or d                                          ; $558d: $b2
    call Call_000_01db                            ; $558e: $cd $db $01
    ld h, l                                       ; $5591: $65
    xor $31                                       ; $5592: $ee $31
    rlca                                          ; $5594: $07
    ld sp, hl                                     ; $5595: $f9
    cp $01                                        ; $5596: $fe $01
    ld h, b                                       ; $5598: $60
    add hl, bc                                    ; $5599: $09
    adc h                                         ; $559a: $8c
    and d                                         ; $559b: $a2
    nop                                           ; $559c: $00
    ccf                                           ; $559d: $3f
    ld a, e                                       ; $559e: $7b
    ld b, $62                                     ; $559f: $06 $62
    add hl, de                                    ; $55a1: $19
    ld h, b                                       ; $55a2: $60
    add hl, bc                                    ; $55a3: $09
    ld l, a                                       ; $55a4: $6f
    pop af                                        ; $55a5: $f1
    ld [bc], a                                    ; $55a6: $02
    cp $f9                                        ; $55a7: $fe $f9
    rst $30                                       ; $55a9: $f7
    ld sp, hl                                     ; $55aa: $f9
    cp [hl]                                       ; $55ab: $be
    pop bc                                        ; $55ac: $c1
    ld l, b                                       ; $55ad: $68
    add hl, bc                                    ; $55ae: $09
    xor l                                         ; $55af: $ad
    nop                                           ; $55b0: $00
    ld d, b                                       ; $55b1: $50
    and d                                         ; $55b2: $a2
    ld bc, $02c5                                  ; $55b3: $01 $c5 $02
    add d                                         ; $55b6: $82
    ld bc, $00c9                                  ; $55b7: $01 $c9 $00
    nop                                           ; $55ba: $00
    and [hl]                                      ; $55bb: $a6
    ld bc, $0111                                  ; $55bc: $01 $11 $01
    ld a, [bc]                                    ; $55bf: $0a
    ld bc, $00ef                                  ; $55c0: $01 $ef $00
    nop                                           ; $55c3: $00
    db $dd                                        ; $55c4: $dd
    nop                                           ; $55c5: $00
    ei                                            ; $55c6: $fb
    inc b                                         ; $55c7: $04
    db $fd                                        ; $55c8: $fd
    ld [bc], a                                    ; $55c9: $02
    ld a, d                                       ; $55ca: $7a
    nop                                           ; $55cb: $00
    add l                                         ; $55cc: $85

jr_0c9_55cd:
    cp l                                          ; $55cd: $bd
    ld b, d                                       ; $55ce: $42
    ld l, c                                       ; $55cf: $69
    sub [hl]                                      ; $55d0: $96
    sub [hl]                                      ; $55d1: $96
    db $fd                                        ; $55d2: $fd
    cp c                                          ; $55d3: $b9
    nop                                           ; $55d4: $00
    ld b, $d1                                     ; $55d5: $06 $d1
    ld c, $bf                                     ; $55d7: $0e $bf
    inc b                                         ; $55d9: $04
    sub d                                         ; $55da: $92
    inc c                                         ; $55db: $0c
    cp a                                          ; $55dc: $bf
    nop                                           ; $55dd: $00
    inc c                                         ; $55de: $0c
    di                                            ; $55df: $f3
    inc c                                         ; $55e0: $0c
    db $ed                                        ; $55e1: $ed
    db $10                                        ; $55e2: $10
    and [hl]                                      ; $55e3: $a6
    ld e, b                                       ; $55e4: $58
    ld l, $00                                     ; $55e5: $2e $00
    rst $38                                       ; $55e7: $ff
    ld c, a                                       ; $55e8: $4f
    or b                                          ; $55e9: $b0
    rst $38                                       ; $55ea: $ff
    nop                                           ; $55eb: $00
    ei                                            ; $55ec: $fb
    nop                                           ; $55ed: $00
    or a                                          ; $55ee: $b7
    ld [$6d00], sp                                ; $55ef: $08 $00 $6d
    nop                                           ; $55f2: $00
    rst $10                                       ; $55f3: $d7
    ld [$9802], sp                                ; $55f4: $08 $02 $98
    rst $30                                       ; $55f7: $f7
    or c                                          ; $55f8: $b1
    nop                                           ; $55f9: $00
    ld l, [hl]                                    ; $55fa: $6e
    ld l, b                                       ; $55fb: $68
    or a                                          ; $55fc: $b7
    add d                                         ; $55fd: $82
    ld a, l                                       ; $55fe: $7d
    ld h, b                                       ; $55ff: $60
    cp a                                          ; $5600: $bf
    add c                                         ; $5601: $81
    nop                                           ; $5602: $00
    ld a, [hl]                                    ; $5603: $7e
    ldh [$3f], a                                  ; $5604: $e0 $3f
    sbc d                                         ; $5606: $9a
    ld a, a                                       ; $5607: $7f
    ld hl, $0aff                                  ; $5608: $21 $ff $0a
    nop                                           ; $560b: $00
    push af                                       ; $560c: $f5
    dec d                                         ; $560d: $15
    db $eb                                        ; $560e: $eb
    adc b                                         ; $560f: $88
    ld [hl], a                                    ; $5610: $77
    dec b                                         ; $5611: $05
    ei                                            ; $5612: $fb
    ld c, c                                       ; $5613: $49
    jr nz, jr_0c9_55cd                            ; $5614: $20 $b7

    nop                                           ; $5616: $00
    ld hl, sp+$00                                 ; $5617: $f8 $00
    and b                                         ; $5619: $a0
    rst $18                                       ; $561a: $df
    sub d                                         ; $561b: $92
    db $ed                                        ; $561c: $ed
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    rst $38                                       ; $561f: $ff
    xor a                                         ; $5620: $af
    rst $38                                       ; $5621: $ff
    ld h, [hl]                                    ; $5622: $66
    rst $38                                       ; $5623: $ff

jr_0c9_5624:
    add b                                         ; $5624: $80
    rst $38                                       ; $5625: $ff
    add hl, bc                                    ; $5626: $09
    nop                                           ; $5627: $00
    or $90                                        ; $5628: $f6 $90
    rst $28                                       ; $562a: $ef
    add b                                         ; $562b: $80
    rst $38                                       ; $562c: $ff
    sbc a                                         ; $562d: $9f
    rst $38                                       ; $562e: $ff
    adc b                                         ; $562f: $88
    nop                                           ; $5630: $00
    rst $38                                       ; $5631: $ff
    and h                                         ; $5632: $a4
    rst $38                                       ; $5633: $ff
    or d                                          ; $5634: $b2
    rst $38                                       ; $5635: $ff
    xor c                                         ; $5636: $a9
    rst $38                                       ; $5637: $ff
    and h                                         ; $5638: $a4
    ld [$82df], sp                                ; $5639: $08 $df $82
    rst $38                                       ; $563c: $ff
    ld bc, $00fc                                  ; $563d: $01 $fc $00
    ld de, $25ef                                  ; $5640: $11 $ef $25
    nop                                           ; $5643: $00
    rst $18                                       ; $5644: $df
    ld c, l                                       ; $5645: $4d
    cp a                                          ; $5646: $bf
    sub l                                         ; $5647: $95
    ld a, a                                       ; $5648: $7f

jr_0c9_5649:
    dec h                                         ; $5649: $25
    rst $38                                       ; $564a: $ff
    ld b, l                                       ; $564b: $45
    jr nz, jr_0c9_5649                            ; $564c: $20 $fb

    xor e                                         ; $564e: $ab
    sub $01                                       ; $564f: $d6 $01
    db $10                                        ; $5651: $10
    rst $28                                       ; $5652: $ef
    jr nc, jr_0c9_5624                            ; $5653: $30 $cf

    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    rst $38                                       ; $5657: $ff
    sub b                                         ; $5658: $90
    ld l, a                                       ; $5659: $6f
    ld [bc], a                                    ; $565a: $02
    db $fd                                        ; $565b: $fd
    inc h                                         ; $565c: $24
    ei                                            ; $565d: $fb
    ret nc                                        ; $565e: $d0

    nop                                           ; $565f: $00
    add b                                         ; $5660: $80
    dec l                                         ; $5661: $2d
    ret nz                                        ; $5662: $c0

    ret nz                                        ; $5663: $c0

    add b                                         ; $5664: $80
    add hl, bc                                    ; $5665: $09
    add b                                         ; $5666: $80
    add [hl]                                      ; $5667: $86
    nop                                           ; $5668: $00
    add b                                         ; $5669: $80
    dec bc                                        ; $566a: $0b
    add b                                         ; $566b: $80
    add b                                         ; $566c: $80
    add b                                         ; $566d: $80
    sub $88                                       ; $566e: $d6 $88
    and l                                         ; $5670: $a5
    nop                                           ; $5671: $00
    inc bc                                        ; $5672: $03
    inc bc                                        ; $5673: $03
    ld bc, $0142                                  ; $5674: $01 $42 $01
    ld a, [de]                                    ; $5677: $1a
    inc bc                                        ; $5678: $03
    xor h                                         ; $5679: $ac
    nop                                           ; $567a: $00
    inc bc                                        ; $567b: $03
    inc de                                        ; $567c: $13
    inc bc                                        ; $567d: $03
    adc h                                         ; $567e: $8c
    inc bc                                        ; $567f: $03
    jp c, $d507                                   ; $5680: $da $07 $d5

    add b                                         ; $5683: $80
    ld b, $02                                     ; $5684: $06 $02
    ld b, d                                       ; $5686: $42
    cp l                                          ; $5687: $bd
    add a                                         ; $5688: $87
    ld a, b                                       ; $5689: $78
    ld b, d                                       ; $568a: $42
    cp l                                          ; $568b: $bd
    ld de, $ee00                                  ; $568c: $11 $00 $ee
    and b                                         ; $568f: $a0
    rst $38                                       ; $5690: $ff
    ld h, h                                       ; $5691: $64
    rst $38                                       ; $5692: $ff
    ld a, l                                       ; $5693: $7d
    ldh a, [rTMA]                                 ; $5694: $f0 $06
    nop                                           ; $5696: $00
    ld hl, sp+$1f                                 ; $5697: $f8 $1f
    ldh a, [rTAC]                                 ; $5699: $f0 $07
    ld hl, sp+$1b                                 ; $569b: $f8 $1b
    db $f4                                        ; $569d: $f4
    dec b                                         ; $569e: $05
    nop                                           ; $569f: $00

jr_0c9_56a0:
    ld a, [$bc5b]                                 ; $56a0: $fa $5b $bc
    inc d                                         ; $56a3: $14
    rst $38                                       ; $56a4: $ff
    ld a, a                                       ; $56a5: $7f
    nop                                           ; $56a6: $00
    xor $00                                       ; $56a7: $ee $00
    nop                                           ; $56a9: $00
    ld e, a                                       ; $56aa: $5f
    jr nz, @+$6e                                  ; $56ab: $20 $6c

    db $10                                        ; $56ad: $10
    push de                                       ; $56ae: $d5
    jr z, jr_0c9_56a0                             ; $56af: $28 $ef

jr_0c9_56b1:
    nop                                           ; $56b1: $00
    db $10                                        ; $56b2: $10
    ld d, a                                       ; $56b3: $57
    xor b                                         ; $56b4: $a8
    xor c                                         ; $56b5: $a9
    or $ef                                        ; $56b6: $f6 $ef
    ccf                                           ; $56b8: $3f
    add b                                         ; $56b9: $80
    nop                                           ; $56ba: $00
    ld a, a                                       ; $56bb: $7f
    ldh [$3f], a                                  ; $56bc: $e0 $3f
    and c                                         ; $56be: $a1
    ld a, [hl]                                    ; $56bf: $7e
    jp z, $a475                                   ; $56c0: $ca $75 $a4

    ld a, [bc]                                    ; $56c3: $0a
    ld a, e                                       ; $56c4: $7b
    adc b                                         ; $56c5: $88
    ld [hl], a                                    ; $56c6: $77
    ld hl, $0098                                  ; $56c7: $21 $98 $00
    ld bc, $006a                                  ; $56ca: $01 $6a $00
    add hl, bc                                    ; $56cd: $09
    nop                                           ; $56ce: $00
    rst $30                                       ; $56cf: $f7
    jr nz, jr_0c9_56b1                            ; $56d0: $20 $df

    dec d                                         ; $56d2: $15
    db $eb                                        ; $56d3: $eb
    dec bc                                        ; $56d4: $0b
    push af                                       ; $56d5: $f5
    dec b                                         ; $56d6: $05
    nop                                           ; $56d7: $00
    ei                                            ; $56d8: $fb
    inc b                                         ; $56d9: $04
    ei                                            ; $56da: $fb
    xor b                                         ; $56db: $a8
    rst $10                                       ; $56dc: $d7
    ret nc                                        ; $56dd: $d0

    xor a                                         ; $56de: $af
    and b                                         ; $56df: $a0
    nop                                           ; $56e0: $00
    rst $18                                       ; $56e1: $df
    sub l                                         ; $56e2: $95
    rst $38                                       ; $56e3: $ff
    jr z, @+$01                                   ; $56e4: $28 $ff

    jp nz, Jump_000_14fd                          ; $56e6: $c2 $fd $14

    nop                                           ; $56e9: $00
    db $eb                                        ; $56ea: $eb
    and h                                         ; $56eb: $a4
    db $db                                        ; $56ec: $db
    xor c                                         ; $56ed: $a9
    rst $10                                       ; $56ee: $d7
    or d                                          ; $56ef: $b2
    rst $08                                       ; $56f0: $cf
    and h                                         ; $56f1: $a4
    ld [bc], a                                    ; $56f2: $02
    rst $18                                       ; $56f3: $df
    adc b                                         ; $56f4: $88
    rst $38                                       ; $56f5: $ff
    sbc a                                         ; $56f6: $9f
    ldh a, [$80]                                  ; $56f7: $f0 $80
    nop                                           ; $56f9: $00
    ld [bc], a                                    ; $56fa: $02
    ld hl, $ff00                                  ; $56fb: $21 $00 $ff
    sub l                                         ; $56fe: $95
    ei                                            ; $56ff: $fb
    ld c, l                                       ; $5700: $4d
    ei                                            ; $5701: $fb
    dec h                                         ; $5702: $25
    rst $38                                       ; $5703: $ff
    ld de, $ff0c                                  ; $5704: $11 $0c $ff
    ld sp, hl                                     ; $5707: $f9
    rrca                                          ; $5708: $0f
    ld bc, $0210                                  ; $5709: $01 $10 $02
    add b                                         ; $570c: $80
    ld [$d728], sp                                ; $570d: $08 $28 $d7
    nop                                           ; $5710: $00
    ld b, b                                       ; $5711: $40
    cp a                                          ; $5712: $bf
    sub h                                         ; $5713: $94
    ld l, e                                       ; $5714: $6b
    inc b                                         ; $5715: $04
    ei                                            ; $5716: $fb
    ld de, $00ee                                  ; $5717: $11 $ee $00
    add b                                         ; $571a: $80
    rst $38                                       ; $571b: $ff
    and b                                         ; $571c: $a0
    rst $38                                       ; $571d: $ff
    ld [hl], c                                    ; $571e: $71
    xor $24                                       ; $571f: $ee $24
    ei                                            ; $5721: $fb
    nop                                           ; $5722: $00
    ld b, d                                       ; $5723: $42
    db $fd                                        ; $5724: $fd
    jr nz, @+$01                                  ; $5725: $20 $ff

    add d                                         ; $5727: $82
    db $fd                                        ; $5728: $fd
    ret nz                                        ; $5729: $c0

    rst $38                                       ; $572a: $ff
    inc b                                         ; $572b: $04
    or l                                          ; $572c: $b5
    rst $38                                       ; $572d: $ff
    dec h                                         ; $572e: $25
    ei                                            ; $572f: $fb
    ld a, [bc]                                    ; $5730: $0a
    ld d, [hl]                                    ; $5731: $56
    nop                                           ; $5732: $00
    adc b                                         ; $5733: $88
    ld [hl], a                                    ; $5734: $77
    nop                                           ; $5735: $00
    dec h                                         ; $5736: $25
    db $db                                        ; $5737: $db
    add d                                         ; $5738: $82
    ld a, a                                       ; $5739: $7f
    ld bc, $7afe                                  ; $573a: $01 $fe $7a
    rst $38                                       ; $573d: $ff
    nop                                           ; $573e: $00
    dec d                                         ; $573f: $15

jr_0c9_5740:
    rst $28                                       ; $5740: $ef
    ld c, d                                       ; $5741: $4a
    or l                                          ; $5742: $b5
    cp a                                          ; $5743: $bf
    ret nz                                        ; $5744: $c0

    ld a, a                                       ; $5745: $7f
    add b                                         ; $5746: $80
    inc b                                         ; $5747: $04
    or a                                          ; $5748: $b7
    ret nz                                        ; $5749: $c0

    db $ed                                        ; $574a: $ed
    nop                                           ; $574b: $00
    cp d                                          ; $574c: $ba
    ld l, h                                       ; $574d: $6c
    ld bc, $ffd2                                  ; $574e: $01 $d2 $ff
    nop                                           ; $5751: $00
    ld a, [$d607]                                 ; $5752: $fa $07 $d6
    dec bc                                        ; $5755: $0b
    ld hl, sp+$07                                 ; $5756: $f8 $07
    or $0b                                        ; $5758: $f6 $0b
    ld bc, $0fb0                                  ; $575a: $01 $b0 $0f
    db $fc                                        ; $575d: $fc
    rlca                                          ; $575e: $07
    ld [hl], e                                    ; $575f: $73
    rrca                                          ; $5760: $0f
    ld [bc], a                                    ; $5761: $02
    ld hl, sp+$00                                 ; $5762: $f8 $00
    ld bc, $be41                                  ; $5764: $01 $41 $be
    jr z, jr_0c9_5740                             ; $5767: $28 $d7

    add b                                         ; $5769: $80
    ld a, a                                       ; $576a: $7f
    ld c, b                                       ; $576b: $48
    ld b, b                                       ; $576c: $40
    ld bc, $3700                                  ; $576d: $01 $00 $37
    rst $38                                       ; $5770: $ff
    ld e, l                                       ; $5771: $5d
    cp a                                          ; $5772: $bf
    and b                                         ; $5773: $a0
    ld e, a                                       ; $5774: $5f
    ld e, d                                       ; $5775: $5a
    cp l                                          ; $5776: $bd
    nop                                           ; $5777: $00
    adc h                                         ; $5778: $8c
    ld a, e                                       ; $5779: $7b
    ld d, d                                       ; $577a: $52
    cp l                                          ; $577b: $bd
    or l                                          ; $577c: $b5
    ld a, d                                       ; $577d: $7a
    ld a, [bc]                                    ; $577e: $0a
    push af                                       ; $577f: $f5
    db $10                                        ; $5780: $10
    ld [hl], h                                    ; $5781: $74
    ei                                            ; $5782: $fb
    reti                                          ; $5783: $d9


    or $02                                        ; $5784: $f6 $02
    inc h                                         ; $5786: $24
    db $db                                        ; $5787: $db
    ld b, d                                       ; $5788: $42
    cp l                                          ; $5789: $bd
    add b                                         ; $578a: $80
    ld h, d                                       ; $578b: $62
    ld bc, $12fa                                  ; $578c: $01 $fa $12
    db $ed                                        ; $578f: $ed
    ld b, c                                       ; $5790: $41
    cp $a8                                        ; $5791: $fe $a8
    rst $30                                       ; $5793: $f7
    nop                                           ; $5794: $00
    ld [hl], b                                    ; $5795: $70
    rst $28                                       ; $5796: $ef
    ld [bc], a                                    ; $5797: $02
    db $fd                                        ; $5798: $fd
    ld h, c                                       ; $5799: $61
    cp $03                                        ; $579a: $fe $03
    db $fc                                        ; $579c: $fc
    dec b                                         ; $579d: $05
    pop bc                                        ; $579e: $c1
    cp $80                                        ; $579f: $fe $80
    rst $38                                       ; $57a1: $ff
    ld a, [$0156]                                 ; $57a2: $fa $56 $01
    inc d                                         ; $57a5: $14
    and b                                         ; $57a6: $a0
    ld [bc], a                                    ; $57a7: $02
    ld bc, $d728                                  ; $57a8: $01 $28 $d7
    dec d                                         ; $57ab: $15
    db $eb                                        ; $57ac: $eb
    ld [$01f7], sp                                ; $57ad: $08 $f7 $01
    ld a, b                                       ; $57b0: $78
    ld bc, $a810                                  ; $57b1: $01 $10 $a8
    rst $10                                       ; $57b4: $d7
    db $10                                        ; $57b5: $10
    ld [hl], h                                    ; $57b6: $74
    ld bc, $fff5                                  ; $57b7: $01 $f5 $ff
    ld d, l                                       ; $57ba: $55
    adc b                                         ; $57bb: $88
    nop                                           ; $57bc: $00
    add b                                         ; $57bd: $80
    nop                                           ; $57be: $00
    adc d                                         ; $57bf: $8a
    nop                                           ; $57c0: $00
    add l                                         ; $57c1: $85
    nop                                           ; $57c2: $00
    pop bc                                        ; $57c3: $c1
    ccf                                           ; $57c4: $3f
    nop                                           ; $57c5: $00
    add d                                         ; $57c6: $82
    ld a, a                                       ; $57c7: $7f
    nop                                           ; $57c8: $00
    rst $38                                       ; $57c9: $ff
    ld e, [hl]                                    ; $57ca: $5e
    rst $38                                       ; $57cb: $ff
    call nc, $0003                                ; $57cc: $d4 $03 $00
    adc e                                         ; $57cf: $8b
    ld bc, $0191                                  ; $57d0: $01 $91 $01
    xor e                                         ; $57d3: $ab
    ld bc, $ff4a                                  ; $57d4: $01 $4a $ff
    nop                                           ; $57d7: $00
    ld b, $ff                                     ; $57d8: $06 $ff
    inc hl                                        ; $57da: $23
    rst $18                                       ; $57db: $df
    inc d                                         ; $57dc: $14
    db $eb                                        ; $57dd: $eb
    adc c                                         ; $57de: $89
    ld [hl], a                                    ; $57df: $77
    nop                                           ; $57e0: $00
    ld b, h                                       ; $57e1: $44
    cp e                                          ; $57e2: $bb
    ld bc, $2fff                                  ; $57e3: $01 $ff $2f
    cp $92                                        ; $57e6: $fe $92
    db $ed                                        ; $57e8: $ed
    nop                                           ; $57e9: $00
    dec a                                         ; $57ea: $3d
    jp nz, $8275                                  ; $57eb: $c2 $75 $82

    db $ec                                        ; $57ee: $ec
    add e                                         ; $57ef: $83
    ld b, l                                       ; $57f0: $45
    add d                                         ; $57f1: $82
    nop                                           ; $57f2: $00
    xor $01                                       ; $57f3: $ee $01
    ld e, a                                       ; $57f5: $5f
    add b                                         ; $57f6: $80
    rst $28                                       ; $57f7: $ef
    nop                                           ; $57f8: $00
    and l                                         ; $57f9: $a5
    cp $00                                        ; $57fa: $fe $00
    ld e, d                                       ; $57fc: $5a
    and a                                         ; $57fd: $a7
    push af                                       ; $57fe: $f5
    ld a, [bc]                                    ; $57ff: $0a
    ld sp, hl                                     ; $5800: $f9
    ld b, $bc                                     ; $5801: $06 $bc
    inc bc                                        ; $5803: $03
    ld bc, $02dd                                  ; $5804: $01 $dd $02
    xor $03                                       ; $5807: $ee $03
    xor l                                         ; $5809: $ad
    inc bc                                        ; $580a: $03
    xor a                                         ; $580b: $af
    jr nz, jr_0c9_5810                            ; $580c: $20 $02

    nop                                           ; $580e: $00
    db $db                                        ; $580f: $db

jr_0c9_5810:
    inc b                                         ; $5810: $04
    db $ed                                        ; $5811: $ed
    ld [bc], a                                    ; $5812: $02
    ld sp, hl                                     ; $5813: $f9
    ld b, $7d                                     ; $5814: $06 $7d
    add d                                         ; $5816: $82
    nop                                           ; $5817: $00
    jp hl                                         ; $5818: $e9


jr_0c9_5819:
    ld d, $2a                                     ; $5819: $16 $2a
    db $fd                                        ; $581b: $fd
    cp a                                          ; $581c: $bf
    rlca                                          ; $581d: $07
    db $f4                                        ; $581e: $f4
    rrca                                          ; $581f: $0f
    nop                                           ; $5820: $00
    cp c                                          ; $5821: $b9
    ld b, $14                                     ; $5822: $06 $14
    rrca                                          ; $5824: $0f
    cp c                                          ; $5825: $b9
    ld c, $76                                     ; $5826: $0e $76
    rrca                                          ; $5828: $0f
    inc b                                         ; $5829: $04
    ld a, [c]                                     ; $582a: $f2
    rrca                                          ; $582b: $0f
    adc c                                         ; $582c: $89
    ld a, a                                       ; $582d: $7f
    xor d                                         ; $582e: $aa
    sub [hl]                                      ; $582f: $96
    inc bc                                        ; $5830: $03
    inc d                                         ; $5831: $14
    db $eb                                        ; $5832: $eb
    nop                                           ; $5833: $00
    adc h                                         ; $5834: $8c
    ld [hl], e                                    ; $5835: $73
    ld b, h                                       ; $5836: $44
    cp e                                          ; $5837: $bb
    jr nz, jr_0c9_5819                            ; $5838: $20 $df

    add b                                         ; $583a: $80
    rst $38                                       ; $583b: $ff
    nop                                           ; $583c: $00
    ld d, c                                       ; $583d: $51
    cp $f2                                        ; $583e: $fe $f2
    db $fd                                        ; $5840: $fd
    inc d                                         ; $5841: $14
    ei                                            ; $5842: $fb
    jr nz, @+$01                                  ; $5843: $20 $ff

    ld [hl+], a                                   ; $5845: $22
    db $10                                        ; $5846: $10
    rst $38                                       ; $5847: $ff
    inc b                                         ; $5848: $04
    ld [$7fa0], sp                                ; $5849: $08 $a0 $7f
    dec a                                         ; $584c: $3d
    ld a, [$0502]                                 ; $584d: $fa $02 $05
    add b                                         ; $5850: $80
    ldh a, [rSB]                                  ; $5851: $f0 $01
    adc d                                         ; $5853: $8a
    ld [hl], l                                    ; $5854: $75
    call nz, $a23b                                ; $5855: $c4 $3b $a2
    ld e, l                                       ; $5858: $5d
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    rst $38                                       ; $585b: $ff
    ld c, a                                       ; $585c: $4f
    rst $38                                       ; $585d: $ff
    xor e                                         ; $585e: $ab
    ret nz                                        ; $585f: $c0

    ld d, c                                       ; $5860: $51
    add b                                         ; $5861: $80
    adc c                                         ; $5862: $89
    nop                                           ; $5863: $00
    add b                                         ; $5864: $80
    ld d, l                                       ; $5865: $55
    add b                                         ; $5866: $80
    xor c                                         ; $5867: $a9
    add b                                         ; $5868: $80
    ld b, c                                       ; $5869: $41
    add b                                         ; $586a: $80
    ret nz                                        ; $586b: $c0

    nop                                           ; $586c: $00
    add b                                         ; $586d: $80
    and l                                         ; $586e: $a5
    ret nz                                        ; $586f: $c0

    xor d                                         ; $5870: $aa
    ld de, $0001                                  ; $5871: $11 $01 $00
    ld d, c                                       ; $5874: $51
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    and c                                         ; $5877: $a1
    nop                                           ; $5878: $00
    ld de, $0000                                  ; $5879: $11 $00 $00
    ld bc, $02aa                                  ; $587c: $01 $aa $02
    ld bc, $0005                                  ; $587f: $01 $05 $00
    adc b                                         ; $5882: $88
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    ld e, $00                                     ; $5885: $1e $00
    and b                                         ; $5887: $a0
    ld [bc], a                                    ; $5888: $02
    nop                                           ; $5889: $00
    ld [$0280], sp                                ; $588a: $08 $80 $02
    add b                                         ; $588d: $80
    ld d, h                                       ; $588e: $54
    ld h, $00                                     ; $588f: $26 $00
    sub l                                         ; $5891: $95
    nop                                           ; $5892: $00
    ld bc, $0182                                  ; $5893: $01 $82 $01
    inc bc                                        ; $5896: $03
    ld bc, $03a4                                  ; $5897: $01 $a4 $03
    dec bc                                        ; $589a: $0b
    nop                                           ; $589b: $00
    ld bc, $0110                                  ; $589c: $01 $10 $01
    rlc c                                         ; $589f: $cb $01
    ld d, c                                       ; $58a1: $51
    ld bc, $00a6                                  ; $58a2: $01 $a6 $00
    rst $38                                       ; $58a5: $ff
    inc bc                                        ; $58a6: $03
    cp $50                                        ; $58a7: $fe $50
    xor a                                         ; $58a9: $af
    dec bc                                        ; $58aa: $0b
    or $40                                        ; $58ab: $f6 $40
    nop                                           ; $58ad: $00
    cp a                                          ; $58ae: $bf
    ld a, [hl+]                                   ; $58af: $2a
    rst $10                                       ; $58b0: $d7
    sub [hl]                                      ; $58b1: $96
    ld l, e                                       ; $58b2: $6b
    ld a, [bc]                                    ; $58b3: $0a

jr_0c9_58b4:
    rst $30                                       ; $58b4: $f7
    or l                                          ; $58b5: $b5
    adc d                                         ; $58b6: $8a
    sbc h                                         ; $58b7: $9c
    ld [bc], a                                    ; $58b8: $02
    db $ed                                        ; $58b9: $ed
    nop                                           ; $58ba: $00
    ld a, e                                       ; $58bb: $7b
    cp d                                          ; $58bc: $ba
    nop                                           ; $58bd: $00
    cp a                                          ; $58be: $bf
    ld [hl], b                                    ; $58bf: $70
    inc b                                         ; $58c0: $04
    xor l                                         ; $58c1: $ad
    nop                                           ; $58c2: $00
    rst $38                                       ; $58c3: $ff
    ld e, d                                       ; $58c4: $5a
    rlca                                          ; $58c5: $07
    db $ec                                        ; $58c6: $ec
    inc bc                                        ; $58c7: $03
    cp d                                          ; $58c8: $ba
    rlca                                          ; $58c9: $07
    halt                                          ; $58ca: $76
    nop                                           ; $58cb: $00
    rrca                                          ; $58cc: $0f
    ldh a, [rIF]                                  ; $58cd: $f0 $0f
    db $ed                                        ; $58cf: $ed
    ld e, $92                                     ; $58d0: $1e $92
    ld l, l                                       ; $58d2: $6d
    dec h                                         ; $58d3: $25
    jr nz, jr_0c9_58b4                            ; $58d4: $20 $de

    push af                                       ; $58d6: $f5
    ld [hl], $04                                  ; $58d7: $36 $04
    ld a, [bc]                                    ; $58d9: $0a
    push af                                       ; $58da: $f5
    db $10                                        ; $58db: $10
    rst $28                                       ; $58dc: $ef
    and d                                         ; $58dd: $a2
    nop                                           ; $58de: $00
    ld e, l                                       ; $58df: $5d
    ld b, c                                       ; $58e0: $41
    cp [hl]                                       ; $58e1: $be
    add h                                         ; $58e2: $84
    ld a, e                                       ; $58e3: $7b
    db $10                                        ; $58e4: $10
    rst $38                                       ; $58e5: $ff

jr_0c9_58e6:
    ld l, d                                       ; $58e6: $6a
    nop                                           ; $58e7: $00
    db $fd                                        ; $58e8: $fd
    dec e                                         ; $58e9: $1d
    ld a, [$7d8a]                                 ; $58ea: $fa $8a $7d
    db $10                                        ; $58ed: $10
    rst $38                                       ; $58ee: $ff
    ld [$ff00], sp                                ; $58ef: $08 $00 $ff
    ld d, c                                       ; $58f2: $51
    cp [hl]                                       ; $58f3: $be
    cp b                                          ; $58f4: $b8
    ld e, a                                       ; $58f5: $5f
    ld d, [hl]                                    ; $58f6: $56
    cp a                                          ; $58f7: $bf
    ld [$ff00], sp                                ; $58f8: $08 $00 $ff
    ld hl, $82de                                  ; $58fb: $21 $de $82
    ld a, l                                       ; $58fe: $7d
    ld b, l                                       ; $58ff: $45

Call_0c9_5900:
    cp d                                          ; $5900: $ba
    ld [$f700], sp                                ; $5901: $08 $00 $f7
    ld d, c                                       ; $5904: $51
    xor [hl]                                      ; $5905: $ae
    nop                                           ; $5906: $00
    rst $38                                       ; $5907: $ff
    xor [hl]                                      ; $5908: $ae
    rst $38                                       ; $5909: $ff
    and d                                         ; $590a: $a2
    nop                                           ; $590b: $00
    ld a, l                                       ; $590c: $7d
    ld c, a                                       ; $590d: $4f
    or b                                          ; $590e: $b0
    xor l                                         ; $590f: $ad
    ld [hl], b                                    ; $5910: $70
    dec de                                        ; $5911: $1b
    ldh a, [rHDMA1]                               ; $5912: $f0 $51
    nop                                           ; $5914: $00
    ldh [$7b], a                                  ; $5915: $e0 $7b
    ret nz                                        ; $5917: $c0

    rla                                           ; $5918: $17
    ldh [$fd], a                                  ; $5919: $e0 $fd
    ret nz                                        ; $591b: $c0

    xor c                                         ; $591c: $a9
    nop                                           ; $591d: $00
    ld a, a                                       ; $591e: $7f
    ld d, [hl]                                    ; $591f: $56
    xor c                                         ; $5920: $a9
    cp l                                          ; $5921: $bd
    ld b, d                                       ; $5922: $42
    ld e, [hl]                                    ; $5923: $5e
    and c                                         ; $5924: $a1
    xor a                                         ; $5925: $af
    ld [$d740], sp                                ; $5926: $08 $40 $d7
    jr nz, jr_0c9_58e6                            ; $5929: $20 $bb

    ld b, $05                                     ; $592b: $06 $05
    ld d, b                                       ; $592d: $50
    add b                                         ; $592e: $80
    adc b                                         ; $592f: $88
    nop                                           ; $5930: $00
    add b                                         ; $5931: $80
    ld d, e                                       ; $5932: $53
    add b                                         ; $5933: $80
    adc d                                         ; $5934: $8a
    nop                                           ; $5935: $00
    ld b, c                                       ; $5936: $41
    add b                                         ; $5937: $80
    and d                                         ; $5938: $a2
    nop                                           ; $5939: $00
    ld b, b                                       ; $593a: $40
    ld b, l                                       ; $593b: $45
    add b                                         ; $593c: $80
    jp nc, $1005                                  ; $593d: $d2 $05 $10

    ld bc, $0040                                  ; $5940: $01 $40 $00
    ld bc, $012a                                  ; $5943: $01 $2a $01
    sub l                                         ; $5946: $95
    ld bc, $0108                                  ; $5947: $01 $08 $01
    and c                                         ; $594a: $a1
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    ld [$da01], sp                                ; $594d: $08 $01 $da
    dec b                                         ; $5950: $05
    db $10                                        ; $5951: $10
    add b                                         ; $5952: $80
    add l                                         ; $5953: $85
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    db $10                                        ; $5956: $10
    add b                                         ; $5957: $80
    ld e, e                                       ; $5958: $5b
    and b                                         ; $5959: $a0
    dec hl                                        ; $595a: $2b
    rst $38                                       ; $595b: $ff
    ld a, [hl]                                    ; $595c: $7e
    nop                                           ; $595d: $00
    add c                                         ; $595e: $81
    cpl                                           ; $595f: $2f
    ret nz                                        ; $5960: $c0

    ld a, e                                       ; $5961: $7b
    add b                                         ; $5962: $80
    add d                                         ; $5963: $82
    ld bc, $0045                                  ; $5964: $01 $45 $00
    inc bc                                        ; $5967: $03
    and d                                         ; $5968: $a2
    ld bc, $a04b                                  ; $5969: $01 $4b $a0
    ld c, b                                       ; $596c: $48
    rst $30                                       ; $596d: $f7
    and l                                         ; $596e: $a5
    nop                                           ; $596f: $00
    ld e, d                                       ; $5970: $5a
    ld a, [$fd07]                                 ; $5971: $fa $07 $fd
    ld [bc], a                                    ; $5974: $02
    ld d, d                                       ; $5975: $52
    rst $38                                       ; $5976: $ff
    ld d, d                                       ; $5977: $52
    nop                                           ; $5978: $00
    db $fc                                        ; $5979: $fc
    inc c                                         ; $597a: $0c
    db $fc                                        ; $597b: $fc
    and d                                         ; $597c: $a2
    ld e, h                                       ; $597d: $5c
    ld d, l                                       ; $597e: $55
    xor h                                         ; $597f: $ac
    ld [hl+], a                                   ; $5980: $22
    nop                                           ; $5981: $00
    call c, $f80c                                 ; $5982: $dc $0c $f8
    ld a, d                                       ; $5985: $7a
    db $fc                                        ; $5986: $fc
    ld e, d                                       ; $5987: $5a

jr_0c9_5988:
    nop                                           ; $5988: $00
    sub b                                         ; $5989: $90
    and d                                         ; $598a: $a2
    xor b                                         ; $598b: $a8
    ld bc, $f8d5                                  ; $598c: $01 $d5 $f8
    nop                                           ; $598f: $00
    stop                                          ; $5990: $10 $00
    ld a, [bc]                                    ; $5992: $0a
    ld l, d                                       ; $5993: $6a
    dec b                                         ; $5994: $05
    sub h                                         ; $5995: $94
    ld bc, $0a4f                                  ; $5996: $01 $4f $0a
    dec c                                         ; $5999: $0d
    add b                                         ; $599a: $80
    rrca                                          ; $599b: $0f
    ld [$040f], sp                                ; $599c: $08 $0f $04
    ld [$a004], sp                                ; $599f: $08 $04 $a0
    rra                                           ; $59a2: $1f
    ld e, a                                       ; $59a3: $5f
    rrca                                          ; $59a4: $0f
    adc d                                         ; $59a5: $8a
    ld a, $04                                     ; $59a6: $3e $04
    ld b, h                                       ; $59a8: $44
    cp e                                          ; $59a9: $bb
    nop                                           ; $59aa: $00
    ld [hl+], a                                   ; $59ab: $22
    db $dd                                        ; $59ac: $dd
    ld [hl], c                                    ; $59ad: $71
    adc [hl]                                      ; $59ae: $8e
    jr z, jr_0c9_5988                             ; $59af: $28 $d7

    nop                                           ; $59b1: $00
    rst $38                                       ; $59b2: $ff
    nop                                           ; $59b3: $00
    and l                                         ; $59b4: $a5
    rst $38                                       ; $59b5: $ff
    sub c                                         ; $59b6: $91
    cp $8f                                        ; $59b7: $fe $8f
    ldh a, [$6e]                                  ; $59b9: $f0 $6e
    ldh a, [rP1]                                  ; $59bb: $f0 $00
    dec e                                         ; $59bd: $1d
    ldh a, [$28]                                  ; $59be: $f0 $28
    ldh a, [rNR33]                                ; $59c0: $f0 $1d
    ldh [$2b], a                                  ; $59c2: $e0 $2b
    ldh a, [rP1]                                  ; $59c4: $f0 $00
    rst $38                                       ; $59c6: $ff
    ldh [rHDMA4], a                               ; $59c7: $e0 $54
    cp a                                          ; $59c9: $bf
    and a                                         ; $59ca: $a7
    ld e, b                                       ; $59cb: $58
    sbc $21                                       ; $59cc: $de $21
    nop                                           ; $59ce: $00
    xor a                                         ; $59cf: $af
    ld d, b                                       ; $59d0: $50
    rst $18                                       ; $59d1: $df
    jr nz, @-$13                                  ; $59d2: $20 $eb

    db $10                                        ; $59d4: $10
    cp l                                          ; $59d5: $bd
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    ld a, [$9600]                                 ; $59d8: $fa $00 $96
    ldh [$7f], a                                  ; $59db: $e0 $7f
    ret nz                                        ; $59dd: $c0

    sbc l                                         ; $59de: $9d
    ld h, b                                       ; $59df: $60
    nop                                           ; $59e0: $00
    ld l, a                                       ; $59e1: $6f
    sub b                                         ; $59e2: $90
    sbc a                                         ; $59e3: $9f
    ld h, b                                       ; $59e4: $60
    db $eb                                        ; $59e5: $eb
    db $10                                        ; $59e6: $10
    sbc a                                         ; $59e7: $9f
    ld h, b                                       ; $59e8: $60
    nop                                           ; $59e9: $00
    push de                                       ; $59ea: $d5
    ccf                                           ; $59eb: $3f
    xor e                                         ; $59ec: $ab
    nop                                           ; $59ed: $00
    cp l                                          ; $59ee: $bd
    nop                                           ; $59ef: $00
    ld d, a                                       ; $59f0: $57
    nop                                           ; $59f1: $00
    db $10                                        ; $59f2: $10
    xor $01                                       ; $59f3: $ee $01
    ei                                            ; $59f5: $fb
    xor [hl]                                      ; $59f6: $ae
    dec b                                         ; $59f7: $05
    ld d, l                                       ; $59f8: $55
    xor d                                         ; $59f9: $aa
    xor d                                         ; $59fa: $aa
    push af                                       ; $59fb: $f5
    nop                                           ; $59fc: $00
    ld [de], a                                    ; $59fd: $12
    rst $28                                       ; $59fe: $ef
    and l                                         ; $59ff: $a5
    ld e, d                                       ; $5a00: $5a
    ld e, a                                       ; $5a01: $5f
    ldh [$bf], a                                  ; $5a02: $e0 $bf
    ret nz                                        ; $5a04: $c0

    nop                                           ; $5a05: $00
    ld e, e                                       ; $5a06: $5b

Jump_0c9_5a07:
    ldh [$b5], a                                  ; $5a07: $e0 $b5
    ret nz                                        ; $5a09: $c0

    ld e, [hl]                                    ; $5a0a: $5e
    add b                                         ; $5a0b: $80
    dec hl                                        ; $5a0c: $2b
    ret nz                                        ; $5a0d: $c0

    ld b, b                                       ; $5a0e: $40
    call nc, Call_000_00a8                        ; $5a0f: $d4 $a8 $00
    db $f4                                        ; $5a12: $f4
    inc bc                                        ; $5a13: $03
    sbc $01                                       ; $5a14: $de $01
    cp h                                          ; $5a16: $bc
    inc bc                                        ; $5a17: $03
    nop                                           ; $5a18: $00
    ld l, [hl]                                    ; $5a19: $6e
    ld bc, $01be                                  ; $5a1a: $01 $be $01
    ld e, d                                       ; $5a1d: $5a
    ld bc, $c03d                                  ; $5a1e: $01 $3d $c0
    nop                                           ; $5a21: $00
    halt                                          ; $5a22: $76
    add b                                         ; $5a23: $80
    ld a, l                                       ; $5a24: $7d
    add b                                         ; $5a25: $80
    ld e, d                                       ; $5a26: $5a
    add b                                         ; $5a27: $80
    rst $30                                       ; $5a28: $f7
    add b                                         ; $5a29: $80
    nop                                           ; $5a2a: $00
    sbc $80                                       ; $5a2b: $de $80
    ld l, a                                       ; $5a2d: $6f
    add b                                         ; $5a2e: $80
    add $81                                       ; $5a2f: $c6 $81
    jp c, Jump_000_0007                           ; $5a31: $da $07 $00

    xor l                                         ; $5a34: $ad
    ld [bc], a                                    ; $5a35: $02
    ld a, d                                       ; $5a36: $7a
    ld bc, $03d5                                  ; $5a37: $01 $d5 $03
    ld [$0001], a                                 ; $5a3a: $ea $01 $00
    push af                                       ; $5a3d: $f5
    inc bc                                        ; $5a3e: $03
    ld l, [hl]                                    ; $5a3f: $6e
    add c                                         ; $5a40: $81
    sbc $01                                       ; $5a41: $de $01
    ld d, l                                       ; $5a43: $55
    adc b                                         ; $5a44: $88
    ld b, b                                       ; $5a45: $40
    ld [$0256], sp                                ; $5a46: $08 $56 $02
    ld de, $0800                                  ; $5a49: $11 $00 $08
    nop                                           ; $5a4c: $00
    inc d                                         ; $5a4d: $14
    ld [$a800], sp                                ; $5a4e: $08 $00 $a8
    db $10                                        ; $5a51: $10
    ld e, d                                       ; $5a52: $5a
    nop                                           ; $5a53: $00
    ld bc, $8400                                  ; $5a54: $01 $00 $84
    nop                                           ; $5a57: $00
    inc d                                         ; $5a58: $14
    ld [hl-], a                                   ; $5a59: $32
    nop                                           ; $5a5a: $00
    ld a, [hl+]                                   ; $5a5b: $2a
    ret nz                                        ; $5a5c: $c0

    ld bc, $c82c                                  ; $5a5d: $01 $2c $c8
    ld bc, $50af                                  ; $5a60: $01 $af $50
    nop                                           ; $5a63: $00
    ld [bc], a                                    ; $5a64: $02
    dec c                                         ; $5a65: $0d
    dec d                                         ; $5a66: $15
    ld a, [bc]                                    ; $5a67: $0a
    xor e                                         ; $5a68: $ab
    inc c                                         ; $5a69: $0c
    xor l                                         ; $5a6a: $ad
    stop                                          ; $5a6b: $10 $00
    rla                                           ; $5a6d: $17
    jr jr_0c9_5a9e                                ; $5a6e: $18 $2e

    db $10                                        ; $5a70: $10
    dec sp                                        ; $5a71: $3b
    nop                                           ; $5a72: $00
    ld c, l                                       ; $5a73: $4d
    or b                                          ; $5a74: $b0
    inc b                                         ; $5a75: $04
    ld e, d                                       ; $5a76: $5a
    rst $38                                       ; $5a77: $ff
    cpl                                           ; $5a78: $2f
    ret nc                                        ; $5a79: $d0

    cp $40                                        ; $5a7a: $fe $40
    inc b                                         ; $5a7c: $04
    ld [hl], a                                    ; $5a7d: $77
    nop                                           ; $5a7e: $00
    ld b, b                                       ; $5a7f: $40
    xor a                                         ; $5a80: $af
    ld b, b                                       ; $5a81: $40
    inc b                                         ; $5a82: $04
    ld l, d                                       ; $5a83: $6a
    nop                                           ; $5a84: $00
    adc d                                         ; $5a85: $8a
    ldh a, [$df]                                  ; $5a86: $f0 $df
    jr nz, jr_0c9_5a8b                            ; $5a88: $20 $01

    xor a                                         ; $5a8a: $af

jr_0c9_5a8b:
    ld d, b                                       ; $5a8b: $50
    xor a                                         ; $5a8c: $af
    ld d, b                                       ; $5a8d: $50
    ld e, [hl]                                    ; $5a8e: $5e
    and b                                         ; $5a8f: $a0
    xor e                                         ; $5a90: $ab
    or h                                          ; $5a91: $b4
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    adc d                                         ; $5a94: $8a
    ld a, a                                       ; $5a95: $7f
    or l                                          ; $5a96: $b5
    nop                                           ; $5a97: $00
    ld e, [hl]                                    ; $5a98: $5e
    nop                                           ; $5a99: $00
    xor e                                         ; $5a9a: $ab
    nop                                           ; $5a9b: $00
    db $10                                        ; $5a9c: $10
    halt                                          ; $5a9d: $76

jr_0c9_5a9e:
    ld bc, $4eff                                  ; $5a9e: $01 $ff $4e
    ld b, $a9                                     ; $5aa1: $06 $a9
    ld d, [hl]                                    ; $5aa3: $56
    call nc, Call_000_01fb                        ; $5aa4: $d4 $fb $01
    adc l                                         ; $5aa7: $8d
    ld [hl], b                                    ; $5aa8: $70
    add sp, $00                                   ; $5aa9: $e8 $00
    and d                                         ; $5aab: $a2
    ld b, b                                       ; $5aac: $40
    adc b                                         ; $5aad: $88
    db $fc                                        ; $5aae: $fc
    ld bc, $aa41                                  ; $5aaf: $01 $41 $aa
    ld [hl+], a                                   ; $5ab2: $22
    ld [bc], a                                    ; $5ab3: $02
    inc b                                         ; $5ab4: $04
    add b                                         ; $5ab5: $80
    xor d                                         ; $5ab6: $aa
    ld d, b                                       ; $5ab7: $50
    ld d, b                                       ; $5ab8: $50
    ld e, $02                                     ; $5ab9: $1e $02
    nop                                           ; $5abb: $00
    ld b, c                                       ; $5abc: $41
    nop                                           ; $5abd: $00
    and h                                         ; $5abe: $a4
    nop                                           ; $5abf: $00
    ld d, e                                       ; $5ac0: $53
    nop                                           ; $5ac1: $00
    inc b                                         ; $5ac2: $04
    nop                                           ; $5ac3: $00
    ld b, b                                       ; $5ac4: $40
    inc bc                                        ; $5ac5: $03
    add h                                         ; $5ac6: $84
    inc b                                         ; $5ac7: $04
    xor a                                         ; $5ac8: $af
    ld b, b                                       ; $5ac9: $40
    halt                                          ; $5aca: $76
    add c                                         ; $5acb: $81
    ld a, e                                       ; $5acc: $7b
    add b                                         ; $5acd: $80
    nop                                           ; $5ace: $00
    cp [hl]                                       ; $5acf: $be
    ld b, c                                       ; $5ad0: $41
    ld e, a                                       ; $5ad1: $5f
    and b                                         ; $5ad2: $a0
    cp d                                          ; $5ad3: $ba
    push bc                                       ; $5ad4: $c5
    ld b, l                                       ; $5ad5: $45
    rst $38                                       ; $5ad6: $ff
    nop                                           ; $5ad7: $00
    rst $28                                       ; $5ad8: $ef
    ld bc, $017b                                  ; $5ad9: $01 $7b $01
    or $01                                        ; $5adc: $f6 $01
    ld h, e                                       ; $5ade: $63
    add c                                         ; $5adf: $81
    nop                                           ; $5ae0: $00
    or a                                          ; $5ae1: $b7
    ld b, c                                       ; $5ae2: $41
    ld l, a                                       ; $5ae3: $6f

jr_0c9_5ae4:
    add c                                         ; $5ae4: $81
    cp [hl]                                       ; $5ae5: $be
    ld b, c                                       ; $5ae6: $41

jr_0c9_5ae7:
    ld d, l                                       ; $5ae7: $55
    xor e                                         ; $5ae8: $ab
    ld de, $82ed                                  ; $5ae9: $11 $ed $82
    or $40                                        ; $5aec: $f6 $40
    ld b, $aa                                     ; $5aee: $06 $aa
    push de                                       ; $5af0: $d5

jr_0c9_5af1:
    push hl                                       ; $5af1: $e5
    add b                                         ; $5af2: $80

jr_0c9_5af3:
    inc b                                         ; $5af3: $04
    nop                                           ; $5af4: $00
    adc d                                         ; $5af5: $8a
    push af                                       ; $5af6: $f5
    sub b                                         ; $5af7: $90
    rst $28                                       ; $5af8: $ef
    ld a, l                                       ; $5af9: $7d
    add d                                         ; $5afa: $82
    ei                                            ; $5afb: $fb
    inc b                                         ; $5afc: $04
    nop                                           ; $5afd: $00
    ld e, h                                       ; $5afe: $5c
    and e                                         ; $5aff: $a3

jr_0c9_5b00:
    and d                                         ; $5b00: $a2
    rst $38                                       ; $5b01: $ff
    ld [hl], l                                    ; $5b02: $75
    cp $00                                        ; $5b03: $fe $00
    rst $38                                       ; $5b05: $ff
    add b                                         ; $5b06: $80
    db $f4                                        ; $5b07: $f4
    ld a, [bc]                                    ; $5b08: $0a
    dec b                                         ; $5b09: $05
    ld a, [de]                                    ; $5b0a: $1a

jr_0c9_5b0b:
    cpl                                           ; $5b0b: $2f
    db $10                                        ; $5b0c: $10
    ld c, [hl]                                    ; $5b0d: $4e
    db $10                                        ; $5b0e: $10
    cp l                                          ; $5b0f: $bd
    nop                                           ; $5b10: $00
    db $10                                        ; $5b11: $10
    ld [$7b10], sp                                ; $5b12: $08 $10 $7b
    nop                                           ; $5b15: $00
    ld d, a                                       ; $5b16: $57
    jr nz, @+$3f                                  ; $5b17: $20 $3d

    inc b                                         ; $5b19: $04
    ret nz                                        ; $5b1a: $c0

    ld d, h                                       ; $5b1b: $54
    cp a                                          ; $5b1c: $bf
    xor e                                         ; $5b1d: $ab
    ld d, h                                       ; $5b1e: $54
    sub d                                         ; $5b1f: $92
    ld [$20db], sp                                ; $5b20: $08 $db $20
    jr nz, jr_0c9_5b00                            ; $5b23: $20 $db

    jr nz, jr_0c9_5b67                            ; $5b25: $20 $40

    add hl, bc                                    ; $5b27: $09
    ld d, l                                       ; $5b28: $55
    ldh [$bb], a                                  ; $5b29: $e0 $bb
    ld h, b                                       ; $5b2b: $60
    ld e, l                                       ; $5b2c: $5d
    nop                                           ; $5b2d: $00
    and b                                         ; $5b2e: $a0
    sbc [hl]                                      ; $5b2f: $9e
    ld h, b                                       ; $5b30: $60
    rst $08                                       ; $5b31: $cf
    jr nc, jr_0c9_5b0b                            ; $5b32: $30 $d7

    jr z, jr_0c9_5ae4                             ; $5b34: $28 $ae

    nop                                           ; $5b36: $00
    ld [hl], c                                    ; $5b37: $71
    pop de                                        ; $5b38: $d1
    ccf                                           ; $5b39: $3f
    ei                                            ; $5b3a: $fb
    nop                                           ; $5b3b: $00
    sbc $00                                       ; $5b3c: $de $00
    cp l                                          ; $5b3e: $bd
    nop                                           ; $5b3f: $00
    ld b, b                                       ; $5b40: $40
    ret c                                         ; $5b41: $d8

    jr nz, jr_0c9_5af1                            ; $5b42: $20 $ad

    ld d, b                                       ; $5b44: $50
    rst $10                                       ; $5b45: $d7
    jr nz, jr_0c9_5ae7                            ; $5b46: $20 $9f

    nop                                           ; $5b48: $00
    ld h, b                                       ; $5b49: $60
    ld c, d                                       ; $5b4a: $4a
    push af                                       ; $5b4b: $f5
    rst $10                                       ; $5b4c: $d7
    jr z, jr_0c9_5af3                             ; $5b4d: $28 $a4

    ld b, b                                       ; $5b4f: $40
    ld [c], a                                     ; $5b50: $e2
    ld [bc], a                                    ; $5b51: $02
    nop                                           ; $5b52: $00
    add h                                         ; $5b53: $84
    ld b, b                                       ; $5b54: $40
    ld [$2a40], a                                 ; $5b55: $ea $40 $2a
    and b                                         ; $5b58: $a0
    ld b, b                                       ; $5b59: $40
    ld b, b                                       ; $5b5a: $40
    and b                                         ; $5b5b: $a0
    and b                                         ; $5b5c: $a0
    nop                                           ; $5b5d: $00
    ld d, d                                       ; $5b5e: $52
    and b                                         ; $5b5f: $a0
    nop                                           ; $5b60: $00
    ld [bc], a                                    ; $5b61: $02
    nop                                           ; $5b62: $00
    ret nc                                        ; $5b63: $d0

    nop                                           ; $5b64: $00
    xor d                                         ; $5b65: $aa
    nop                                           ; $5b66: $00

jr_0c9_5b67:
    ld b, b                                       ; $5b67: $40
    ld b, b                                       ; $5b68: $40
    add b                                         ; $5b69: $80
    add h                                         ; $5b6a: $84
    nop                                           ; $5b6b: $00
    ld b, d                                       ; $5b6c: $42
    nop                                           ; $5b6d: $00
    add [hl]                                      ; $5b6e: $86
    add d                                         ; $5b6f: $82
    ld d, $00                                     ; $5b70: $16 $00
    xor c                                         ; $5b72: $a9
    ld b, h                                       ; $5b73: $44
    ld d, d                                       ; $5b74: $52
    ld bc, $4281                                  ; $5b75: $01 $81 $42
    rlca                                          ; $5b78: $07
    ld c, d                                       ; $5b79: $4a
    add b                                         ; $5b7a: $80
    jr nz, @+$09                                  ; $5b7b: $20 $07

    adc b                                         ; $5b7d: $88
    nop                                           ; $5b7e: $00
    ld b, l                                       ; $5b7f: $45
    nop                                           ; $5b80: $00
    ld l, d                                       ; $5b81: $6a
    ld bc, $80ae                                  ; $5b82: $01 $ae $80
    add $06                                       ; $5b85: $c6 $06
    sub c                                         ; $5b87: $91
    xor $a2                                       ; $5b88: $ee $a2
    db $dd                                        ; $5b8a: $dd
    inc d                                         ; $5b8b: $14

jr_0c9_5b8c:
    db $eb                                        ; $5b8c: $eb
    xor b                                         ; $5b8d: $a8
    ld [bc], a                                    ; $5b8e: $02
    rst $10                                       ; $5b8f: $d7
    ld d, b                                       ; $5b90: $50
    xor a                                         ; $5b91: $af
    and d                                         ; $5b92: $a2
    rst $18                                       ; $5b93: $df
    and a                                         ; $5b94: $a7
    ld [de], a                                    ; $5b95: $12
    dec b                                         ; $5b96: $05
    ld d, c                                       ; $5b97: $51
    add b                                         ; $5b98: $80
    ld e, h                                       ; $5b99: $5c
    ld b, $a1                                     ; $5b9a: $06 $a1
    ld e, a                                       ; $5b9c: $5f
    dec d                                         ; $5b9d: $15
    db $eb                                        ; $5b9e: $eb
    ld c, e                                       ; $5b9f: $4b
    or l                                          ; $5ba0: $b5
    dec b                                         ; $5ba1: $05
    nop                                           ; $5ba2: $00
    ei                                            ; $5ba3: $fb
    add l                                         ; $5ba4: $85
    ld a, [$d7a8]                                 ; $5ba5: $fa $a8 $d7
    jp nc, $a0ad                                  ; $5ba8: $d2 $ad $a0

    jr nz, jr_0c9_5b8c                            ; $5bab: $20 $df

    sub h                                         ; $5bad: $94
    sub b                                         ; $5bae: $90
    inc d                                         ; $5baf: $14
    sub h                                         ; $5bb0: $94
    db $eb                                        ; $5bb1: $eb
    add hl, hl                                    ; $5bb2: $29
    rst $10                                       ; $5bb3: $d7
    inc d                                         ; $5bb4: $14
    add b                                         ; $5bb5: $80
    xor b                                         ; $5bb6: $a8
    inc b                                         ; $5bb7: $04
    ld b, l                                       ; $5bb8: $45
    ei                                            ; $5bb9: $fb
    adc b                                         ; $5bba: $88
    rst $30                                       ; $5bbb: $f7
    dec b                                         ; $5bbc: $05
    ei                                            ; $5bbd: $fb
    jr nz, jr_0c9_5bc0                            ; $5bbe: $20 $00

jr_0c9_5bc0:
    rst $18                                       ; $5bc0: $df
    ld b, c                                       ; $5bc1: $41
    cp a                                          ; $5bc2: $bf
    sub [hl]                                      ; $5bc3: $96
    ldh [$bf], a                                  ; $5bc4: $e0 $bf
    ld b, b                                       ; $5bc6: $40
    ld e, e                                       ; $5bc7: $5b
    inc b                                         ; $5bc8: $04
    and b                                         ; $5bc9: $a0
    xor [hl]                                      ; $5bca: $ae
    ld d, b                                       ; $5bcb: $50
    ld e, l                                       ; $5bcc: $5d
    and b                                         ; $5bcd: $a0
    db $f4                                        ; $5bce: $f4
    add hl, bc                                    ; $5bcf: $09
    dec d                                         ; $5bd0: $15
    rst $38                                       ; $5bd1: $ff
    pop bc                                        ; $5bd2: $c1
    ld b, b                                       ; $5bd3: $40
    add hl, bc                                    ; $5bd4: $09
    ldh [rOBP1], a                                ; $5bd5: $e0 $49
    sub [hl]                                      ; $5bd7: $96
    ld l, b                                       ; $5bd8: $68
    db $e4                                        ; $5bd9: $e4
    nop                                           ; $5bda: $00
    ld b, d                                       ; $5bdb: $42
    and h                                         ; $5bdc: $a4
    ld [bc], a                                    ; $5bdd: $02
    add d                                         ; $5bde: $82
    ld b, b                                       ; $5bdf: $40
    add hl, de                                    ; $5be0: $19
    ld [$ca80], sp                                ; $5be1: $08 $80 $ca
    jr nc, jr_0c9_5c16                            ; $5be4: $30 $30

    and b                                         ; $5be6: $a0
    ld b, b                                       ; $5be7: $40
    dec b                                         ; $5be8: $05
    and b                                         ; $5be9: $a0
    and b                                         ; $5bea: $a0
    ld b, b                                       ; $5beb: $40
    add l                                         ; $5bec: $85
    or [hl]                                       ; $5bed: $b6
    nop                                           ; $5bee: $00
    ld d, l                                       ; $5bef: $55
    adc b                                         ; $5bf0: $88
    ld c, c                                       ; $5bf1: $49
    nop                                           ; $5bf2: $00
    add b                                         ; $5bf3: $80
    and b                                         ; $5bf4: $a0
    and b                                         ; $5bf5: $a0
    jr nz, jr_0c9_5c40                            ; $5bf6: $20 $48

    jp c, $6a07                                   ; $5bf8: $da $07 $6a

    ld bc, $ef12                                  ; $5bfb: $01 $12 $ef
    xor c                                         ; $5bfe: $a9
    nop                                           ; $5bff: $00
    ld d, [hl]                                    ; $5c00: $56
    cp a                                          ; $5c01: $bf
    ret nz                                        ; $5c02: $c0

    ld l, a                                       ; $5c03: $6f
    add b                                         ; $5c04: $80
    cp e                                          ; $5c05: $bb
    ret nz                                        ; $5c06: $c0

    ld [hl], l                                    ; $5c07: $75
    inc b                                         ; $5c08: $04
    add b                                         ; $5c09: $80
    sbc $00                                       ; $5c0a: $de $00
    ld l, e                                       ; $5c0c: $6b
    add b                                         ; $5c0d: $80
    jr nz, @+$0c                                  ; $5c0e: $20 $0a

    push af                                       ; $5c10: $f5
    ld [bc], a                                    ; $5c11: $02
    nop                                           ; $5c12: $00
    sbc $01                                       ; $5c13: $de $01
    cp l                                          ; $5c15: $bd

jr_0c9_5c16:
    ld [bc], a                                    ; $5c16: $02
    ld l, [hl]                                    ; $5c17: $6e
    ld bc, $00bf                                  ; $5c18: $01 $bf $00
    inc b                                         ; $5c1b: $04
    ld e, d                                       ; $5c1c: $5a
    ld bc, $ef91                                  ; $5c1d: $01 $91 $ef
    and b                                         ; $5c20: $a0
    sub [hl]                                      ; $5c21: $96
    rlca                                          ; $5c22: $07
    add d                                         ; $5c23: $82
    db $fd                                        ; $5c24: $fd
    ld a, [bc]                                    ; $5c25: $0a
    rlca                                          ; $5c26: $07
    ld hl, sp-$7e                                 ; $5c27: $f8 $82
    db $fd                                        ; $5c29: $fd
    ldh a, [$0d]                                  ; $5c2a: $f0 $0d
    add hl, hl                                    ; $5c2c: $29
    add b                                         ; $5c2d: $80
    inc d                                         ; $5c2e: $14
    add hl, hl                                    ; $5c2f: $29
    sbc l                                         ; $5c30: $9d
    add b                                         ; $5c31: $80
    inc b                                         ; $5c32: $04
    adc b                                         ; $5c33: $88
    ld [hl], a                                    ; $5c34: $77
    ld d, b                                       ; $5c35: $50
    inc b                                         ; $5c36: $04
    add b                                         ; $5c37: $80
    inc b                                         ; $5c38: $04
    ld d, $0d                                     ; $5c39: $16 $0d
    db $f4                                        ; $5c3b: $f4
    ld [bc], a                                    ; $5c3c: $02
    rlca                                          ; $5c3d: $07
    ld b, c                                       ; $5c3e: $41
    nop                                           ; $5c3f: $00

jr_0c9_5c40:
    ld [de], a                                    ; $5c40: $12
    dec b                                         ; $5c41: $05
    rlca                                          ; $5c42: $07
    ld hl, sp-$1f                                 ; $5c43: $f8 $e1
    rra                                           ; $5c45: $1f
    ld b, c                                       ; $5c46: $41
    cp d                                          ; $5c47: $ba
    rlca                                          ; $5c48: $07
    db $10                                        ; $5c49: $10
    xor a                                         ; $5c4a: $af
    rst $38                                       ; $5c4b: $ff
    ld l, $fa                                     ; $5c4c: $2e $fa
    dec b                                         ; $5c4e: $05

jr_0c9_5c4f:
    adc b                                         ; $5c4f: $88
    ld [hl], a                                    ; $5c50: $77
    dec d                                         ; $5c51: $15
    db $eb                                        ; $5c52: $eb
    db $10                                        ; $5c53: $10
    ld a, [$407f]                                 ; $5c54: $fa $7f $40
    ld [$5400], sp                                ; $5c57: $08 $00 $54
    db $eb                                        ; $5c5a: $eb
    inc d                                         ; $5c5b: $14
    db $eb                                        ; $5c5c: $eb
    ld bc, $fdc2                                  ; $5c5d: $01 $c2 $fd
    jr z, @+$01                                   ; $5c60: $28 $ff

    sub h                                         ; $5c62: $94
    rst $38                                       ; $5c63: $ff
    ld d, a                                       ; $5c64: $57
    sub $07                                       ; $5c65: $d6 $07
    nop                                           ; $5c67: $00
    and b                                         ; $5c68: $a0
    ld e, a                                       ; $5c69: $5f
    ld [hl], b                                    ; $5c6a: $70
    adc a                                         ; $5c6b: $8f
    ld b, c                                       ; $5c6c: $41
    cp a                                          ; $5c6d: $bf
    jr nz, jr_0c9_5c4f                            ; $5c6e: $20 $df

jr_0c9_5c70:
    dec b                                         ; $5c70: $05
    dec b                                         ; $5c71: $05
    ei                                            ; $5c72: $fb
    adc c                                         ; $5c73: $89
    rst $30                                       ; $5c74: $f7
    and b                                         ; $5c75: $a0
    inc e                                         ; $5c76: $1c
    inc b                                         ; $5c77: $04
    add b                                         ; $5c78: $80
    cp b                                          ; $5c79: $b8
    nop                                           ; $5c7a: $00
    ld d, c                                       ; $5c7b: $51
    add l                                         ; $5c7c: $85
    ld c, $03                                     ; $5c7d: $0e $03
    add b                                         ; $5c7f: $80
    and b                                         ; $5c80: $a0
    nop                                           ; $5c81: $00
    sub d                                         ; $5c82: $92
    ld bc, $fe01                                  ; $5c83: $01 $01 $fe
    ld bc, $8a14                                  ; $5c86: $01 $14 $8a
    nop                                           ; $5c89: $00
    ld d, l                                       ; $5c8a: $55
    ld b, b                                       ; $5c8b: $40
    ld hl, $58f4                                  ; $5c8c: $21 $f4 $58
    ld b, $11                                     ; $5c8f: $06 $11
    xor $60                                       ; $5c91: $ee $60
    xor b                                         ; $5c93: $a8
    ld d, $01                                     ; $5c94: $16 $01
    ld b, b                                       ; $5c96: $40
    jr jr_0c9_5c70                                ; $5c97: $18 $d7

    nop                                           ; $5c99: $00
    ld l, a                                       ; $5c9a: $6f
    add b                                         ; $5c9b: $80
    or $40                                        ; $5c9c: $f6 $40
    ld bc, $4210                                  ; $5c9e: $01 $10 $42
    nop                                           ; $5ca1: $00
    ld a, d                                       ; $5ca2: $7a
    ld bc, $00f7                                  ; $5ca3: $01 $f7 $00
    ld h, d                                       ; $5ca6: $62
    and b                                         ; $5ca7: $a0
    db $10                                        ; $5ca8: $10
    ld [bc], a                                    ; $5ca9: $02
    ld l, [hl]                                    ; $5caa: $6e
    db $10                                        ; $5cab: $10
    ld [bc], a                                    ; $5cac: $02
    ld d, h                                       ; $5cad: $54
    xor e                                         ; $5cae: $ab
    add d                                         ; $5caf: $82
    db $fd                                        ; $5cb0: $fd
    inc b                                         ; $5cb1: $04
    inc b                                         ; $5cb2: $04
    ei                                            ; $5cb3: $fb
    and b                                         ; $5cb4: $a0
    rst $18                                       ; $5cb5: $df
    sub c                                         ; $5cb6: $91
    rst $28                                       ; $5cb7: $ef
    ld [$2928], sp                                ; $5cb8: $08 $28 $29
    rst $10                                       ; $5cbb: $d7
    inc d                                         ; $5cbc: $14
    ld b, e                                       ; $5cbd: $43
    cp a                                          ; $5cbe: $bf
    inc d                                         ; $5cbf: $14
    or [hl]                                       ; $5cc0: $b6
    nop                                           ; $5cc1: $00
    jr z, @+$0a                                   ; $5cc2: $28 $08

    jr nz, jr_0c9_5cf6                            ; $5cc4: $20 $30

    dec c                                         ; $5cc6: $0d
    sbc b                                         ; $5cc7: $98
    ld a, [bc]                                    ; $5cc8: $0a
    nop                                           ; $5cc9: $00
    ld [$7f00], a                                 ; $5cca: $ea $00 $7f
    add b                                         ; $5ccd: $80
    xor d                                         ; $5cce: $aa
    ld d, l                                       ; $5ccf: $55
    ld c, a                                       ; $5cd0: $4f
    rst $38                                       ; $5cd1: $ff
    nop                                           ; $5cd2: $00
    push af                                       ; $5cd3: $f5
    ld a, [$e015]                                 ; $5cd4: $fa $15 $e0
    xor [hl]                                      ; $5cd7: $ae
    nop                                           ; $5cd8: $00
    ei                                            ; $5cd9: $fb
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    xor [hl]                                      ; $5cdc: $ae
    jr jr_0c9_5d3a                                ; $5cdd: $18 $5b

    cp h                                          ; $5cdf: $bc
    xor d                                         ; $5ce0: $aa
    db $fc                                        ; $5ce1: $fc
    ld sp, hl                                     ; $5ce2: $f9
    cp $00                                        ; $5ce3: $fe $00
    ld l, [hl]                                    ; $5ce5: $6e
    sbc l                                         ; $5ce6: $9d
    ld e, c                                       ; $5ce7: $59
    ld c, $ad                                     ; $5ce8: $0e $ad
    rra                                           ; $5cea: $1f
    ld l, d                                       ; $5ceb: $6a
    rra                                           ; $5cec: $1f
    ld b, h                                       ; $5ced: $44
    nop                                           ; $5cee: $00
    ld bc, $a000                                  ; $5cef: $01 $00 $a0
    nop                                           ; $5cf2: $00
    ld d, l                                       ; $5cf3: $55
    ld a, [de]                                    ; $5cf4: $1a
    nop                                           ; $5cf5: $00

jr_0c9_5cf6:
    ld e, l                                       ; $5cf6: $5d
    and d                                         ; $5cf7: $a2
    nop                                           ; $5cf8: $00
    ld d, l                                       ; $5cf9: $55
    rst $38                                       ; $5cfa: $ff
    cp $ff                                        ; $5cfb: $fe $ff
    ld a, b                                       ; $5cfd: $78
    jr nz, @+$2e                                  ; $5cfe: $20 $2c

    ld [hl], b                                    ; $5d00: $70
    nop                                           ; $5d01: $00
    ld h, b                                       ; $5d02: $60
    ccf                                           ; $5d03: $3f
    ccf                                           ; $5d04: $3f
    ld a, a                                       ; $5d05: $7f
    and $38                                       ; $5d06: $e6 $38
    dec sp                                        ; $5d08: $3b
    ldh [rP1], a                                  ; $5d09: $e0 $00
    ccf                                           ; $5d0b: $3f
    ldh [$bf], a                                  ; $5d0c: $e0 $bf
    ldh [$28], a                                  ; $5d0e: $e0 $28
    ld b, b                                       ; $5d10: $40
    sub c                                         ; $5d11: $91
    ld b, b                                       ; $5d12: $40
    nop                                           ; $5d13: $00
    ld h, d                                       ; $5d14: $62
    ret nz                                        ; $5d15: $c0

    call nc, $aa80                                ; $5d16: $d4 $80 $aa
    nop                                           ; $5d19: $00
    push de                                       ; $5d1a: $d5
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    ld l, d                                       ; $5d1d: $6a
    nop                                           ; $5d1e: $00
    rst $30                                       ; $5d1f: $f7
    nop                                           ; $5d20: $00
    jr z, jr_0c9_5d23                             ; $5d21: $28 $00

jr_0c9_5d23:
    ld d, c                                       ; $5d23: $51
    nop                                           ; $5d24: $00
    ld a, [bc]                                    ; $5d25: $0a
    and d                                         ; $5d26: $a2
    nop                                           ; $5d27: $00
    ld d, h                                       ; $5d28: $54
    nop                                           ; $5d29: $00
    db $10                                        ; $5d2a: $10
    jr z, jr_0c9_5d36                             ; $5d2b: $28 $09

    ld b, c                                       ; $5d2d: $41
    nop                                           ; $5d2e: $00
    ld b, d                                       ; $5d2f: $42
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    dec d                                         ; $5d32: $15
    nop                                           ; $5d33: $00
    dec hl                                        ; $5d34: $2b
    nop                                           ; $5d35: $00

jr_0c9_5d36:
    ld e, a                                       ; $5d36: $5f
    nop                                           ; $5d37: $00
    or [hl]                                       ; $5d38: $b6
    nop                                           ; $5d39: $00

jr_0c9_5d3a:
    nop                                           ; $5d3a: $00
    ld a, a                                       ; $5d3b: $7f
    nop                                           ; $5d3c: $00
    ld hl, $4002                                  ; $5d3d: $21 $02 $40
    inc b                                         ; $5d40: $04
    xor l                                         ; $5d41: $ad
    nop                                           ; $5d42: $00
    ld [$0c5a], sp                                ; $5d43: $08 $5a $0c
    xor e                                         ; $5d46: $ab
    inc c                                         ; $5d47: $0c
    ret c                                         ; $5d48: $d8

    rrca                                          ; $5d49: $0f
    xor a                                         ; $5d4a: $af
    nop                                           ; $5d4b: $00

jr_0c9_5d4c:
    rlca                                          ; $5d4c: $07
    ei                                            ; $5d4d: $fb
    nop                                           ; $5d4e: $00
    ld b, b                                       ; $5d4f: $40
    and b                                         ; $5d50: $a0
    inc b                                         ; $5d51: $04
    stop                                          ; $5d52: $10 $00
    nop                                           ; $5d54: $00
    db $10                                        ; $5d55: $10
    or l                                          ; $5d56: $b5
    ld [de], a                                    ; $5d57: $12
    db $d3                                        ; $5d58: $d3
    inc a                                         ; $5d59: $3c
    jr c, jr_0c9_5d4c                             ; $5d5a: $38 $f0

    ret nc                                        ; $5d5c: $d0

    nop                                           ; $5d5d: $00
    ldh [$b0], a                                  ; $5d5e: $e0 $b0
    ret nz                                        ; $5d60: $c0

    ld a, [bc]                                    ; $5d61: $0a
    nop                                           ; $5d62: $00
    rla                                           ; $5d63: $17
    nop                                           ; $5d64: $00
    xor l                                         ; $5d65: $ad
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00
    ld d, l                                       ; $5d68: $55
    xor d                                         ; $5d69: $aa
    ld d, [hl]                                    ; $5d6a: $56
    ld bc, $0102                                  ; $5d6b: $01 $02 $01
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    ld bc, $0101                                  ; $5d70: $01 $01 $01
    ldh [rP1], a                                  ; $5d73: $e0 $00
    call nc, $fa00                                ; $5d75: $d4 $00 $fa
    ld [$ed00], sp                                ; $5d78: $08 $00 $ed
    nop                                           ; $5d7b: $00
    cp $9c                                        ; $5d7c: $fe $9c
    nop                                           ; $5d7e: $00
    ld a, a                                       ; $5d7f: $7f
    nop                                           ; $5d80: $00
    rst $38                                       ; $5d81: $ff
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    ld [hl+], a                                   ; $5d84: $22
    ld bc, $0045                                  ; $5d85: $01 $45 $00
    xor b                                         ; $5d88: $a8
    ld bc, $0055                                  ; $5d89: $01 $55 $00
    nop                                           ; $5d8c: $00
    xor d                                         ; $5d8d: $aa
    ld bc, $01d4                                  ; $5d8e: $01 $d4 $01
    xor [hl]                                      ; $5d91: $ae
    ld bc, $40fa                                  ; $5d92: $01 $fa $40
    ld bc, $08a0                                  ; $5d95: $01 $a0 $08
    nop                                           ; $5d98: $00
    nop                                           ; $5d99: $00
    ld [$0601], sp                                ; $5d9a: $08 $01 $06
    add hl, bc                                    ; $5d9d: $09
    ld [$0204], sp                                ; $5d9e: $08 $04 $02
    nop                                           ; $5da1: $00
    inc b                                         ; $5da2: $04
    xor [hl]                                      ; $5da3: $ae
    nop                                           ; $5da4: $00
    ld b, b                                       ; $5da5: $40
    ld b, b                                       ; $5da6: $40
    ld [$4800], sp                                ; $5da7: $08 $00 $48
    sub b                                         ; $5daa: $90
    sub b                                         ; $5dab: $90
    ld c, c                                       ; $5dac: $49
    ld c, $11                                     ; $5dad: $0e $11
    ld [bc], a                                    ; $5daf: $02
    inc b                                         ; $5db0: $04
    jr nz, jr_0c9_5db3                            ; $5db1: $20 $00

jr_0c9_5db3:
    ld [bc], a                                    ; $5db3: $02
    ld e, $10                                     ; $5db4: $1e $10
    ld b, b                                       ; $5db6: $40
    ld b, b                                       ; $5db7: $40
    jr nz, jr_0c9_5e0a                            ; $5db8: $20 $50

    jr nz, jr_0c9_5dec                            ; $5dba: $20 $30

    inc b                                         ; $5dbc: $04
    ld a, [de]                                    ; $5dbd: $1a
    ld e, $10                                     ; $5dbe: $1e $10
    inc bc                                        ; $5dc0: $03
    ld b, b                                       ; $5dc1: $40
    inc bc                                        ; $5dc2: $03
    inc b                                         ; $5dc3: $04
    ld bc, $c002                                  ; $5dc4: $01 $02 $c0
    ld h, d                                       ; $5dc7: $62
    nop                                           ; $5dc8: $00
    pop hl                                        ; $5dc9: $e1
    ld [$0404], sp                                ; $5dca: $08 $04 $04
    ld [bc], a                                    ; $5dcd: $02
    ld b, $88                                     ; $5dce: $06 $88
    sub e                                         ; $5dd0: $93
    ld [bc], a                                    ; $5dd1: $02
    ld [$1100], sp                                ; $5dd2: $08 $00 $11
    nop                                           ; $5dd5: $00
    nop                                           ; $5dd6: $00
    add [hl]                                      ; $5dd7: $86
    ld d, c                                       ; $5dd8: $51
    jr jr_0c9_5dfb                                ; $5dd9: $18 $20

    ld bc, $0020                                  ; $5ddb: $01 $20 $00
    inc h                                         ; $5dde: $24
    sub b                                         ; $5ddf: $90
    jr jr_0c9_5de6                                ; $5de0: $18 $04

    ld [$0072], sp                                ; $5de2: $08 $72 $00
    nop                                           ; $5de5: $00

jr_0c9_5de6:
    rst $38                                       ; $5de6: $ff
    nop                                           ; $5de7: $00
    rst $30                                       ; $5de8: $f7
    ld [$01fe], sp                                ; $5de9: $08 $fe $01

jr_0c9_5dec:
    ld e, l                                       ; $5dec: $5d
    and d                                         ; $5ded: $a2
    nop                                           ; $5dee: $00
    ld a, [c]                                     ; $5def: $f2
    dec c                                         ; $5df0: $0d
    ldh [$1f], a                                  ; $5df1: $e0 $1f
    xor b                                         ; $5df3: $a8
    ld d, a                                       ; $5df4: $57
    rst $30                                       ; $5df5: $f7

jr_0c9_5df6:
    rrca                                          ; $5df6: $0f
    nop                                           ; $5df7: $00
    jp hl                                         ; $5df8: $e9


    ld d, $7b                                     ; $5df9: $16 $7b

jr_0c9_5dfb:
    add h                                         ; $5dfb: $84

jr_0c9_5dfc:
    or a                                          ; $5dfc: $b7
    ld c, b                                       ; $5dfd: $48
    ld c, [hl]                                    ; $5dfe: $4e
    or c                                          ; $5dff: $b1
    nop                                           ; $5e00: $00
    dec e                                         ; $5e01: $1d
    ld [c], a                                     ; $5e02: $e2
    adc d                                         ; $5e03: $8a
    ld [hl], l                                    ; $5e04: $75
    dec d                                         ; $5e05: $15
    ld [$ff03], a                                 ; $5e06: $ea $03 $ff
    nop                                           ; $5e09: $00

jr_0c9_5e0a:
    ldh a, [rIF]                                  ; $5e0a: $f0 $0f
    db $fd                                        ; $5e0c: $fd
    ld [bc], a                                    ; $5e0d: $02
    cp a                                          ; $5e0e: $bf
    ld b, b                                       ; $5e0f: $40
    xor $11                                       ; $5e10: $ee $11
    nop                                           ; $5e12: $00
    db $dd                                        ; $5e13: $dd
    ld [hl+], a                                   ; $5e14: $22
    xor d                                         ; $5e15: $aa
    ld d, l                                       ; $5e16: $55
    ld d, h                                       ; $5e17: $54
    xor e                                         ; $5e18: $ab
    rst $18                                       ; $5e19: $df
    ldh [rP1], a                                  ; $5e1a: $e0 $00
    ld l, a                                       ; $5e1c: $6f
    sub b                                         ; $5e1d: $90
    ei                                            ; $5e1e: $fb
    inc b                                         ; $5e1f: $04
    halt                                          ; $5e20: $76
    adc c                                         ; $5e21: $89
    and l                                         ; $5e22: $a5
    ld e, d                                       ; $5e23: $5a
    nop                                           ; $5e24: $00
    ld d, d                                       ; $5e25: $52
    xor l                                         ; $5e26: $ad
    add c                                         ; $5e27: $81
    ld a, [hl]                                    ; $5e28: $7e
    ld b, b                                       ; $5e29: $40
    cp a                                          ; $5e2a: $bf
    ld a, a                                       ; $5e2b: $7f
    add b                                         ; $5e2c: $80
    nop                                           ; $5e2d: $00
    rst $38                                       ; $5e2e: $ff
    nop                                           ; $5e2f: $00
    ld [hl], a                                    ; $5e30: $77
    adc b                                         ; $5e31: $88
    db $ed                                        ; $5e32: $ed
    ld [de], a                                    ; $5e33: $12
    rst $10                                       ; $5e34: $d7
    jr z, jr_0c9_5e38                             ; $5e35: $28 $01

    xor a                                         ; $5e37: $af

jr_0c9_5e38:
    ld d, b                                       ; $5e38: $50
    dec e                                         ; $5e39: $1d
    ld [c], a                                     ; $5e3a: $e2
    ld c, e                                       ; $5e3b: $4b
    or h                                          ; $5e3c: $b4
    sbc $c4                                       ; $5e3d: $de $c4
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    or $09                                        ; $5e41: $f6 $09
    ld a, e                                       ; $5e43: $7b
    add h                                         ; $5e44: $84
    rst $10                                       ; $5e45: $d7
    jr z, jr_0c9_5df6                             ; $5e46: $28 $ae

    ld d, c                                       ; $5e48: $51
    ld [$a25d], sp                                ; $5e49: $08 $5d $a2
    dec hl                                        ; $5e4c: $2b
    call nc, $4860                                ; $5e4d: $d4 $60 $48
    rst $28                                       ; $5e50: $ef
    rra                                           ; $5e51: $1f
    or l                                          ; $5e52: $b5
    nop                                           ; $5e53: $00
    ld e, b                                       ; $5e54: $58
    xor b                                         ; $5e55: $a8
    ret nz                                        ; $5e56: $c0

    or l                                          ; $5e57: $b5
    ret nz                                        ; $5e58: $c0

    jp c, Jump_0c9_4be0                           ; $5e59: $da $e0 $4b

    nop                                           ; $5e5c: $00
    db $f4                                        ; $5e5d: $f4
    ld h, l                                       ; $5e5e: $65
    ld a, [$ff75]                                 ; $5e5f: $fa $75 $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    ld e, [hl]                                    ; $5e64: $5e
    add b                                         ; $5e65: $80
    ld [bc], a                                    ; $5e66: $02
    ld bc, $0005                                  ; $5e67: $01 $05 $00
    xor e                                         ; $5e6a: $ab
    nop                                           ; $5e6b: $00
    ld e, d                                       ; $5e6c: $5a
    dec b                                         ; $5e6d: $05
    ld [hl], h                                    ; $5e6e: $74
    jr nz, jr_0c9_5dfc                            ; $5e6f: $20 $8b

    ld d, c                                       ; $5e71: $51
    ld a, [hl]                                    ; $5e72: $7e
    ld bc, $ff80                                  ; $5e73: $01 $80 $ff
    ld a, a                                       ; $5e76: $7f
    add b                                         ; $5e77: $80
    rst $28                                       ; $5e78: $ef
    ld bc, $fb90                                  ; $5e79: $01 $90 $fb
    add h                                         ; $5e7c: $84
    or $89                                        ; $5e7d: $f6 $89
    and l                                         ; $5e7f: $a5
    jp c, Jump_000_1860                           ; $5e80: $da $60 $18

    nop                                           ; $5e83: $00
    cp $01                                        ; $5e84: $fe $01
    cp $01                                        ; $5e86: $fe $01
    or $09                                        ; $5e88: $f6 $09
    cp $01                                        ; $5e8a: $fe $01
    ld h, $5c                                     ; $5e8c: $26 $5c
    and e                                         ; $5e8e: $a3
    and b                                         ; $5e8f: $a0
    jr @+$03                                      ; $5e90: $18 $01

    ld b, $dd                                     ; $5e92: $06 $dd
    jr @-$12                                      ; $5e94: $18 $ec

    jr z, @+$01                                   ; $5e96: $28 $ff

    adc c                                         ; $5e98: $89
    pop bc                                        ; $5e99: $c1
    add hl, bc                                    ; $5e9a: $09
    ld bc, $807f                                  ; $5e9b: $01 $7f $80
    db $fc                                        ; $5e9e: $fc
    jr nc, @-$3e                                  ; $5e9f: $30 $c0

    nop                                           ; $5ea1: $00
    ld a, [c]                                     ; $5ea2: $f2
    ld bc, $8023                                  ; $5ea3: $01 $23 $80
    ld h, [hl]                                    ; $5ea6: $66
    inc c                                         ; $5ea7: $0c
    ld c, c                                       ; $5ea8: $49
    ret nz                                        ; $5ea9: $c0

    jr c, jr_0c9_5eac                             ; $5eaa: $38 $00

jr_0c9_5eac:
    ld c, b                                       ; $5eac: $48
    ld hl, $2922                                  ; $5ead: $21 $22 $29
    and h                                         ; $5eb0: $a4
    jr nc, jr_0c9_5ef3                            ; $5eb1: $30 $40

    ld [$0a02], sp                                ; $5eb3: $08 $02 $0a
    add b                                         ; $5eb6: $80
    ld h, b                                       ; $5eb7: $60
    inc a                                         ; $5eb8: $3c
    add hl, hl                                    ; $5eb9: $29
    ld b, h                                       ; $5eba: $44
    cp e                                          ; $5ebb: $bb
    nop                                           ; $5ebc: $00
    add b                                         ; $5ebd: $80
    ld a, a                                       ; $5ebe: $7f
    db $10                                        ; $5ebf: $10
    rst $28                                       ; $5ec0: $ef
    add b                                         ; $5ec1: $80
    rst $38                                       ; $5ec2: $ff
    ld bc, $10ff                                  ; $5ec3: $01 $ff $10
    adc b                                         ; $5ec6: $88
    rst $38                                       ; $5ec7: $ff
    ld h, e                                       ; $5ec8: $63
    and d                                         ; $5ec9: $a2
    nop                                           ; $5eca: $00
    ld [hl+], a                                   ; $5ecb: $22
    db $dd                                        ; $5ecc: $dd
    ld [$00f7], sp                                ; $5ecd: $08 $f7 $00
    add b                                         ; $5ed0: $80
    ld a, a                                       ; $5ed1: $7f
    ld bc, $10fe                                  ; $5ed2: $01 $fe $10
    rst $38                                       ; $5ed5: $ff
    jr nz, @+$01                                  ; $5ed6: $20 $ff

    ld b, b                                       ; $5ed8: $40
    ld d, l                                       ; $5ed9: $55
    or d                                          ; $5eda: $b2
    nop                                           ; $5edb: $00
    jr z, @-$27                                   ; $5edc: $28 $d7

    ld b, b                                       ; $5ede: $40
    cp a                                          ; $5edf: $bf
    db $10                                        ; $5ee0: $10
    rst $28                                       ; $5ee1: $ef
    ld b, h                                       ; $5ee2: $44
    nop                                           ; $5ee3: $00
    jr nz, jr_0c9_5ee6                            ; $5ee4: $20 $00

jr_0c9_5ee6:
    and b                                         ; $5ee6: $a0
    rst $38                                       ; $5ee7: $ff
    ld d, a                                       ; $5ee8: $57
    jp nz, $8400                                  ; $5ee9: $c2 $00 $84

    ld a, e                                       ; $5eec: $7b
    ld bc, $ee11                                  ; $5eed: $01 $11 $ee
    nop                                           ; $5ef0: $00
    rst $38                                       ; $5ef1: $ff
    ld b, b                                       ; $5ef2: $40

jr_0c9_5ef3:
    rst $38                                       ; $5ef3: $ff
    db $10                                        ; $5ef4: $10
    ld [hl-], a                                   ; $5ef5: $32
    nop                                           ; $5ef6: $00
    ld b, c                                       ; $5ef7: $41
    xor d                                         ; $5ef8: $aa
    jp nc, Jump_000_1500                          ; $5ef9: $d2 $00 $15

    ld [$f708], a                                 ; $5efc: $ea $08 $f7
    nop                                           ; $5eff: $00
    ret z                                         ; $5f00: $c8

    nop                                           ; $5f01: $00
    inc b                                         ; $5f02: $04
    db $10                                        ; $5f03: $10
    rst $38                                       ; $5f04: $ff
    jr z, @+$01                                   ; $5f05: $28 $ff

    rst $10                                       ; $5f07: $d7

Call_0c9_5f08:
    db $10                                        ; $5f08: $10
    db $10                                        ; $5f09: $10
    adc d                                         ; $5f0a: $8a
    ld [hl], l                                    ; $5f0b: $75
    ld bc, $df20                                  ; $5f0c: $01 $20 $df
    ld [$01f7], sp                                ; $5f0f: $08 $f7 $01
    rst $38                                       ; $5f12: $ff
    adc d                                         ; $5f13: $8a
    db $10                                        ; $5f14: $10
    stop                                          ; $5f15: $10 $00
    ld e, h                                       ; $5f17: $5c
    or b                                          ; $5f18: $b0
    sbc h                                         ; $5f19: $9c
    ld [hl], b                                    ; $5f1a: $70
    ld d, $f8                                     ; $5f1b: $16 $f8
    sub e                                         ; $5f1d: $93
    db $fc                                        ; $5f1e: $fc
    dec b                                         ; $5f1f: $05
    dec d                                         ; $5f20: $15
    ld a, [$fd92]                                 ; $5f21: $fa $92 $fd
    ld [hl], b                                    ; $5f24: $70
    ld [bc], a                                    ; $5f25: $02
    ld bc, $9b03                                  ; $5f26: $01 $03 $9b
    nop                                           ; $5f29: $00
    add d                                         ; $5f2a: $82
    add b                                         ; $5f2b: $80
    ld a, [bc]                                    ; $5f2c: $0a
    ld l, e                                       ; $5f2d: $6b
    add b                                         ; $5f2e: $80
    xor [hl]                                      ; $5f2f: $ae
    ld d, c                                       ; $5f30: $51
    ld bc, $0112                                  ; $5f31: $01 $12 $01
    xor b                                         ; $5f34: $a8
    ld a, [bc]                                    ; $5f35: $0a
    rst $10                                       ; $5f36: $d7
    ret nz                                        ; $5f37: $c0

    cp a                                          ; $5f38: $bf
    sub b                                         ; $5f39: $90
    add b                                         ; $5f3a: $80
    nop                                           ; $5f3b: $00
    add c                                         ; $5f3c: $81
    ld h, b                                       ; $5f3d: $60
    jr nz, jr_0c9_5f85                            ; $5f3e: $20 $45

    db $10                                        ; $5f40: $10
    cp e                                          ; $5f41: $bb
    add c                                         ; $5f42: $81
    ld a, [hl]                                    ; $5f43: $7e
    sub b                                         ; $5f44: $90
    ld [$ff00], sp                                ; $5f45: $08 $00 $ff
    adc c                                         ; $5f48: $89
    rst $38                                       ; $5f49: $ff
    ld c, c                                       ; $5f4a: $49
    ld h, d                                       ; $5f4b: $62
    ld [hl-], a                                   ; $5f4c: $32
    ld bc, $ffff                                  ; $5f4d: $01 $ff $ff
    ld h, b                                       ; $5f50: $60
    ld e, b                                       ; $5f51: $58
    rst $38                                       ; $5f52: $ff
    rst $38                                       ; $5f53: $ff

jr_0c9_5f54:
    ld h, b                                       ; $5f54: $60
    ld e, b                                       ; $5f55: $58
    add hl, sp                                    ; $5f56: $39
    rst $38                                       ; $5f57: $ff
    rst $38                                       ; $5f58: $ff
    ret nz                                        ; $5f59: $c0

    ld e, b                                       ; $5f5a: $58
    jr nc, jr_0c9_5f65                            ; $5f5b: $30 $08

    ret nz                                        ; $5f5d: $c0

    ld c, b                                       ; $5f5e: $48
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    ret nz                                        ; $5f61: $c0

    ld e, b                                       ; $5f62: $58
    jr nz, @+$01                                  ; $5f63: $20 $ff

jr_0c9_5f65:
    rst $38                                       ; $5f65: $ff
    ret nz                                        ; $5f66: $c0

    ld e, b                                       ; $5f67: $58
    swap h                                        ; $5f68: $cb $34
    db $ec                                        ; $5f6a: $ec
    inc de                                        ; $5f6b: $13
    rra                                           ; $5f6c: $1f
    nop                                           ; $5f6d: $00
    pop af                                        ; $5f6e: $f1
    ei                                            ; $5f6f: $fb
    push hl                                       ; $5f70: $e5
    cpl                                           ; $5f71: $2f
    pop de                                        ; $5f72: $d1
    db $ec                                        ; $5f73: $ec
    inc de                                        ; $5f74: $13
    ld [hl], $00                                  ; $5f75: $36 $00
    ret                                           ; $5f77: $c9


    ld [hl], l                                    ; $5f78: $75
    jp z, Jump_0c9_6091                           ; $5f79: $ca $91 $60

    ldh [rP1], a                                  ; $5f7c: $e0 $00
    halt                                          ; $5f7e: $76
    ld [$1f80], sp                                ; $5f7f: $08 $80 $1f
    ldh [$60], a                                  ; $5f82: $e0 $60
    xor [hl]                                      ; $5f84: $ae

jr_0c9_5f85:
    ld bc, $7f81                                  ; $5f85: $01 $81 $7f
    ret                                           ; $5f88: $c9


    nop                                           ; $5f89: $00
    scf                                           ; $5f8a: $37
    dec a                                         ; $5f8b: $3d
    rst $00                                       ; $5f8c: $c7
    cp l                                          ; $5f8d: $bd
    ld b, a                                       ; $5f8e: $47
    ld a, e                                       ; $5f8f: $7b
    ld b, a                                       ; $5f90: $47
    ret nz                                        ; $5f91: $c0

    nop                                           ; $5f92: $00
    ld a, a                                       ; $5f93: $7f
    jp Jump_0c9_7f84                              ; $5f94: $c3 $84 $7f


    add h                                         ; $5f97: $84
    ld b, $fd                                     ; $5f98: $06 $fd
    or $00                                        ; $5f9a: $f6 $00
    ld sp, hl                                     ; $5f9c: $f9
    ld a, a                                       ; $5f9d: $7f
    adc b                                         ; $5f9e: $88
    sub b                                         ; $5f9f: $90
    rst $38                                       ; $5fa0: $ff
    ld a, [$8ee1]                                 ; $5fa1: $fa $e1 $8e
    nop                                           ; $5fa4: $00
    pop af                                        ; $5fa5: $f1
    ld e, c                                       ; $5fa6: $59
    rst $38                                       ; $5fa7: $ff
    cp [hl]                                       ; $5fa8: $be
    ld a, a                                       ; $5fa9: $7f
    jp hl                                         ; $5faa: $e9


    ld e, $0d                                     ; $5fab: $1e $0d
    nop                                           ; $5fad: $00
    cp $fe                                        ; $5fae: $fe $fe
    add hl, bc                                    ; $5fb0: $09
    rst $28                                       ; $5fb1: $ef
    jr nc, jr_0c9_5f54                            ; $5fb2: $30 $a0

    ld a, a                                       ; $5fb4: $7f
    rst $18                                       ; $5fb5: $df
    nop                                           ; $5fb6: $00
    ccf                                           ; $5fb7: $3f
    ldh a, [rIF]                                  ; $5fb8: $f0 $0f
    ld [hl], c                                    ; $5fba: $71
    adc [hl]                                      ; $5fbb: $8e
    ld c, [hl]                                    ; $5fbc: $4e
    di                                            ; $5fbd: $f3
    db $fd                                        ; $5fbe: $fd
    inc a                                         ; $5fbf: $3c
    ld b, e                                       ; $5fc0: $43
    rst $38                                       ; $5fc1: $ff
    add b                                         ; $5fc2: $80
    inc bc                                        ; $5fc3: $03
    sub e                                         ; $5fc4: $93
    nop                                           ; $5fc5: $00
    pop bc                                        ; $5fc6: $c1
    ld [$9002], sp                                ; $5fc7: $08 $02 $90
    db $eb                                        ; $5fca: $eb
    inc a                                         ; $5fcb: $3c
    nop                                           ; $5fcc: $00
    ld [$df3f], a                                 ; $5fcd: $ea $3f $df
    ccf                                           ; $5fd0: $3f
    ld a, [c]                                     ; $5fd1: $f2
    rrca                                          ; $5fd2: $0f
    ei                                            ; $5fd3: $fb
    rlca                                          ; $5fd4: $07
    nop                                           ; $5fd5: $00
    db $fc                                        ; $5fd6: $fc
    inc bc                                        ; $5fd7: $03
    ei                                            ; $5fd8: $fb
    inc b                                         ; $5fd9: $04
    ld hl, sp+$07                                 ; $5fda: $f8 $07
    ld a, a                                       ; $5fdc: $7f
    ret nz                                        ; $5fdd: $c0

    nop                                           ; $5fde: $00
    adc e                                         ; $5fdf: $8b
    db $f4                                        ; $5fe0: $f4
    push de                                       ; $5fe1: $d5
    ld a, [bc]                                    ; $5fe2: $0a
    ld a, e                                       ; $5fe3: $7b

jr_0c9_5fe4:
    add h                                         ; $5fe4: $84
    ld l, a                                       ; $5fe5: $6f
    ld hl, sp+$00                                 ; $5fe6: $f8 $00
    ld sp, hl                                     ; $5fe8: $f9
    cp $a5                                        ; $5fe9: $fe $a5
    ld a, e                                       ; $5feb: $7b
    scf                                           ; $5fec: $37
    ld sp, hl                                     ; $5fed: $f9
    ld a, [c]                                     ; $5fee: $f2

jr_0c9_5fef:
    ld c, l                                       ; $5fef: $4d
    nop                                           ; $5ff0: $00
    ei                                            ; $5ff1: $fb
    add h                                         ; $5ff2: $84
    add a                                         ; $5ff3: $87
    db $fc                                        ; $5ff4: $fc
    cp $f9                                        ; $5ff5: $fe $f9
    add [hl]                                      ; $5ff7: $86
    ld a, c                                       ; $5ff8: $79
    nop                                           ; $5ff9: $00
    adc l                                         ; $5ffa: $8d
    ld [hl], d                                    ; $5ffb: $72
    ld h, [hl]                                    ; $5ffc: $66
    sbc c                                         ; $5ffd: $99
    rst $30                                       ; $5ffe: $f7
    inc c                                         ; $5fff: $0c
    db $e4                                        ; $6000: $e4
    jr jr_0c9_6003                                ; $6001: $18 $00

jr_0c9_6003:
    ld e, b                                       ; $6003: $58
    and b                                         ; $6004: $a0
    rst $38                                       ; $6005: $ff

jr_0c9_6006:
    jr nz, jr_0c9_5fef                            ; $6006: $20 $e7

    jr c, jr_0c9_5fe4                             ; $6008: $38 $da

    ccf                                           ; $600a: $3f
    nop                                           ; $600b: $00
    cp a                                          ; $600c: $bf
    ld e, a                                       ; $600d: $5f
    ret nc                                        ; $600e: $d0

    cpl                                           ; $600f: $2f
    ld l, h                                       ; $6010: $6c
    sub e                                         ; $6011: $93
    ld c, a                                       ; $6012: $4f
    jr nc, jr_0c9_6015                            ; $6013: $30 $00

jr_0c9_6015:
    cpl                                           ; $6015: $2f
    db $10                                        ; $6016: $10
    ld e, a                                       ; $6017: $5f
    ld [$0ff8], sp                                ; $6018: $08 $f8 $0f
    inc e                                         ; $601b: $1c
    ldh a, [$03]                                  ; $601c: $f0 $03
    rst $28                                       ; $601e: $ef
    ldh a, [rNR41]                                ; $601f: $f0 $20
    rst $38                                       ; $6021: $ff
    cp a                                          ; $6022: $bf
    ld e, a                                       ; $6023: $5f
    ld l, b                                       ; $6024: $68
    jr z, @+$78                                   ; $6025: $28 $76

    ld [$4f80], sp                                ; $6027: $08 $80 $4f
    ld [bc], a                                    ; $602a: $02
    nop                                           ; $602b: $00
    sub a                                         ; $602c: $97
    ld l, b                                       ; $602d: $68
    jp c, Jump_000_3f25                           ; $602e: $da $25 $3f

    pop hl                                        ; $6031: $e1
    nop                                           ; $6032: $00
    ei                                            ; $6033: $fb
    push bc                                       ; $6034: $c5
    ld d, $e9                                     ; $6035: $16 $e9
    ld l, [hl]                                    ; $6037: $6e
    sub c                                         ; $6038: $91
    sbc d                                         ; $6039: $9a
    ld h, l                                       ; $603a: $65
    nop                                           ; $603b: $00
    db $dd                                        ; $603c: $dd
    ld [hl-], a                                   ; $603d: $32
    ld [hl+], a                                   ; $603e: $22
    pop bc                                        ; $603f: $c1
    pop bc                                        ; $6040: $c1
    nop                                           ; $6041: $00
    ld a, d                                       ; $6042: $7a
    add b                                         ; $6043: $80
    nop                                           ; $6044: $00
    ccf                                           ; $6045: $3f
    ret nz                                        ; $6046: $c0

    or b                                          ; $6047: $b0
    rst $38                                       ; $6048: $ff
    ld a, a                                       ; $6049: $7f
    rst $38                                       ; $604a: $ff
    ret nz                                        ; $604b: $c0

    ccf                                           ; $604c: $3f
    ld bc, $4db2                                  ; $604d: $01 $b2 $4d
    ld a, d                                       ; $6050: $7a
    adc a                                         ; $6051: $8f
    halt                                          ; $6052: $76
    adc a                                         ; $6053: $8f
    ei                                            ; $6054: $fb
    ret nc                                        ; $6055: $d0

    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    ld h, l                                       ; $6058: $65
    jp nz, $c6bb                                  ; $6059: $c2 $bb $c6

    add l                                         ; $605c: $85
    cp $fd                                        ; $605d: $fe $fd
    ld a, [hl]                                    ; $605f: $7e
    nop                                           ; $6060: $00
    rst $18                                       ; $6061: $df
    jr nc, jr_0c9_6006                            ; $6062: $30 $a2

    db $fd                                        ; $6064: $fd
    push af                                       ; $6065: $f5
    jp nz, $e19e                                  ; $6066: $c2 $9e $e1

    nop                                           ; $6069: $00
    db $ec                                        ; $606a: $ec
    ld a, a                                       ; $606b: $7f
    sbc a                                         ; $606c: $9f
    ld a, a                                       ; $606d: $7f
    ld [hl], h                                    ; $606e: $74
    adc a                                         ; $606f: $8f
    add e                                         ; $6070: $83
    ld a, a                                       ; $6071: $7f
    ld [bc], a                                    ; $6072: $02
    db $fc                                        ; $6073: $fc
    inc de                                        ; $6074: $13
    xor $31                                       ; $6075: $ee $31
    ld h, c                                       ; $6077: $61
    cp a                                          ; $6078: $bf
    ret nc                                        ; $6079: $d0

    nop                                           ; $607a: $00
    adc a                                         ; $607b: $8f
    nop                                           ; $607c: $00
    ld sp, $a6ce                                  ; $607d: $31 $ce $a6
    ld a, c                                       ; $6080: $79
    ld [hl], a                                    ; $6081: $77
    sbc b                                         ; $6082: $98
    cp c                                          ; $6083: $b9
    ld b, [hl]                                    ; $6084: $46
    nop                                           ; $6085: $00
    sub $28                                       ; $6086: $d6 $28
    ei                                            ; $6088: $fb
    inc c                                         ; $6089: $0c
    reti                                          ; $608a: $d9


    ld l, $db                                     ; $608b: $2e $db
    daa                                           ; $608d: $27
    nop                                           ; $608e: $00
    or l                                          ; $608f: $b5
    ld c, e                                       ; $6090: $4b

Jump_0c9_6091:
    ld [$7615], a                                 ; $6091: $ea $15 $76
    ret                                           ; $6094: $c9


    ld a, l                                       ; $6095: $7d
    jp $8e00                                      ; $6096: $c3 $00 $8e


    di                                            ; $6099: $f3
    rlca                                          ; $609a: $07
    dec bc                                        ; $609b: $0b
    rl a                                          ; $609c: $cb $17
    dec l                                         ; $609e: $2d
    di                                            ; $609f: $f3
    nop                                           ; $60a0: $00
    ei                                            ; $60a1: $fb
    db $e4                                        ; $60a2: $e4
    ld a, c                                       ; $60a3: $79
    add [hl]                                      ; $60a4: $86
    rra                                           ; $60a5: $1f
    ldh [rTAC], a                                 ; $60a6: $e0 $07
    ld hl, sp+$00                                 ; $60a8: $f8 $00
    inc sp                                        ; $60aa: $33
    call z, $e61b                                 ; $60ab: $cc $1b $e6
    ld c, h                                       ; $60ae: $4c
    rst $38                                       ; $60af: $ff
    ld hl, sp-$10                                 ; $60b0: $f8 $f0
    nop                                           ; $60b2: $00
    sub [hl]                                      ; $60b3: $96
    ld a, b                                       ; $60b4: $78
    push hl                                       ; $60b5: $e5
    dec sp                                        ; $60b6: $3b
    ld [hl], a                                    ; $60b7: $77
    rst $38                                       ; $60b8: $ff
    dec e                                         ; $60b9: $1d
    ld [c], a                                     ; $60ba: $e2
    nop                                           ; $60bb: $00
    call nc, Call_0c9_6b2f                        ; $60bc: $d4 $2f $6b
    sub a                                         ; $60bf: $97
    ld l, l                                       ; $60c0: $6d
    sub e                                         ; $60c1: $93
    db $e3                                        ; $60c2: $e3
    ld a, h                                       ; $60c3: $7c
    nop                                           ; $60c4: $00
    ld h, c                                       ; $60c5: $61
    jp nz, $c225                                  ; $60c6: $c2 $25 $c2

    db $eb                                        ; $60c9: $eb
    or $4c                                        ; $60ca: $f6 $4c
    rlca                                          ; $60cc: $07
    nop                                           ; $60cd: $00
    rst $00                                       ; $60ce: $c7
    rlca                                          ; $60cf: $07
    inc a                                         ; $60d0: $3c
    rst $00                                       ; $60d1: $c7
    ei                                            ; $60d2: $fb

jr_0c9_60d3:
    db $fc                                        ; $60d3: $fc
    ld d, $e9                                     ; $60d4: $16 $e9
    nop                                           ; $60d6: $00
    xor $12                                       ; $60d7: $ee $12
    ld e, e                                       ; $60d9: $5b
    xor h                                         ; $60da: $ac
    cp h                                          ; $60db: $bc
    ld c, a                                       ; $60dc: $4f
    ld b, c                                       ; $60dd: $41
    rst $38                                       ; $60de: $ff
    nop                                           ; $60df: $00
    cp [hl]                                       ; $60e0: $be
    rst $38                                       ; $60e1: $ff
    cp h                                          ; $60e2: $bc
    ld b, h                                       ; $60e3: $44
    ld a, e                                       ; $60e4: $7b
    adc h                                         ; $60e5: $8c
    ld [$00ff], sp                                ; $60e6: $08 $ff $00
    add a                                         ; $60e9: $87
    rlca                                          ; $60ea: $07
    adc h                                         ; $60eb: $8c
    rlca                                          ; $60ec: $07
    or $0f                                        ; $60ed: $f6 $0f
    db $f4                                        ; $60ef: $f4
    rrca                                          ; $60f0: $0f
    nop                                           ; $60f1: $00
    jr z, jr_0c9_60d3                             ; $60f2: $28 $df

    inc c                                         ; $60f4: $0c
    ccf                                           ; $60f5: $3f
    rrca                                          ; $60f6: $0f
    ccf                                           ; $60f7: $3f
    db $db                                        ; $60f8: $db
    ld h, a                                       ; $60f9: $67
    nop                                           ; $60fa: $00
    xor [hl]                                      ; $60fb: $ae
    pop de                                        ; $60fc: $d1
    di                                            ; $60fd: $f3
    inc c                                         ; $60fe: $0c
    ld a, $c1                                     ; $60ff: $3e $c1
    rra                                           ; $6101: $1f
    ldh [rP1], a                                  ; $6102: $e0 $00
    rst $08                                       ; $6104: $cf
    jr nc, jr_0c9_6174                            ; $6105: $30 $6d

    sbc d                                         ; $6107: $9a
    jr nc, @+$01                                  ; $6108: $30 $ff

    pop hl                                        ; $610a: $e1
    pop hl                                        ; $610b: $e1
    nop                                           ; $610c: $00
    add hl, sp                                    ; $610d: $39
    pop hl                                        ; $610e: $e1
    jp z, $ad77                                   ; $610f: $ca $77 $ad

    ld a, [hl]                                    ; $6112: $7e
    ld sp, $001f                                  ; $6113: $31 $1f $00
    sbc [hl]                                      ; $6116: $9e
    rra                                           ; $6117: $1f
    ld a, [c]                                     ; $6118: $f2
    dec e                                         ; $6119: $1d
    cp $f1                                        ; $611a: $fe $f1
    inc l                                         ; $611c: $2c
    db $d3                                        ; $611d: $d3
    nop                                           ; $611e: $00
    reti                                          ; $611f: $d9


    inc l                                         ; $6120: $2c
    or a                                          ; $6121: $b7
    ld e, b                                       ; $6122: $58
    ld a, c                                       ; $6123: $79
    sbc [hl]                                      ; $6124: $9e
    rlca                                          ; $6125: $07
    db $fc                                        ; $6126: $fc
    nop                                           ; $6127: $00
    ld hl, sp-$01                                 ; $6128: $f8 $ff
    ldh a, [rNR10]                                ; $612a: $f0 $10
    cp $10                                        ; $612c: $fe $10
    ld de, $00ff                                  ; $612e: $11 $ff $00
    rra                                           ; $6131: $1f
    rra                                           ; $6132: $1f
    add hl, de                                    ; $6133: $19
    ld c, $ec                                     ; $6134: $0e $ec
    rra                                           ; $6136: $1f
    ret nc                                        ; $6137: $d0

    ccf                                           ; $6138: $3f
    nop                                           ; $6139: $00
    di                                            ; $613a: $f3
    inc e                                         ; $613b: $1c
    ld [hl], b                                    ; $613c: $70
    cp a                                          ; $613d: $bf
    ld e, d                                       ; $613e: $5a
    cp a                                          ; $613f: $bf
    ld l, a                                       ; $6140: $6f
    sbc a                                         ; $6141: $9f
    nop                                           ; $6142: $00
    call c, $e723                                 ; $6143: $dc $23 $e7
    jr jr_0c9_61c5                                ; $6146: $18 $7d

    add e                                         ; $6148: $83
    ld [hl], c                                    ; $6149: $71
    adc [hl]                                      ; $614a: $8e
    nop                                           ; $614b: $00
    dec a                                         ; $614c: $3d
    jp nz, $69b6                                  ; $614d: $c2 $b6 $69

    ld h, e                                       ; $6150: $63
    db $fc                                        ; $6151: $fc
    rst $00                                       ; $6152: $c7
    add e                                         ; $6153: $83
    inc bc                                        ; $6154: $03
    or e                                          ; $6155: $b3
    add $94                                       ; $6156: $c6 $94
    rst $28                                       ; $6158: $ef
    rst $18                                       ; $6159: $df
    rst $38                                       ; $615a: $ff
    sub b                                         ; $615b: $90
    ld de, $0514                                  ; $615c: $11 $14 $05
    nop                                           ; $615f: $00
    rra                                           ; $6160: $1f
    ldh [rIF], a                                  ; $6161: $e0 $0f
    db $10                                        ; $6163: $10
    sub l                                         ; $6164: $95
    ld a, [bc]                                    ; $6165: $0a
    xor [hl]                                      ; $6166: $ae
    reti                                          ; $6167: $d9


    nop                                           ; $6168: $00
    ld b, c                                       ; $6169: $41
    cp $cc                                        ; $616a: $fe $cc
    ld [hl], e                                    ; $616c: $73
    jp nz, Jump_0c9_78fd                          ; $616d: $c2 $fd $78

    rst $38                                       ; $6170: $ff
    nop                                           ; $6171: $00
    rst $18                                       ; $6172: $df
    ccf                                           ; $6173: $3f

jr_0c9_6174:
    ld [hl], c                                    ; $6174: $71
    adc a                                         ; $6175: $8f
    rst $08                                       ; $6176: $cf

jr_0c9_6177:
    ld sp, $07fb                                  ; $6177: $31 $fb $07
    nop                                           ; $617a: $00
    rst $00                                       ; $617b: $c7
    jr c, jr_0c9_6177                             ; $617c: $38 $f9

    ld b, $db                                     ; $617e: $06 $db
    and h                                         ; $6180: $a4
    add [hl]                                      ; $6181: $86
    ld sp, hl                                     ; $6182: $f9
    nop                                           ; $6183: $00
    adc h                                         ; $6184: $8c
    rrca                                          ; $6185: $0f
    ld c, h                                       ; $6186: $4c
    adc b                                         ; $6187: $88
    add hl, hl                                    ; $6188: $29
    sbc $bf                                       ; $6189: $de $bf
    rst $38                                       ; $618b: $ff
    ld [bc], a                                    ; $618c: $02
    sub e                                         ; $618d: $93
    ld b, c                                       ; $618e: $41
    cp c                                          ; $618f: $b9
    ret nz                                        ; $6190: $c0

    ld c, [hl]                                    ; $6191: $4e

jr_0c9_6192:
    pop af                                        ; $6192: $f1
    ld e, $00                                     ; $6193: $1e $00
    adc [hl]                                      ; $6195: $8e
    nop                                           ; $6196: $00
    ccf                                           ; $6197: $3f
    ld b, b                                       ; $6198: $40
    ld a, [hl-]                                   ; $6199: $3a
    ld b, l                                       ; $619a: $45
    db $fd                                        ; $619b: $fd
    add d                                         ; $619c: $82
    sbc b                                         ; $619d: $98
    rst $38                                       ; $619e: $ff
    nop                                           ; $619f: $00
    rst $28                                       ; $61a0: $ef
    rst $38                                       ; $61a1: $ff
    or [hl]                                       ; $61a2: $b6
    ret                                           ; $61a3: $c9


    rst $38                                       ; $61a4: $ff
    add b                                         ; $61a5: $80
    ld a, d                                       ; $61a6: $7a
    add l                                         ; $61a7: $85
    add b                                         ; $61a8: $80
    jp nc, Jump_0c9_7d19                          ; $61a9: $d2 $19 $7d

    jp nz, $f987                                  ; $61ac: $c2 $87 $f9

    add [hl]                                      ; $61af: $86
    adc e                                         ; $61b0: $8b
    ld a, [c]                                     ; $61b1: $f2
    nop                                           ; $61b2: $00
    add l                                         ; $61b3: $85
    adc e                                         ; $61b4: $8b
    db $fc                                        ; $61b5: $fc
    halt                                          ; $61b6: $76
    ld sp, hl                                     ; $61b7: $f9
    sbc a                                         ; $61b8: $9f
    ld h, b                                       ; $61b9: $60
    ld sp, hl                                     ; $61ba: $f9
    nop                                           ; $61bb: $00
    ld b, $0a                                     ; $61bc: $06 $0a
    dec d                                         ; $61be: $15
    ld l, $13                                     ; $61bf: $2e $13
    xor a                                         ; $61c1: $af
    ld [hl], e                                    ; $61c2: $73
    ld d, l                                       ; $61c3: $55
    nop                                           ; $61c4: $00

jr_0c9_61c5:
    db $eb                                        ; $61c5: $eb
    xor [hl]                                      ; $61c6: $ae
    pop de                                        ; $61c7: $d1
    or d                                          ; $61c8: $b2
    ld c, l                                       ; $61c9: $4d
    pop hl                                        ; $61ca: $e1
    ld a, $d0                                     ; $61cb: $3e $d0
    nop                                           ; $61cd: $00
    ld h, c                                       ; $61ce: $61
    sub d                                         ; $61cf: $92
    rst $28                                       ; $61d0: $ef
    rst $38                                       ; $61d1: $ff
    ld [bc], a                                    ; $61d2: $02
    dec bc                                        ; $61d3: $0b
    or $e3                                        ; $61d4: $f6 $e3
    nop                                           ; $61d6: $00
    cp $3c                                        ; $61d7: $fe $3c
    rst $38                                       ; $61d9: $ff
    adc b                                         ; $61da: $88

jr_0c9_61db:
    ld [hl], a                                    ; $61db: $77
    ld e, e                                       ; $61dc: $5b
    and h                                         ; $61dd: $a4
    or a                                          ; $61de: $b7
    nop                                           ; $61df: $00
    ld c, b                                       ; $61e0: $48
    inc a                                         ; $61e1: $3c
    rst $38                                       ; $61e2: $ff
    rst $10                                       ; $61e3: $d7
    jr c, jr_0c9_6192                             ; $61e4: $38 $ac

    ld e, a                                       ; $61e6: $5f
    db $d3                                        ; $61e7: $d3
    nop                                           ; $61e8: $00
    cpl                                           ; $61e9: $2f
    cp h                                          ; $61ea: $bc
    ld b, e                                       ; $61eb: $43
    ret nz                                        ; $61ec: $c0

    ccf                                           ; $61ed: $3f
    ld [hl], b                                    ; $61ee: $70
    pop hl                                        ; $61ef: $e1
    and c                                         ; $61f0: $a1
    nop                                           ; $61f1: $00
    ret nz                                        ; $61f2: $c0

    rla                                           ; $61f3: $17
    rst $28                                       ; $61f4: $ef
    ld e, e                                       ; $61f5: $5b
    daa                                           ; $61f6: $27
    rst $28                                       ; $61f7: $ef
    db $10                                        ; $61f8: $10
    jr z, jr_0c9_61fb                             ; $61f9: $28 $00

jr_0c9_61fb:
    rst $30                                       ; $61fb: $f7
    sub $e8                                       ; $61fc: $d6 $e8
    inc sp                                        ; $61fe: $33
    call c, $1fee                                 ; $61ff: $dc $ee $1f
    di                                            ; $6202: $f3
    nop                                           ; $6203: $00
    adc a                                         ; $6204: $8f
    ld e, h                                       ; $6205: $5c
    ld hl, sp-$0c                                 ; $6206: $f8 $f4
    ld hl, sp-$6d                                 ; $6208: $f8 $93
    ld a, h                                       ; $620a: $7c
    inc l                                         ; $620b: $2c
    nop                                           ; $620c: $00
    rst $18                                       ; $620d: $df
    scf                                           ; $620e: $37
    ld c, a                                       ; $620f: $4f
    rst $38                                       ; $6210: $ff
    jr nz, jr_0c9_6270                            ; $6211: $20 $5d

    ld [c], a                                     ; $6213: $e2
    xor e                                         ; $6214: $ab
    nop                                           ; $6215: $00
    db $d4, $17, $28                              ; $6216: $d4 $17 $28
    rra                                           ; $6219: $1f
    jr nz, jr_0c9_61db                            ; $621a: $20 $bf

    ld h, b                                       ; $621c: $60
    ld c, a                                       ; $621d: $4f
    inc b                                         ; $621e: $04
    ldh a, [$9f]                                  ; $621f: $f0 $9f
    ldh [$b3], a                                  ; $6221: $e0 $b3
    ld c, h                                       ; $6223: $4c
    ld d, b                                       ; $6224: $50
    ld [$3cc3], sp                                ; $6225: $08 $c3 $3c
    add b                                         ; $6228: $80
    ld c, d                                       ; $6229: $4a
    ld e, d                                       ; $622a: $5a
    cp b                                          ; $622b: $b8
    ldh a, [$ec]                                  ; $622c: $f0 $ec
    ldh a, [$27]                                  ; $622e: $f0 $27
    ld hl, sp+$58                                 ; $6230: $f8 $58
    db $10                                        ; $6232: $10
    cp a                                          ; $6233: $bf
    and a                                         ; $6234: $a7
    ld e, a                                       ; $6235: $5f
    jr nc, jr_0c9_6250                            ; $6236: $30 $18

    ld a, [hl+]                                   ; $6238: $2a
    ld d, a                                       ; $6239: $57
    ld e, l                                       ; $623a: $5d
    ld h, $02                                     ; $623b: $26 $02
    ld e, [hl]                                    ; $623d: $5e
    rst $20                                       ; $623e: $e7
    xor e                                         ; $623f: $ab
    rst $10                                       ; $6240: $d7
    ld e, h                                       ; $6241: $5c
    and e                                         ; $6242: $a3
    add b                                         ; $6243: $80
    jr jr_0c9_628e                                ; $6244: $18 $48

    ld [bc], a                                    ; $6246: $02
    cp a                                          ; $6247: $bf
    rst $38                                       ; $6248: $ff
    inc b                                         ; $6249: $04
    rla                                           ; $624a: $17
    db $ec                                        ; $624b: $ec
    rst $00                                       ; $624c: $c7
    ld a, [c]                                     ; $624d: $f2
    dec b                                         ; $624e: $05
    adc b                                         ; $624f: $88

jr_0c9_6250:
    nop                                           ; $6250: $00
    ld [hl], a                                    ; $6251: $77
    dec sp                                        ; $6252: $3b
    call nz, Call_0c9_48b7                        ; $6253: $c4 $b7 $48
    ldh a, [rIE]                                  ; $6256: $f0 $ff
    xor [hl]                                      ; $6258: $ae
    ld bc, $1970                                  ; $6259: $01 $70 $19
    cp $a6                                        ; $625c: $fe $a6
    ld e, a                                       ; $625e: $5f
    ld a, e                                       ; $625f: $7b
    add a                                         ; $6260: $87
    add b                                         ; $6261: $80
    jr jr_0c9_6264                                ; $6262: $18 $00

jr_0c9_6264:
    ld a, a                                       ; $6264: $7f
    add b                                         ; $6265: $80

jr_0c9_6266:
    cp a                                          ; $6266: $bf
    ld b, b                                       ; $6267: $40
    rst $18                                       ; $6268: $df
    jr nz, jr_0c9_62ca                            ; $6269: $20 $5f

    ldh [rSVBK], a                                ; $626b: $e0 $70
    cp a                                          ; $626d: $bf
    ld a, [bc]                                    ; $626e: $0a
    nop                                           ; $626f: $00

jr_0c9_6270:
    inc c                                         ; $6270: $0c
    dec b                                         ; $6271: $05
    ld sp, hl                                     ; $6272: $f9
    inc bc                                        ; $6273: $03
    cp $03                                        ; $6274: $fe $03
    cp $03                                        ; $6276: $fe $03
    ld [$03fd], sp                                ; $6278: $08 $fd $03
    cp $01                                        ; $627b: $fe $01
    or d                                          ; $627d: $b2
    ld a, [de]                                    ; $627e: $1a
    ld de, $f7ff                                  ; $627f: $11 $ff $f7
    nop                                           ; $6282: $00
    inc c                                         ; $6283: $0c
    ld b, $fd                                     ; $6284: $06 $fd
    ld c, e                                       ; $6286: $4b
    db $fc                                        ; $6287: $fc
    push af                                       ; $6288: $f5
    ld a, [$000e]                                 ; $6289: $fa $0e $00
    pop af                                        ; $628c: $f1
    ei                                            ; $628d: $fb

jr_0c9_628e:
    inc b                                         ; $628e: $04
    ld [hl], a                                    ; $628f: $77
    adc b                                         ; $6290: $88
    sub l                                         ; $6291: $95
    pop hl                                        ; $6292: $e1
    ld c, c                                       ; $6293: $49
    nop                                           ; $6294: $00
    rst $30                                       ; $6295: $f7
    ld a, $ff                                     ; $6296: $3e $ff
    ld b, $f9                                     ; $6298: $06 $f9
    ld sp, hl                                     ; $629a: $f9
    ld b, $e0                                     ; $629b: $06 $e0
    nop                                           ; $629d: $00
    rra                                           ; $629e: $1f
    db $dd                                        ; $629f: $dd
    ld h, b                                       ; $62a0: $60
    add a                                         ; $62a1: $87
    ld hl, sp-$29                                 ; $62a2: $f8 $d7
    add hl, hl                                    ; $62a4: $29
    xor $00                                       ; $62a5: $ee $00
    ld de, $20df                                  ; $62a7: $11 $df $20
    ld hl, sp+$07                                 ; $62aa: $f8 $07
    ld [hl], h                                    ; $62ac: $74
    sbc b                                         ; $62ad: $98
    rst $20                                       ; $62ae: $e7
    nop                                           ; $62af: $00
    jr c, jr_0c9_6302                             ; $62b0: $38 $50

    cp a                                          ; $62b2: $bf
    ld a, a                                       ; $62b3: $7f
    sbc a                                         ; $62b4: $9f
    dec e                                         ; $62b5: $1d
    db $e3                                        ; $62b6: $e3
    and $00                                       ; $62b7: $e6 $00
    rst $38                                       ; $62b9: $ff
    sbc l                                         ; $62ba: $9d
    ld a, [hl]                                    ; $62bb: $7e
    ld a, c                                       ; $62bc: $79
    add [hl]                                      ; $62bd: $86
    ld [hl], l                                    ; $62be: $75
    adc d                                         ; $62bf: $8a
    ld l, a                                       ; $62c0: $6f
    nop                                           ; $62c1: $00
    sub b                                         ; $62c2: $90
    rst $10                                       ; $62c3: $d7
    xor b                                         ; $62c4: $a8
    ld a, l                                       ; $62c5: $7d
    add d                                         ; $62c6: $82
    rst $18                                       ; $62c7: $df
    jr nz, jr_0c9_6266                            ; $62c8: $20 $9c

jr_0c9_62ca:
    nop                                           ; $62ca: $00
    ld h, e                                       ; $62cb: $63
    ld d, d                                       ; $62cc: $52
    xor h                                         ; $62cd: $ac
    ld h, b                                       ; $62ce: $60
    sbc b                                         ; $62cf: $98
    sub $38                                       ; $62d0: $d6 $38
    call c, Call_000_3f00                         ; $62d2: $dc $00 $3f
    rst $28                                       ; $62d5: $ef
    rra                                           ; $62d6: $1f
    db $f4                                        ; $62d7: $f4
    dec bc                                        ; $62d8: $0b
    rst $10                                       ; $62d9: $d7
    jr z, jr_0c9_62eb                             ; $62da: $28 $0f

    nop                                           ; $62dc: $00
    ldh a, [$03]                                  ; $62dd: $f0 $03
    inc c                                         ; $62df: $0c
    ld a, [bc]                                    ; $62e0: $0a
    dec b                                         ; $62e1: $05
    rst $10                                       ; $62e2: $d7
    inc c                                         ; $62e3: $0c
    ld a, [hl-]                                   ; $62e4: $3a
    nop                                           ; $62e5: $00
    db $fd                                        ; $62e6: $fd
    rst $08                                       ; $62e7: $cf
    ldh a, [$3f]                                  ; $62e8: $f0 $3f
    ret nz                                        ; $62ea: $c0

jr_0c9_62eb:
    ld d, l                                       ; $62eb: $55
    pop hl                                        ; $62ec: $e1
    dec hl                                        ; $62ed: $2b
    inc b                                         ; $62ee: $04
    push af                                       ; $62ef: $f5
    cp [hl]                                       ; $62f0: $be
    ld a, a                                       ; $62f1: $7f
    jp $223c                                      ; $62f2: $c3 $3c $22


    dec hl                                        ; $62f5: $2b
    rst $18                                       ; $62f6: $df
    jr nz, jr_0c9_62f9                            ; $62f7: $20 $00

jr_0c9_62f9:
    xor h                                         ; $62f9: $ac
    ld d, e                                       ; $62fa: $53
    ld d, d                                       ; $62fb: $52
    xor h                                         ; $62fc: $ac
    or h                                          ; $62fd: $b4
    ld c, b                                       ; $62fe: $48
    db $eb                                        ; $62ff: $eb
    inc e                                         ; $6300: $1c
    ld [bc], a                                    ; $6301: $02

jr_0c9_6302:
    ld [$ff1f], a                                 ; $6302: $ea $1f $ff
    rrca                                          ; $6305: $0f
    ld a, [$3005]                                 ; $6306: $fa $05 $30
    jr jr_0c9_6310                                ; $6309: $18 $05

    nop                                           ; $630b: $00
    ld [bc], a                                    ; $630c: $02
    ld l, d                                       ; $630d: $6a
    rlca                                          ; $630e: $07
    dec e                                         ; $630f: $1d

jr_0c9_6310:
    cp $ee                                        ; $6310: $fe $ee
    pop af                                        ; $6312: $f1
    ld h, c                                       ; $6313: $61
    nop                                           ; $6314: $00

Jump_0c9_6315:
    cp $4c                                        ; $6315: $fe $4c
    ldh a, [rNR43]                                ; $6317: $f0 $22
    db $fd                                        ; $6319: $fd
    sbc a                                         ; $631a: $9f
    ld a, a                                       ; $631b: $7f
    ld b, e                                       ; $631c: $43
    nop                                           ; $631d: $00
    cp h                                          ; $631e: $bc
    cp l                                          ; $631f: $bd
    ld b, d                                       ; $6320: $42
    ld a, b                                       ; $6321: $78
    add a                                         ; $6322: $87
    or $18                                        ; $6323: $f6 $18
    pop af                                        ; $6325: $f1
    nop                                           ; $6326: $00
    ld a, $ea                                     ; $6327: $3e $ea
    sub l                                         ; $6329: $95
    rst $30                                       ; $632a: $f7
    adc b                                         ; $632b: $88
    ld l, a                                       ; $632c: $6f
    sub b                                         ; $632d: $90
    cp [hl]                                       ; $632e: $be
    nop                                           ; $632f: $00
    ld b, c                                       ; $6330: $41
    ld e, l                                       ; $6331: $5d
    and [hl]                                      ; $6332: $a6
    add hl, sp                                    ; $6333: $39
    adc $54                                       ; $6334: $ce $54
    cpl                                           ; $6336: $2f
    db $eb                                        ; $6337: $eb
    nop                                           ; $6338: $00
    rla                                           ; $6339: $17
    adc d                                         ; $633a: $8a
    pop af                                        ; $633b: $f1
    ld [hl], e                                    ; $633c: $73
    rst $38                                       ; $633d: $ff
    call z, Call_000_3d3f                         ; $633e: $cc $3f $3d
    nop                                           ; $6341: $00
    jp nz, Jump_000_235c                          ; $6342: $c2 $5c $23

    db $db                                        ; $6345: $db
    inc h                                         ; $6346: $24
    ld [hl], l                                    ; $6347: $75
    xor d                                         ; $6348: $aa
    rst $38                                       ; $6349: $ff
    nop                                           ; $634a: $00
    ldh [$df], a                                  ; $634b: $e0 $df
    and b                                         ; $634d: $a0
    ld c, [hl]                                    ; $634e: $4e
    or c                                          ; $634f: $b1
    sbc c                                         ; $6350: $99
    ld h, [hl]                                    ; $6351: $66
    ld d, d                                       ; $6352: $52
    nop                                           ; $6353: $00
    xor h                                         ; $6354: $ac
    ld sp, hl                                     ; $6355: $f9
    ld c, $fd                                     ; $6356: $0e $fd
    rrca                                          ; $6358: $0f
    rst $30                                       ; $6359: $f7
    rrca                                          ; $635a: $0f
    ld a, l                                       ; $635b: $7d
    db $10                                        ; $635c: $10
    add d                                         ; $635d: $82
    rst $38                                       ; $635e: $ff
    nop                                           ; $635f: $00
    add b                                         ; $6360: $80
    ld [$0102], sp                                ; $6361: $08 $02 $01
    push de                                       ; $6364: $d5
    inc bc                                        ; $6365: $03
    ld b, $0e                                     ; $6366: $06 $0e
    rst $38                                       ; $6368: $ff
    rst $30                                       ; $6369: $f7
    ld hl, sp+$18                                 ; $636a: $f8 $18
    db $10                                        ; $636c: $10
    ld [bc], a                                    ; $636d: $02
    ld [bc], a                                    ; $636e: $02
    ld c, $bf                                     ; $636f: $0e $bf
    dec b                                         ; $6371: $05
    ld b, b                                       ; $6372: $40
    ld e, a                                       ; $6373: $5f
    and b                                         ; $6374: $a0
    cp a                                          ; $6375: $bf
    ld b, b                                       ; $6376: $40
    call z, Call_0c9_540d                         ; $6377: $cc $0d $54
    sub [hl]                                      ; $637a: $96
    dec b                                         ; $637b: $05
    nop                                           ; $637c: $00
    ld hl, sp+$40                                 ; $637d: $f8 $40
    and b                                         ; $637f: $a0
    ret nz                                        ; $6380: $c0

    rst $08                                       ; $6381: $cf
    ldh a, [$d4]                                  ; $6382: $f0 $d4
    rst $38                                       ; $6384: $ff
    ld b, b                                       ; $6385: $40
    ccf                                           ; $6386: $3f
    ld [hl+], a                                   ; $6387: $22
    inc bc                                        ; $6388: $03
    ld h, b                                       ; $6389: $60
    sbc a                                         ; $638a: $9f
    ccf                                           ; $638b: $3f
    ret nz                                        ; $638c: $c0

    xor a                                         ; $638d: $af
    ld d, b                                       ; $638e: $50
    ld bc, $2c53                                  ; $638f: $01 $53 $2c
    cp a                                          ; $6392: $bf
    ld h, b                                       ; $6393: $60
    sbc a                                         ; $6394: $9f
    ldh [$3f], a                                  ; $6395: $e0 $3f
    ld l, $01                                     ; $6397: $2e $01
    nop                                           ; $6399: $00
    cp d                                          ; $639a: $ba
    ld b, l                                       ; $639b: $45
    or h                                          ; $639c: $b4
    ld c, e                                       ; $639d: $4b
    ld [$d81d], a                                 ; $639e: $ea $1d $d8
    ccf                                           ; $63a1: $3f
    nop                                           ; $63a2: $00
    or l                                          ; $63a3: $b5
    ld e, a                                       ; $63a4: $5f
    ld l, l                                       ; $63a5: $6d
    sbc a                                         ; $63a6: $9f
    rst $30                                       ; $63a7: $f7
    ld c, $ff                                     ; $63a8: $0e $ff
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    ld l, l                                       ; $63ac: $6d
    sub d                                         ; $63ad: $92
    jp c, $f625                                   ; $63ae: $da $25 $f6

    dec bc                                        ; $63b1: $0b
    xor $17                                       ; $63b2: $ee $17
    nop                                           ; $63b4: $00
    db $ed                                        ; $63b5: $ed
    rla                                           ; $63b6: $17
    sbc e                                         ; $63b7: $9b
    ld h, a                                       ; $63b8: $67
    ld b, $99                                     ; $63b9: $06 $99
    ld b, e                                       ; $63bb: $43
    inc b                                         ; $63bc: $04
    nop                                           ; $63bd: $00
    dec c                                         ; $63be: $0d
    ld a, [c]                                     ; $63bf: $f2
    ld b, a                                       ; $63c0: $47
    sbc b                                         ; $63c1: $98
    xor e                                         ; $63c2: $ab
    ld b, h                                       ; $63c3: $44
    dec c                                         ; $63c4: $0d
    ld a, [c]                                     ; $63c5: $f2
    nop                                           ; $63c6: $00
    ld b, e                                       ; $63c7: $43
    rst $38                                       ; $63c8: $ff
    rst $10                                       ; $63c9: $d7
    cp $fe                                        ; $63ca: $fe $fe
    rst $38                                       ; $63cc: $ff
    pop hl                                        ; $63cd: $e1
    rra                                           ; $63ce: $1f
    nop                                           ; $63cf: $00
    ldh [rSTAT], a                                ; $63d0: $e0 $41
    ld l, e                                       ; $63d2: $6b
    pop af                                        ; $63d3: $f1
    cp [hl]                                       ; $63d4: $be
    ld a, a                                       ; $63d5: $7f
    pop af                                        ; $63d6: $f1
    ld c, $00                                     ; $63d7: $0e $00
    rra                                           ; $63d9: $1f
    ldh [$2e], a                                  ; $63da: $e0 $2e
    ld de, $a35c                                  ; $63dc: $11 $5c $a3
    and $f9                                       ; $63df: $e6 $f9
    ld b, b                                       ; $63e1: $40
    db $ed                                        ; $63e2: $ed
    xor $03                                       ; $63e3: $ee $03
    cp a                                          ; $63e5: $bf
    ld b, h                                       ; $63e6: $44
    ld a, d                                       ; $63e7: $7a
    adc h                                         ; $63e8: $8c
    db $ed                                        ; $63e9: $ed
    ld e, $20                                     ; $63ea: $1e $20
    ld h, a                                       ; $63ec: $67
    sbc a                                         ; $63ed: $9f
    db $f4                                        ; $63ee: $f4

jr_0c9_63ef:
    dec bc                                        ; $63ef: $0b
    inc c                                         ; $63f0: $0c
    di                                            ; $63f1: $f3
    rst $28                                       ; $63f2: $ef
    ldh a, [rTIMA]                                ; $63f3: $f0 $05
    nop                                           ; $63f5: $00
    ld a, [bc]                                    ; $63f6: $0a
    ld a, [bc]                                    ; $63f7: $0a
    dec b                                         ; $63f8: $05
    rst $30                                       ; $63f9: $f7
    inc c                                         ; $63fa: $0c
    ld b, l                                       ; $63fb: $45
    cp $f9                                        ; $63fc: $fe $f9
    add b                                         ; $63fe: $80
    ld a, c                                       ; $63ff: $79
    ld bc, $e817                                  ; $6400: $01 $17 $e8
    xor $11                                       ; $6403: $ee $11
    db $fd                                        ; $6405: $fd
    ld [bc], a                                    ; $6406: $02
    cp e                                          ; $6407: $bb
    nop                                           ; $6408: $00
    ld b, l                                       ; $6409: $45
    rst $30                                       ; $640a: $f7
    add hl, bc                                    ; $640b: $09
    ld [c], a                                     ; $640c: $e2
    dec e                                         ; $640d: $1d
    add c                                         ; $640e: $81
    and $50                                       ; $640f: $e6 $50
    nop                                           ; $6411: $00
    add c                                         ; $6412: $81
    ld b, $f9                                     ; $6413: $06 $f9
    add hl, hl                                    ; $6415: $29
    add $9a                                       ; $6416: $c6 $9a
    pop hl                                        ; $6418: $e1
    adc e                                         ; $6419: $8b
    nop                                           ; $641a: $00
    db $f4                                        ; $641b: $f4
    ld h, b                                       ; $641c: $60
    rst $38                                       ; $641d: $ff
    db $ed                                        ; $641e: $ed
    rst $38                                       ; $641f: $ff
    sbc a                                         ; $6420: $9f
    ld a, a                                       ; $6421: $7f
    ld hl, sp+$00                                 ; $6422: $f8 $00
    rlca                                          ; $6424: $07
    add sp, $30                                   ; $6425: $e8 $30
    sbc l                                         ; $6427: $9d
    ld a, b                                       ; $6428: $78
    rst $28                                       ; $6429: $ef
    rra                                           ; $642a: $1f
    ld a, h                                       ; $642b: $7c
    nop                                           ; $642c: $00
    add e                                         ; $642d: $83
    rst $00                                       ; $642e: $c7
    ld hl, sp-$35                                 ; $642f: $f8 $cb
    add h                                         ; $6431: $84
    sub a                                         ; $6432: $97
    add sp, $7f                                   ; $6433: $e8 $7f
    ld h, b                                       ; $6435: $60
    ld hl, sp-$1a                                 ; $6436: $f8 $e6
    dec bc                                        ; $6438: $0b
    ld e, [hl]                                    ; $6439: $5e
    ld e, h                                       ; $643a: $5c
    ei                                            ; $643b: $fb
    inc b                                         ; $643c: $04
    rst $38                                       ; $643d: $ff
    nop                                           ; $643e: $00
    xor [hl]                                      ; $643f: $ae
    nop                                           ; $6440: $00
    ld d, c                                       ; $6441: $51
    db $fd                                        ; $6442: $fd
    ld [bc], a                                    ; $6443: $02
    cp b                                          ; $6444: $b8
    ld b, a                                       ; $6445: $47
    ld h, b                                       ; $6446: $60
    cp b                                          ; $6447: $b8
    db $f4                                        ; $6448: $f4
    nop                                           ; $6449: $00
    jr nz, jr_0c9_63ef                            ; $644a: $20 $a3

    ld e, h                                       ; $644c: $5c
    ld b, h                                       ; $644d: $44
    or e                                          ; $644e: $b3
    halt                                          ; $644f: $76
    xor b                                         ; $6450: $a8
    ld [c], a                                     ; $6451: $e2
    nop                                           ; $6452: $00
    ld a, l                                       ; $6453: $7d
    add sp, $7f                                   ; $6454: $e8 $7f
    cp d                                          ; $6456: $ba
    ld a, a                                       ; $6457: $7f
    daa                                           ; $6458: $27
    rst $18                                       ; $6459: $df
    ccf                                           ; $645a: $3f
    ld b, b                                       ; $645b: $40
    ld b, b                                       ; $645c: $40
    xor $09                                       ; $645d: $ee $09
    cp a                                          ; $645f: $bf
    ld b, b                                       ; $6460: $40
    cp [hl]                                       ; $6461: $be
    ld b, c                                       ; $6462: $41
    ld h, c                                       ; $6463: $61
    cp $00                                        ; $6464: $fe $00
    pop af                                        ; $6466: $f1
    ldh [$e6], a                                  ; $6467: $e0 $e6
    ld sp, hl                                     ; $6469: $f9
    rra                                           ; $646a: $1f
    rst $38                                       ; $646b: $ff
    rra                                           ; $646c: $1f
    ldh [rP1], a                                  ; $646d: $e0 $00
    sbc e                                         ; $646f: $9b
    ld h, h                                       ; $6470: $64
    dec e                                         ; $6471: $1d
    ld a, [c]                                     ; $6472: $f2
    rla                                           ; $6473: $17
    ld hl, sp-$21                                 ; $6474: $f8 $df
    ldh [rNR50], a                                ; $6476: $e0 $24
    dec a                                         ; $6478: $3d
    jp nz, $091c                                  ; $6479: $c2 $1c $09

    rst $38                                       ; $647c: $ff
    nop                                           ; $647d: $00
    ld a, [bc]                                    ; $647e: $0a
    add hl, bc                                    ; $647f: $09
    ld e, a                                       ; $6480: $5f
    and b                                         ; $6481: $a0
    add b                                         ; $6482: $80
    or b                                          ; $6483: $b0
    inc a                                         ; $6484: $3c
    db $fc                                        ; $6485: $fc
    inc bc                                        ; $6486: $03
    db $fc                                        ; $6487: $fc
    rlca                                          ; $6488: $07
    db $fd                                        ; $6489: $fd
    rlca                                          ; $648a: $07
    push af                                       ; $648b: $f5
    jr nz, jr_0c9_649d                            ; $648c: $20 $0f

    and e                                         ; $648e: $a3
    ld [hl], b                                    ; $648f: $70
    inc b                                         ; $6490: $04
    rst $38                                       ; $6491: $ff
    nop                                           ; $6492: $00
    rlca                                          ; $6493: $07
    ld hl, sp-$0e                                 ; $6494: $f8 $f2
    nop                                           ; $6496: $00
    dec c                                         ; $6497: $0d
    and e                                         ; $6498: $a3
    ld e, [hl]                                    ; $6499: $5e
    ld [bc], a                                    ; $649a: $02
    rst $38                                       ; $649b: $ff
    ld e, e                                       ; $649c: $5b

jr_0c9_649d:
    db $fc                                        ; $649d: $fc
    rst $20                                       ; $649e: $e7
    nop                                           ; $649f: $00
    ld hl, sp+$1f                                 ; $64a0: $f8 $1f
    ldh [$c0], a                                  ; $64a2: $e0 $c0
    ccf                                           ; $64a4: $3f
    db $fc                                        ; $64a5: $fc
    rlca                                          ; $64a6: $07
    ld [$1700], a                                 ; $64a7: $ea $00 $17
    ld [hl], l                                    ; $64aa: $75
    adc e                                         ; $64ab: $8b
    ld [$d315], a                                 ; $64ac: $ea $15 $d3
    inc l                                         ; $64af: $2c
    cp a                                          ; $64b0: $bf
    ld b, b                                       ; $64b1: $40
    ld b, b                                       ; $64b2: $40
    xor h                                         ; $64b3: $ac
    ld b, $03                                     ; $64b4: $06 $03
    rst $08                                       ; $64b6: $cf
    inc b                                         ; $64b7: $04
    or a                                          ; $64b8: $b7
    ld c, h                                       ; $64b9: $4c
    ld c, d                                       ; $64ba: $4a
    nop                                           ; $64bb: $00
    db $fd                                        ; $64bc: $fd
    rst $30                                       ; $64bd: $f7
    ld sp, hl                                     ; $64be: $f9
    ld e, $e3                                     ; $64bf: $1e $e3
    sbc l                                         ; $64c1: $9d
    ld h, e                                       ; $64c2: $63
    ld h, [hl]                                    ; $64c3: $66
    nop                                           ; $64c4: $00
    sbc c                                         ; $64c5: $99
    db $d3                                        ; $64c6: $d3
    inc c                                         ; $64c7: $0c
    ld sp, hl                                     ; $64c8: $f9
    rlca                                          ; $64c9: $07
    push bc                                       ; $64ca: $c5
    ccf                                           ; $64cb: $3f
    dec sp                                        ; $64cc: $3b
    nop                                           ; $64cd: $00
    rst $00                                       ; $64ce: $c7
    db $fd                                        ; $64cf: $fd
    inc bc                                        ; $64d0: $03
    sbc d                                         ; $64d1: $9a
    rst $20                                       ; $64d2: $e7
    ld d, e                                       ; $64d3: $53
    cp $fd                                        ; $64d4: $fe $fd
    nop                                           ; $64d6: $00
    cp $8f                                        ; $64d7: $fe $8f
    ld [hl], b                                    ; $64d9: $70
    ld c, e                                       ; $64da: $4b
    add h                                         ; $64db: $84
    ld e, l                                       ; $64dc: $5d
    and d                                         ; $64dd: $a2
    inc bc                                        ; $64de: $03
    nop                                           ; $64df: $00
    rst $38                                       ; $64e0: $ff
    rst $38                                       ; $64e1: $ff
    db $fd                                        ; $64e2: $fd
    ld a, $c1                                     ; $64e3: $3e $c1
    rst $30                                       ; $64e5: $f7
    ld [$00fa], sp                                ; $64e6: $08 $fa $00
    dec b                                         ; $64e9: $05
    rst $38                                       ; $64ea: $ff
    nop                                           ; $64eb: $00
    pop bc                                        ; $64ec: $c1
    ld a, $3e                                     ; $64ed: $3e $3e
    pop bc                                        ; $64ef: $c1
    inc d                                         ; $64f0: $14
    nop                                           ; $64f1: $00
    db $eb                                        ; $64f2: $eb
    ld b, b                                       ; $64f3: $40
    rst $38                                       ; $64f4: $ff
    xor e                                         ; $64f5: $ab
    rst $38                                       ; $64f6: $ff
    ld a, h                                       ; $64f7: $7c
    rst $38                                       ; $64f8: $ff
    and e                                         ; $64f9: $a3
    nop                                           ; $64fa: $00
    ld e, h                                       ; $64fb: $5c
    db $fc                                        ; $64fc: $fc
    inc bc                                        ; $64fd: $03
    rst $38                                       ; $64fe: $ff

Jump_0c9_64ff:
    ld bc, $23dc                                  ; $64ff: $01 $dc $23
    xor $00                                       ; $6502: $ee $00
    sub c                                         ; $6504: $91
    cp h                                          ; $6505: $bc
    jp $85fa                                      ; $6506: $c3 $fa $85


jr_0c9_6509:
    ld [hl], a                                    ; $6509: $77
    adc b                                         ; $650a: $88
    rst $38                                       ; $650b: $ff
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    rra                                           ; $650e: $1f
    ldh [$2b], a                                  ; $650f: $e0 $2b
    pop bc                                        ; $6511: $c1
    sub a                                         ; $6512: $97

jr_0c9_6513:
    jp hl                                         ; $6513: $e9


    ld l, c                                       ; $6514: $69
    nop                                           ; $6515: $00
    rst $38                                       ; $6516: $ff
    sbc [hl]                                      ; $6517: $9e
    ld a, a                                       ; $6518: $7f
    and e                                         ; $6519: $a3
    ld e, h                                       ; $651a: $5c
    di                                            ; $651b: $f3
    inc c                                         ; $651c: $0c
    call z, Call_000_3300                         ; $651d: $cc $00 $33
    jp hl                                         ; $6520: $e9


    jr nc, jr_0c9_6513                            ; $6521: $30 $f0

    rrca                                          ; $6523: $0f
    rst $20                                       ; $6524: $e7
    jr jr_0c9_6509                                ; $6525: $18 $e2

    ld [bc], a                                    ; $6527: $02
    dec a                                         ; $6528: $3d
    add sp, $3f                                   ; $6529: $e8 $3f
    db $ed                                        ; $652b: $ed
    rra                                           ; $652c: $1f
    rst $08                                       ; $652d: $cf
    sbc h                                         ; $652e: $9c
    ld bc, $10ff                                  ; $652f: $01 $ff $10
    nop                                           ; $6532: $00

jr_0c9_6533:
    ccf                                           ; $6533: $3f
    ret nz                                        ; $6534: $c0

    ret nz                                        ; $6535: $c0

    jr jr_0c9_65af                                ; $6536: $18 $77

    ld hl, sp-$72                                 ; $6538: $f8 $8e
    pop af                                        ; $653a: $f1
    nop                                           ; $653b: $00
    ld a, a                                       ; $653c: $7f
    add b                                         ; $653d: $80
    add c                                         ; $653e: $81
    ld a, [hl]                                    ; $653f: $7e
    ld [$5230], a                                 ; $6540: $ea $30 $52
    cp l                                          ; $6543: $bd
    nop                                           ; $6544: $00
    xor l                                         ; $6545: $ad
    ld e, a                                       ; $6546: $5f
    ld d, e                                       ; $6547: $53
    xor a                                         ; $6548: $af
    ld d, h                                       ; $6549: $54
    xor e                                         ; $654a: $ab
    cp $01                                        ; $654b: $fe $01
    nop                                           ; $654d: $00
    ld sp, hl                                     ; $654e: $f9
    ld b, $fd                                     ; $654f: $06 $fd
    ld b, $7f                                     ; $6551: $06 $7f
    ld b, b                                       ; $6553: $40
    cp [hl]                                       ; $6554: $be
    ld h, c                                       ; $6555: $61
    nop                                           ; $6556: $00
    ld e, b                                       ; $6557: $58
    rst $20                                       ; $6558: $e7
    cp e                                          ; $6559: $bb
    call z, $877e                                 ; $655a: $cc $7e $87
    ld a, e                                       ; $655d: $7b
    add a                                         ; $655e: $87
    nop                                           ; $655f: $00
    sbc a                                         ; $6560: $9f
    ld h, e                                       ; $6561: $63
    sub e                                         ; $6562: $93
    inc c                                         ; $6563: $0c
    sub [hl]                                      ; $6564: $96
    ld a, b                                       ; $6565: $78
    jr z, @+$01                                   ; $6566: $28 $ff

    ld b, b                                       ; $6568: $40
    call nc, $028a                                ; $6569: $d4 $8a $02
    ld h, h                                       ; $656c: $64
    sbc a                                         ; $656d: $9f
    ld c, e                                       ; $656e: $4b
    db $fc                                        ; $656f: $fc
    rst $30                                       ; $6570: $f7
    ld hl, sp+$38                                 ; $6571: $f8 $38
    ld e, $e1                                     ; $6573: $1e $e1
    sbc b                                         ; $6575: $98
    ld e, l                                       ; $6576: $5d
    add b                                         ; $6577: $80
    nop                                           ; $6578: $00
    xor b                                         ; $6579: $a8
    ld d, l                                       ; $657a: $55
    rrca                                          ; $657b: $0f

jr_0c9_657c:
    ldh a, [$f8]                                  ; $657c: $f0 $f8
    inc b                                         ; $657e: $04
    rrca                                          ; $657f: $0f
    rst $30                                       ; $6580: $f7
    jr jr_0c9_6533                                ; $6581: $18 $b0

    ld e, a                                       ; $6583: $5f
    ret nc                                        ; $6584: $d0

    dec c                                         ; $6585: $0d
    pop hl                                        ; $6586: $e1
    ld e, $00                                     ; $6587: $1e $00
    ld c, h                                       ; $6589: $4c
    di                                            ; $658a: $f3
    sbc $61                                       ; $658b: $de $61
    ld l, [hl]                                    ; $658d: $6e
    sub c                                         ; $658e: $91
    cp d                                          ; $658f: $ba
    ld b, l                                       ; $6590: $45
    nop                                           ; $6591: $00
    ld a, a                                       ; $6592: $7f
    pop bc                                        ; $6593: $c1
    xor $93                                       ; $6594: $ee $93
    ld e, l                                       ; $6596: $5d
    and e                                         ; $6597: $a3
    jp c, $0025                                   ; $6598: $da $25 $00

    db $ed                                        ; $659b: $ed
    ld [de], a                                    ; $659c: $12
    or $89                                        ; $659d: $f6 $89
    ld h, c                                       ; $659f: $61
    add b                                         ; $65a0: $80
    ret nz                                        ; $65a1: $c0

    nop                                           ; $65a2: $00
    ld d, b                                       ; $65a3: $50
    push af                                       ; $65a4: $f5
    add [hl]                                      ; $65a5: $86
    nop                                           ; $65a6: $00
    ld d, b                                       ; $65a7: $50
    adc $07                                       ; $65a8: $ce $07
    nop                                           ; $65aa: $00
    rst $38                                       ; $65ab: $ff
    push de                                       ; $65ac: $d5
    ld a, [hl+]                                   ; $65ad: $2a
    nop                                           ; $65ae: $00

jr_0c9_65af:
    ld a, $c3                                     ; $65af: $3e $c3
    dec a                                         ; $65b1: $3d
    ld b, e                                       ; $65b2: $43
    ld a, [hl]                                    ; $65b3: $7e
    ld hl, $3fe0                                  ; $65b4: $21 $e0 $3f
    nop                                           ; $65b7: $00
    ld [hl], c                                    ; $65b8: $71
    ret nz                                        ; $65b9: $c0

    cp [hl]                                       ; $65ba: $be
    pop bc                                        ; $65bb: $c1
    add d                                         ; $65bc: $82
    rst $38                                       ; $65bd: $ff
    ld a, l                                       ; $65be: $7d
    cp $00                                        ; $65bf: $fe $00
    sbc e                                         ; $65c1: $9b
    and $54                                       ; $65c2: $e6 $54
    rst $38                                       ; $65c4: $ff
    cp $f8                                        ; $65c5: $fe $f8
    inc hl                                        ; $65c7: $23
    db $fc                                        ; $65c8: $fc

jr_0c9_65c9:
    nop                                           ; $65c9: $00
    ld e, d                                       ; $65ca: $5a
    cp a                                          ; $65cb: $bf
    rst $20                                       ; $65cc: $e7

jr_0c9_65cd:
    sbc a                                         ; $65cd: $9f
    cp [hl]                                       ; $65ce: $be
    ld b, c                                       ; $65cf: $41
    pop bc                                        ; $65d0: $c1
    ld a, $00                                     ; $65d1: $3e $00
    rst $38                                       ; $65d3: $ff
    nop                                           ; $65d4: $00
    cpl                                           ; $65d5: $2f
    ret nc                                        ; $65d6: $d0

    ld e, a                                       ; $65d7: $5f
    jr nz, jr_0c9_65c9                            ; $65d8: $20 $ef

    db $10                                        ; $65da: $10
    jr nz, jr_0c9_657c                            ; $65db: $20 $9f

    ldh a, [rLCDC]                                ; $65dd: $f0 $40
    add hl, bc                                    ; $65df: $09
    ld a, a                                       ; $65e0: $7f
    add b                                         ; $65e1: $80
    and $18                                       ; $65e2: $e6 $18
    ld e, h                                       ; $65e4: $5c
    nop                                           ; $65e5: $00
    and b                                         ; $65e6: $a0
    rst $28                                       ; $65e7: $ef
    jr nc, jr_0c9_65cd                            ; $65e8: $30 $e3

    inc a                                         ; $65ea: $3c
    push de                                       ; $65eb: $d5
    ccf                                           ; $65ec: $3f
    xor a                                         ; $65ed: $af
    nop                                           ; $65ee: $00
    ld e, a                                       ; $65ef: $5f
    ret c                                         ; $65f0: $d8

    daa                                           ; $65f1: $27
    ld l, [hl]                                    ; $65f2: $6e
    sub c                                         ; $65f3: $91
    daa                                           ; $65f4: $27
    jr jr_0c9_6602                                ; $65f5: $18 $0b

    nop                                           ; $65f7: $00
    inc b                                         ; $65f8: $04
    ld h, a                                       ; $65f9: $67
    ld [bc], a                                    ; $65fa: $02
    cp $03                                        ; $65fb: $fe $03
    rlca                                          ; $65fd: $07
    db $fc                                        ; $65fe: $fc
    ei                                            ; $65ff: $fb
    ld e, $fc                                     ; $6600: $1e $fc

jr_0c9_6602:
    ld [$d6ff], sp                                ; $6602: $08 $ff $d6
    inc bc                                        ; $6605: $03
    jr c, jr_0c9_665e                             ; $6606: $38 $56

    sub [hl]                                      ; $6608: $96
    dec hl                                        ; $6609: $2b
    ld c, [hl]                                    ; $660a: $4e
    ld l, $03                                     ; $660b: $2e $03
    inc bc                                        ; $660d: $03
    db $fc                                        ; $660e: $fc
    ld a, [$ef11]                                 ; $660f: $fa $11 $ef
    jr nc, jr_0c9_6674                            ; $6612: $30 $60

    and b                                         ; $6614: $a0
    dec c                                         ; $6615: $0d
    ld [hl], b                                    ; $6616: $70
    ld b, $00                                     ; $6617: $06 $00
    or [hl]                                       ; $6619: $b6
    ld c, c                                       ; $661a: $49
    rst $28                                       ; $661b: $ef
    db $10                                        ; $661c: $10
    sbc $21                                       ; $661d: $de $21
    ld [hl], l                                    ; $661f: $75
    adc d                                         ; $6620: $8a
    ld [bc], a                                    ; $6621: $02
    cp $83                                        ; $6622: $fe $83
    or $8b                                        ; $6624: $f6 $8b
    ld l, l                                       ; $6626: $6d
    sub e                                         ; $6627: $93
    sbc b                                         ; $6628: $98
    ld [bc], a                                    ; $6629: $02
    add hl, bc                                    ; $662a: $09
    ld bc, $847b                                  ; $662b: $01 $7b $84
    ld b, d                                       ; $662e: $42
    add c                                         ; $662f: $81
    ret nz                                        ; $6630: $c0

    nop                                           ; $6631: $00
    ld [$20a0], a                                 ; $6632: $ea $a0 $20
    nop                                           ; $6635: $00
    ret nz                                        ; $6636: $c0

    ccf                                           ; $6637: $3f
    ld l, d                                       ; $6638: $6a
    sub l                                         ; $6639: $95
    ld a, l                                       ; $663a: $7d
    add a                                         ; $663b: $87
    cp d                                          ; $663c: $ba
    ld b, a                                       ; $663d: $47
    jr nz, jr_0c9_66bd                            ; $663e: $20 $7d

    inc hl                                        ; $6640: $23
    and b                                         ; $6641: $a0
    jr jr_0c9_6685                                ; $6642: $18 $41

    rst $38                                       ; $6644: $ff
    cp a                                          ; $6645: $bf
    ld a, a                                       ; $6646: $7f
    ccf                                           ; $6647: $3f
    ld [$a4c4], sp                                ; $6648: $08 $c4 $a4
    rst $38                                       ; $664b: $ff
    db $fc                                        ; $664c: $fc
    and b                                         ; $664d: $a0
    jr nz, jr_0c9_66ae                            ; $664e: $20 $5e

    and c                                         ; $6650: $a1
    ldh [rP1], a                                  ; $6651: $e0 $00
    rra                                           ; $6653: $1f
    rst $38                                       ; $6654: $ff
    ld bc, $a35e                                  ; $6655: $01 $5e $a3
    or [hl]                                       ; $6658: $b6
    ld c, e                                       ; $6659: $4b
    db $ed                                        ; $665a: $ed
    nop                                           ; $665b: $00
    inc de                                        ; $665c: $13
    sbc a                                         ; $665d: $9f

jr_0c9_665e:
    ldh a, [$e3]                                  ; $665e: $f0 $e3
    db $fc                                        ; $6660: $fc
    ld c, d                                       ; $6661: $4a
    rst $30                                       ; $6662: $f7
    ld h, [hl]                                    ; $6663: $66
    ld bc, $7dfb                                  ; $6664: $01 $fb $7d
    add d                                         ; $6667: $82
    cp [hl]                                       ; $6668: $be
    ld b, c                                       ; $6669: $41
    or a                                          ; $666a: $b7
    ld l, b                                       ; $666b: $68
    ld b, b                                       ; $666c: $40
    dec c                                         ; $666d: $0d
    nop                                           ; $666e: $00
    ld h, e                                       ; $666f: $63
    add [hl]                                      ; $6670: $86
    inc [hl]                                      ; $6671: $34
    rst $08                                       ; $6672: $cf
    xor a                                         ; $6673: $af

jr_0c9_6674:
    rst $38                                       ; $6674: $ff
    ei                                            ; $6675: $fb
    inc b                                         ; $6676: $04
    nop                                           ; $6677: $00
    or e                                          ; $6678: $b3
    ld e, h                                       ; $6679: $5c
    ld l, h                                       ; $667a: $6c
    sbc a                                         ; $667b: $9f
    cp e                                          ; $667c: $bb
    ld b, a                                       ; $667d: $47
    ld c, $f1                                     ; $667e: $0e $f1
    nop                                           ; $6680: $00
    rrca                                          ; $6681: $0f
    db $10                                        ; $6682: $10
    ld d, $09                                     ; $6683: $16 $09

jr_0c9_6685:
    cpl                                           ; $6685: $2f
    ret c                                         ; $6686: $d8

    inc e                                         ; $6687: $1c
    rrca                                          ; $6688: $0f
    nop                                           ; $6689: $00

jr_0c9_668a:
    sbc a                                         ; $668a: $9f
    rrca                                          ; $668b: $0f
    jp hl                                         ; $668c: $e9


    ld e, $f7                                     ; $668d: $1e $f7
    ld hl, sp+$0e                                 ; $668f: $f8 $0e
    pop af                                        ; $6691: $f1
    ld bc, $26dc                                  ; $6692: $01 $dc $26
    cp e                                          ; $6695: $bb
    ld c, h                                       ; $6696: $4c
    ld a, h                                       ; $6697: $7c
    adc a                                         ; $6698: $8f
    ld h, b                                       ; $6699: $60
    ld [hl], $03                                  ; $669a: $36 $03
    inc b                                         ; $669c: $04
    cp d                                          ; $669d: $ba
    ld b, [hl]                                    ; $669e: $46
    ld a, l                                       ; $669f: $7d
    add [hl]                                      ; $66a0: $86
    inc b                                         ; $66a1: $04
    ret nc                                        ; $66a2: $d0

    dec b                                         ; $66a3: $05
    ld b, [hl]                                    ; $66a4: $46
    inc bc                                        ; $66a5: $03
    nop                                           ; $66a6: $00
    ei                                            ; $66a7: $fb
    rlca                                          ; $66a8: $07
    db $fd                                        ; $66a9: $fd
    add d                                         ; $66aa: $82
    ld e, $e3                                     ; $66ab: $1e $e3
    dec c                                         ; $66ad: $0d

jr_0c9_66ae:
    rla                                           ; $66ae: $17
    nop                                           ; $66af: $00
    rl a                                          ; $66b0: $cb $17
    ld l, $f1                                     ; $66b2: $2e $f1
    db $db                                        ; $66b4: $db
    db $e4                                        ; $66b5: $e4
    ld a, l                                       ; $66b6: $7d
    add d                                         ; $66b7: $82
    nop                                           ; $66b8: $00
    rrca                                          ; $66b9: $0f
    ldh a, [$83]                                  ; $66ba: $f0 $83
    db $fc                                        ; $66bc: $fc

jr_0c9_66bd:
    add hl, sp                                    ; $66bd: $39
    add $0d                                       ; $66be: $c6 $0d
    di                                            ; $66c0: $f3
    nop                                           ; $66c1: $00
    and e                                         ; $66c2: $a3
    rst $38                                       ; $66c3: $ff
    cp $fc                                        ; $66c4: $fe $fc
    srl h                                         ; $66c6: $cb $3c
    ld l, c                                       ; $66c8: $69
    sbc [hl]                                      ; $66c9: $9e
    nop                                           ; $66ca: $00
    push de                                       ; $66cb: $d5
    ccf                                           ; $66cc: $3f
    rst $00                                       ; $66cd: $c7
    jr c, @-$09                                   ; $66ce: $38 $f5

    ld a, [bc]                                    ; $66d0: $0a
    cp e                                          ; $66d1: $bb
    ld b, h                                       ; $66d2: $44
    nop                                           ; $66d3: $00
    dec e                                         ; $66d4: $1d
    ld [c], a                                     ; $66d5: $e2
    cpl                                           ; $66d6: $2f
    db $10                                        ; $66d7: $10
    rra                                           ; $66d8: $1f
    jr nc, jr_0c9_668a                            ; $66d9: $30 $af

    ld [hl], b                                    ; $66db: $70
    nop                                           ; $66dc: $00
    ld a, a                                       ; $66dd: $7f
    ldh [$a9], a                                  ; $66de: $e0 $a9
    ld b, c                                       ; $66e0: $41
    sbc l                                         ; $66e1: $9d
    pop hl                                        ; $66e2: $e1
    ld h, a                                       ; $66e3: $67
    ld sp, hl                                     ; $66e4: $f9
    nop                                           ; $66e5: $00
    sbc $3f                                       ; $66e6: $de $3f
    pop af                                        ; $66e8: $f1
    ld c, $fe                                     ; $66e9: $0e $fe
    ld bc, $02fd                                  ; $66eb: $01 $fd $02
    ld [$00ff], sp                                ; $66ee: $08 $ff $00
    inc e                                         ; $66f1: $1c
    db $e3                                        ; $66f2: $e3
    nop                                           ; $66f3: $00
    ld c, $18                                     ; $66f4: $0e $18
    rst $38                                       ; $66f6: $ff
    pop af                                        ; $66f7: $f1
    nop                                           ; $66f8: $00
    ldh [$2c], a                                  ; $66f9: $e0 $2c
    ldh a, [$a6]                                  ; $66fb: $f0 $a6
    ld a, c                                       ; $66fd: $79
    push de                                       ; $66fe: $d5
    rst $38                                       ; $66ff: $ff
    ld a, l                                       ; $6700: $7d
    nop                                           ; $6701: $00
    add d                                         ; $6702: $82
    xor h                                         ; $6703: $ac
    ld d, a                                       ; $6704: $57
    db $db                                        ; $6705: $db
    daa                                           ; $6706: $27
    xor $11                                       ; $6707: $ee $11
    jp $fc00                                      ; $6709: $c3 $00 $fc


    ld b, c                                       ; $670c: $41
    jp nz, $c1a2                                  ; $670d: $c2 $a2 $c1

    push hl                                       ; $6710: $e5
    ei                                            ; $6711: $fb

jr_0c9_6712:
    ld c, [hl]                                    ; $6712: $4e
    nop                                           ; $6713: $00
    rlca                                          ; $6714: $07
    rst $20                                       ; $6715: $e7
    inc bc                                        ; $6716: $03
    ld a, [hl-]                                   ; $6717: $3a
    rst $00                                       ; $6718: $c7
    db $fd                                        ; $6719: $fd
    cp $83                                        ; $671a: $fe $83
    nop                                           ; $671c: $00
    ld a, h                                       ; $671d: $7c
    ei                                            ; $671e: $fb
    inc b                                         ; $671f: $04

Call_0c9_6720:
    rst $10                                       ; $6720: $d7
    jr z, jr_0c9_6712                             ; $6721: $28 $ef

    db $10                                        ; $6723: $10
    pop hl                                        ; $6724: $e1
    ld [bc], a                                    ; $6725: $02
    ld a, $ce                                     ; $6726: $3e $ce
    ld [hl], c                                    ; $6728: $71
    ld b, e                                       ; $6729: $43
    db $fc                                        ; $672a: $fc
    ld l, b                                       ; $672b: $68
    jp c, Jump_0c9_4100                           ; $672c: $da $00 $41

    nop                                           ; $672f: $00
    cp a                                          ; $6730: $bf
    xor l                                         ; $6731: $ad
    ld d, e                                       ; $6732: $53
    cp $01                                        ; $6733: $fe $01
    db $e3                                        ; $6735: $e3
    inc e                                         ; $6736: $1c
    ld a, l                                       ; $6737: $7d
    ld bc, $6e82                                  ; $6738: $01 $82 $6e
    pop de                                        ; $673b: $d1
    rst $00                                       ; $673c: $c7
    ld hl, sp-$72                                 ; $673d: $f8 $8e
    rlca                                          ; $673f: $07
    ret nz                                        ; $6740: $c0

    jr jr_0c9_6743                                ; $6741: $18 $00

jr_0c9_6743:
    call nc, Call_0c9_6720                        ; $6743: $d4 $20 $67
    cp b                                          ; $6746: $b8
    reti                                          ; $6747: $d9


    ld a, $77                                     ; $6748: $3e $77
    adc a                                         ; $674a: $8f
    nop                                           ; $674b: $00
    inc e                                         ; $674c: $1c
    db $e3                                        ; $674d: $e3
    rlca                                          ; $674e: $07
    ld [$058a], sp                                ; $674f: $08 $8a $05
    sub a                                         ; $6752: $97
    db $ec                                        ; $6753: $ec
    nop                                           ; $6754: $00
    ld [hl], e                                    ; $6755: $73
    ccf                                           ; $6756: $3f
    ld a, $1f                                     ; $6757: $3e $1f
    db $d3                                        ; $6759: $d3
    inc a                                         ; $675a: $3c
    xor $f1                                       ; $675b: $ee $f1
    jr nz, jr_0c9_677b                            ; $675d: $20 $1c

    db $e3                                        ; $675f: $e3
    ret nz                                        ; $6760: $c0

    jr jr_0c9_6773                                ; $6761: $18 $10

    rst $38                                       ; $6763: $ff
    rst $28                                       ; $6764: $ef
    jr @+$50                                      ; $6765: $18 $4e

    nop                                           ; $6767: $00
    cp c                                          ; $6768: $b9
    ld l, $f1                                     ; $6769: $2e $f1
    push de                                       ; $676b: $d5
    ld [$b44b], a                                 ; $676c: $ea $4b $b4
    db $dd                                        ; $676f: $dd
    nop                                           ; $6770: $00
    inc hl                                        ; $6771: $23
    ld a, l                                       ; $6772: $7d

jr_0c9_6773:
    add [hl]                                      ; $6773: $86
    ldh a, [rIE]                                  ; $6774: $f0 $ff
    inc l                                         ; $6776: $2c
    ldh a, [$9b]                                  ; $6777: $f0 $9b
    nop                                           ; $6779: $00
    ld a, h                                       ; $677a: $7c

jr_0c9_677b:
    call z, $f33f                                 ; $677b: $cc $3f $f3
    rrca                                          ; $677e: $0f
    nop                                           ; $677f: $00
    rst $38                                       ; $6780: $ff
    pop bc                                        ; $6781: $c1
    ld [$0782], sp                                ; $6782: $08 $82 $07
    ld [bc], a                                    ; $6785: $02
    ld l, l                                       ; $6786: $6d
    db $fc                                        ; $6787: $fc
    nop                                           ; $6788: $00
    rst $18                                       ; $6789: $df
    jr nz, @+$5a                                  ; $678a: $20 $58

    nop                                           ; $678c: $00
    rst $20                                       ; $678d: $e7
    or [hl]                                       ; $678e: $b6
    ret z                                         ; $678f: $c8

    ld [hl], e                                    ; $6790: $73
    sbc h                                         ; $6791: $9c
    xor $1f                                       ; $6792: $ee $1f
    db $e3                                        ; $6794: $e3
    jr nz, jr_0c9_67b6                            ; $6795: $20 $1f

    ld d, [hl]                                    ; $6797: $56
    xor b                                         ; $6798: $a8
    ld bc, $7e89                                  ; $6799: $01 $89 $7e
    ld l, h                                       ; $679c: $6c
    sbc a                                         ; $679d: $9f
    or e                                          ; $679e: $b3
    add b                                         ; $679f: $80
    or b                                          ; $67a0: $b0
    dec b                                         ; $67a1: $05
    ld e, [hl]                                    ; $67a2: $5e
    pop hl                                        ; $67a3: $e1
    or l                                          ; $67a4: $b5
    jp z, Jump_000_140b                           ; $67a5: $ca $0b $14

    rla                                           ; $67a8: $17
    nop                                           ; $67a9: $00
    ld [$18f7], sp                                ; $67aa: $08 $f7 $18
    dec hl                                        ; $67ad: $2b
    db $f4                                        ; $67ae: $f4
    rst $10                                       ; $67af: $d7
    add sp, -$13                                  ; $67b0: $e8 $ed
    nop                                           ; $67b2: $00
    ld [de], a                                    ; $67b3: $12
    ld hl, sp+$0f                                 ; $67b4: $f8 $0f

jr_0c9_67b6:
    db $f4                                        ; $67b6: $f4
    jr @+$4e                                      ; $67b7: $18 $4c

    di                                            ; $67b9: $f3
    cp a                                          ; $67ba: $bf
    nop                                           ; $67bb: $00
    ret nz                                        ; $67bc: $c0

    pop bc                                        ; $67bd: $c1
    cp $74                                        ; $67be: $fe $74
    rst $38                                       ; $67c0: $ff
    adc a                                         ; $67c1: $8f
    ld a, a                                       ; $67c2: $7f
    ld d, b                                       ; $67c3: $50
    rlca                                          ; $67c4: $07
    xor a                                         ; $67c5: $af
    dec hl                                        ; $67c6: $2b
    call nc, Call_0c9_512e                        ; $67c7: $d4 $2e $51
    ld h, h                                       ; $67ca: $64
    dec d                                         ; $67cb: $15
    or h                                          ; $67cc: $b4
    ld b, e                                       ; $67cd: $43
    ld l, d                                       ; $67ce: $6a
    dec b                                         ; $67cf: $05
    nop                                           ; $67d0: $00
    inc bc                                        ; $67d1: $03
    rst $38                                       ; $67d2: $ff
    inc bc                                        ; $67d3: $03
    db $ed                                        ; $67d4: $ed
    inc de                                        ; $67d5: $13
    ld e, [hl]                                    ; $67d6: $5e
    and c                                         ; $67d7: $a1
    or l                                          ; $67d8: $b5
    nop                                           ; $67d9: $00
    ld c, d                                       ; $67da: $4a
    ldh [$3f], a                                  ; $67db: $e0 $3f
    ret nc                                        ; $67dd: $d0

    ld h, b                                       ; $67de: $60
    ld sp, $fecf                                  ; $67df: $31 $cf $fe
    nop                                           ; $67e2: $00
    ld bc, $fb04                                  ; $67e3: $01 $04 $fb
    pop de                                        ; $67e6: $d1
    rst $38                                       ; $67e7: $ff
    ld a, $ff                                     ; $67e8: $3e $ff
    ld b, d                                       ; $67ea: $42
    nop                                           ; $67eb: $00
    cp l                                          ; $67ec: $bd
    xor [hl]                                      ; $67ed: $ae
    ld d, c                                       ; $67ee: $51
    ld e, l                                       ; $67ef: $5d
    and d                                         ; $67f0: $a2
    ld c, $ff                                     ; $67f1: $0e $ff
    push af                                       ; $67f3: $f5
    nop                                           ; $67f4: $00
    adc [hl]                                      ; $67f5: $8e
    db $eb                                        ; $67f6: $eb
    sub a                                         ; $67f7: $97
    halt                                          ; $67f8: $76
    adc c                                         ; $67f9: $89
    xor a                                         ; $67fa: $af
    ld d, b                                       ; $67fb: $50
    ld e, b                                       ; $67fc: $58
    nop                                           ; $67fd: $00
    and a                                         ; $67fe: $a7
    xor $1c                                       ; $67ff: $ee $1c
    db $f4                                        ; $6801: $f4
    jr @+$09                                      ; $6802: $18 $07

    ld hl, sp-$35                                 ; $6804: $f8 $cb
    nop                                           ; $6806: $00
    inc b                                         ; $6807: $04
    dec a                                         ; $6808: $3d
    jp nz, $fe65                                  ; $6809: $c2 $65 $fe

    sbc e                                         ; $680c: $9b
    ld a, h                                       ; $680d: $7c
    rlca                                          ; $680e: $07
    inc b                                         ; $680f: $04
    ld sp, hl                                     ; $6810: $f9
    ld c, $11                                     ; $6811: $0e $11
    rra                                           ; $6813: $1f
    ld [$1ff0], sp                                ; $6814: $08 $f0 $1f
    add e                                         ; $6817: $83
    ld a, h                                       ; $6818: $7c
    nop                                           ; $6819: $00
    ld h, l                                       ; $681a: $65
    add d                                         ; $681b: $82
    ccf                                           ; $681c: $3f
    pop bc                                        ; $681d: $c1
    ld [c], a                                     ; $681e: $e2
    rst $38                                       ; $681f: $ff
    adc [hl]                                      ; $6820: $8e
    ld a, a                                       ; $6821: $7f
    or b                                          ; $6822: $b0
    cp $07                                        ; $6823: $fe $07
    ld bc, $1002                                  ; $6825: $01 $02 $10
    ld h, $26                                     ; $6828: $26 $26
    inc b                                         ; $682a: $04
    rst $38                                       ; $682b: $ff
    ei                                            ; $682c: $fb
    ld b, $00                                     ; $682d: $06 $00

jr_0c9_682f:
    inc de                                        ; $682f: $13
    xor $c5                                       ; $6830: $ee $c5
    cp $fa                                        ; $6832: $fe $fa
    db $fd                                        ; $6834: $fd
    adc c                                         ; $6835: $89
    halt                                          ; $6836: $76
    nop                                           ; $6837: $00
    ld a, e                                       ; $6838: $7b
    add h                                         ; $6839: $84
    cp e                                          ; $683a: $bb
    ld b, h                                       ; $683b: $44
    ld a, b                                       ; $683c: $78
    rst $38                                       ; $683d: $ff
    sub a                                         ; $683e: $97
    ld a, b                                       ; $683f: $78
    nop                                           ; $6840: $00
    adc h                                         ; $6841: $8c
    ld a, a                                       ; $6842: $7f
    reti                                          ; $6843: $d9


    daa                                           ; $6844: $27
    cp [hl]                                       ; $6845: $be
    ld b, c                                       ; $6846: $41
    ld h, b                                       ; $6847: $60
    sbc a                                         ; $6848: $9f
    nop                                           ; $6849: $00
    cp b                                          ; $684a: $b8

jr_0c9_684b:
    ld [hl], b                                    ; $684b: $70
    add sp, $30                                   ; $684c: $e8 $30
    dec de                                        ; $684e: $1b
    rst $20                                       ; $684f: $e7
    ld l, $11                                     ; $6850: $2e $11
    jr nz, jr_0c9_684b                            ; $6852: $20 $f7

    ld [$0ebe], sp                                ; $6854: $08 $be $0e
    ld c, $f3                                     ; $6857: $0e $f3
    dec a                                         ; $6859: $3d
    ld b, e                                       ; $685a: $43
    ccf                                           ; $685b: $3f
    nop                                           ; $685c: $00
    db $10                                        ; $685d: $10
    or h                                          ; $685e: $b4
    ld c, a                                       ; $685f: $4f
    ld a, e                                       ; $6860: $7b
    add a                                         ; $6861: $87
    cp $01                                        ; $6862: $fe $01
    pop hl                                        ; $6864: $e1
    nop                                           ; $6865: $00
    ld e, $d2                                     ; $6866: $1e $d2
    ld h, c                                       ; $6868: $61
    dec a                                         ; $6869: $3d
    jp nz, $fa87                                  ; $686a: $c2 $87 $fa

    ld a, l                                       ; $686d: $7d
    nop                                           ; $686e: $00
    cp $6b                                        ; $686f: $fe $6b
    add [hl]                                      ; $6871: $86
    adc l                                         ; $6872: $8d
    cp $75                                        ; $6873: $fe $75
    ld a, [$10ea]                                 ; $6875: $fa $ea $10
    dec d                                         ; $6878: $15
    rst $20                                       ; $6879: $e7
    jr jr_0c9_68a0                                ; $687a: $18 $24

    dec c                                         ; $687c: $0d
    ei                                            ; $687d: $fb
    inc b                                         ; $687e: $04
    cp a                                          ; $687f: $bf
    ld b, b                                       ; $6880: $40
    nop                                           ; $6881: $00
    ld e, h                                       ; $6882: $5c
    and e                                         ; $6883: $a3
    ld h, h                                       ; $6884: $64
    sbc b                                         ; $6885: $98
    ret z                                         ; $6886: $c8

    jr nc, jr_0c9_682f                            ; $6887: $30 $a6

    ld a, b                                       ; $6889: $78
    nop                                           ; $688a: $00
    or h                                          ; $688b: $b4
    ld a, a                                       ; $688c: $7f
    rst $18                                       ; $688d: $df
    ccf                                           ; $688e: $3f
    db $f4                                        ; $688f: $f4
    dec bc                                        ; $6890: $0b
    db $eb                                        ; $6891: $eb
    inc d                                         ; $6892: $14
    jr nz, @+$09                                  ; $6893: $20 $07

    ld hl, sp-$60                                 ; $6895: $f8 $a0

Call_0c9_6897:
    dec c                                         ; $6897: $0d
    xor e                                         ; $6898: $ab
    ld b, $1d                                     ; $6899: $06 $1d
    cp $ef                                        ; $689b: $fe $ef
    nop                                           ; $689d: $00
    ldh a, [$61]                                  ; $689e: $f0 $61

jr_0c9_68a0:
    cp $d3                                        ; $68a0: $fe $d3
    inc a                                         ; $68a2: $3c
    ret z                                         ; $68a3: $c8

    ccf                                           ; $68a4: $3f

jr_0c9_68a5:
    rst $00                                       ; $68a5: $c7
    nop                                           ; $68a6: $00
    ccf                                           ; $68a7: $3f
    and b                                         ; $68a8: $a0
    ld e, a                                       ; $68a9: $5f
    ld e, a                                       ; $68aa: $5f
    and b                                         ; $68ab: $a0
    cp h                                          ; $68ac: $bc
    ld b, e                                       ; $68ad: $43
    ld a, e                                       ; $68ae: $7b
    ld d, $8c                                     ; $68af: $16 $8c
    ld hl, sp+$1f                                 ; $68b1: $f8 $1f
    ld d, [hl]                                    ; $68b3: $56
    dec b                                         ; $68b4: $05
    ret nz                                        ; $68b5: $c0

    ld d, [hl]                                    ; $68b6: $56
    ld b, $b4                                     ; $68b7: $06 $b4
    ld [hl], $7f                                  ; $68b9: $36 $7f
    ld [de], a                                    ; $68bb: $12
    add b                                         ; $68bc: $80
    cp b                                          ; $68bd: $b8
    ld b, a                                       ; $68be: $47
    ld b, b                                       ; $68bf: $40
    ld c, b                                       ; $68c0: $48
    rst $30                                       ; $68c1: $f7
    ld [$1de0], sp                                ; $68c2: $08 $e0 $1d
    xor d                                         ; $68c5: $aa
    add b                                         ; $68c6: $80
    ldh [rNR51], a                                ; $68c7: $e0 $25

jr_0c9_68c9:
    ld c, d                                       ; $68c9: $4a
    ldh a, [rNR51]                                ; $68ca: $f0 $25
    ld a, [$7f9f]                                 ; $68cc: $fa $9f $7f
    ld b, c                                       ; $68cf: $41
    nop                                           ; $68d0: $00
    cp [hl]                                       ; $68d1: $be
    cp [hl]                                       ; $68d2: $be
    ld b, c                                       ; $68d3: $41
    ld a, b                                       ; $68d4: $78
    add a                                         ; $68d5: $87
    rst $30                                       ; $68d6: $f7
    jr jr_0c9_68c9                                ; $68d7: $18 $f0

    nop                                           ; $68d9: $00
    ccf                                           ; $68da: $3f
    ld a, d                                       ; $68db: $7a
    ld b, l                                       ; $68dc: $45
    ld a, l                                       ; $68dd: $7d
    jp nz, $c4bb                                  ; $68de: $c2 $bb $c4

    rst $18                                       ; $68e1: $df
    nop                                           ; $68e2: $00
    jr nz, @-$4f                                  ; $68e3: $20 $af

    ld d, c                                       ; $68e5: $51
    ld e, $e3                                     ; $68e6: $1e $e3
    dec l                                         ; $68e8: $2d
    inc de                                        ; $68e9: $13
    or $00                                        ; $68ea: $f6 $00
    add hl, bc                                    ; $68ec: $09
    pop de                                        ; $68ed: $d1
    ld a, $ee                                     ; $68ee: $3e $ee
    rra                                           ; $68f0: $1f
    ld sp, hl                                     ; $68f1: $f9
    rlca                                          ; $68f2: $07
    add a                                         ; $68f3: $87
    nop                                           ; $68f4: $00
    ld a, b                                       ; $68f5: $78
    ld c, e                                       ; $68f6: $4b
    add h                                         ; $68f7: $84
    ld a, e                                       ; $68f8: $7b
    add h                                         ; $68f9: $84
    ld c, $f5                                     ; $68fa: $0e $f5
    ei                                            ; $68fc: $fb
    nop                                           ; $68fd: $00
    db $fc                                        ; $68fe: $fc
    xor [hl]                                      ; $68ff: $ae
    add hl, de                                    ; $6900: $19
    dec [hl]                                      ; $6901: $35
    ld a, [$f5ca]                                 ; $6902: $fa $ca $f5
    push de                                       ; $6905: $d5
    inc d                                         ; $6906: $14
    ld a, [hl+]                                   ; $6907: $2a
    xor a                                         ; $6908: $af
    ld d, b                                       ; $6909: $50
    jp z, $f70e                                   ; $690a: $ca $0e $f7

    db $10                                        ; $690d: $10
    ld bc, $8f70                                  ; $690e: $01 $70 $8f
    ld [bc], a                                    ; $6911: $02
    ret z                                         ; $6912: $c8

    jr nc, jr_0c9_68a5                            ; $6913: $30 $90

    ld h, b                                       ; $6915: $60
    ld c, l                                       ; $6916: $4d
    ldh a, [rDIV]                                 ; $6917: $f0 $04
    ld a, [bc]                                    ; $6919: $0a
    add sp, $02                                   ; $691a: $e8 $02
    rla                                           ; $691c: $17
    ld e, a                                       ; $691d: $5f
    and b                                         ; $691e: $a0
    dec sp                                        ; $691f: $3b
    call nz, Call_0c9_5407                        ; $6920: $c4 $07 $54
    inc bc                                        ; $6923: $03
    ld d, [hl]                                    ; $6924: $56
    nop                                           ; $6925: $00
    dec c                                         ; $6926: $0d
    dec sp                                        ; $6927: $3b
    db $fc                                        ; $6928: $fc
    sbc $e1                                       ; $6929: $de $e1
    jp $a3fc                                      ; $692b: $c3 $fc $a3


    jr nz, jr_0c9_69ac                            ; $692e: $20 $7c

    call c, $01cc                                 ; $6930: $dc $cc $01
    adc a                                         ; $6933: $8f
    ld [hl], b                                    ; $6934: $70
    ld d, a                                       ; $6935: $57
    adc b                                         ; $6936: $88
    ld a, e                                       ; $6937: $7b
    nop                                           ; $6938: $00
    add h                                         ; $6939: $84
    ld c, [hl]                                    ; $693a: $4e
    push af                                       ; $693b: $f5
    cp e                                          ; $693c: $bb
    ld a, h                                       ; $693d: $7c
    ld e, l                                       ; $693e: $5d
    ld [hl-], a                                   ; $693f: $32
    ld l, d                                       ; $6940: $6a
    ld bc, $95f5                                  ; $6941: $01 $f5 $95
    ld [$54ab], a                                 ; $6944: $ea $ab $54
    ld e, [hl]                                    ; $6947: $5e
    and c                                         ; $6948: $a1
    ld b, b                                       ; $6949: $40
    jr @+$72                                      ; $694a: $18 $70

    ld a, [bc]                                    ; $694c: $0a
    ld a, a                                       ; $694d: $7f
    ld [$0055], sp                                ; $694e: $08 $55 $00
    ld bc, $2020                                  ; $6951: $01 $20 $20
    add hl, bc                                    ; $6954: $09
    nop                                           ; $6955: $00
    sub d                                         ; $6956: $92
    dec c                                         ; $6957: $0d
    nop                                           ; $6958: $00
    ld bc, $2002                                  ; $6959: $01 $02 $20
    db $10                                        ; $695c: $10
    dec b                                         ; $695d: $05
    nop                                           ; $695e: $00
    add hl, bc                                    ; $695f: $09
    inc c                                         ; $6960: $0c
    nop                                           ; $6961: $00
    ld b, c                                       ; $6962: $41
    nop                                           ; $6963: $00
    rst $38                                       ; $6964: $ff
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    sbc $3f                                       ; $6967: $de $3f
    cp l                                          ; $6969: $bd
    ld a, a                                       ; $696a: $7f
    ld a, [hl]                                    ; $696b: $7e
    rst $38                                       ; $696c: $ff
    push af                                       ; $696d: $f5
    cp $01                                        ; $696e: $fe $01
    ld a, [$fdff]                                 ; $6970: $fa $ff $fd
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    ld hl, sp+$12                                 ; $6976: $f8 $12
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    cp a                                          ; $697a: $bf
    ret nz                                        ; $697b: $c0

    rst $18                                       ; $697c: $df
    ldh [$6e], a                                  ; $697d: $e0 $6e
    ldh a, [$b0]                                  ; $697f: $f0 $b0
    ld a, b                                       ; $6981: $78
    nop                                           ; $6982: $00
    daa                                           ; $6983: $27
    jp Jump_000_0f17                              ; $6984: $c3 $17 $0f


    ld [hl], b                                    ; $6987: $70
    nop                                           ; $6988: $00
    ldh a, [rP1]                                  ; $6989: $f0 $00
    nop                                           ; $698b: $00
    ld hl, sp+$00                                 ; $698c: $f8 $00
    call c, Call_000_3f00                         ; $698e: $dc $00 $3f
    nop                                           ; $6991: $00
    db $fd                                        ; $6992: $fd
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    dec sp                                        ; $6995: $3b
    ret nz                                        ; $6996: $c0

    ei                                            ; $6997: $fb
    ld hl, sp+$0f                                 ; $6998: $f8 $0f
    nop                                           ; $699a: $00
    rrca                                          ; $699b: $0f
    nop                                           ; $699c: $00
    ld bc, $001f                                  ; $699d: $01 $1f $00
    add hl, sp                                    ; $69a0: $39
    nop                                           ; $69a1: $00
    db $fc                                        ; $69a2: $fc
    nop                                           ; $69a3: $00
    rst $18                                       ; $69a4: $df
    ld [bc], a                                    ; $69a5: $02
    nop                                           ; $69a6: $00
    dec bc                                        ; $69a7: $0b
    rst $28                                       ; $69a8: $ef
    nop                                           ; $69a9: $00
    ld b, b                                       ; $69aa: $40
    add b                                         ; $69ab: $80

jr_0c9_69ac:
    ld [bc], a                                    ; $69ac: $02
    jr jr_0c9_69f3                                ; $69ad: $18 $44

    ld b, $20                                     ; $69af: $06 $20
    ld [hl], b                                    ; $69b1: $70
    jr z, jr_0c9_69fa                             ; $69b2: $28 $46

    ld [$0072], sp                                ; $69b4: $08 $72 $00
    inc b                                         ; $69b7: $04
    nop                                           ; $69b8: $00
    and b                                         ; $69b9: $a0
    ld a, a                                       ; $69ba: $7f
    jr z, jr_0c9_69c9                             ; $69bb: $28 $0c

    nop                                           ; $69bd: $00
    ld [$8bb0], sp                                ; $69be: $08 $b0 $8b
    nop                                           ; $69c1: $00
    ld b, c                                       ; $69c2: $41
    db $10                                        ; $69c3: $10
    ld b, b                                       ; $69c4: $40
    ld d, $18                                     ; $69c5: $16 $18
    ld a, a                                       ; $69c7: $7f
    ld b, h                                       ; $69c8: $44

jr_0c9_69c9:
    ld a, a                                       ; $69c9: $7f
    ldh [rP1], a                                  ; $69ca: $e0 $00
    ld a, a                                       ; $69cc: $7f
    ld d, b                                       ; $69cd: $50
    ccf                                           ; $69ce: $3f
    xor d                                         ; $69cf: $aa
    rra                                           ; $69d0: $1f
    dec e                                         ; $69d1: $1d
    rrca                                          ; $69d2: $0f
    adc [hl]                                      ; $69d3: $8e
    nop                                           ; $69d4: $00
    rlca                                          ; $69d5: $07
    rlca                                          ; $69d6: $07
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    rst $38                                       ; $69d9: $ff
    jr nc, @+$01                                  ; $69da: $30 $ff

    add b                                         ; $69dc: $80
    ld [bc], a                                    ; $69dd: $02
    rst $38                                       ; $69de: $ff
    ld b, c                                       ; $69df: $41
    rst $38                                       ; $69e0: $ff
    ld a, [hl+]                                   ; $69e1: $2a
    rst $38                                       ; $69e2: $ff
    ld e, l                                       ; $69e3: $5d
    adc h                                         ; $69e4: $8c
    nop                                           ; $69e5: $00
    ld hl, sp+$00                                 ; $69e6: $f8 $00
    jr nc, @+$32                                  ; $69e8: $30 $30

    ldh [$0a], a                                  ; $69ea: $e0 $0a
    ldh a, [$95]                                  ; $69ec: $f0 $95
    ldh a, [rNR30]                                ; $69ee: $f0 $1a
    ld [bc], a                                    ; $69f0: $02
    ldh a, [$b5]                                  ; $69f1: $f0 $b5

jr_0c9_69f3:
    ldh [$e0], a                                  ; $69f3: $e0 $e0
    nop                                           ; $69f5: $00
    ld d, l                                       ; $69f6: $55
    call z, $0108                                 ; $69f7: $cc $08 $01

jr_0c9_69fa:
    inc d                                         ; $69fa: $14
    xor e                                         ; $69fb: $ab
    ld bc, $0455                                  ; $69fc: $01 $55 $04
    db $10                                        ; $69ff: $10
    ld bc, $1004                                  ; $6a00: $01 $04 $10
    ld bc, $8020                                  ; $6a03: $01 $20 $80
    sub $00                                       ; $6a06: $d6 $00
    add hl, hl                                    ; $6a08: $29
    nop                                           ; $6a09: $00
    sub $00                                       ; $6a0a: $d6 $00
    xor a                                         ; $6a0c: $af
    nop                                           ; $6a0d: $00
    ld a, a                                       ; $6a0e: $7f
    ld [$f700], sp                                ; $6a0f: $08 $00 $f7
    ld [$e0ff], sp                                ; $6a12: $08 $ff $e0
    nop                                           ; $6a15: $00
    sub l                                         ; $6a16: $95
    nop                                           ; $6a17: $00
    ld [hl], e                                    ; $6a18: $73
    ld [$ed00], sp                                ; $6a19: $08 $00 $ed
    nop                                           ; $6a1c: $00
    ld e, e                                       ; $6a1d: $5b
    or b                                          ; $6a1e: $b0
    nop                                           ; $6a1f: $00
    ld a, d                                       ; $6a20: $7a
    ld bc, $03fd                                  ; $6a21: $01 $fd $03
    ld [bc], a                                    ; $6a24: $02
    db $fc                                        ; $6a25: $fc
    ld hl, sp-$1e                                 ; $6a26: $f8 $e2
    pop hl                                        ; $6a28: $e1
    db $e3                                        ; $6a29: $e3
    ret c                                         ; $6a2a: $d8

    nop                                           ; $6a2b: $00
    inc bc                                        ; $6a2c: $03
    jr z, jr_0c9_6a3f                             ; $6a2d: $28 $10

    ld [c], a                                     ; $6a2f: $e2
    ld a, a                                       ; $6a30: $7f
    ldh a, [$0e]                                  ; $6a31: $f0 $0e
    ld b, b                                       ; $6a33: $40
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    or [hl]                                       ; $6a36: $b6
    rst $30                                       ; $6a37: $f7
    nop                                           ; $6a38: $00
    ld d, e                                       ; $6a39: $53
    rst $30                                       ; $6a3a: $f7
    add sp, -$19                                  ; $6a3b: $e8 $e7
    db $ed                                        ; $6a3d: $ed
    rst $08                                       ; $6a3e: $cf

jr_0c9_6a3f:
    sbc [hl]                                      ; $6a3f: $9e
    rst $08                                       ; $6a40: $cf
    nop                                           ; $6a41: $00
    ld c, a                                       ; $6a42: $4f
    sbc a                                         ; $6a43: $9f
    rra                                           ; $6a44: $1f
    sbc a                                         ; $6a45: $9f
    rst $38                                       ; $6a46: $ff
    rst $18                                       ; $6a47: $df
    db $ec                                        ; $6a48: $ec
    inc bc                                        ; $6a49: $03
    nop                                           ; $6a4a: $00
    ld l, e                                       ; $6a4b: $6b
    add a                                         ; $6a4c: $87
    rst $20                                       ; $6a4d: $e7
    rst $20                                       ; $6a4e: $e7
    ld [hl], e                                    ; $6a4f: $73
    rst $20                                       ; $6a50: $e7
    or a                                          ; $6a51: $b7
    db $e3                                        ; $6a52: $e3
    nop                                           ; $6a53: $00
    rst $20                                       ; $6a54: $e7
    di                                            ; $6a55: $f3
    db $e3                                        ; $6a56: $e3
    di                                            ; $6a57: $f3
    di                                            ; $6a58: $f3
    rst $38                                       ; $6a59: $ff
    ld l, b                                       ; $6a5a: $68
    add b                                         ; $6a5b: $80
    ld bc, $8054                                  ; $6a5c: $01 $54 $80
    ld a, [hl]                                    ; $6a5f: $7e
    add b                                         ; $6a60: $80
    ld a, d                                       ; $6a61: $7a
    add b                                         ; $6a62: $80
    ld e, l                                       ; $6a63: $5d
    ld b, $00                                     ; $6a64: $06 $00
    nop                                           ; $6a66: $00
    ld l, a                                       ; $6a67: $6f
    add b                                         ; $6a68: $80
    ld a, [hl]                                    ; $6a69: $7e
    add c                                         ; $6a6a: $81
    ld d, c                                       ; $6a6b: $51
    nop                                           ; $6a6c: $00
    jr z, jr_0c9_6a6f                             ; $6a6d: $28 $00

jr_0c9_6a6f:
    db $10                                        ; $6a6f: $10
    ld [hl], l                                    ; $6a70: $75
    nop                                           ; $6a71: $00
    cp e                                          ; $6a72: $bb
    ld l, [hl]                                    ; $6a73: $6e
    nop                                           ; $6a74: $00
    db $fd                                        ; $6a75: $fd
    nop                                           ; $6a76: $00
    rst $28                                       ; $6a77: $ef
    db $10                                        ; $6a78: $10
    ld b, l                                       ; $6a79: $45
    rst $38                                       ; $6a7a: $ff
    ld e, a                                       ; $6a7b: $5f
    ld bc, $0095                                  ; $6a7c: $01 $95 $00
    ld [hl], d                                    ; $6a7f: $72
    ld [hl], b                                    ; $6a80: $70
    nop                                           ; $6a81: $00
    ld e, d                                       ; $6a82: $5a
    ld [hl], b                                    ; $6a83: $70
    jr nz, jr_0c9_6a86                            ; $6a84: $20 $00

jr_0c9_6a86:
    jr z, jr_0c9_6a88                             ; $6a86: $28 $00

jr_0c9_6a88:
    ld d, h                                       ; $6a88: $54
    nop                                           ; $6a89: $00
    cp [hl]                                       ; $6a8a: $be
    nop                                           ; $6a8b: $00
    ld a, [$1100]                                 ; $6a8c: $fa $00 $11
    db $dd                                        ; $6a8f: $dd
    nop                                           ; $6a90: $00
    cp $1e                                        ; $6a91: $fe $1e
    ld bc, $01fe                                  ; $6a93: $01 $fe $01
    xor d                                         ; $6a96: $aa
    or a                                          ; $6a97: $b7
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    rst $38                                       ; $6a9a: $ff

jr_0c9_6a9b:
    ld d, l                                       ; $6a9b: $55
    rst $38                                       ; $6a9c: $ff
    xor d                                         ; $6a9d: $aa
    rst $38                                       ; $6a9e: $ff
    nop                                           ; $6a9f: $00
    rst $38                                       ; $6aa0: $ff
    ld [bc], a                                    ; $6aa1: $02
    nop                                           ; $6aa2: $00
    rst $38                                       ; $6aa3: $ff
    ld c, b                                       ; $6aa4: $48
    rst $38                                       ; $6aa5: $ff
    nop                                           ; $6aa6: $00
    cp d                                          ; $6aa7: $ba
    jr nc, jr_0c9_6b1f                            ; $6aa8: $30 $75

    jr nc, jr_0c9_6aad                            ; $6aaa: $30 $01

    rst $38                                       ; $6aac: $ff

jr_0c9_6aad:
    ld [hl], l                                    ; $6aad: $75
    rst $38                                       ; $6aae: $ff
    cp d                                          ; $6aaf: $ba
    rst $38                                       ; $6ab0: $ff
    ld a, b                                       ; $6ab1: $78
    rst $38                                       ; $6ab2: $ff
    ld a, $00                                     ; $6ab3: $3e $00
    ld l, $ff                                     ; $6ab5: $2e $ff
    nop                                           ; $6ab7: $00
    jr nz, jr_0c9_6afa                            ; $6ab8: $20 $40

    sub b                                         ; $6aba: $90
    db $10                                        ; $6abb: $10
    ld [$08df], sp                                ; $6abc: $08 $df $08
    jr nc, jr_0c9_6ac1                            ; $6abf: $30 $00

jr_0c9_6ac1:
    xor e                                         ; $6ac1: $ab
    nop                                           ; $6ac2: $00
    rst $38                                       ; $6ac3: $ff
    ld bc, $05ff                                  ; $6ac4: $01 $ff $05
    rst $38                                       ; $6ac7: $ff
    ld hl, $01ff                                  ; $6ac8: $21 $ff $01
    nop                                           ; $6acb: $00
    sbc $21                                       ; $6acc: $de $21
    rst $38                                       ; $6ace: $ff
    nop                                           ; $6acf: $00
    rst $10                                       ; $6ad0: $d7
    jr z, @-$44                                   ; $6ad1: $28 $ba

    ld b, l                                       ; $6ad3: $45
    nop                                           ; $6ad4: $00
    ld d, l                                       ; $6ad5: $55
    xor d                                         ; $6ad6: $aa
    xor b                                         ; $6ad7: $a8
    ld d, a                                       ; $6ad8: $57
    ld b, h                                       ; $6ad9: $44
    cp a                                          ; $6ada: $bf
    xor d                                         ; $6adb: $aa
    rst $38                                       ; $6adc: $ff
    add b                                         ; $6add: $80
    ld c, $08                                     ; $6ade: $0e $08
    ld l, l                                       ; $6ae0: $6d
    sub d                                         ; $6ae1: $92
    db $db                                        ; $6ae2: $db
    inc h                                         ; $6ae3: $24
    ld h, $d9                                     ; $6ae4: $26 $d9
    ld c, l                                       ; $6ae6: $4d
    jr jr_0c9_6a9b                                ; $6ae7: $18 $b2

    sub b                                         ; $6ae9: $90
    ld l, a                                       ; $6aea: $6f
    stop                                          ; $6aeb: $10 $00
    ld e, c                                       ; $6aed: $59
    nop                                           ; $6aee: $00
    cp a                                          ; $6aef: $bf
    ld b, b                                       ; $6af0: $40
    jp c, Jump_000_2503                           ; $6af1: $da $03 $25

    and l                                         ; $6af4: $a5
    ld e, d                                       ; $6af5: $5a
    ld a, [bc]                                    ; $6af6: $0a
    push af                                       ; $6af7: $f5
    ld b, b                                       ; $6af8: $40
    ld h, a                                       ; $6af9: $67

jr_0c9_6afa:
    nop                                           ; $6afa: $00
    db $10                                        ; $6afb: $10
    ld [$ea00], sp                                ; $6afc: $08 $00 $ea
    dec d                                         ; $6aff: $15
    push de                                       ; $6b00: $d5
    ld a, [hl+]                                   ; $6b01: $2a
    ld a, [hl+]                                   ; $6b02: $2a
    push de                                       ; $6b03: $d5

Jump_0c9_6b04:
    inc b                                         ; $6b04: $04
    ei                                            ; $6b05: $fb
    ldh a, [rNR10]                                ; $6b06: $f0 $10
    jr z, @+$42                                   ; $6b08: $28 $40

    ld d, b                                       ; $6b0a: $50
    adc c                                         ; $6b0b: $89
    nop                                           ; $6b0c: $00
    ld b, b                                       ; $6b0d: $40
    ld c, b                                       ; $6b0e: $48
    ld l, a                                       ; $6b0f: $6f
    sub b                                         ; $6b10: $90
    ld [hl], l                                    ; $6b11: $75
    adc d                                         ; $6b12: $8a
    add h                                         ; $6b13: $84
    ld b, b                                       ; $6b14: $40
    ld c, b                                       ; $6b15: $48
    db $db                                        ; $6b16: $db
    inc h                                         ; $6b17: $24
    cp a                                          ; $6b18: $bf
    ld b, b                                       ; $6b19: $40
    ld b, b                                       ; $6b1a: $40
    ld c, b                                       ; $6b1b: $48
    rst $28                                       ; $6b1c: $ef
    db $10                                        ; $6b1d: $10
    add b                                         ; $6b1e: $80

jr_0c9_6b1f:
    jr nz, jr_0c9_6b79                            ; $6b1f: $20 $58

    rst $38                                       ; $6b21: $ff
    ld bc, $00fb                                  ; $6b22: $01 $fb $00

Jump_0c9_6b25:
    rst $28                                       ; $6b25: $ef
    ld bc, $00fa                                  ; $6b26: $01 $fa $00
    ld bc, $01de                                  ; $6b29: $01 $de $01
    xor l                                         ; $6b2c: $ad
    ld d, b                                       ; $6b2d: $50
    ld c, e                                       ; $6b2e: $4b

Call_0c9_6b2f:
    or b                                          ; $6b2f: $b0
    ld a, e                                       ; $6b30: $7b
    nop                                           ; $6b31: $00
    and b                                         ; $6b32: $a0
    db $fd                                        ; $6b33: $fd
    ld [bc], a                                    ; $6b34: $02
    db $eb                                        ; $6b35: $eb
    add b                                         ; $6b36: $80
    sub a                                         ; $6b37: $97
    ld l, b                                       ; $6b38: $68
    ld e, c                                       ; $6b39: $59
    nop                                           ; $6b3a: $00
    and [hl]                                      ; $6b3b: $a6
    ld l, e                                       ; $6b3c: $6b
    sub [hl]                                      ; $6b3d: $96
    cp $01                                        ; $6b3e: $fe $01
    rst $38                                       ; $6b40: $ff
    nop                                           ; $6b41: $00
    db $fd                                        ; $6b42: $fd
    nop                                           ; $6b43: $00
    ld [bc], a                                    ; $6b44: $02
    ld sp, hl                                     ; $6b45: $f9
    ld h, $eb                                     ; $6b46: $26 $eb
    sub h                                         ; $6b48: $94
    jp nc, $bd2d                                  ; $6b49: $d2 $2d $bd

    nop                                           ; $6b4c: $00
    sub $6f                                       ; $6b4d: $d6 $6f
    nop                                           ; $6b4f: $00
    ei                                            ; $6b50: $fb
    dec b                                         ; $6b51: $05
    dec hl                                        ; $6b52: $2b
    sub $cb                                       ; $6b53: $d6 $cb
    nop                                           ; $6b55: $00
    inc [hl]                                      ; $6b56: $34
    ld [hl], a                                    ; $6b57: $77
    adc b                                         ; $6b58: $88
    or a                                          ; $6b59: $b7
    ld c, b                                       ; $6b5a: $48
    ld a, e                                       ; $6b5b: $7b
    add h                                         ; $6b5c: $84
    cp a                                          ; $6b5d: $bf
    ld bc, $ef5b                                  ; $6b5e: $01 $5b $ef
    add b                                         ; $6b61: $80
    sbc a                                         ; $6b62: $9f
    ld h, b                                       ; $6b63: $60
    dec h                                         ; $6b64: $25
    ld e, d                                       ; $6b65: $5a
    ld a, [bc]                                    ; $6b66: $0a
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    ld b, b                                       ; $6b69: $40
    or l                                          ; $6b6a: $b5
    inc bc                                        ; $6b6b: $03
    db $ed                                        ; $6b6c: $ed
    add [hl]                                      ; $6b6d: $86
    or [hl]                                       ; $6b6e: $b6
    ld bc, $00ac                                  ; $6b6f: $01 $ac $00
    dec bc                                        ; $6b72: $0b
    rst $18                                       ; $6b73: $df
    add b                                         ; $6b74: $80
    cpl                                           ; $6b75: $2f
    ret nz                                        ; $6b76: $c0

    rst $38                                       ; $6b77: $ff
    nop                                           ; $6b78: $00

jr_0c9_6b79:
    jp c, $0d00                                   ; $6b79: $da $00 $0d

    sbc a                                         ; $6b7c: $9f
    ld h, b                                       ; $6b7d: $60
    ccf                                           ; $6b7e: $3f
    ret nz                                        ; $6b7f: $c0

    sub a                                         ; $6b80: $97
    ld h, b                                       ; $6b81: $60
    cp a                                          ; $6b82: $bf
    nop                                           ; $6b83: $00
    ld b, b                                       ; $6b84: $40
    jp hl                                         ; $6b85: $e9


    ld d, $a5                                     ; $6b86: $16 $a5
    ld a, [de]                                    ; $6b88: $1a
    push hl                                       ; $6b89: $e5
    ld a, [de]                                    ; $6b8a: $1a
    ld e, a                                       ; $6b8b: $5f
    nop                                           ; $6b8c: $00
    add d                                         ; $6b8d: $82
    rst $18                                       ; $6b8e: $df
    inc h                                         ; $6b8f: $24
    cp $01                                        ; $6b90: $fe $01
    sub $0d                                       ; $6b92: $d6 $0d
    rst $38                                       ; $6b94: $ff
    nop                                           ; $6b95: $00
    ld [$86e9], sp                                ; $6b96: $08 $e9 $86
    or a                                          ; $6b99: $b7
    add hl, bc                                    ; $6b9a: $09
    xor l                                         ; $6b9b: $ad
    adc b                                         ; $6b9c: $88
    rlc b                                         ; $6b9d: $cb $00
    inc [hl]                                      ; $6b9f: $34
    ld e, c                                       ; $6ba0: $59
    and d                                         ; $6ba1: $a2
    sub l                                         ; $6ba2: $95
    ld l, d                                       ; $6ba3: $6a
    jp hl                                         ; $6ba4: $e9


    or d                                          ; $6ba5: $b2
    rst $38                                       ; $6ba6: $ff
    nop                                           ; $6ba7: $00
    inc b                                         ; $6ba8: $04
    ld l, l                                       ; $6ba9: $6d
    sub [hl]                                      ; $6baa: $96
    di                                            ; $6bab: $f3
    ld l, l                                       ; $6bac: $6d
    xor l                                         ; $6bad: $ad
    ld d, d                                       ; $6bae: $52
    cp l                                          ; $6baf: $bd
    nop                                           ; $6bb0: $00
    ld b, d                                       ; $6bb1: $42
    cp l                                          ; $6bb2: $bd
    ld b, b                                       ; $6bb3: $40
    rst $18                                       ; $6bb4: $df
    inc h                                         ; $6bb5: $24
    db $fd                                        ; $6bb6: $fd
    call nc, Call_000_02df                        ; $6bb7: $d4 $df $02
    nop                                           ; $6bba: $00
    rst $30                                       ; $6bbb: $f7
    ld a, [bc]                                    ; $6bbc: $0a
    cp $05                                        ; $6bbd: $fe $05
    or l                                          ; $6bbf: $b5
    ld d, d                                       ; $6bc0: $52
    ld bc, $20fd                                  ; $6bc1: $01 $fd $20
    nop                                           ; $6bc4: $00
    ei                                            ; $6bc5: $fb
    inc b                                         ; $6bc6: $04
    db $10                                        ; $6bc7: $10
    dec [hl]                                      ; $6bc8: $35
    jp z, $956a                                   ; $6bc9: $ca $6a $95

    and a                                         ; $6bcc: $a7
    nop                                           ; $6bcd: $00
    ld e, d                                       ; $6bce: $5a
    rst $38                                       ; $6bcf: $ff
    ld b, b                                       ; $6bd0: $40
    or $20                                        ; $6bd1: $f6 $20
    jp hl                                         ; $6bd3: $e9


    ld [hl], $96                                  ; $6bd4: $36 $96
    nop                                           ; $6bd6: $00
    ld l, c                                       ; $6bd7: $69

jr_0c9_6bd8:
    ret                                           ; $6bd8: $c9


    ld [hl-], a                                   ; $6bd9: $32
    cp a                                          ; $6bda: $bf
    nop                                           ; $6bdb: $00
    ld e, a                                       ; $6bdc: $5f
    nop                                           ; $6bdd: $00
    cp a                                          ; $6bde: $bf
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    ld a, l                                       ; $6be1: $7d
    sub d                                         ; $6be2: $92
    ld a, [$7925]                                 ; $6be3: $fa $25 $79
    ld b, $b7                                     ; $6be6: $06 $b7
    nop                                           ; $6be8: $00
    ld l, l                                       ; $6be9: $6d
    ld l, l                                       ; $6bea: $6d
    and b                                         ; $6beb: $a0
    rst $18                                       ; $6bec: $df
    jr nz, jr_0c9_6bd8                            ; $6bed: $20 $e9

    ld d, $ec                                     ; $6bef: $16 $ec
    nop                                           ; $6bf1: $00
    inc de                                        ; $6bf2: $13
    ld e, l                                       ; $6bf3: $5d
    and d                                         ; $6bf4: $a2
    sub $09                                       ; $6bf5: $d6 $09
    ld l, $d1                                     ; $6bf7: $2e $d1
    ld d, a                                       ; $6bf9: $57
    nop                                           ; $6bfa: $00

Call_0c9_6bfb:
    adc l                                         ; $6bfb: $8d
    db $fd                                        ; $6bfc: $fd
    db $10                                        ; $6bfd: $10
    or e                                          ; $6bfe: $b3
    ld l, h                                       ; $6bff: $6c
    ld l, c                                       ; $6c00: $69
    add $b7                                       ; $6c01: $c6 $b7
    nop                                           ; $6c03: $00
    ld c, b                                       ; $6c04: $48
    rst $30                                       ; $6c05: $f7
    ld b, b                                       ; $6c06: $40
    rst $38                                       ; $6c07: $ff
    db $10                                        ; $6c08: $10
    cp $41                                        ; $6c09: $fe $41
    rst $38                                       ; $6c0b: $ff
    nop                                           ; $6c0c: $00
    jr nz, @+$01                                  ; $6c0d: $20 $ff

    nop                                           ; $6c0f: $00
    or h                                          ; $6c10: $b4
    inc bc                                        ; $6c11: $03
    ld a, [c]                                     ; $6c12: $f2
    dec c                                         ; $6c13: $0d
    ld l, e                                       ; $6c14: $6b
    jr nz, jr_0c9_6c2d                            ; $6c15: $20 $16

    rst $38                                       ; $6c17: $ff
    inc [hl]                                      ; $6c18: $34
    ld [bc], a                                    ; $6c19: $02
    cp a                                          ; $6c1a: $bf
    nop                                           ; $6c1b: $00
    cp [hl]                                       ; $6c1c: $be
    inc bc                                        ; $6c1d: $03
    ld a, a                                       ; $6c1e: $7f
    nop                                           ; $6c1f: $00
    add b                                         ; $6c20: $80
    rst $30                                       ; $6c21: $f7
    ld [bc], a                                    ; $6c22: $02
    cp l                                          ; $6c23: $bd
    ld [bc], a                                    ; $6c24: $02
    db $ed                                        ; $6c25: $ed
    ld b, $f7                                     ; $6c26: $06 $f7
    nop                                           ; $6c28: $00
    inc c                                         ; $6c29: $0c
    jp hl                                         ; $6c2a: $e9


    sub [hl]                                      ; $6c2b: $96
    rst $30                                       ; $6c2c: $f7

jr_0c9_6c2d:
    ld c, h                                       ; $6c2d: $4c
    db $f4                                        ; $6c2e: $f4
    ld c, e                                       ; $6c2f: $4b
    rst $28                                       ; $6c30: $ef
    nop                                           ; $6c31: $00
    inc h                                         ; $6c32: $24
    db $fc                                        ; $6c33: $fc
    inc hl                                        ; $6c34: $23
    db $fd                                        ; $6c35: $fd
    jr z, jr_0c9_6cb3                             ; $6c36: $28 $7b

jr_0c9_6c38:
    or l                                          ; $6c38: $b5
    sub $00                                       ; $6c39: $d6 $00
    add hl, hl                                    ; $6c3b: $29
    cpl                                           ; $6c3c: $2f
    jp nc, Jump_000_25db                          ; $6c3d: $d2 $db $25

    db $f4                                        ; $6c40: $f4
    dec bc                                        ; $6c41: $0b
    ld a, e                                       ; $6c42: $7b
    nop                                           ; $6c43: $00
    sub [hl]                                      ; $6c44: $96
    or l                                          ; $6c45: $b5
    ld a, [hl+]                                   ; $6c46: $2a
    db $f4                                        ; $6c47: $f4
    ld c, e                                       ; $6c48: $4b
    ld e, e                                       ; $6c49: $5b
    or h                                          ; $6c4a: $b4
    sbc $00                                       ; $6c4b: $de $00
    jr nz, jr_0c9_6c38                            ; $6c4d: $20 $e9

    ld b, $92                                     ; $6c4f: $06 $92
    ld l, l                                       ; $6c51: $6d
    or h                                          ; $6c52: $b4
    ld c, e                                       ; $6c53: $4b
    ld l, e                                       ; $6c54: $6b
    nop                                           ; $6c55: $00
    sub [hl]                                      ; $6c56: $96
    cp [hl]                                       ; $6c57: $be
    ld h, b                                       ; $6c58: $60
    db $fd                                        ; $6c59: $fd
    ld [de], a                                    ; $6c5a: $12
    ld a, a                                       ; $6c5b: $7f
    and h                                         ; $6c5c: $a4
    sub $10                                       ; $6c5d: $d6 $10
    dec l                                         ; $6c5f: $2d
    ld l, a                                       ; $6c60: $6f
    ret nz                                        ; $6c61: $c0

    sbc h                                         ; $6c62: $9c
    nop                                           ; $6c63: $00
    ld b, b                                       ; $6c64: $40
    ld a, a                                       ; $6c65: $7f
    add b                                         ; $6c66: $80
    db $fd                                        ; $6c67: $fd
    nop                                           ; $6c68: $00
    ld [bc], a                                    ; $6c69: $02
    push af                                       ; $6c6a: $f5
    ld [$04fa], sp                                ; $6c6b: $08 $fa $04
    ld a, [c]                                     ; $6c6e: $f2
    inc c                                         ; $6c6f: $0c
    db $fd                                        ; $6c70: $fd
    nop                                           ; $6c71: $00
    ld a, [bc]                                    ; $6c72: $0a
    or $09                                        ; $6c73: $f6 $09
    or $09                                        ; $6c75: $f6 $09
    rst $28                                       ; $6c77: $ef
    db $10                                        ; $6c78: $10
    sub a                                         ; $6c79: $97
    nop                                           ; $6c7a: $00
    ld l, b                                       ; $6c7b: $68
    ccf                                           ; $6c7c: $3f
    ret nz                                        ; $6c7d: $c0

    sbc e                                         ; $6c7e: $9b
    ld l, l                                       ; $6c7f: $6d
    db $db                                        ; $6c80: $db
    inc l                                         ; $6c81: $2c
    db $ed                                        ; $6c82: $ed
    nop                                           ; $6c83: $00
    ld [de], a                                    ; $6c84: $12
    rst $18                                       ; $6c85: $df
    jr z, jr_0c9_6c2d                             ; $6c86: $28 $a5

    ld [de], a                                    ; $6c88: $12
    ld e, a                                       ; $6c89: $5f

jr_0c9_6c8a:
    sub b                                         ; $6c8a: $90
    db $f4                                        ; $6c8b: $f4
    nop                                           ; $6c8c: $00
    inc bc                                        ; $6c8d: $03
    cp l                                          ; $6c8e: $bd
    ld d, d                                       ; $6c8f: $52
    cp h                                          ; $6c90: $bc
    ld h, e                                       ; $6c91: $63
    ld c, a                                       ; $6c92: $4f
    sub h                                         ; $6c93: $94
    or [hl]                                       ; $6c94: $b6
    nop                                           ; $6c95: $00
    add hl, bc                                    ; $6c96: $09
    adc $35                                       ; $6c97: $ce $35
    push hl                                       ; $6c99: $e5
    add hl, de                                    ; $6c9a: $19
    swap l                                        ; $6c9b: $cb $35
    or l                                          ; $6c9d: $b5
    nop                                           ; $6c9e: $00
    ld c, b                                       ; $6c9f: $48
    ld c, e                                       ; $6ca0: $4b
    or [hl]                                       ; $6ca1: $b6
    cp a                                          ; $6ca2: $bf
    ld l, b                                       ; $6ca3: $68
    ld e, a                                       ; $6ca4: $5f
    inc b                                         ; $6ca5: $04
    rst $38                                       ; $6ca6: $ff
    db $10                                        ; $6ca7: $10
    ld bc, $a45f                                  ; $6ca8: $01 $5f $a4
    cp $01                                        ; $6cab: $fe $01
    nop                                           ; $6cad: $00
    push af                                       ; $6cae: $f5
    ld b, b                                       ; $6caf: $40
    ei                                            ; $6cb0: $fb
    and h                                         ; $6cb1: $a4
    inc b                                         ; $6cb2: $04

jr_0c9_6cb3:
    nop                                           ; $6cb3: $00
    ld e, a                                       ; $6cb4: $5f
    and d                                         ; $6cb5: $a2
    inc bc                                        ; $6cb6: $03
    db $eb                                        ; $6cb7: $eb
    db $10                                        ; $6cb8: $10
    db $e4                                        ; $6cb9: $e4
    nop                                           ; $6cba: $00
    inc b                                         ; $6cbb: $04
    and a                                         ; $6cbc: $a7
    nop                                           ; $6cbd: $00
    jr jr_0c9_6c8a                                ; $6cbe: $18 $ca

    inc [hl]                                      ; $6cc0: $34
    xor a                                         ; $6cc1: $af
    ld e, b                                       ; $6cc2: $58
    rst $38                                       ; $6cc3: $ff
    db $10                                        ; $6cc4: $10
    xor $00                                       ; $6cc5: $ee $00
    ld de, $04df                                  ; $6cc7: $11 $df $04
    rst $30                                       ; $6cca: $f7
    ld a, [de]                                    ; $6ccb: $1a
    rst $38                                       ; $6ccc: $ff
    ld bc, $00bf                                  ; $6ccd: $01 $bf $00
    ld de, $08f7                                  ; $6cd0: $11 $f7 $08
    or l                                          ; $6cd3: $b5
    ld a, [de]                                    ; $6cd4: $1a
    ld a, l                                       ; $6cd5: $7d
    and d                                         ; $6cd6: $a2
    sub h                                         ; $6cd7: $94
    nop                                           ; $6cd8: $00
    ld l, e                                       ; $6cd9: $6b
    ld a, l                                       ; $6cda: $7d
    and d                                         ; $6cdb: $a2
    and a                                         ; $6cdc: $a7
    ld e, b                                       ; $6cdd: $58
    ld a, e                                       ; $6cde: $7b
    inc h                                         ; $6cdf: $24
    push hl                                       ; $6ce0: $e5
    nop                                           ; $6ce1: $00
    add hl, de                                    ; $6ce2: $19
    rst $30                                       ; $6ce3: $f7
    and c                                         ; $6ce4: $a1
    db $ed                                        ; $6ce5: $ed
    sub $d7                                       ; $6ce6: $d6 $d7
    inc b                                         ; $6ce8: $04
    rst $18                                       ; $6ce9: $df
    nop                                           ; $6cea: $00
    ld hl, $04ff                                  ; $6ceb: $21 $ff $04
    rst $10                                       ; $6cee: $d7

jr_0c9_6cef:
    add hl, bc                                    ; $6cef: $09
    rst $28                                       ; $6cf0: $ef
    nop                                           ; $6cf1: $00
    cp c                                          ; $6cf2: $b9
    nop                                           ; $6cf3: $00
    ld d, [hl]                                    ; $6cf4: $56
    db $d3                                        ; $6cf5: $d3
    xor h                                         ; $6cf6: $ac
    jp hl                                         ; $6cf7: $e9


    ld d, $be                                     ; $6cf8: $16 $be
    ld [$00b4], sp                                ; $6cfa: $08 $b4 $00
    ld l, e                                       ; $6cfd: $6b
    reti                                          ; $6cfe: $d9


    and [hl]                                      ; $6cff: $a6
    call nc, $c92b                                ; $6d00: $d4 $2b $c9
    or [hl]                                       ; $6d03: $b6
    ld c, e                                       ; $6d04: $4b
    nop                                           ; $6d05: $00
    inc [hl]                                      ; $6d06: $34
    or a                                          ; $6d07: $b7
    ld c, b                                       ; $6d08: $48
    ld e, e                                       ; $6d09: $5b
    or h                                          ; $6d0a: $b4
    cp a                                          ; $6d0b: $bf
    ld a, [bc]                                    ; $6d0c: $0a
    rst $38                                       ; $6d0d: $ff
    nop                                           ; $6d0e: $00
    ld a, [bc]                                    ; $6d0f: $0a
    ld e, a                                       ; $6d10: $5f
    or c                                          ; $6d11: $b1
    db $ed                                        ; $6d12: $ed
    ld d, d                                       ; $6d13: $52
    ld l, e                                       ; $6d14: $6b
    sub h                                         ; $6d15: $94
    jp c, Jump_000_2400                           ; $6d16: $da $00 $24

    and a                                         ; $6d19: $a7
    ld e, b                                       ; $6d1a: $58
    ld e, e                                       ; $6d1b: $5b
    and h                                         ; $6d1c: $a4
    cp l                                          ; $6d1d: $bd
    ld bc, $00a7                                  ; $6d1e: $01 $a7 $00
    ld e, d                                       ; $6d21: $5a
    ld e, [hl]                                    ; $6d22: $5e
    xor h                                         ; $6d23: $ac
    ld h, l                                       ; $6d24: $65
    sbc b                                         ; $6d25: $98
    ld d, [hl]                                    ; $6d26: $56
    xor h                                         ; $6d27: $ac
    rst $18                                       ; $6d28: $df
    nop                                           ; $6d29: $00
    ld h, b                                       ; $6d2a: $60
    rst $38                                       ; $6d2b: $ff
    ld b, h                                       ; $6d2c: $44

jr_0c9_6d2d:
    rst $18                                       ; $6d2d: $df
    jr nz, jr_0c9_6cef                            ; $6d2e: $20 $bf

    ld d, b                                       ; $6d30: $50
    ld a, l                                       ; $6d31: $7d
    nop                                           ; $6d32: $00
    inc b                                         ; $6d33: $04
    ld a, [$690d]                                 ; $6d34: $fa $0d $69
    ld d, $f2                                     ; $6d37: $16 $f2
    inc c                                         ; $6d39: $0c
    rst $28                                       ; $6d3a: $ef
    jr nz, jr_0c9_6d4d                            ; $6d3b: $20 $10

    ld e, a                                       ; $6d3d: $5f
    ld d, d                                       ; $6d3e: $52
    inc bc                                        ; $6d3f: $03
    ld [hl], l                                    ; $6d40: $75
    adc d                                         ; $6d41: $8a
    ld l, a                                       ; $6d42: $6f
    nop                                           ; $6d43: $00
    or l                                          ; $6d44: $b5
    ld [$eb01], sp                                ; $6d45: $08 $01 $eb
    nop                                           ; $6d48: $00
    or a                                          ; $6d49: $b7
    sbc $01                                       ; $6d4a: $de $01
    rst $38                                       ; $6d4c: $ff

jr_0c9_6d4d:
    add b                                         ; $6d4d: $80
    db $fd                                        ; $6d4e: $fd
    ld [$2d12], sp                                ; $6d4f: $08 $12 $2d
    ret nc                                        ; $6d52: $d0

    rst $38                                       ; $6d53: $ff
    ld a, d                                       ; $6d54: $7a
    ld bc, $31ee                                  ; $6d55: $01 $ee $31
    rst $30                                       ; $6d58: $f7
    nop                                           ; $6d59: $00
    ld [$54eb], sp                                ; $6d5a: $08 $eb $54
    db $f4                                        ; $6d5d: $f4
    ld c, d                                       ; $6d5e: $4a
    dec sp                                        ; $6d5f: $3b
    call nc, $006b                                ; $6d60: $d4 $6b $00
    inc d                                         ; $6d63: $14
    jp nc, $ab2d                                  ; $6d64: $d2 $2d $ab

    sub $5e                                       ; $6d67: $d6 $5e
    add h                                         ; $6d69: $84
    ccf                                           ; $6d6a: $3f
    nop                                           ; $6d6b: $00
    sub d                                         ; $6d6c: $92
    ld a, [hl]                                    ; $6d6d: $7e
    dec h                                         ; $6d6e: $25

jr_0c9_6d6f:
    rst $38                                       ; $6d6f: $ff
    ld d, b                                       ; $6d70: $50
    ld e, a                                       ; $6d71: $5f
    and h                                         ; $6d72: $a4
    rst $28                                       ; $6d73: $ef
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    db $fc                                        ; $6d76: $fc
    inc bc                                        ; $6d77: $03
    db $fd                                        ; $6d78: $fd
    sub $fe                                       ; $6d79: $d6 $fe
    ld bc, $007d                                  ; $6d7b: $01 $7d $00
    ld b, $df                                     ; $6d7e: $06 $df
    jr nz, jr_0c9_6d2d                            ; $6d80: $20 $ab

    sub h                                         ; $6d82: $94
    db $db                                        ; $6d83: $db
    add h                                         ; $6d84: $84
    ei                                            ; $6d85: $fb
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    sub a                                         ; $6d88: $97
    ld l, b                                       ; $6d89: $68
    ld l, a                                       ; $6d8a: $6f
    sub b                                         ; $6d8b: $90
    or a                                          ; $6d8c: $b7
    ld c, b                                       ; $6d8d: $48
    ld l, a                                       ; $6d8e: $6f
    ret nz                                        ; $6d8f: $c0

    sbc $02                                       ; $6d90: $de $02
    xor b                                         ; $6d92: $a8
    add hl, bc                                    ; $6d93: $09
    ld e, [hl]                                    ; $6d94: $5e
    db $10                                        ; $6d95: $10
    cp a                                          ; $6d96: $bf
    ld b, d                                       ; $6d97: $42
    rst $38                                       ; $6d98: $ff
    add hl, bc                                    ; $6d99: $09
    nop                                           ; $6d9a: $00
    xor a                                         ; $6d9b: $af
    ld [de], a                                    ; $6d9c: $12
    rst $18                                       ; $6d9d: $df
    ld bc, $5ab5                                  ; $6d9e: $01 $b5 $5a
    db $d3                                        ; $6da1: $d3
    xor h                                         ; $6da2: $ac
    nop                                           ; $6da3: $00
    push hl                                       ; $6da4: $e5
    ld a, [de]                                    ; $6da5: $1a
    ld a, [$6920]                                 ; $6da6: $fa $20 $69
    sub $72                                       ; $6da9: $d6 $72
    adc l                                         ; $6dab: $8d
    nop                                           ; $6dac: $00
    xor c                                         ; $6dad: $a9
    ld d, [hl]                                    ; $6dae: $56
    ld d, d                                       ; $6daf: $52
    xor l                                         ; $6db0: $ad
    dec hl                                        ; $6db1: $2b
    ld d, h                                       ; $6db2: $54
    or a                                          ; $6db3: $b7
    ld c, b                                       ; $6db4: $48
    nop                                           ; $6db5: $00
    dec sp                                        ; $6db6: $3b
    call nc, $28fe                                ; $6db7: $d4 $fe $28
    rst $38                                       ; $6dba: $ff
    inc d                                         ; $6dbb: $14
    cp [hl]                                       ; $6dbc: $be
    ld h, e                                       ; $6dbd: $63
    ld [$c6b9], sp                                ; $6dbe: $08 $b9 $c6
    sub $29                                       ; $6dc1: $d6 $29
    and b                                         ; $6dc3: $a0
    jr jr_0c9_6d6f                                ; $6dc4: $18 $a9

    ld d, h                                       ; $6dc6: $54
    sbc $a0                                       ; $6dc7: $de $a0
    ld e, b                                       ; $6dc9: $58
    ld [bc], a                                    ; $6dca: $02
    cp l                                          ; $6dcb: $bd
    ld c, [hl]                                    ; $6dcc: $4e
    inc bc                                        ; $6dcd: $03
    db $fd                                        ; $6dce: $fd
    ld [bc], a                                    ; $6dcf: $02
    rst $38                                       ; $6dd0: $ff
    add c                                         ; $6dd1: $81
    jp nc, Jump_000_2400                          ; $6dd2: $d2 $00 $24

    ld a, [hl]                                    ; $6dd5: $7e
    ld de, $23fc                                  ; $6dd6: $11 $fc $23
    ld a, [$6f05]                                 ; $6dd9: $fa $05 $6f
    nop                                           ; $6ddc: $00
    or l                                          ; $6ddd: $b5
    db $fd                                        ; $6dde: $fd
    ld b, b                                       ; $6ddf: $40
    rst $38                                       ; $6de0: $ff
    add b                                         ; $6de1: $80
    cp a                                          ; $6de2: $bf
    ld b, b                                       ; $6de3: $40
    rst $38                                       ; $6de4: $ff
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    ld e, [hl]                                    ; $6de7: $5e
    and c                                         ; $6de8: $a1
    db $eb                                        ; $6de9: $eb
    inc b                                         ; $6dea: $04
    ld d, a                                       ; $6deb: $57
    xor b                                         ; $6dec: $a8
    ld d, a                                       ; $6ded: $57
    nop                                           ; $6dee: $00
    adc e                                         ; $6def: $8b
    rst $38                                       ; $6df0: $ff
    db $10                                        ; $6df1: $10
    db $f4                                        ; $6df2: $f4
    dec bc                                        ; $6df3: $0b
    xor c                                         ; $6df4: $a9
    ld d, $ea                                     ; $6df5: $16 $ea
    nop                                           ; $6df7: $00
    dec d                                         ; $6df8: $15
    rst $30                                       ; $6df9: $f7
    ld [$806b], sp                                ; $6dfa: $08 $6b $80
    cp a                                          ; $6dfd: $bf
    ld c, b                                       ; $6dfe: $48
    rst $38                                       ; $6dff: $ff
    nop                                           ; $6e00: $00
    ld d, b                                       ; $6e01: $50
    ld a, a                                       ; $6e02: $7f
    nop                                           ; $6e03: $00
    db $ed                                        ; $6e04: $ed
    ld b, d                                       ; $6e05: $42
    sbc $01                                       ; $6e06: $de $01
    push de                                       ; $6e08: $d5
    inc [hl]                                      ; $6e09: $34
    add d                                         ; $6e0a: $82
    rst $38                                       ; $6e0b: $ff
    ld a, [hl-]                                   ; $6e0c: $3a
    ld [$0222], sp                                ; $6e0d: $08 $22 $02
    push af                                       ; $6e10: $f5
    sub b                                         ; $6e11: $90
    ld [bc], a                                    ; $6e12: $02
    sub a                                         ; $6e13: $97
    ld l, d                                       ; $6e14: $6a
    nop                                           ; $6e15: $00
    and a                                         ; $6e16: $a7
    ld e, b                                       ; $6e17: $58
    rst $38                                       ; $6e18: $ff
    add b                                         ; $6e19: $80
    push af                                       ; $6e1a: $f5
    jr nz, @-$14                                  ; $6e1b: $20 $ea

    dec [hl]                                      ; $6e1d: $35
    nop                                           ; $6e1e: $00
    ld d, [hl]                                    ; $6e1f: $56
    xor c                                         ; $6e20: $a9
    xor l                                         ; $6e21: $ad
    ld d, d                                       ; $6e22: $52
    ld e, a                                       ; $6e23: $5f
    and b                                         ; $6e24: $a0
    xor c                                         ; $6e25: $a9
    ld d, [hl]                                    ; $6e26: $56
    nop                                           ; $6e27: $00
    ld a, e                                       ; $6e28: $7b
    add h                                         ; $6e29: $84
    ld d, d                                       ; $6e2a: $52
    adc c                                         ; $6e2b: $89
    rst $38                                       ; $6e2c: $ff
    ld [de], a                                    ; $6e2d: $12
    ld a, [hl]                                    ; $6e2e: $7e
    dec b                                         ; $6e2f: $05
    nop                                           ; $6e30: $00
    or l                                          ; $6e31: $b5
    ld l, d                                       ; $6e32: $6a
    ld l, a                                       ; $6e33: $6f
    and b                                         ; $6e34: $a0
    push de                                       ; $6e35: $d5
    ld l, b                                       ; $6e36: $68
    ld c, [hl]                                    ; $6e37: $4e
    or c                                          ; $6e38: $b1
    nop                                           ; $6e39: $00
    call nc, $bd0b                                ; $6e3a: $d4 $0b $bd
    ld h, d                                       ; $6e3d: $62
    ld e, [hl]                                    ; $6e3e: $5e
    and l                                         ; $6e3f: $a5
    or l                                          ; $6e40: $b5
    ld h, d                                       ; $6e41: $62
    nop                                           ; $6e42: $00
    ld l, a                                       ; $6e43: $6f
    sub $f7                                       ; $6e44: $d6 $f7
    ld [$c03b], sp                                ; $6e46: $08 $3b $c0
    ld d, a                                       ; $6e49: $57
    and b                                         ; $6e4a: $a0
    nop                                           ; $6e4b: $00
    db $fd                                        ; $6e4c: $fd
    ld b, b                                       ; $6e4d: $40
    or a                                          ; $6e4e: $b7
    ld c, b                                       ; $6e4f: $48
    ei                                            ; $6e50: $fb
    inc h                                         ; $6e51: $24
    db $fd                                        ; $6e52: $fd
    db $10                                        ; $6e53: $10
    jr c, jr_0c9_6ed4                             ; $6e54: $38 $7e

    xor b                                         ; $6e56: $a8
    add d                                         ; $6e57: $82
    nop                                           ; $6e58: $00
    ld c, [hl]                                    ; $6e59: $4e
    inc b                                         ; $6e5a: $04
    cp $0a                                        ; $6e5b: $fe $0a
    sbc h                                         ; $6e5d: $9c
    dec hl                                        ; $6e5e: $2b
    ld l, d                                       ; $6e5f: $6a
    nop                                           ; $6e60: $00
    dec [hl]                                      ; $6e61: $35
    db $f4                                        ; $6e62: $f4
    dec bc                                        ; $6e63: $0b
    ld l, d                                       ; $6e64: $6a
    ld d, l                                       ; $6e65: $55
    sbc l                                         ; $6e66: $9d
    ld h, e                                       ; $6e67: $63
    ld a, [hl]                                    ; $6e68: $7e
    ld [bc], a                                    ; $6e69: $02
    ld d, l                                       ; $6e6a: $55
    push af                                       ; $6e6b: $f5
    ld a, [bc]                                    ; $6e6c: $0a
    jp nc, $efac                                  ; $6e6d: $d2 $ac $ef

    ld b, h                                       ; $6e70: $44
    dec b                                         ; $6e71: $05
    xor a                                         ; $6e72: $af
    add b                                         ; $6e73: $80
    ld [hl], $0d                                  ; $6e74: $36 $0d
    ld b, b                                       ; $6e76: $40
    ld a, [hl]                                    ; $6e77: $7e
    and b                                         ; $6e78: $a0
    cp c                                          ; $6e79: $b9
    ld b, h                                       ; $6e7a: $44
    cp [hl]                                       ; $6e7b: $be
    add hl, bc                                    ; $6e7c: $09
    nop                                           ; $6e7d: $00
    ld a, [hl]                                    ; $6e7e: $7e
    sub c                                         ; $6e7f: $91
    db $fc                                        ; $6e80: $fc
    inc bc                                        ; $6e81: $03
    ld e, e                                       ; $6e82: $5b
    dec [hl]                                      ; $6e83: $35
    or a                                          ; $6e84: $b7
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    ld l, a                                       ; $6e87: $6f
    and b                                         ; $6e88: $a0
    rst $10                                       ; $6e89: $d7
    ld h, b                                       ; $6e8a: $60
    ld e, a                                       ; $6e8b: $5f
    add b                                         ; $6e8c: $80
    xor a                                         ; $6e8d: $af
    ld d, b                                       ; $6e8e: $50
    nop                                           ; $6e8f: $00
    ld a, e                                       ; $6e90: $7b
    add h                                         ; $6e91: $84
    and a                                         ; $6e92: $a7
    ld e, b                                       ; $6e93: $58
    push de                                       ; $6e94: $d5
    and e                                         ; $6e95: $a3
    rst $38                                       ; $6e96: $ff
    inc b                                         ; $6e97: $04
    nop                                           ; $6e98: $00
    db $fc                                        ; $6e99: $fc
    inc bc                                        ; $6e9a: $03
    xor c                                         ; $6e9b: $a9
    ld b, $fd                                     ; $6e9c: $06 $fd
    ld [bc], a                                    ; $6e9e: $02
    xor e                                         ; $6e9f: $ab
    ld b, [hl]                                    ; $6ea0: $46
    inc b                                         ; $6ea1: $04
    db $db                                        ; $6ea2: $db
    inc b                                         ; $6ea3: $04
    sub $2d                                       ; $6ea4: $d6 $2d
    jp hl                                         ; $6ea6: $e9


    ld [hl], $01                                  ; $6ea7: $36 $01
    halt                                          ; $6ea9: $76
    adc c                                         ; $6eaa: $89
    nop                                           ; $6eab: $00
    xor c                                         ; $6eac: $a9
    ld d, [hl]                                    ; $6ead: $56

jr_0c9_6eae:
    ld a, [hl]                                    ; $6eae: $7e
    xor c                                         ; $6eaf: $a9
    sbc $20                                       ; $6eb0: $de $20
    or l                                          ; $6eb2: $b5
    ld a, [bc]                                    ; $6eb3: $0a
    nop                                           ; $6eb4: $00
    and l                                         ; $6eb5: $a5
    ld e, d                                       ; $6eb6: $5a
    ld [hl], d                                    ; $6eb7: $72
    adc l                                         ; $6eb8: $8d
    and a                                         ; $6eb9: $a7
    ld a, [de]                                    ; $6eba: $1a
    db $fd                                        ; $6ebb: $fd
    ld b, b                                       ; $6ebc: $40
    ld bc, $24fa                                  ; $6ebd: $01 $fa $24
    rst $38                                       ; $6ec0: $ff
    ld b, h                                       ; $6ec1: $44
    sub $2b                                       ; $6ec2: $d6 $2b
    ld l, e                                       ; $6ec4: $6b
    ld b, b                                       ; $6ec5: $40
    ld [de], a                                    ; $6ec6: $12
    ld [$805f], sp                                ; $6ec7: $08 $5f $80
    ei                                            ; $6eca: $fb
    inc b                                         ; $6ecb: $04
    ld b, b                                       ; $6ecc: $40
    ld a, [bc]                                    ; $6ecd: $0a
    cp a                                          ; $6ece: $bf
    ld [bc], a                                    ; $6ecf: $02
    db $fd                                        ; $6ed0: $fd
    ld b, $03                                     ; $6ed1: $06 $03
    rst $30                                       ; $6ed3: $f7

jr_0c9_6ed4:
    nop                                           ; $6ed4: $00
    cp $05                                        ; $6ed5: $fe $05
    ld h, h                                       ; $6ed7: $64
    nop                                           ; $6ed8: $00
    xor [hl]                                      ; $6ed9: $ae
    ld bc, $00ad                                  ; $6eda: $01 $ad $00
    ld e, d                                       ; $6edd: $5a
    rst $30                                       ; $6ede: $f7
    inc c                                         ; $6edf: $0c
    push hl                                       ; $6ee0: $e5
    ld a, [de]                                    ; $6ee1: $1a
    xor a                                         ; $6ee2: $af
    sub h                                         ; $6ee3: $94
    call nc, $8b00                                ; $6ee4: $d4 $00 $8b
    rst $28                                       ; $6ee7: $ef
    ld b, h                                       ; $6ee8: $44
    ld a, [$fd25]                                 ; $6ee9: $fa $25 $fd
    jr jr_0c9_6f69                                ; $6eec: $18 $7b

    nop                                           ; $6eee: $00
    or l                                          ; $6eef: $b5
    rst $10                                       ; $6ef0: $d7
    jr z, jr_0c9_6f42                             ; $6ef1: $28 $4f

    or c                                          ; $6ef3: $b1
    db $db                                        ; $6ef4: $db

jr_0c9_6ef5:
    dec h                                         ; $6ef5: $25
    ld sp, hl                                     ; $6ef6: $f9
    nop                                           ; $6ef7: $00
    ld b, $5b                                     ; $6ef8: $06 $5b
    adc l                                         ; $6efa: $8d
    or l                                          ; $6efb: $b5
    ld a, [hl+]                                   ; $6efc: $2a
    ld a, d                                       ; $6efd: $7a
    dec h                                         ; $6efe: $25
    sbc l                                         ; $6eff: $9d
    nop                                           ; $6f00: $00
    ld l, d                                       ; $6f01: $6a
    ld l, e                                       ; $6f02: $6b
    add b                                         ; $6f03: $80
    rst $18                                       ; $6f04: $df
    jr nz, jr_0c9_6eae                            ; $6f05: $20 $a7

    ld e, b                                       ; $6f07: $58
    ld a, a                                       ; $6f08: $7f
    inc b                                         ; $6f09: $04
    and b                                         ; $6f0a: $a0
    rst $38                                       ; $6f0b: $ff
    ld b, b                                       ; $6f0c: $40
    cp $10                                        ; $6f0d: $fe $10
    ld d, d                                       ; $6f0f: $52
    nop                                           ; $6f10: $00
    db $10                                        ; $6f11: $10
    ei                                            ; $6f12: $fb
    ld d, b                                       ; $6f13: $50
    add b                                         ; $6f14: $80
    ldh [rSC], a                                  ; $6f15: $e0 $02
    add c                                         ; $6f17: $81
    ld l, h                                       ; $6f18: $6c
    inc c                                         ; $6f19: $0c
    push de                                       ; $6f1a: $d5
    ld [bc], a                                    ; $6f1b: $02
    ld a, d                                       ; $6f1c: $7a
    dec b                                         ; $6f1d: $05
    jr nz, jr_0c9_6ef5                            ; $6f1e: $20 $d5

Call_0c9_6f20:
    ld a, [bc]                                    ; $6f20: $0a
    call nz, $bd08                                ; $6f21: $c4 $08 $bd
    ld [bc], a                                    ; $6f24: $02
    xor $01                                       ; $6f25: $ee $01
    cp l                                          ; $6f27: $bd
    nop                                           ; $6f28: $00
    ld b, d                                       ; $6f29: $42
    ld l, d                                       ; $6f2a: $6a
    add c                                         ; $6f2b: $81
    ld d, a                                       ; $6f2c: $57
    add b                                         ; $6f2d: $80
    db $eb                                        ; $6f2e: $eb
    add c                                         ; $6f2f: $81
    ld a, e                                       ; $6f30: $7b
    nop                                           ; $6f31: $00
    add l                                         ; $6f32: $85

jr_0c9_6f33:
    sbc l                                         ; $6f33: $9d
    ld b, d                                       ; $6f34: $42
    xor e                                         ; $6f35: $ab
    ld b, l                                       ; $6f36: $45
    push de                                       ; $6f37: $d5
    ld [hl+], a                                   ; $6f38: $22
    db $eb                                        ; $6f39: $eb
    ld b, b                                       ; $6f3a: $40
    ld de, $0348                                  ; $6f3b: $11 $48 $03
    dec b                                         ; $6f3e: $05
    ld [hl], a                                    ; $6f3f: $77
    xor d                                         ; $6f40: $aa
    halt                                          ; $6f41: $76

jr_0c9_6f42:
    adc c                                         ; $6f42: $89
    cp a                                          ; $6f43: $bf
    nop                                           ; $6f44: $00
    ld b, b                                       ; $6f45: $40
    db $fc                                        ; $6f46: $fc
    inc bc                                        ; $6f47: $03
    xor l                                         ; $6f48: $ad
    ld b, d                                       ; $6f49: $42
    call c, $ab03                                 ; $6f4a: $dc $03 $ab
    nop                                           ; $6f4d: $00
    ld d, h                                       ; $6f4e: $54
    call nc, $ab2b                                ; $6f4f: $d4 $2b $ab
    ld d, [hl]                                    ; $6f52: $56
    rst $30                                       ; $6f53: $f7
    ld c, b                                       ; $6f54: $48
    ld a, d                                       ; $6f55: $7a
    nop                                           ; $6f56: $00
    add c                                         ; $6f57: $81
    push hl                                       ; $6f58: $e5
    ld e, d                                       ; $6f59: $5a
    ld d, [hl]                                    ; $6f5a: $56
    adc c                                         ; $6f5b: $89
    xor l                                         ; $6f5c: $ad
    ld d, d                                       ; $6f5d: $52
    ld d, a                                       ; $6f5e: $57
    nop                                           ; $6f5f: $00
    adc b                                         ; $6f60: $88
    xor a                                         ; $6f61: $af
    ld d, d                                       ; $6f62: $52
    rst $10                                       ; $6f63: $d7
    adc b                                         ; $6f64: $88
    ld a, [$9d05]                                 ; $6f65: $fa $05 $9d
    nop                                           ; $6f68: $00

jr_0c9_6f69:
    ld l, b                                       ; $6f69: $68
    ld e, d                                       ; $6f6a: $5a
    and b                                         ; $6f6b: $a0
    xor l                                         ; $6f6c: $ad
    ld e, b                                       ; $6f6d: $58
    ld l, e                                       ; $6f6e: $6b
    or b                                          ; $6f6f: $b0
    rst $28                                       ; $6f70: $ef
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    rst $10                                       ; $6f73: $d7
    jr nz, @+$01                                  ; $6f74: $20 $ff

    ld b, b                                       ; $6f76: $40
    rst $28                                       ; $6f77: $ef
    ld [bc], a                                    ; $6f78: $02
    ei                                            ; $6f79: $fb
    nop                                           ; $6f7a: $00
    inc b                                         ; $6f7b: $04
    db $fd                                        ; $6f7c: $fd
    xor b                                         ; $6f7d: $a8
    rst $38                                       ; $6f7e: $ff
    nop                                           ; $6f7f: $00
    ld a, [$7f10]                                 ; $6f80: $fa $10 $7f
    nop                                           ; $6f83: $00
    add b                                         ; $6f84: $80
    xor [hl]                                      ; $6f85: $ae
    ld d, b                                       ; $6f86: $50
    rst $28                                       ; $6f87: $ef
    db $10                                        ; $6f88: $10
    ld a, [hl]                                    ; $6f89: $7e
    and c                                         ; $6f8a: $a1
    ld a, l                                       ; $6f8b: $7d
    ld bc, $fa08                                  ; $6f8c: $01 $08 $fa

jr_0c9_6f8f:
    dec d                                         ; $6f8f: $15
    ld d, l                                       ; $6f90: $55
    ld a, [hl+]                                   ; $6f91: $2a
    push de                                       ; $6f92: $d5
    jr z, jr_0c9_6f33                             ; $6f93: $28 $9e

    add hl, bc                                    ; $6f95: $09
    ld [bc], a                                    ; $6f96: $02
    rst $18                                       ; $6f97: $df
    jr nz, jr_0c9_6f8f                            ; $6f98: $20 $f5

    ld a, [bc]                                    ; $6f9a: $0a
    xor a                                         ; $6f9b: $af
    nop                                           ; $6f9c: $00
    or c                                          ; $6f9d: $b1
    dec b                                         ; $6f9e: $05
    nop                                           ; $6f9f: $00
    ld b, b                                       ; $6fa0: $40
    ld l, a                                       ; $6fa1: $6f
    ld b, b                                       ; $6fa2: $40
    ld [de], a                                    ; $6fa3: $12
    ld a, [$5a25]                                 ; $6fa4: $fa $25 $5a
    xor b                                         ; $6fa7: $a8
    db $f4                                        ; $6fa8: $f4
    dec bc                                        ; $6fa9: $0b
    nop                                           ; $6faa: $00
    ld a, [$f405]                                 ; $6fab: $fa $05 $f4
    dec hl                                        ; $6fae: $2b
    push de                                       ; $6faf: $d5
    ld a, [hl+]                                   ; $6fb0: $2a
    db $eb                                        ; $6fb1: $eb
    inc [hl]                                      ; $6fb2: $34
    ld [$48f7], sp                                ; $6fb3: $08 $f7 $48
    cp e                                          ; $6fb6: $bb
    ld d, h                                       ; $6fb7: $54
    sub b                                         ; $6fb8: $90
    ld [bc], a                                    ; $6fb9: $02
    dec b                                         ; $6fba: $05
    ld e, a                                       ; $6fbb: $5f
    xor c                                         ; $6fbc: $a9
    nop                                           ; $6fbd: $00
    xor $51                                       ; $6fbe: $ee $51
    ld l, e                                       ; $6fc0: $6b
    sub h                                         ; $6fc1: $94
    push de                                       ; $6fc2: $d5
    ld [hl+], a                                   ; $6fc3: $22
    swap h                                        ; $6fc4: $cb $34
    nop                                           ; $6fc6: $00
    ld d, l                                       ; $6fc7: $55
    and d                                         ; $6fc8: $a2
    cp $00                                        ; $6fc9: $fe $00
    push de                                       ; $6fcb: $d5
    dec hl                                        ; $6fcc: $2b
    xor a                                         ; $6fcd: $af
    ld d, l                                       ; $6fce: $55
    nop                                           ; $6fcf: $00
    ld [hl], l                                    ; $6fd0: $75
    adc d                                         ; $6fd1: $8a
    and a                                         ; $6fd2: $a7
    ld e, d                                       ; $6fd3: $5a
    ld l, [hl]                                    ; $6fd4: $6e
    jr nc, @+$01                                  ; $6fd5: $30 $ff

    ld [de], a                                    ; $6fd7: $12
    add b                                         ; $6fd8: $80
    ld h, d                                       ; $6fd9: $62
    dec c                                         ; $6fda: $0d
    xor d                                         ; $6fdb: $aa
    ld d, l                                       ; $6fdc: $55
    ld d, l                                       ; $6fdd: $55
    and d                                         ; $6fde: $a2
    xor d                                         ; $6fdf: $aa
    ld d, c                                       ; $6fe0: $51
    ld e, e                                       ; $6fe1: $5b
    ld b, d                                       ; $6fe2: $42
    and h                                         ; $6fe3: $a4
    jp z, $ff09                                   ; $6fe4: $ca $09 $ff

    nop                                           ; $6fe7: $00
    ld l, e                                       ; $6fe8: $6b
    ld bc, $05e6                                  ; $6fe9: $01 $e6 $05
    ld bc, $f500                                  ; $6fec: $01 $00 $f5
    ld [bc], a                                    ; $6fef: $02
    rst $38                                       ; $6ff0: $ff
    nop                                           ; $6ff1: $00
    sub $0d                                       ; $6ff2: $d6 $0d
    cp c                                          ; $6ff4: $b9
    ld d, $00                                     ; $6ff5: $16 $00
    ld e, d                                       ; $6ff7: $5a
    dec b                                         ; $6ff8: $05
    push de                                       ; $6ff9: $d5
    ld [bc], a                                    ; $6ffa: $02
    rst $28                                       ; $6ffb: $ef
    ld d, h                                       ; $6ffc: $54
    or $29                                        ; $6ffd: $f6 $29
    nop                                           ; $6fff: $00

jr_0c9_7000:
    ld a, [$f645]                                 ; $7000: $fa $45 $f6
    add hl, hl                                    ; $7003: $29
    xor c                                         ; $7004: $a9
    ld b, [hl]                                    ; $7005: $46
    halt                                          ; $7006: $76

jr_0c9_7007:
    adc c                                         ; $7007: $89
    nop                                           ; $7008: $00
    xor e                                         ; $7009: $ab
    ld d, [hl]                                    ; $700a: $56
    xor [hl]                                      ; $700b: $ae
    ld bc, $03fc                                  ; $700c: $01 $fc $03
    ld a, [$0055]                                 ; $700f: $fa $55 $00

jr_0c9_7012:
    push de                                       ; $7012: $d5
    jr z, jr_0c9_7000                             ; $7013: $28 $eb

    ld de, $8277                                  ; $7015: $11 $77 $82
    xor a                                         ; $7018: $af
    ld b, l                                       ; $7019: $45
    db $10                                        ; $701a: $10
    ld d, l                                       ; $701b: $55
    adc d                                         ; $701c: $8a
    ld e, [hl]                                    ; $701d: $5e

jr_0c9_701e:
    add d                                         ; $701e: $82
    ld bc, $ab7f                                  ; $701f: $01 $7f $ab
    rst $28                                       ; $7022: $ef
    ld b, b                                       ; $7023: $40
    nop                                           ; $7024: $00
    ld [hl], a                                    ; $7025: $77
    jr nz, jr_0c9_7012                            ; $7026: $20 $ea

    ld d, c                                       ; $7028: $51
    db $fd                                        ; $7029: $fd
    ld [$44fe], sp                                ; $702a: $08 $fe $44
    nop                                           ; $702d: $00
    ei                                            ; $702e: $fb

jr_0c9_702f:
    ld d, $d5                                     ; $702f: $16 $d5
    jr nz, jr_0c9_701e                            ; $7031: $20 $eb

    ld b, b                                       ; $7033: $40

jr_0c9_7034:
    db $f4                                        ; $7034: $f4
    ld bc, $eb42                                  ; $7035: $01 $42 $eb
    inc a                                         ; $7038: $3c
    ld [bc], a                                    ; $7039: $02
    ld a, [hl-]                                   ; $703a: $3a
    ret nz                                        ; $703b: $c0

    rst $18                                       ; $703c: $df
    jr nz, jr_0c9_7007                            ; $703d: $20 $c8

    ld [bc], a                                    ; $703f: $02
    ld b, b                                       ; $7040: $40
    nop                                           ; $7041: $00
    push de                                       ; $7042: $d5
    xor b                                         ; $7043: $a8
    xor a                                         ; $7044: $af
    ld d, b                                       ; $7045: $50
    sub l                                         ; $7046: $95
    ld h, b                                       ; $7047: $60
    ld a, a                                       ; $7048: $7f
    add b                                         ; $7049: $80
    nop                                           ; $704a: $00
    rst $38                                       ; $704b: $ff
    ld [bc], a                                    ; $704c: $02
    ld e, a                                       ; $704d: $5f
    jr nz, jr_0c9_702f                            ; $704e: $20 $df

    jr nz, @-$4f                                  ; $7050: $20 $af

    db $10                                        ; $7052: $10
    jr nz, jr_0c9_7034                            ; $7053: $20 $df

    add b                                         ; $7055: $80
    add h                                         ; $7056: $84
    ld b, $00                                     ; $7057: $06 $00
    rst $10                                       ; $7059: $d7
    ld [$0ab5], sp                                ; $705a: $08 $b5 $0a
    jr nz, jr_0c9_70cd                            ; $705d: $20 $6e

    ld de, $006c                                  ; $705f: $11 $6c $00
    nop                                           ; $7062: $00
    db $eb                                        ; $7063: $eb
    nop                                           ; $7064: $00
    ld a, [$0001]                                 ; $7065: $fa $01 $00
    rst $28                                       ; $7068: $ef
    nop                                           ; $7069: $00
    or $0d                                        ; $706a: $f6 $0d
    ld e, h                                       ; $706c: $5c
    xor c                                         ; $706d: $a9
    xor [hl]                                      ; $706e: $ae
    ld d, c                                       ; $706f: $51
    add b                                         ; $7070: $80
    ld [$2000], a                                 ; $7071: $ea $00 $20
    push hl                                       ; $7074: $e5
    ld e, d                                       ; $7075: $5a
    xor [hl]                                      ; $7076: $ae
    ld d, c                                       ; $7077: $51
    ld d, h                                       ; $7078: $54
    and e                                         ; $7079: $a3
    nop                                           ; $707a: $00
    cp a                                          ; $707b: $bf
    ld b, b                                       ; $707c: $40
    xor d                                         ; $707d: $aa
    ld d, l                                       ; $707e: $55
    rst $30                                       ; $707f: $f7
    ld [$897e], sp                                ; $7080: $08 $7e $89
    inc d                                         ; $7083: $14
    db $fd                                        ; $7084: $fd
    ld [de], a                                    ; $7085: $12
    ld a, d                                       ; $7086: $7a
    jr c, @+$03                                   ; $7087: $38 $01

    xor $46                                       ; $7089: $ee $46
    nop                                           ; $708b: $00
    xor l                                         ; $708c: $ad
    ld d, d                                       ; $708d: $52
    nop                                           ; $708e: $00
    jp nc, $af0d                                  ; $708f: $d2 $0d $af

    ld d, b                                       ; $7092: $50
    ld [hl], l                                    ; $7093: $75
    add d                                         ; $7094: $82
    xor e                                         ; $7095: $ab
    ld d, h                                       ; $7096: $54
    nop                                           ; $7097: $00
    res 4, l                                      ; $7098: $cb $a5
    rst $38                                       ; $709a: $ff
    ld [$a05a], sp                                ; $709b: $08 $5a $a0
    ld d, l                                       ; $709e: $55
    and b                                         ; $709f: $a0
    nop                                           ; $70a0: $00
    ld a, [$7540]                                 ; $70a1: $fa $40 $75
    add d                                         ; $70a4: $82
    cp d                                          ; $70a5: $ba
    ld b, b                                       ; $70a6: $40
    rst $18                                       ; $70a7: $df

jr_0c9_70a8:
    ld [hl+], a                                   ; $70a8: $22
    jr jr_0c9_70a8                                ; $70a9: $18 $fd

    ld d, h                                       ; $70ab: $54
    ld e, [hl]                                    ; $70ac: $5e
    ld l, d                                       ; $70ad: $6a
    rlca                                          ; $70ae: $07
    ldh a, [$0d]                                  ; $70af: $f0 $0d
    cp $00                                        ; $70b1: $fe $00
    rst $10                                       ; $70b3: $d7
    nop                                           ; $70b4: $00
    ld a, [bc]                                    ; $70b5: $0a
    ld a, d                                       ; $70b6: $7a
    dec d                                         ; $70b7: $15
    ld e, l                                       ; $70b8: $5d
    ld [bc], a                                    ; $70b9: $02
    cp d                                          ; $70ba: $ba
    dec d                                         ; $70bb: $15
    ld a, a                                       ; $70bc: $7f
    nop                                           ; $70bd: $00
    add b                                         ; $70be: $80
    xor c                                         ; $70bf: $a9
    ld d, [hl]                                    ; $70c0: $56
    ld [hl], d                                    ; $70c1: $72
    adc l                                         ; $70c2: $8d
    or l                                          ; $70c3: $b5
    ld a, [de]                                    ; $70c4: $1a
    ld e, e                                       ; $70c5: $5b
    nop                                           ; $70c6: $00
    and b                                         ; $70c7: $a0
    cp a                                          ; $70c8: $bf
    ld b, b                                       ; $70c9: $40
    dec hl                                        ; $70ca: $2b
    ret nz                                        ; $70cb: $c0

    cp a                                          ; $70cc: $bf

jr_0c9_70cd:
    ld b, b                                       ; $70cd: $40
    ld l, e                                       ; $70ce: $6b
    nop                                           ; $70cf: $00
    call nc, $8ad5                                ; $70d0: $d4 $d5 $8a
    rst $28                                       ; $70d3: $ef
    db $10                                        ; $70d4: $10
    ld d, [hl]                                    ; $70d5: $56
    add c                                         ; $70d6: $81
    rst $28                                       ; $70d7: $ef
    nop                                           ; $70d8: $00
    ld [de], a                                    ; $70d9: $12
    rst $38                                       ; $70da: $ff
    nop                                           ; $70db: $00
    rst $20                                       ; $70dc: $e7
    ld a, [bc]                                    ; $70dd: $0a
    cp $04                                        ; $70de: $fe $04
    db $fd                                        ; $70e0: $fd
    nop                                           ; $70e1: $00
    ld [$b44a], sp                                ; $70e2: $08 $4a $b4
    cp a                                          ; $70e5: $bf
    ld b, b                                       ; $70e6: $40
    xor e                                         ; $70e7: $ab
    dec d                                         ; $70e8: $15
    push af                                       ; $70e9: $f5
    inc bc                                        ; $70ea: $03
    ld a, [hl+]                                   ; $70eb: $2a
    db $eb                                        ; $70ec: $eb
    ld d, l                                       ; $70ed: $55
    ld d, [hl]                                    ; $70ee: $56
    xor e                                         ; $70ef: $ab
    ei                                            ; $70f0: $fb
    xor d                                         ; $70f1: $aa
    rlca                                          ; $70f2: $07
    inc b                                         ; $70f3: $04
    ld [$dd00], sp                                ; $70f4: $08 $00 $dd
    ld [hl+], a                                   ; $70f7: $22

jr_0c9_70f8:
    rst $28                                       ; $70f8: $ef
    ld d, c                                       ; $70f9: $51
    ld e, a                                       ; $70fa: $5f
    jr nz, jr_0c9_70f8                            ; $70fb: $20 $fb

    ld d, l                                       ; $70fd: $55
    nop                                           ; $70fe: $00
    ld e, l                                       ; $70ff: $5d
    add b                                         ; $7100: $80
    xor e                                         ; $7101: $ab
    ld d, l                                       ; $7102: $55
    ld d, a                                       ; $7103: $57
    xor b                                         ; $7104: $a8
    xor e                                         ; $7105: $ab
    ld d, l                                       ; $7106: $55
    inc c                                         ; $7107: $0c
    cp a                                          ; $7108: $bf
    ld b, b                                       ; $7109: $40
    rst $18                                       ; $710a: $df
    jr nz, @+$34                                  ; $710b: $20 $32

    rlca                                          ; $710d: $07
    ld a, [bc]                                    ; $710e: $0a
    inc bc                                        ; $710f: $03
    or a                                          ; $7110: $b7
    ld [$5a00], sp                                ; $7111: $08 $00 $5a
    dec b                                         ; $7114: $05
    and a                                         ; $7115: $a7
    ld [$02ff], sp                                ; $7116: $08 $ff $02
    ei                                            ; $7119: $fb
    nop                                           ; $711a: $00
    db $10                                        ; $711b: $10
    rst $30                                       ; $711c: $f7
    nop                                           ; $711d: $00
    or $b0                                        ; $711e: $f6 $b0
    db $10                                        ; $7120: $10
    xor [hl]                                      ; $7121: $ae
    ld d, h                                       ; $7122: $54
    ld d, a                                       ; $7123: $57
    xor b                                         ; $7124: $a8
    inc b                                         ; $7125: $04
    rst $38                                       ; $7126: $ff
    ld [$18ef], sp                                ; $7127: $08 $ef $18
    sbc $30                                       ; $712a: $de $30
    inc d                                         ; $712c: $14
    ld a, a                                       ; $712d: $7f
    and c                                         ; $712e: $a1
    add b                                         ; $712f: $80
    call z, $ab05                                 ; $7130: $cc $05 $ab
    rst $18                                       ; $7133: $df
    jr z, jr_0c9_718b                             ; $7134: $28 $55

    xor d                                         ; $7136: $aa
    cp a                                          ; $7137: $bf
    ld d, b                                       ; $7138: $50
    nop                                           ; $7139: $00
    ld d, l                                       ; $713a: $55
    ld a, [hl+]                                   ; $713b: $2a
    cp [hl]                                       ; $713c: $be
    ld de, $14ea                                  ; $713d: $11 $ea $14
    push af                                       ; $7140: $f5
    and b                                         ; $7141: $a0
    nop                                           ; $7142: $00
    xor $55                                       ; $7143: $ee $55
    xor [hl]                                      ; $7145: $ae
    ld d, c                                       ; $7146: $51
    ld e, a                                       ; $7147: $5f
    and h                                         ; $7148: $a4
    or a                                          ; $7149: $b7
    ld c, d                                       ; $714a: $4a
    nop                                           ; $714b: $00
    ld [$b715], a                                 ; $714c: $ea $15 $b7
    ld a, [de]                                    ; $714f: $1a
    db $eb                                        ; $7150: $eb
    ld d, h                                       ; $7151: $54
    push af                                       ; $7152: $f5
    adc d                                         ; $7153: $8a
    inc e                                         ; $7154: $1c
    cp e                                          ; $7155: $bb
    ld d, h                                       ; $7156: $54
    db $ed                                        ; $7157: $ed
    ret z                                         ; $7158: $c8

    ld [bc], a                                    ; $7159: $02
    ld [hl], $00                                  ; $715a: $36 $00
    ld e, [hl]                                    ; $715c: $5e
    inc bc                                        ; $715d: $03
    db $fd                                        ; $715e: $fd
    jr nz, jr_0c9_71a4                            ; $715f: $20 $43

    ld a, [$032c]                                 ; $7161: $fa $2c $03
    push af                                       ; $7164: $f5
    add b                                         ; $7165: $80
    rst $38                                       ; $7166: $ff
    jr nz, jr_0c9_71a9                            ; $7167: $20 $40

    ld [bc], a                                    ; $7169: $02
    jr nz, jr_0c9_7171                            ; $716a: $20 $05

    ld [bc], a                                    ; $716c: $02
    ld d, l                                       ; $716d: $55
    ld [bc], a                                    ; $716e: $02
    cp d                                          ; $716f: $ba
    dec b                                         ; $7170: $05

jr_0c9_7171:
    ld d, l                                       ; $7171: $55
    ld a, [bc]                                    ; $7172: $0a
    or h                                          ; $7173: $b4
    ld c, $be                                     ; $7174: $0e $be
    jr nz, jr_0c9_7178                            ; $7176: $20 $00

jr_0c9_7178:
    rst $10                                       ; $7178: $d7
    xor $02                                       ; $7179: $ee $02
    ld a, e                                       ; $717b: $7b
    add c                                         ; $717c: $81
    or a                                          ; $717d: $b7
    ld b, b                                       ; $717e: $40
    ei                                            ; $717f: $fb
    nop                                           ; $7180: $00
    add c                                         ; $7181: $81
    db $fd                                        ; $7182: $fd
    ld b, d                                       ; $7183: $42
    ld a, d                                       ; $7184: $7a
    push bc                                       ; $7185: $c5
    push af                                       ; $7186: $f5
    ld [hl+], a                                   ; $7187: $22
    cp d                                          ; $7188: $ba
    nop                                           ; $7189: $00
    pop de                                        ; $718a: $d1

jr_0c9_718b:
    db $fd                                        ; $718b: $fd
    ld [$04ff], sp                                ; $718c: $08 $ff $04
    ld a, a                                       ; $718f: $7f
    add d                                         ; $7190: $82
    xor a                                         ; $7191: $af
    ld [$fd55], sp                                ; $7192: $08 $55 $fd
    add d                                         ; $7195: $82
    xor d                                         ; $7196: $aa
    inc b                                         ; $7197: $04
    nop                                           ; $7198: $00
    xor a                                         ; $7199: $af
    ld d, b                                       ; $719a: $50
    push af                                       ; $719b: $f5
    add b                                         ; $719c: $80
    ld l, $0a                                     ; $719d: $2e $0a
    add h                                         ; $719f: $84
    cp c                                          ; $71a0: $b9
    ld d, [hl]                                    ; $71a1: $56
    ld l, [hl]                                    ; $71a2: $6e
    sub c                                         ; $71a3: $91

jr_0c9_71a4:
    db $fd                                        ; $71a4: $fd
    jr nz, jr_0c9_71a7                            ; $71a5: $20 $00

jr_0c9_71a7:
    cp d                                          ; $71a7: $ba
    ld d, l                                       ; $71a8: $55

jr_0c9_71a9:
    ld d, l                                       ; $71a9: $55
    xor d                                         ; $71aa: $aa
    cp d                                          ; $71ab: $ba
    call nc, $a25d                                ; $71ac: $d4 $5d $a2
    nop                                           ; $71af: $00
    xor e                                         ; $71b0: $ab
    ld d, h                                       ; $71b1: $54
    db $dd                                        ; $71b2: $dd
    and d                                         ; $71b3: $a2
    ei                                            ; $71b4: $fb
    nop                                           ; $71b5: $00
    ld d, l                                       ; $71b6: $55
    dec hl                                        ; $71b7: $2b
    nop                                           ; $71b8: $00
    xor e                                         ; $71b9: $ab
    ld d, h                                       ; $71ba: $54
    push de                                       ; $71bb: $d5
    dec hl                                        ; $71bc: $2b
    xor [hl]                                      ; $71bd: $ae
    ld d, l                                       ; $71be: $55
    db $fd                                        ; $71bf: $fd
    add b                                         ; $71c0: $80
    ld bc, $44fb                                  ; $71c1: $01 $fb $44
    rst $38                                       ; $71c4: $ff
    adc b                                         ; $71c5: $88
    ld e, l                                       ; $71c6: $5d
    xor d                                         ; $71c7: $aa
    xor a                                         ; $71c8: $af
    xor b                                         ; $71c9: $a8
    dec b                                         ; $71ca: $05
    ret nz                                        ; $71cb: $c0

    cp [hl]                                       ; $71cc: $be
    rrca                                          ; $71cd: $0f
    ldh a, [rNR30]                                ; $71ce: $f0 $1a
    ld a, a                                       ; $71d0: $7f
    inc b                                         ; $71d1: $04
    ei                                            ; $71d2: $fb
    ld b, $f7                                     ; $71d3: $06 $f7
    ld bc, $fd20                                  ; $71d5: $01 $20 $fd
    ld b, $54                                     ; $71d8: $06 $54
    inc bc                                        ; $71da: $03
    ld d, h                                       ; $71db: $54
    ld e, l                                       ; $71dc: $5d
    and d                                         ; $71dd: $a2
    xor [hl]                                      ; $71de: $ae
    ld d, l                                       ; $71df: $55
    ld [bc], a                                    ; $71e0: $02
    rst $28                                       ; $71e1: $ef
    inc d                                         ; $71e2: $14
    push de                                       ; $71e3: $d5
    ld a, [hl+]                                   ; $71e4: $2a
    xor a                                         ; $71e5: $af
    inc d                                         ; $71e6: $14
    ld a, [de]                                    ; $71e7: $1a
    ld bc, $0044                                  ; $71e8: $01 $44 $00
    db $fd                                        ; $71eb: $fd
    ld [hl+], a                                   ; $71ec: $22
    cp $14                                        ; $71ed: $fe $14
    cp l                                          ; $71ef: $bd
    ld l, d                                       ; $71f0: $6a
    push de                                       ; $71f1: $d5
    add b                                         ; $71f2: $80
    add b                                         ; $71f3: $80
    ld a, $00                                     ; $71f4: $3e $00
    ld a, [hl+]                                   ; $71f6: $2a
    ld d, a                                       ; $71f7: $57
    xor d                                         ; $71f8: $aa
    xor e                                         ; $71f9: $ab
    ld d, h                                       ; $71fa: $54
    ld e, a                                       ; $71fb: $5f
    and b                                         ; $71fc: $a0
    inc b                                         ; $71fd: $04
    cp [hl]                                       ; $71fe: $be
    ld b, c                                       ; $71ff: $41
    cp d                                          ; $7200: $ba
    ld b, l                                       ; $7201: $45
    ld a, [hl]                                    ; $7202: $7e
    jr nc, jr_0c9_7209                            ; $7203: $30 $04

    ld a, [hl]                                    ; $7205: $7e
    and l                                         ; $7206: $a5
    nop                                           ; $7207: $00
    ld [hl], l                                    ; $7208: $75

jr_0c9_7209:
    adc d                                         ; $7209: $8a
    xor [hl]                                      ; $720a: $ae
    ld d, c                                       ; $720b: $51
    ld d, l                                       ; $720c: $55
    adc b                                         ; $720d: $88
    xor a                                         ; $720e: $af
    ld d, b                                       ; $720f: $50
    nop                                           ; $7210: $00
    xor a                                         ; $7211: $af
    db $10                                        ; $7212: $10
    ei                                            ; $7213: $fb
    nop                                           ; $7214: $00
    ld d, a                                       ; $7215: $57
    xor d                                         ; $7216: $aa
    cp [hl]                                       ; $7217: $be
    ld d, l                                       ; $7218: $55
    nop                                           ; $7219: $00
    sub $29                                       ; $721a: $d6 $29
    xor l                                         ; $721c: $ad
    ld d, [hl]                                    ; $721d: $56
    rst $18                                       ; $721e: $df
    and b                                         ; $721f: $a0
    rst $38                                       ; $7220: $ff
    ld b, h                                       ; $7221: $44
    nop                                           ; $7222: $00
    cp a                                          ; $7223: $bf
    ld b, b                                       ; $7224: $40
    cp $00                                        ; $7225: $fe $00
    ld d, l                                       ; $7227: $55
    xor d                                         ; $7228: $aa
    xor e                                         ; $7229: $ab
    ld b, h                                       ; $722a: $44
    ld [$44ab], sp                                ; $722b: $08 $ab $44
    ld [hl], a                                    ; $722e: $77
    adc b                                         ; $722f: $88
    ld a, [hl+]                                   ; $7230: $2a
    ld c, $fe                                     ; $7231: $0e $fe
    nop                                           ; $7233: $00
    or a                                          ; $7234: $b7
    ld b, b                                       ; $7235: $40
    ld [bc], a                                    ; $7236: $02
    or [hl]                                       ; $7237: $b6
    rlca                                          ; $7238: $07
    ld [bc], a                                    ; $7239: $02
    db $eb                                        ; $723a: $eb
    inc b                                         ; $723b: $04
    rst $30                                       ; $723c: $f7
    nop                                           ; $723d: $00
    xor [hl]                                      ; $723e: $ae
    nop                                           ; $723f: $00
    dec d                                         ; $7240: $15
    ld [hl], l                                    ; $7241: $75
    ld a, [hl+]                                   ; $7242: $2a
    cp c                                          ; $7243: $b9
    ld b, $d7                                     ; $7244: $06 $d7
    ld [bc], a                                    ; $7246: $02

jr_0c9_7247:
    xor $00                                       ; $7247: $ee $00
    ld d, l                                       ; $7249: $55
    rst $30                                       ; $724a: $f7
    jr z, jr_0c9_7247                             ; $724b: $28 $fa

    ld b, l                                       ; $724d: $45
    push af                                       ; $724e: $f5
    ld a, [hl+]                                   ; $724f: $2a
    xor d                                         ; $7250: $aa
    nop                                           ; $7251: $00
    ld b, l                                       ; $7252: $45
    ld [hl], a                                    ; $7253: $77
    adc b                                         ; $7254: $88
    ld d, a                                       ; $7255: $57
    xor d                                         ; $7256: $aa
    ld d, l                                       ; $7257: $55
    nop                                           ; $7258: $00
    xor a                                         ; $7259: $af
    nop                                           ; $725a: $00
    ld d, b                                       ; $725b: $50
    ld d, l                                       ; $725c: $55
    xor d                                         ; $725d: $aa
    sbc l                                         ; $725e: $9d
    ld l, d                                       ; $725f: $6a
    ld c, [hl]                                    ; $7260: $4e
    or c                                          ; $7261: $b1
    cp l                                          ; $7262: $bd
    nop                                           ; $7263: $00
    ld b, d                                       ; $7264: $42
    ld a, d                                       ; $7265: $7a
    add l                                         ; $7266: $85
    ld [hl], l                                    ; $7267: $75

jr_0c9_7268:
    adc d                                         ; $7268: $8a
    ei                                            ; $7269: $fb
    ret nz                                        ; $726a: $c0

    db $fd                                        ; $726b: $fd
    db $10                                        ; $726c: $10
    ld h, d                                       ; $726d: $62
    ld a, [$8295]                                 ; $726e: $fa $95 $82
    rrca                                          ; $7271: $0f
    ld d, a                                       ; $7272: $57
    ld [hl+], a                                   ; $7273: $22
    cp a                                          ; $7274: $bf
    ld b, c                                       ; $7275: $41
    nop                                           ; $7276: $00
    ld e, a                                       ; $7277: $5f
    jr nz, jr_0c9_7268                            ; $7278: $20 $ee

    dec b                                         ; $727a: $05
    ld e, l                                       ; $727b: $5d
    xor b                                         ; $727c: $a8
    ld a, [$0150]                                 ; $727d: $fa $50 $01
    ld d, l                                       ; $7280: $55
    and b                                         ; $7281: $a0
    cp d                                          ; $7282: $ba
    ld d, b                                       ; $7283: $50
    ld [hl], a                                    ; $7284: $77
    add b                                         ; $7285: $80
    cp $f4                                        ; $7286: $fe $f4
    ld [bc], a                                    ; $7288: $02
    daa                                           ; $7289: $27
    cp $41                                        ; $728a: $fe $41
    ldh a, [rNR30]                                ; $728c: $f0 $1a
    db $eb                                        ; $728e: $eb
    inc d                                         ; $728f: $14
    inc a                                         ; $7290: $3c
    dec b                                         ; $7291: $05
    inc [hl]                                      ; $7292: $34
    ld [bc], a                                    ; $7293: $02
    ldh a, [rNR12]                                ; $7294: $f0 $12
    ld [$ab00], sp                                ; $7296: $08 $00 $ab
    nop                                           ; $7299: $00
    ld d, a                                       ; $729a: $57
    ldh a, [$09]                                  ; $729b: $f0 $09
    add b                                         ; $729d: $80
    cp $11                                        ; $729e: $fe $11
    add b                                         ; $72a0: $80
    ld l, $00                                     ; $72a1: $2e $00
    dec b                                         ; $72a3: $05
    db $fd                                        ; $72a4: $fd
    add d                                         ; $72a5: $82
    ld a, [$f515]                                 ; $72a6: $fa $15 $f5
    adc d                                         ; $72a9: $8a
    nop                                           ; $72aa: $00
    ld a, [$fd15]                                 ; $72ab: $fa $15 $fd
    ld [hl+], a                                   ; $72ae: $22
    xor [hl]                                      ; $72af: $ae
    ld d, l                                       ; $72b0: $55
    ld d, a                                       ; $72b1: $57
    dec b                                         ; $72b2: $05
    inc b                                         ; $72b3: $04
    cp a                                          ; $72b4: $bf
    ld b, d                                       ; $72b5: $42
    ld d, a                                       ; $72b6: $57
    xor h                                         ; $72b7: $ac
    cp e                                          ; $72b8: $bb

jr_0c9_72b9:
    call c, $fa00                                 ; $72b9: $dc $00 $fa
    inc b                                         ; $72bc: $04
    inc h                                         ; $72bd: $24
    push af                                       ; $72be: $f5
    ld a, [bc]                                    ; $72bf: $0a
    add h                                         ; $72c0: $84
    ld bc, $eb8a                                  ; $72c1: $01 $8a $eb
    ld [c], a                                     ; $72c4: $e2
    nop                                           ; $72c5: $00
    cp [hl]                                       ; $72c6: $be
    ld d, l                                       ; $72c7: $55
    ld b, b                                       ; $72c8: $40
    ld [hl], a                                    ; $72c9: $77
    inc a                                         ; $72ca: $3c
    rlca                                          ; $72cb: $07

jr_0c9_72cc:
    xor e                                         ; $72cc: $ab
    ld d, l                                       ; $72cd: $55
    push de                                       ; $72ce: $d5
    ld a, [hl+]                                   ; $72cf: $2a
    ld a, l                                       ; $72d0: $7d
    add d                                         ; $72d1: $82
    inc b                                         ; $72d2: $04
    xor [hl]                                      ; $72d3: $ae
    ld de, $a15e                                  ; $72d4: $11 $5e $a1
    xor a                                         ; $72d7: $af
    jr jr_0c9_72df                                ; $72d8: $18 $05

    rst $10                                       ; $72da: $d7
    xor b                                         ; $72db: $a8
    ld [bc], a                                    ; $72dc: $02
    xor d                                         ; $72dd: $aa
    dec d                                         ; $72de: $15

jr_0c9_72df:
    rst $18                                       ; $72df: $df
    jr nz, jr_0c9_72b9                            ; $72e0: $20 $d7

    ld [$027e], sp                                ; $72e2: $08 $7e $02
    stop                                          ; $72e5: $10 $00
    push af                                       ; $72e7: $f5
    and b                                         ; $72e8: $a0
    ld a, [$fd00]                                 ; $72e9: $fa $00 $fd
    ld [$54aa], sp                                ; $72ec: $08 $aa $54
    ret nz                                        ; $72ef: $c0

    ld d, [hl]                                    ; $72f0: $56
    ld b, $b8                                     ; $72f1: $06 $b8
    nop                                           ; $72f3: $00
    ld [$7555], a                                 ; $72f4: $ea $55 $75
    ld a, [bc]                                    ; $72f7: $0a
    ld [$c555], a                                 ; $72f8: $ea $55 $c5
    ld [hl], h                                    ; $72fb: $74
    inc bc                                        ; $72fc: $03
    inc e                                         ; $72fd: $1c
    ld b, $74                                     ; $72fe: $06 $74
    dec hl                                        ; $7300: $2b
    cp e                                          ; $7301: $bb
    ld b, $05                                     ; $7302: $06 $05
    ld d, a                                       ; $7304: $57
    or b                                          ; $7305: $b0
    ld [bc], a                                    ; $7306: $02
    ld hl, $2ad5                                  ; $7307: $21 $d5 $2a
    ld a, [de]                                    ; $730a: $1a
    add hl, bc                                    ; $730b: $09
    xor a                                         ; $730c: $af
    ld bc, $22df                                  ; $730d: $01 $df $22
    cp h                                          ; $7310: $bc
    ld [bc], a                                    ; $7311: $02
    nop                                           ; $7312: $00
    ld a, [bc]                                    ; $7313: $0a
    xor $04                                       ; $7314: $ee $04
    push de                                       ; $7316: $d5
    add d                                         ; $7317: $82
    xor d                                         ; $7318: $aa
    inc b                                         ; $7319: $04
    rst $10                                       ; $731a: $d7
    nop                                           ; $731b: $00
    add d                                         ; $731c: $82
    ld [$d715], a                                 ; $731d: $ea $15 $d7
    jr z, jr_0c9_72cc                             ; $7320: $28 $aa

    ld d, l                                       ; $7322: $55
    ld a, l                                       ; $7323: $7d
    ld [bc], a                                    ; $7324: $02
    xor d                                         ; $7325: $aa
    rst $28                                       ; $7326: $ef
    nop                                           ; $7327: $00
    ld e, l                                       ; $7328: $5d
    and d                                         ; $7329: $a2
    cp $38                                        ; $732a: $fe $38
    nop                                           ; $732c: $00
    ei                                            ; $732d: $fb
    nop                                           ; $732e: $00
    inc b                                         ; $732f: $04
    ld e, l                                       ; $7330: $5d
    ld [hl+], a                                   ; $7331: $22
    cp [hl]                                       ; $7332: $be
    ld b, c                                       ; $7333: $41
    ld e, a                                       ; $7334: $5f
    ld a, [hl+]                                   ; $7335: $2a
    ld a, [$4000]                                 ; $7336: $fa $00 $40
    rst $18                                       ; $7339: $df
    and b                                         ; $733a: $a0
    cp a                                          ; $733b: $bf
    ld d, b                                       ; $733c: $50
    ld e, l                                       ; $733d: $5d
    ld [hl+], a                                   ; $733e: $22
    xor a                                         ; $733f: $af
    ld bc, $d710                                  ; $7340: $01 $10 $d7
    nop                                           ; $7343: $00
    rst $38                                       ; $7344: $ff
    db $10                                        ; $7345: $10
    rst $30                                       ; $7346: $f7
    and b                                         ; $7347: $a0
    ld e, d                                       ; $7348: $5a
    ld [bc], a                                    ; $7349: $02
    inc c                                         ; $734a: $0c
    ld a, [hl+]                                   ; $734b: $2a
    cp d                                          ; $734c: $ba
    dec d                                         ; $734d: $15
    ld d, l                                       ; $734e: $55
    ld [$5007], sp                                ; $734f: $08 $07 $50
    cpl                                           ; $7352: $2f
    ld d, l                                       ; $7353: $55
    adc d                                         ; $7354: $8a
    add hl, bc                                    ; $7355: $09
    ld [$5715], a                                 ; $7356: $ea $15 $57
    xor d                                         ; $7359: $aa
    or h                                          ; $735a: $b4
    inc bc                                        ; $735b: $03
    db $10                                        ; $735c: $10
    push af                                       ; $735d: $f5
    ld e, d                                       ; $735e: $5a
    ld [$2840], sp                                ; $735f: $08 $40 $28
    xor b                                         ; $7362: $a8
    add hl, de                                    ; $7363: $19
    rst $18                                       ; $7364: $df
    ld [hl+], a                                   ; $7365: $22
    cp a                                          ; $7366: $bf
    inc b                                         ; $7367: $04
    ld e, a                                       ; $7368: $5f
    add b                                         ; $7369: $80
    inc c                                         ; $736a: $0c
    xor [hl]                                      ; $736b: $ae
    ld d, l                                       ; $736c: $55
    ld e, l                                       ; $736d: $5d
    xor b                                         ; $736e: $a8
    ld hl, sp+$03                                 ; $736f: $f8 $03
    db $fc                                        ; $7371: $fc
    inc bc                                        ; $7372: $03
    push de                                       ; $7373: $d5
    ld a, [hl+]                                   ; $7374: $2a
    ld b, [hl]                                    ; $7375: $46
    xor [hl]                                      ; $7376: $ae
    jr nc, @+$03                                  ; $7377: $30 $01

    ld a, [$df54]                                 ; $7379: $fa $54 $df
    ldh a, [rTAC]                                 ; $737c: $f0 $07
    sub [hl]                                      ; $737e: $96
    add hl, bc                                    ; $737f: $09
    sub b                                         ; $7380: $90
    ld [$0717], sp                                ; $7381: $08 $17 $07
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    rst $38                                       ; $7386: $ff
    nop                                           ; $7387: $00
    rst $38                                       ; $7388: $ff
    ld [bc], a                                    ; $7389: $02
    db $fd                                        ; $738a: $fd
    inc b                                         ; $738b: $04
    ei                                            ; $738c: $fb
    nop                                           ; $738d: $00
    ld b, c                                       ; $738e: $41
    cp [hl]                                       ; $738f: $be
    sub e                                         ; $7390: $93
    ld l, h                                       ; $7391: $6c
    dec l                                         ; $7392: $2d
    jp nc, $a45b                                  ; $7393: $d2 $5b $a4

    nop                                           ; $7396: $00
    jr z, @-$27                                   ; $7397: $28 $d7

    inc b                                         ; $7399: $04

jr_0c9_739a:
    ei                                            ; $739a: $fb
    ld d, b                                       ; $739b: $50
    xor a                                         ; $739c: $af
    cp d                                          ; $739d: $ba
    ld b, l                                       ; $739e: $45
    nop                                           ; $739f: $00
    ld l, h                                       ; $73a0: $6c
    add e                                         ; $73a1: $83
    sbc $01                                       ; $73a2: $de $01
    xor l                                         ; $73a4: $ad
    ld [bc], a                                    ; $73a5: $02
    ld e, a                                       ; $73a6: $5f
    nop                                           ; $73a7: $00
    add b                                         ; $73a8: $80
    jr nz, @+$0a                                  ; $73a9: $20 $08

    ld b, h                                       ; $73ab: $44
    cp e                                          ; $73ac: $bb
    dec hl                                        ; $73ad: $2b
    call nc, $a857                                ; $73ae: $d4 $57 $a8
    cp a                                          ; $73b1: $bf
    ld [$7e40], sp                                ; $73b2: $08 $40 $7e
    add b                                         ; $73b5: $80
    db $fd                                        ; $73b6: $fd
    stop                                          ; $73b7: $10 $00
    jr nz, jr_0c9_739a                            ; $73b9: $20 $df

    ld [de], a                                    ; $73bb: $12
    nop                                           ; $73bc: $00
    db $ed                                        ; $73bd: $ed
    ld c, b                                       ; $73be: $48
    or a                                          ; $73bf: $b7
    and b                                         ; $73c0: $a0
    ld e, a                                       ; $73c1: $5f
    pop de                                        ; $73c2: $d1
    ld l, $fa                                     ; $73c3: $2e $fa
    nop                                           ; $73c5: $00
    dec b                                         ; $73c6: $05
    rst $38                                       ; $73c7: $ff
    nop                                           ; $73c8: $00
    add b                                         ; $73c9: $80
    rst $38                                       ; $73ca: $ff
    adc c                                         ; $73cb: $89
    or $af                                        ; $73cc: $f6 $af
    nop                                           ; $73ce: $00
    rst $18                                       ; $73cf: $df
    add [hl]                                      ; $73d0: $86
    rst $38                                       ; $73d1: $ff
    adc e                                         ; $73d2: $8b
    rst $30                                       ; $73d3: $f7
    and c                                         ; $73d4: $a1
    rst $18                                       ; $73d5: $df
    sub d                                         ; $73d6: $92
    nop                                           ; $73d7: $00
    db $fd                                        ; $73d8: $fd
    reti                                          ; $73d9: $d9


    cp [hl]                                       ; $73da: $be
    xor b                                         ; $73db: $a8
    ld d, a                                       ; $73dc: $57
    ld b, b                                       ; $73dd: $40
    cp a                                          ; $73de: $bf
    rst $38                                       ; $73df: $ff
    nop                                           ; $73e0: $00
    rst $38                                       ; $73e1: $ff
    ld c, b                                       ; $73e2: $48
    rst $38                                       ; $73e3: $ff
    jr nz, @+$01                                  ; $73e4: $20 $ff

    adc c                                         ; $73e6: $89
    rst $38                                       ; $73e7: $ff
    call nz, $ff00                                ; $73e8: $c4 $00 $ff
    ld h, b                                       ; $73eb: $60
    rst $38                                       ; $73ec: $ff
    inc b                                         ; $73ed: $04
    ei                                            ; $73ee: $fb
    xor e                                         ; $73ef: $ab
    ld d, h                                       ; $73f0: $54
    rst $38                                       ; $73f1: $ff
    ld [$08ff], sp                                ; $73f2: $08 $ff $08
    rst $38                                       ; $73f5: $ff
    ld b, h                                       ; $73f6: $44
    ld [de], a                                    ; $73f7: $12
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    rst $38                                       ; $73fa: $ff
    sub b                                         ; $73fb: $90
    nop                                           ; $73fc: $00
    rst $38                                       ; $73fd: $ff
    adc c                                         ; $73fe: $89
    ld [hl], a                                    ; $73ff: $77
    dec d                                         ; $7400: $15
    db $eb                                        ; $7401: $eb
    ei                                            ; $7402: $fb
    db $fd                                        ; $7403: $fd
    add hl, bc                                    ; $7404: $09
    nop                                           ; $7405: $00
    rst $38                                       ; $7406: $ff
    ld c, e                                       ; $7407: $4b
    db $fd                                        ; $7408: $fd
    dec l                                         ; $7409: $2d
    ei                                            ; $740a: $fb
    adc c                                         ; $740b: $89
    rst $38                                       ; $740c: $ff
    dec bc                                        ; $740d: $0b
    nop                                           ; $740e: $00
    db $fd                                        ; $740f: $fd
    ld bc, $feff                                  ; $7410: $01 $ff $fe
    ld bc, $fd03                                  ; $7413: $01 $03 $fd
    xor d                                         ; $7416: $aa
    nop                                           ; $7417: $00
    db $fd                                        ; $7418: $fd
    ld d, a                                       ; $7419: $57
    db $fd                                        ; $741a: $fd
    cp $fd                                        ; $741b: $fe $fd
    rst $38                                       ; $741d: $ff
    db $ed                                        ; $741e: $ed
    add e                                         ; $741f: $83
    nop                                           ; $7420: $00
    add l                                         ; $7421: $85
    sbc a                                         ; $7422: $9f
    nop                                           ; $7423: $00
    cpl                                           ; $7424: $2f
    nop                                           ; $7425: $00
    rra                                           ; $7426: $1f
    nop                                           ; $7427: $00
    cp a                                          ; $7428: $bf
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    ld e, a                                       ; $742b: $5f
    nop                                           ; $742c: $00
    ld [hl], a                                    ; $742d: $77
    nop                                           ; $742e: $00
    ld l, l                                       ; $742f: $6d
    nop                                           ; $7430: $00
    ld d, $00                                     ; $7431: $16 $00
    nop                                           ; $7433: $00
    db $eb                                        ; $7434: $eb
    nop                                           ; $7435: $00
    rst $10                                       ; $7436: $d7
    nop                                           ; $7437: $00
    and a                                         ; $7438: $a7
    nop                                           ; $7439: $00
    ld c, e                                       ; $743a: $4b
    nop                                           ; $743b: $00
    nop                                           ; $743c: $00
    sub a                                         ; $743d: $97
    nop                                           ; $743e: $00
    rrca                                          ; $743f: $0f
    nop                                           ; $7440: $00
    ld b, $00                                     ; $7441: $06 $00
    dec b                                         ; $7443: $05
    add b                                         ; $7444: $80
    xor a                                         ; $7445: $af
    ld [$fb00], sp                                ; $7446: $08 $00 $fb
    nop                                           ; $7449: $00
    rst $30                                       ; $744a: $f7
    nop                                           ; $744b: $00
    rst $28                                       ; $744c: $ef
    nop                                           ; $744d: $00
    nop                                           ; $744e: $00
    ld d, [hl]                                    ; $744f: $56
    nop                                           ; $7450: $00
    and l                                         ; $7451: $a5
    nop                                           ; $7452: $00
    ld a, [bc]                                    ; $7453: $0a
    nop                                           ; $7454: $00
    or $08                                        ; $7455: $f6 $08
    add b                                         ; $7457: $80
    ld [de], a                                    ; $7458: $12
    ld [$00fe], sp                                ; $7459: $08 $fe $00
    ld a, [$d400]                                 ; $745c: $fa $00 $d4
    nop                                           ; $745f: $00
    xor b                                         ; $7460: $a8
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    ld e, b                                       ; $7463: $58
    nop                                           ; $7464: $00
    or h                                          ; $7465: $b4
    rst $18                                       ; $7466: $df
    sub d                                         ; $7467: $92
    rst $38                                       ; $7468: $ff
    cp c                                          ; $7469: $b9
    nop                                           ; $746a: $00
    rst $18                                       ; $746b: $df
    sub b                                         ; $746c: $90
    rst $38                                       ; $746d: $ff
    sub d                                         ; $746e: $92
    rst $38                                       ; $746f: $ff
    or c                                          ; $7470: $b1
    rst $18                                       ; $7471: $df
    ret c                                         ; $7472: $d8

    nop                                           ; $7473: $00
    cp a                                          ; $7474: $bf
    or h                                          ; $7475: $b4
    rst $18                                       ; $7476: $df
    or b                                          ; $7477: $b0
    ld a, a                                       ; $7478: $7f
    jr @+$01                                      ; $7479: $18 $ff

    inc c                                         ; $747b: $0c
    nop                                           ; $747c: $00
    rst $38                                       ; $747d: $ff
    and [hl]                                      ; $747e: $a6
    rst $18                                       ; $747f: $df
    ld d, e                                       ; $7480: $53
    rst $28                                       ; $7481: $ef
    add hl, hl                                    ; $7482: $29
    rst $30                                       ; $7483: $f7
    sub b                                         ; $7484: $90
    nop                                           ; $7485: $00
    rst $38                                       ; $7486: $ff
    add hl, bc                                    ; $7487: $09
    cp $4a                                        ; $7488: $fe $4a
    rst $38                                       ; $748a: $ff
    add c                                         ; $748b: $81
    rst $38                                       ; $748c: $ff
    ld [de], a                                    ; $748d: $12
    jr nz, @+$01                                  ; $748e: $20 $ff

    ld b, b                                       ; $7490: $40
    sub d                                         ; $7491: $92
    nop                                           ; $7492: $00
    add h                                         ; $7493: $84
    rst $38                                       ; $7494: $ff
    jp nz, Jump_0c9_64ff                          ; $7495: $c2 $ff $64

    ld a, [bc]                                    ; $7498: $0a
    rst $38                                       ; $7499: $ff
    ld c, l                                       ; $749a: $4d
    ei                                            ; $749b: $fb
    dec hl                                        ; $749c: $2b
    adc [hl]                                      ; $749d: $8e
    nop                                           ; $749e: $00
    dec e                                         ; $749f: $1d
    adc h                                         ; $74a0: $8c
    nop                                           ; $74a1: $00
    ld c, c                                       ; $74a2: $49
    add b                                         ; $74a3: $80
    adc [hl]                                      ; $74a4: $8e
    nop                                           ; $74a5: $00
    adc c                                         ; $74a6: $89
    rst $38                                       ; $74a7: $ff
    add b                                         ; $74a8: $80
    rst $38                                       ; $74a9: $ff
    ld a, l                                       ; $74aa: $7d
    add b                                         ; $74ab: $80
    ret nz                                        ; $74ac: $c0

    nop                                           ; $74ad: $00
    cp b                                          ; $74ae: $b8
    ld l, b                                       ; $74af: $68
    cp b                                          ; $74b0: $b8
    push de                                       ; $74b1: $d5
    cp b                                          ; $74b2: $b8
    ld a, e                                       ; $74b3: $7b
    or l                                          ; $74b4: $b5
    push hl                                       ; $74b5: $e5
    nop                                           ; $74b6: $00
    cp e                                          ; $74b7: $bb
    rst $08                                       ; $74b8: $cf
    xor a                                         ; $74b9: $af
    add d                                         ; $74ba: $82
    ld b, l                                       ; $74bb: $45
    ld d, e                                       ; $74bc: $53
    xor l                                         ; $74bd: $ad
    cp $00                                        ; $74be: $fe $00
    ld bc, $0301                                  ; $74c0: $01 $01 $03
    ld c, h                                       ; $74c3: $4c
    or e                                          ; $74c4: $b3
    ld bc, $01ff                                  ; $74c5: $01 $ff $01
    ld bc, $abff                                  ; $74c8: $01 $ff $ab
    rst $38                                       ; $74cb: $ff
    inc h                                         ; $74cc: $24
    nop                                           ; $74cd: $00
    ld b, b                                       ; $74ce: $40
    nop                                           ; $74cf: $00
    ld bc, $1a18                                  ; $74d0: $01 $18 $1a
    and b                                         ; $74d3: $a0
    nop                                           ; $74d4: $00
    db $fc                                        ; $74d5: $fc
    ld e, $09                                     ; $74d6: $1e $09
    ld bc, $4830                                  ; $74d8: $01 $30 $48
    add [hl]                                      ; $74db: $86
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00

jr_0c9_74de:
    inc hl                                        ; $74de: $23

jr_0c9_74df:
    rst $38                                       ; $74df: $ff
    inc b                                         ; $74e0: $04
    ld de, $2830                                  ; $74e1: $11 $30 $28
    nop                                           ; $74e4: $00
    ld a, l                                       ; $74e5: $7d
    ld l, $09                                     ; $74e6: $2e $09
    jr nc, jr_0c9_751a                            ; $74e8: $30 $30

    ld b, b                                       ; $74ea: $40
    sub h                                         ; $74eb: $94
    dec l                                         ; $74ec: $2d
    ld [$d1ff], sp                                ; $74ed: $08 $ff $d1

jr_0c9_74f0:
    cp a                                          ; $74f0: $bf

jr_0c9_74f1:
    sub b                                         ; $74f1: $90
    rst $38                                       ; $74f2: $ff
    jp nc, $bf00                                  ; $74f3: $d2 $00 $bf

    pop af                                        ; $74f6: $f1
    sbc a                                         ; $74f7: $9f
    ret c                                         ; $74f8: $d8

    cp a                                          ; $74f9: $bf
    or b                                          ; $74fa: $b0
    rst $18                                       ; $74fb: $df
    jp nc, $bf00                                  ; $74fc: $d2 $00 $bf

    sub c                                         ; $74ff: $91
    rst $38                                       ; $7500: $ff
    inc b                                         ; $7501: $04
    rst $38                                       ; $7502: $ff
    adc d                                         ; $7503: $8a
    rst $38                                       ; $7504: $ff
    dec b                                         ; $7505: $05
    adc b                                         ; $7506: $88
    ld l, $01                                     ; $7507: $2e $01
    ld bc, $88ff                                  ; $7509: $01 $ff $88
    inc [hl]                                      ; $750c: $34
    ld bc, $ff12                                  ; $750d: $01 $12 $ff
    ld sp, $ff00                                  ; $7510: $31 $00 $ff
    sbc b                                         ; $7513: $98
    ld a, a                                       ; $7514: $7f
    ld c, h                                       ; $7515: $4c
    cp a                                          ; $7516: $bf
    add [hl]                                      ; $7517: $86
    rst $38                                       ; $7518: $ff
    ld l, e                                       ; $7519: $6b

jr_0c9_751a:
    db $10                                        ; $751a: $10
    rst $10                                       ; $751b: $d7
    dec h                                         ; $751c: $25
    ei                                            ; $751d: $fb
    or b                                          ; $751e: $b0
    ld [$ff29], sp                                ; $751f: $08 $29 $ff
    dec c                                         ; $7522: $0d
    ei                                            ; $7523: $fb
    ld d, b                                       ; $7524: $50
    sbc e                                         ; $7525: $9b
    jr nc, jr_0c9_7529                            ; $7526: $30 $01

    dec l                                         ; $7528: $2d

jr_0c9_7529:
    ld b, $00                                     ; $7529: $06 $00
    call Call_0c9_6bfb                            ; $752b: $cd $fb $6b
    db $fd                                        ; $752e: $fd
    nop                                           ; $752f: $00
    ld b, a                                       ; $7530: $47
    and a                                         ; $7531: $a7
    rst $10                                       ; $7532: $d7
    and e                                         ; $7533: $a3
    ld a, a                                       ; $7534: $7f
    add b                                         ; $7535: $80
    add b                                         ; $7536: $80
    ret nz                                        ; $7537: $c0

    db $10                                        ; $7538: $10
    or d                                          ; $7539: $b2
    call $ac80                                    ; $753a: $cd $80 $ac
    nop                                           ; $753d: $00
    xor d                                         ; $753e: $aa
    rst $38                                       ; $753f: $ff
    dec a                                         ; $7540: $3d
    jp $4920                                      ; $7541: $c3 $20 $49


    or a                                          ; $7544: $b7
    sbc b                                         ; $7545: $98
    ld [$ff01], sp                                ; $7546: $08 $01 $ff
    sub l                                         ; $7549: $95
    ld l, e                                       ; $754a: $6b
    ld bc, $ff00                                  ; $754b: $01 $00 $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    jr z, jr_0c9_74f0                             ; $7550: $28 $9e

    rst $20                                       ; $7552: $e7
    jr jr_0c9_74de                                ; $7553: $18 $89

    nop                                           ; $7555: $00
    ld a, [hl]                                    ; $7556: $7e
    rst $08                                       ; $7557: $cf
    jr nc, jr_0c9_74f1                            ; $7558: $30 $97

    ld a, b                                       ; $755a: $78
    adc c                                         ; $755b: $89
    halt                                          ; $755c: $76
    jr nz, jr_0c9_74df                            ; $755d: $20 $80

    stop                                          ; $755f: $10 $00
    or h                                          ; $7561: $b4
    ld b, e                                       ; $7562: $43
    inc [hl]                                      ; $7563: $34
    add e                                         ; $7564: $83
    reti                                          ; $7565: $d9


    daa                                           ; $7566: $27
    ret z                                         ; $7567: $c8

    ld [bc], a                                    ; $7568: $02
    scf                                           ; $7569: $37
    ld a, [$2007]                                 ; $756a: $fa $07 $20
    rst $18                                       ; $756d: $df
    inc b                                         ; $756e: $04
    jr nz, jr_0c9_7571                            ; $756f: $20 $00

jr_0c9_7571:
    cp [hl]                                       ; $7571: $be
    nop                                           ; $7572: $00
    pop bc                                        ; $7573: $c1
    and $18                                       ; $7574: $e6 $18
    ld l, a                                       ; $7576: $6f
    add b                                         ; $7577: $80
    sbc d                                         ; $7578: $9a
    ld h, c                                       ; $7579: $61
    rst $38                                       ; $757a: $ff
    ld [$4400], sp                                ; $757b: $08 $00 $44
    cp e                                          ; $757e: $bb
    nop                                           ; $757f: $00
    jr nc, jr_0c9_7582                            ; $7580: $30 $00

jr_0c9_7582:
    sub [hl]                                      ; $7582: $96
    ld a, b                                       ; $7583: $78
    adc l                                         ; $7584: $8d
    nop                                           ; $7585: $00
    ld [hl], b                                    ; $7586: $70
    xor c                                         ; $7587: $a9
    ld [hl], d                                    ; $7588: $72
    sbc l                                         ; $7589: $9d
    ld h, d                                       ; $758a: $62
    ld c, a                                       ; $758b: $4f
    ldh a, [$91]                                  ; $758c: $f0 $91
    jr nz, @+$70                                  ; $758e: $20 $6e

    ld b, b                                       ; $7590: $40
    ld b, b                                       ; $7591: $40

jr_0c9_7592:
    nop                                           ; $7592: $00
    adc e                                         ; $7593: $8b
    ld b, h                                       ; $7594: $44
    ld l, [hl]                                    ; $7595: $6e
    ld bc, $01fb                                  ; $7596: $01 $fb $01
    nop                                           ; $7599: $00
    cp a                                          ; $759a: $bf
    ld b, b                                       ; $759b: $40
    ld a, e                                       ; $759c: $7b
    add h                                         ; $759d: $84
    ld [hl+], a                                   ; $759e: $22
    db $dd                                        ; $759f: $dd
    jr nz, jr_0c9_75aa                            ; $75a0: $20 $08

    nop                                           ; $75a2: $00
    sub e                                         ; $75a3: $93
    ld c, b                                       ; $75a4: $48
    rst $10                                       ; $75a5: $d7
    jr nz, jr_0c9_7592                            ; $75a6: $20 $ea

    dec b                                         ; $75a8: $05
    or [hl]                                       ; $75a9: $b6

jr_0c9_75aa:
    ld c, c                                       ; $75aa: $49
    jr nz, jr_0c9_762b                            ; $75ab: $20 $7e

    add c                                         ; $75ad: $81
    jr nc, jr_0c9_75c8                            ; $75ae: $30 $18

    ld e, l                                       ; $75b0: $5d
    ld [c], a                                     ; $75b1: $e2
    dec [hl]                                      ; $75b2: $35
    ret z                                         ; $75b3: $c8

    adc [hl]                                      ; $75b4: $8e
    nop                                           ; $75b5: $00
    pop af                                        ; $75b6: $f1
    ld a, $c1                                     ; $75b7: $3e $c1
    cp a                                          ; $75b9: $bf
    ret nz                                        ; $75ba: $c0

    ld de, $80ee                                  ; $75bb: $11 $ee $80
    add b                                         ; $75be: $80
    ld [hl], b                                    ; $75bf: $70
    nop                                           ; $75c0: $00
    ld [$e71c], a                                 ; $75c1: $ea $1c $e7
    jr jr_0c9_7619                                ; $75c4: $18 $53

    inc a                                         ; $75c6: $3c
    and l                                         ; $75c7: $a5

jr_0c9_75c8:
    ld [bc], a                                    ; $75c8: $02
    ld e, d                                       ; $75c9: $5a
    db $d3                                        ; $75ca: $d3
    inc a                                         ; $75cb: $3c
    ld [hl+], a                                   ; $75cc: $22
    db $dd                                        ; $75cd: $dd
    db $10                                        ; $75ce: $10
    add b                                         ; $75cf: $80
    nop                                           ; $75d0: $00
    sub b                                         ; $75d1: $90
    nop                                           ; $75d2: $00
    rst $38                                       ; $75d3: $ff
    call nc, $b2bf                                ; $75d4: $d4 $bf $b2
    rst $18                                       ; $75d7: $df
    rst $18                                       ; $75d8: $df
    cp a                                          ; $75d9: $bf
    sbc a                                         ; $75da: $9f
    nop                                           ; $75db: $00
    rst $38                                       ; $75dc: $ff
    and h                                         ; $75dd: $a4
    db $db                                        ; $75de: $db
    adc e                                         ; $75df: $8b
    db $f4                                        ; $75e0: $f4
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    ld hl, $f4a0                                  ; $75e3: $21 $a0 $f4
    ld bc, $9809                                  ; $75e6: $01 $09 $98
    nop                                           ; $75e9: $00
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    sub l                                         ; $75ec: $95
    ld l, d                                       ; $75ed: $6a
    ld c, d                                       ; $75ee: $4a
    ld a, [bc]                                    ; $75ef: $0a
    or l                                          ; $75f0: $b5
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    inc h                                         ; $75f3: $24
    sbc d                                         ; $75f4: $9a
    ld bc, $1041                                  ; $75f5: $01 $41 $10

jr_0c9_75f8:
    db $10                                        ; $75f8: $10
    ld e, d                                       ; $75f9: $5a
    nop                                           ; $75fa: $00
    and l                                         ; $75fb: $a5
    ld hl, $ffde                                  ; $75fc: $21 $de $ff
    rst $38                                       ; $75ff: $ff
    cp l                                          ; $7600: $bd
    ld a, e                                       ; $7601: $7b
    ld e, c                                       ; $7602: $59
    nop                                           ; $7603: $00
    cp a                                          ; $7604: $bf
    dec c                                         ; $7605: $0d

jr_0c9_7606:
    ei                                            ; $7606: $fb
    and c                                         ; $7607: $a1
    rst $18                                       ; $7608: $df
    push de                                       ; $7609: $d5
    db $eb                                        ; $760a: $eb
    adc c                                         ; $760b: $89
    db $10                                        ; $760c: $10
    ld [hl], a                                    ; $760d: $77
    dec h                                         ; $760e: $25
    db $db                                        ; $760f: $db
    ld d, $00                                     ; $7610: $16 $00
    ld hl, $40b7                                  ; $7612: $21 $b7 $40
    ld l, [hl]                                    ; $7615: $6e
    ld bc, $a591                                  ; $7616: $01 $91 $a5

jr_0c9_7619:
    ld a, [bc]                                    ; $7619: $0a
    cp $01                                        ; $761a: $fe $01
    sub c                                         ; $761c: $91
    ld l, [hl]                                    ; $761d: $6e
    and b                                         ; $761e: $a0
    ld [$5f00], sp                                ; $761f: $08 $00 $5f
    ldh [rNR51], a                                ; $7622: $e0 $25
    jp z, $e09f                                   ; $7624: $ca $9f $e0

    dec hl                                        ; $7627: $2b
    call nc, Call_0c9_5f08                        ; $7628: $d4 $08 $5f

jr_0c9_762b:
    ldh [rNR50], a                                ; $762b: $e0 $24
    db $db                                        ; $762d: $db
    and b                                         ; $762e: $a0
    ld [$bc4b], sp                                ; $762f: $08 $4b $bc
    rst $20                                       ; $7632: $e7
    nop                                           ; $7633: $00
    jr jr_0c9_7606                                ; $7634: $18 $d0

    inc a                                         ; $7636: $3c
    and e                                         ; $7637: $a3
    ld e, h                                       ; $7638: $5c
    srl h                                         ; $7639: $cb $3c
    ld b, b                                       ; $763b: $40
    ld hl, $08bf                                  ; $763c: $21 $bf $08
    ldh a, [rP1]                                  ; $763f: $f0 $00
    or l                                          ; $7641: $b5
    jp z, $d5aa                                   ; $7642: $ca $aa $d5

    ld [$6009], sp                                ; $7645: $08 $09 $60
    add b                                         ; $7648: $80
    ld a, [bc]                                    ; $7649: $0a
    nop                                           ; $764a: $00
    sub b                                         ; $764b: $90
    ld [$71ae], sp                                ; $764c: $08 $ae $71
    sbc l                                         ; $764f: $9d
    ld h, d                                       ; $7650: $62
    add hl, hl                                    ; $7651: $29
    inc h                                         ; $7652: $24
    db $f4                                        ; $7653: $f4
    call $0100                                    ; $7654: $cd $00 $01
    ld c, b                                       ; $7657: $48
    or a                                          ; $7658: $b7
    sub b                                         ; $7659: $90
    ld [$0ef5], sp                                ; $765a: $08 $f5 $0e
    nop                                           ; $765d: $00
    pop de                                        ; $765e: $d1
    ld c, $75                                     ; $765f: $0e $75
    adc [hl]                                      ; $7661: $8e
    ld c, b                                       ; $7662: $48
    scf                                           ; $7663: $37
    ld a, [c]                                     ; $7664: $f2
    rrca                                          ; $7665: $0f
    jr nc, jr_0c9_75f8                            ; $7666: $30 $90

    ld l, a                                       ; $7668: $6f
    jr nz, jr_0c9_7674                            ; $7669: $20 $09

    or c                                          ; $766b: $b1
    ld [bc], a                                    ; $766c: $02
    nop                                           ; $766d: $00
    adc e                                         ; $766e: $8b
    ld d, b                                       ; $766f: $50
    db $fd                                        ; $7670: $fd
    nop                                           ; $7671: $00
    ld [bc], a                                    ; $7672: $02
    ld a, d                                       ; $7673: $7a

jr_0c9_7674:
    add c                                         ; $7674: $81
    rst $28                                       ; $7675: $ef
    db $10                                        ; $7676: $10
    ld a, b                                       ; $7677: $78
    add e                                         ; $7678: $83
    sub $00                                       ; $7679: $d6 $00
    ld bc, $78a0                                  ; $767b: $01 $a0 $78
    sbc a                                         ; $767e: $9f
    ld h, b                                       ; $767f: $60
    ld c, d                                       ; $7680: $4a
    pop af                                        ; $7681: $f1
    ccf                                           ; $7682: $3f
    nop                                           ; $7683: $00
    ret nz                                        ; $7684: $c0

    ld d, e                                       ; $7685: $53
    add sp, $3b                                   ; $7686: $e8 $3b
    ret nz                                        ; $7688: $c0

    or e                                          ; $7689: $b3
    ret nz                                        ; $768a: $c0

    ld l, a                                       ; $768b: $6f
    ld b, b                                       ; $768c: $40
    sub b                                         ; $768d: $90
    pop af                                        ; $768e: $f1
    ld a, [bc]                                    ; $768f: $0a
    ld a, d                                       ; $7690: $7a
    add l                                         ; $7691: $85
    sbc e                                         ; $7692: $9b
    ld b, h                                       ; $7693: $44

jr_0c9_7694:
    ld e, h                                       ; $7694: $5c
    add d                                         ; $7695: $82
    ld bc, $00af                                  ; $7696: $01 $af $00
    ld d, c                                       ; $7699: $51
    ld [$01fc], sp                                ; $769a: $08 $fc $01
    ld bc, $0321                                  ; $769d: $01 $21 $03
    nop                                           ; $76a0: $00
    xor $11                                       ; $76a1: $ee $11
    ld a, [hl]                                    ; $76a3: $7e
    ld bc, $07e8                                  ; $76a4: $01 $e8 $07
    adc [hl]                                      ; $76a7: $8e
    ld b, c                                       ; $76a8: $41
    nop                                           ; $76a9: $00
    cp l                                          ; $76aa: $bd
    inc bc                                        ; $76ab: $03
    and $09                                       ; $76ac: $e6 $09
    ld b, b                                       ; $76ae: $40
    ldh a, [$3f]                                  ; $76af: $f0 $3f
    ret nz                                        ; $76b1: $c0

    nop                                           ; $76b2: $00
    adc l                                         ; $76b3: $8d
    ld a, [c]                                     ; $76b4: $f2
    ld a, [hl-]                                   ; $76b5: $3a
    push bc                                       ; $76b6: $c5
    xor a                                         ; $76b7: $af
    ret nz                                        ; $76b8: $c0

    ccf                                           ; $76b9: $3f
    ret nz                                        ; $76ba: $c0

    nop                                           ; $76bb: $00
    dec l                                         ; $76bc: $2d
    ret nc                                        ; $76bd: $d0

    ld a, a                                       ; $76be: $7f
    add b                                         ; $76bf: $80
    inc b                                         ; $76c0: $04
    ld e, $e3                                     ; $76c1: $1e $e3
    inc e                                         ; $76c3: $1c
    nop                                           ; $76c4: $00
    ld [$e71d], a                                 ; $76c5: $ea $1d $e7
    jr jr_0c9_7694                                ; $76c8: $18 $ca

    dec a                                         ; $76ca: $3d
    and a                                         ; $76cb: $a7
    ld e, b                                       ; $76cc: $58
    nop                                           ; $76cd: $00
    jp nc, Jump_0c9_453c                          ; $76ce: $d2 $3c $45

    cp b                                          ; $76d1: $b8
    ld [bc], a                                    ; $76d2: $02
    ld bc, $01fe                                  ; $76d3: $01 $fe $01
    nop                                           ; $76d6: $00
    call z, $f623                                 ; $76d7: $cc $23 $f6
    add hl, bc                                    ; $76da: $09
    db $fd                                        ; $76db: $fd
    inc bc                                        ; $76dc: $03
    sbc $21                                       ; $76dd: $de $21
    nop                                           ; $76df: $00
    ld [hl], l                                    ; $76e0: $75
    add e                                         ; $76e1: $83

jr_0c9_76e2:
    cp h                                          ; $76e2: $bc
    inc bc                                        ; $76e3: $03
    add b                                         ; $76e4: $80
    ldh [$7f], a                                  ; $76e5: $e0 $7f
    add b                                         ; $76e7: $80
    nop                                           ; $76e8: $00
    xor d                                         ; $76e9: $aa
    push bc                                       ; $76ea: $c5
    ld e, d                                       ; $76eb: $5a
    add c                                         ; $76ec: $81
    ld h, $d1                                     ; $76ed: $26 $d1
    ld a, a                                       ; $76ef: $7f
    add b                                         ; $76f0: $80
    jr nz, @+$64                                  ; $76f1: $20 $62

    add b                                         ; $76f3: $80
    ld h, b                                       ; $76f4: $60
    jr jr_0c9_76e2                                ; $76f5: $18 $eb

    inc d                                         ; $76f7: $14
    or [hl]                                       ; $76f8: $b6
    ld [$0055], sp                                ; $76f9: $08 $55 $00
    ld [$015e], sp                                ; $76fc: $08 $5e $01
    xor e                                         ; $76ff: $ab
    db $10                                        ; $7700: $10
    ld a, [$0501]                                 ; $7701: $fa $01 $05
    nop                                           ; $7704: $00
    inc bc                                        ; $7705: $03
    db $fc                                        ; $7706: $fc
    inc bc                                        ; $7707: $03
    reti                                          ; $7708: $d9


    daa                                           ; $7709: $27
    db $fc                                        ; $770a: $fc
    inc bc                                        ; $770b: $03
    pop de                                        ; $770c: $d1
    nop                                           ; $770d: $00
    rrca                                          ; $770e: $0f
    cp h                                          ; $770f: $bc
    inc bc                                        ; $7710: $03
    ld l, c                                       ; $7711: $69
    rlca                                          ; $7712: $07
    call nc, Call_000_090b                        ; $7713: $d4 $0b $09
    nop                                           ; $7716: $00
    rlca                                          ; $7717: $07
    db $fc                                        ; $7718: $fc
    inc bc                                        ; $7719: $03
    ld a, c                                       ; $771a: $79
    add a                                         ; $771b: $87
    db $fc                                        ; $771c: $fc
    inc bc                                        ; $771d: $03
    add hl, hl                                    ; $771e: $29
    ld bc, $7c17                                  ; $771f: $01 $17 $7c
    inc bc                                        ; $7722: $03
    reti                                          ; $7723: $d9


    rlca                                          ; $7724: $07

jr_0c9_7725:
    xor h                                         ; $7725: $ac
    inc de                                        ; $7726: $13
    add c                                         ; $7727: $81
    dec bc                                        ; $7728: $0b
    nop                                           ; $7729: $00
    ld l, a                                       ; $772a: $6f

jr_0c9_772b:
    sub b                                         ; $772b: $90
    cp e                                          ; $772c: $bb
    ld b, b                                       ; $772d: $40
    rst $18                                       ; $772e: $df
    jr nz, jr_0c9_772b                            ; $772f: $20 $fa

    inc b                                         ; $7731: $04
    ld [$805c], sp                                ; $7732: $08 $5c $80
    or a                                          ; $7735: $b7
    ld [$0b91], sp                                ; $7736: $08 $91 $0b
    xor a                                         ; $7739: $af
    ld d, b                                       ; $773a: $50
    jp hl                                         ; $773b: $e9


    ld [bc], a                                    ; $773c: $02
    db $10                                        ; $773d: $10
    ld d, d                                       ; $773e: $52
    jr nz, jr_0c9_7725                            ; $773f: $20 $e4

    nop                                           ; $7741: $00
    ld l, c                                       ; $7742: $69
    jr z, @+$05                                   ; $7743: $28 $03

    inc h                                         ; $7745: $24
    nop                                           ; $7746: $00
    ld hl, sp-$61                                 ; $7747: $f8 $9f
    ld h, b                                       ; $7749: $60
    ld c, l                                       ; $774a: $4d
    ldh a, [rNR31]                                ; $774b: $f0 $1b
    ldh [$4c], a                                  ; $774d: $e0 $4c
    ld bc, $1ef2                                  ; $774f: $01 $f2 $1e
    ldh [$4c], a                                  ; $7752: $e0 $4c
    ldh a, [rNR33]                                ; $7754: $f0 $1d
    ld [c], a                                     ; $7756: $e2
    or b                                          ; $7757: $b0
    ld [$5700], sp                                ; $7758: $08 $00 $57
    jr nz, @-$23                                  ; $775b: $20 $db

    inc b                                         ; $775d: $04
    cp $01                                        ; $775e: $fe $01
    rst $08                                       ; $7760: $cf
    stop                                          ; $7761: $10 $00
    ld l, d                                       ; $7763: $6a
    add c                                         ; $7764: $81
    rst $30                                       ; $7765: $f7
    nop                                           ; $7766: $00
    ld [$c73c], sp                                ; $7767: $08 $3c $c7
    jr c, jr_0c9_77ac                             ; $776a: $38 $40

    sub c                                         ; $776c: $91
    db $10                                        ; $776d: $10
    ld [bc], a                                    ; $776e: $02
    and h                                         ; $776f: $a4
    ld a, c                                       ; $7770: $79
    rst $08                                       ; $7771: $cf
    jr nc, jr_0c9_779a                            ; $7772: $30 $26

    ld hl, sp+$10                                 ; $7774: $f8 $10
    adc l                                         ; $7776: $8d
    ld [hl], b                                    ; $7777: $70
    add b                                         ; $7778: $80
    pop af                                        ; $7779: $f1
    inc bc                                        ; $777a: $03
    ld h, l                                       ; $777b: $65
    adc b                                         ; $777c: $88
    ld e, d                                       ; $777d: $5a
    inc h                                         ; $777e: $24
    nop                                           ; $777f: $00
    rst $30                                       ; $7780: $f7
    nop                                           ; $7781: $00
    cp [hl]                                       ; $7782: $be
    ld bc, $8057                                  ; $7783: $01 $57 $80
    db $fd                                        ; $7786: $fd
    ld [bc], a                                    ; $7787: $02
    nop                                           ; $7788: $00
    inc h                                         ; $7789: $24
    rra                                           ; $778a: $1f
    db $e3                                        ; $778b: $e3
    inc e                                         ; $778c: $1c
    ret                                           ; $778d: $c9


    ld a, $e3                                     ; $778e: $3e $e3
    inc e                                         ; $7790: $1c
    nop                                           ; $7791: $00
    ld c, c                                       ; $7792: $49
    cp [hl]                                       ; $7793: $be
    db $e3                                        ; $7794: $e3
    inc e                                         ; $7795: $1c
    sub e                                         ; $7796: $93
    ld a, h                                       ; $7797: $7c
    ld b, [hl]                                    ; $7798: $46
    cp b                                          ; $7799: $b8

jr_0c9_779a:
    add b                                         ; $779a: $80
    pop af                                        ; $779b: $f1
    dec bc                                        ; $779c: $0b
    ld a, l                                       ; $779d: $7d
    add d                                         ; $779e: $82
    rst $08                                       ; $779f: $cf
    nop                                           ; $77a0: $00
    cp c                                          ; $77a1: $b9
    nop                                           ; $77a2: $00
    db $eb                                        ; $77a3: $eb
    inc c                                         ; $77a4: $0c
    db $10                                        ; $77a5: $10
    and $00                                       ; $77a6: $e6 $00
    cp l                                          ; $77a8: $bd
    db $ed                                        ; $77a9: $ed
    ld [bc], a                                    ; $77aa: $02
    db $10                                        ; $77ab: $10

jr_0c9_77ac:
    ld [$428d], sp                                ; $77ac: $08 $8d $42
    nop                                           ; $77af: $00
    ld d, [hl]                                    ; $77b0: $56
    add c                                         ; $77b1: $81
    and a                                         ; $77b2: $a7
    nop                                           ; $77b3: $00
    ld b, h                                       ; $77b4: $44
    ld [$00fa], sp                                ; $77b5: $08 $fa $00
    nop                                           ; $77b8: $00
    db $fc                                        ; $77b9: $fc
    inc bc                                        ; $77ba: $03
    inc l                                         ; $77bb: $2c
    sub e                                         ; $77bc: $93
    push af                                       ; $77bd: $f5
    inc bc                                        ; $77be: $03

jr_0c9_77bf:
    ld a, b                                       ; $77bf: $78
    add a                                         ; $77c0: $87
    nop                                           ; $77c1: $00
    ld a, [$9007]                                 ; $77c2: $fa $07 $90
    ld l, a                                       ; $77c5: $6f
    inc b                                         ; $77c6: $04
    rst $38                                       ; $77c7: $ff
    db $fd                                        ; $77c8: $fd
    cp $40                                        ; $77c9: $fe $40
    cp e                                          ; $77cb: $bb
    ld [$7701], sp                                ; $77cc: $08 $01 $77
    add b                                         ; $77cf: $80
    db $dd                                        ; $77d0: $dd
    jr nz, @+$6d                                  ; $77d1: $20 $6b

    sub b                                         ; $77d3: $90
    nop                                           ; $77d4: $00
    push de                                       ; $77d5: $d5
    ld [$00df], sp                                ; $77d6: $08 $df $00
    adc l                                         ; $77d9: $8d
    ld b, b                                       ; $77da: $40
    db $ed                                        ; $77db: $ed
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    ld b, e                                       ; $77de: $43
    nop                                           ; $77df: $00
    ld c, a                                       ; $77e0: $4f
    add b                                         ; $77e1: $80
    ld l, l                                       ; $77e2: $6d
    add b                                         ; $77e3: $80
    sbc [hl]                                      ; $77e4: $9e
    ld bc, $3300                                  ; $77e5: $01 $00 $33
    inc c                                         ; $77e8: $0c
    ld l, [hl]                                    ; $77e9: $6e
    add b                                         ; $77ea: $80
    xor l                                         ; $77eb: $ad
    nop                                           ; $77ec: $00
    ld e, h                                       ; $77ed: $5c
    add e                                         ; $77ee: $83
    db $10                                        ; $77ef: $10
    ld l, h                                       ; $77f0: $6c
    inc bc                                        ; $77f1: $03
    ld e, c                                       ; $77f2: $59
    ret z                                         ; $77f3: $c8

    nop                                           ; $77f4: $00
    ld [$5c17], a                                 ; $77f5: $ea $17 $5c
    inc bc                                        ; $77f8: $03
    nop                                           ; $77f9: $00
    and d                                         ; $77fa: $a2
    rrca                                          ; $77fb: $0f
    ret                                           ; $77fc: $c9


    rlca                                          ; $77fd: $07
    or h                                          ; $77fe: $b4
    jp nz, $807f                                  ; $77ff: $c2 $7f $80

    nop                                           ; $7802: $00
    ld c, c                                       ; $7803: $49
    sub d                                         ; $7804: $92
    db $db                                        ; $7805: $db
    inc b                                         ; $7806: $04
    ld a, a                                       ; $7807: $7f
    add b                                         ; $7808: $80
    sub d                                         ; $7809: $92
    ld l, l                                       ; $780a: $6d
    add b                                         ; $780b: $80
    add b                                         ; $780c: $80
    ld a, [bc]                                    ; $780d: $0a
    srl h                                         ; $780e: $cb $3c
    call nz, Call_000_153b                        ; $7810: $c4 $3b $15
    ld a, b                                       ; $7813: $78
    adc $04                                       ; $7814: $ce $04
    jr nc, jr_0c9_77bf                            ; $7816: $30 $a7

    ld a, b                                       ; $7818: $78
    ld c, c                                       ; $7819: $49
    or [hl]                                       ; $781a: $b6
    or b                                          ; $781b: $b0
    ld a, [bc]                                    ; $781c: $0a
    ld l, l                                       ; $781d: $6d
    inc bc                                        ; $781e: $03
    nop                                           ; $781f: $00
    xor h                                         ; $7820: $ac
    inc de                                        ; $7821: $13

Jump_0c9_7822:
    pop af                                        ; $7822: $f1
    rlca                                          ; $7823: $07
    ld e, h                                       ; $7824: $5c
    add e                                         ; $7825: $83
    ld a, [$0007]                                 ; $7826: $fa $07 $00
    inc h                                         ; $7829: $24
    db $db                                        ; $782a: $db
    ld [bc], a                                    ; $782b: $02
    rst $38                                       ; $782c: $ff
    cp $ff                                        ; $782d: $fe $ff
    ld a, $c0                                     ; $782f: $3e $c0
    nop                                           ; $7831: $00
    xor a                                         ; $7832: $af
    ld b, b                                       ; $7833: $40
    ld [hl], l                                    ; $7834: $75
    add b                                         ; $7835: $80
    call c, Call_0c9_6f20                         ; $7836: $dc $20 $6f
    sub b                                         ; $7839: $90
    nop                                           ; $783a: $00
    push af                                       ; $783b: $f5
    ld [$806f], sp                                ; $783c: $08 $6f $80
    xor [hl]                                      ; $783f: $ae
    ld b, b                                       ; $7840: $40
    xor a                                         ; $7841: $af
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    add e                                         ; $7844: $83
    nop                                           ; $7845: $00
    ld d, a                                       ; $7846: $57
    add b                                         ; $7847: $80
    ld a, l                                       ; $7848: $7d
    add b                                         ; $7849: $80
    sbc d                                         ; $784a: $9a
    ld bc, $b100                                  ; $784b: $01 $00 $b1
    ld a, [bc]                                    ; $784e: $0a
    or l                                          ; $784f: $b5
    ld b, b                                       ; $7850: $40
    or $00                                        ; $7851: $f6 $00
    dec e                                         ; $7853: $1d
    add e                                         ; $7854: $83
    ld b, h                                       ; $7855: $44
    ld c, h                                       ; $7856: $4c
    ld h, b                                       ; $7857: $60
    nop                                           ; $7858: $00
    db $f4                                        ; $7859: $f4
    dec bc                                        ; $785a: $0b
    jp hl                                         ; $785b: $e9


    ld h, b                                       ; $785c: $60
    nop                                           ; $785d: $00
    ld d, c                                       ; $785e: $51
    rlca                                          ; $785f: $07
    ld bc, $03ed                                  ; $7860: $01 $ed $03
    jp hl                                         ; $7863: $e9


    rla                                           ; $7864: $17
    xor h                                         ; $7865: $ac
    inc bc                                        ; $7866: $03
    ld sp, hl                                     ; $7867: $f9
    jr c, @+$03                                   ; $7868: $38 $01

    ld [$07f9], sp                                ; $786a: $08 $f9 $07
    ld d, h                                       ; $786d: $54
    xor e                                         ; $786e: $ab
    db $10                                        ; $786f: $10
    dec bc                                        ; $7870: $0b
    ld c, [hl]                                    ; $7871: $4e
    ldh a, [$34]                                  ; $7872: $f0 $34
    dec bc                                        ; $7874: $0b
    jp $e09d                                      ; $7875: $c3 $9d $e0


    dec [hl]                                      ; $7878: $35
    ld b, h                                       ; $7879: $44
    ld [bc], a                                    ; $787a: $02
    ld a, [hl+]                                   ; $787b: $2a
    jr z, jr_0c9_7880                             ; $787c: $28 $02

    nop                                           ; $787e: $00
    inc bc                                        ; $787f: $03

jr_0c9_7880:
    nop                                           ; $7880: $00
    ld b, c                                       ; $7881: $41
    ld a, [hl+]                                   ; $7882: $2a
    add c                                         ; $7883: $81
    sub $21                                       ; $7884: $d6 $21
    xor d                                         ; $7886: $aa
    dec d                                         ; $7887: $15

jr_0c9_7888:
    db $fc                                        ; $7888: $fc
    db $10                                        ; $7889: $10
    inc bc                                        ; $788a: $03
    ld d, h                                       ; $788b: $54
    xor e                                         ; $788c: $ab
    nop                                           ; $788d: $00
    dec bc                                        ; $788e: $0b
    sub c                                         ; $788f: $91
    ld a, h                                       ; $7890: $7c
    adc a                                         ; $7891: $8f
    ld [hl], b                                    ; $7892: $70
    ld [bc], a                                    ; $7893: $02
    dec h                                         ; $7894: $25
    ld a, [$708f]                                 ; $7895: $fa $8f $70
    daa                                           ; $7898: $27
    ld hl, sp+$30                                 ; $7899: $f8 $30
    dec de                                        ; $789b: $1b
    ld e, c                                       ; $789c: $59
    nop                                           ; $789d: $00
    add h                                         ; $789e: $84
    sub e                                         ; $789f: $93
    jr nz, jr_0c9_7888                            ; $78a0: $20 $e6

    ld bc, $44ab                                  ; $78a2: $01 $ab $44
    rst $38                                       ; $78a5: $ff
    stop                                          ; $78a6: $10 $00
    ld d, d                                       ; $78a8: $52
    xor l                                         ; $78a9: $ad
    jr nz, jr_0c9_78b7                            ; $78aa: $20 $0b

    scf                                           ; $78ac: $37
    ld [$01ba], sp                                ; $78ad: $08 $ba $01
    ld b, d                                       ; $78b0: $42
    db $e3                                        ; $78b1: $e3
    dec h                                         ; $78b2: $25
    dec b                                         ; $78b3: $05
    or $09                                        ; $78b4: $f6 $09
    xor c                                         ; $78b6: $a9

jr_0c9_78b7:
    ld d, [hl]                                    ; $78b7: $56
    jr nc, jr_0c9_78c5                            ; $78b8: $30 $0b

    ld [hl], d                                    ; $78ba: $72
    nop                                           ; $78bb: $00
    add c                                         ; $78bc: $81
    db $ed                                        ; $78bd: $ed
    nop                                           ; $78be: $00
    dec bc                                        ; $78bf: $0b
    sub b                                         ; $78c0: $90
    or [hl]                                       ; $78c1: $b6
    add hl, bc                                    ; $78c2: $09
    db $fd                                        ; $78c3: $fd
    ld b, b                                       ; $78c4: $40

jr_0c9_78c5:
    ld [bc], a                                    ; $78c5: $02
    jr nz, jr_0c9_78e0                            ; $78c6: $20 $18

    reti                                          ; $78c8: $d9


    daa                                           ; $78c9: $27
    ret c                                         ; $78ca: $d8

    rlca                                          ; $78cb: $07
    ld a, [c]                                     ; $78cc: $f2
    rrca                                          ; $78cd: $0f
    ld [bc], a                                    ; $78ce: $02
    ld d, c                                       ; $78cf: $51
    ld l, $f4                                     ; $78d0: $2e $f4
    rrca                                          ; $78d2: $0f
    and c                                         ; $78d3: $a1
    ld e, [hl]                                    ; $78d4: $5e
    ld h, b                                       ; $78d5: $60
    dec bc                                        ; $78d6: $0b
    sub a                                         ; $78d7: $97
    nop                                           ; $78d8: $00
    ldh [$2a], a                                  ; $78d9: $e0 $2a
    push bc                                       ; $78db: $c5
    cp e                                          ; $78dc: $bb
    ret nz                                        ; $78dd: $c0

    ld h, l                                       ; $78de: $65
    sbc b                                         ; $78df: $98

jr_0c9_78e0:
    ccf                                           ; $78e0: $3f
    db $10                                        ; $78e1: $10
    ret nz                                        ; $78e2: $c0

    ld c, d                                       ; $78e3: $4a
    or l                                          ; $78e4: $b5
    ld h, b                                       ; $78e5: $60
    dec bc                                        ; $78e6: $0b
    halt                                          ; $78e7: $76
    add c                                         ; $78e8: $81
    sub $01                                       ; $78e9: $d6 $01
    nop                                           ; $78eb: $00
    xor h                                         ; $78ec: $ac
    ld b, e                                       ; $78ed: $43
    ld c, h                                       ; $78ee: $4c
    inc sp                                        ; $78ef: $33
    ld sp, hl                                     ; $78f0: $f9
    rlca                                          ; $78f1: $07
    and h                                         ; $78f2: $a4
    ld e, e                                       ; $78f3: $5b
    ld b, b                                       ; $78f4: $40
    ld [bc], a                                    ; $78f5: $02
    and b                                         ; $78f6: $a0
    inc bc                                        ; $78f7: $03
    ld [de], a                                    ; $78f8: $12
    rrca                                          ; $78f9: $0f
    pop af                                        ; $78fa: $f1
    ld c, $a5                                     ; $78fb: $0e $a5

Jump_0c9_78fd:
    ld e, $00                                     ; $78fd: $1e $00
    and d                                         ; $78ff: $a2
    ld e, l                                       ; $7900: $5d
    add hl, bc                                    ; $7901: $09
    ld a, $e2                                     ; $7902: $3e $e2
    inc e                                         ; $7904: $1c
    ld d, e                                       ; $7905: $53
    inc a                                         ; $7906: $3c
    nop                                           ; $7907: $00
    add $38                                       ; $7908: $c6 $38
    pop af                                        ; $790a: $f1
    nop                                           ; $790b: $00
    ret c                                         ; $790c: $d8

    nop                                           ; $790d: $00
    di                                            ; $790e: $f3
    inc c                                         ; $790f: $0c

jr_0c9_7910:
    nop                                           ; $7910: $00
    xor [hl]                                      ; $7911: $ae
    nop                                           ; $7912: $00
    pop de                                        ; $7913: $d1
    inc b                                         ; $7914: $04
    rst $28                                       ; $7915: $ef
    nop                                           ; $7916: $00
    or h                                          ; $7917: $b4
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    di                                            ; $791a: $f3
    nop                                           ; $791b: $00
    ld e, a                                       ; $791c: $5f
    add b                                         ; $791d: $80
    and [hl]                                      ; $791e: $a6
    db $10                                        ; $791f: $10
    ld e, e                                       ; $7920: $5b
    and b                                         ; $7921: $a0
    ld b, b                                       ; $7922: $40
    push de                                       ; $7923: $d5
    jp nc, Jump_0c9_6b04                          ; $7924: $d2 $04 $6b

    inc b                                         ; $7927: $04
    db $f4                                        ; $7928: $f4
    ld [$803d], sp                                ; $7929: $08 $3d $80
    nop                                           ; $792c: $00
    ld e, d                                       ; $792d: $5a
    rlca                                          ; $792e: $07
    ld sp, hl                                     ; $792f: $f9
    ld b, $d4                                     ; $7930: $06 $d4
    cpl                                           ; $7932: $2f
    ld d, c                                       ; $7933: $51
    ld l, $00                                     ; $7934: $2e $00
    push hl                                       ; $7936: $e5
    ld e, $b1                                     ; $7937: $1e $b1
    ld c, [hl]                                    ; $7939: $4e
    xor c                                         ; $793a: $a9
    ld e, $f3                                     ; $793b: $1e $f3
    inc c                                         ; $793d: $0c
    add b                                         ; $793e: $80
    ret nz                                        ; $793f: $c0

    ld a, [bc]                                    ; $7940: $0a
    xor e                                         ; $7941: $ab
    db $10                                        ; $7942: $10
    ld l, l                                       ; $7943: $6d
    add b                                         ; $7944: $80
    db $db                                        ; $7945: $db
    inc b                                         ; $7946: $04
    dec [hl]                                      ; $7947: $35
    ld [bc], a                                    ; $7948: $02
    add d                                         ; $7949: $82
    xor d                                         ; $794a: $aa
    ld de, $124d                                  ; $794b: $11 $4d $12
    jr nz, jr_0c9_7910                            ; $794e: $20 $c0

    ld [bc], a                                    ; $7950: $02
    dec hl                                        ; $7951: $2b
    nop                                           ; $7952: $00
    ldh a, [$9e]                                  ; $7953: $f0 $9e
    ld h, c                                       ; $7955: $61
    ld c, e                                       ; $7956: $4b
    ldh a, [$96]                                  ; $7957: $f0 $96
    ld l, b                                       ; $7959: $68
    ld e, e                                       ; $795a: $5b
    nop                                           ; $795b: $00
    ldh [rNR33], a                                ; $795c: $e0 $1d
    ld [c], a                                     ; $795e: $e2
    add hl, bc                                    ; $795f: $09
    rlca                                          ; $7960: $07
    ld hl, sp+$07                                 ; $7961: $f8 $07
    ld d, d                                       ; $7963: $52
    nop                                           ; $7964: $00
    adc a                                         ; $7965: $8f
    add sp, $17                                   ; $7966: $e8 $17
    jp nc, $780f                                  ; $7968: $d2 $0f $78

    add a                                         ; $796b: $87
    ld d, h                                       ; $796c: $54
    nop                                           ; $796d: $00
    cpl                                           ; $796e: $2f
    cp c                                          ; $796f: $b9
    ld b, [hl]                                    ; $7970: $46
    ld a, b                                       ; $7971: $78
    add b                                         ; $7972: $80
    call c, Call_0c9_5900                         ; $7973: $dc $00 $59
    nop                                           ; $7976: $00
    add [hl]                                      ; $7977: $86
    xor d                                         ; $7978: $aa
    ld b, b                                       ; $7979: $40
    push hl                                       ; $797a: $e5
    ld [bc], a                                    ; $797b: $02
    ld a, [hl-]                                   ; $797c: $3a
    nop                                           ; $797d: $00
    db $ed                                        ; $797e: $ed
    nop                                           ; $797f: $00

jr_0c9_7980:
    nop                                           ; $7980: $00
    db $f4                                        ; $7981: $f4
    nop                                           ; $7982: $00
    xor a                                         ; $7983: $af
    ld b, b                                       ; $7984: $40
    ld [hl], a                                    ; $7985: $77
    ld [$20cd], sp                                ; $7986: $08 $cd $20
    jr nc, jr_0c9_7980                            ; $7989: $30 $f5

    ld h, b                                       ; $798b: $60
    dec b                                         ; $798c: $05
    sbc $01                                       ; $798d: $de $01
    dec a                                         ; $798f: $3d
    ld [bc], a                                    ; $7990: $02
    rst $08                                       ; $7991: $cf
    jr nz, jr_0c9_79b4                            ; $7992: $20 $20

    xor l                                         ; $7994: $ad
    add b                                         ; $7995: $80
    ld [bc], a                                    ; $7996: $02
    jp hl                                         ; $7997: $e9


    rla                                           ; $7998: $17
    sub h                                         ; $7999: $94
    dec bc                                        ; $799a: $0b
    cp c                                          ; $799b: $b9
    add h                                         ; $799c: $84
    ld l, h                                       ; $799d: $6c
    ld [bc], a                                    ; $799e: $02
    cp c                                          ; $799f: $b9
    rlca                                          ; $79a0: $07
    ld a, h                                       ; $79a1: $7c
    inc bc                                        ; $79a2: $03
    add b                                         ; $79a3: $80
    ld a, [bc]                                    ; $79a4: $0a
    ld e, c                                       ; $79a5: $59
    add a                                         ; $79a6: $87
    nop                                           ; $79a7: $00
    db $ec                                        ; $79a8: $ec
    inc de                                        ; $79a9: $13
    ret                                           ; $79aa: $c9


    rlca                                          ; $79ab: $07
    ld a, h                                       ; $79ac: $7c
    add e                                         ; $79ad: $83
    ret                                           ; $79ae: $c9


    daa                                           ; $79af: $27
    nop                                           ; $79b0: $00
    cp h                                          ; $79b1: $bc
    ld b, e                                       ; $79b2: $43
    ld b, b                                       ; $79b3: $40

jr_0c9_79b4:
    ldh a, [$1f]                                  ; $79b4: $f0 $1f
    ldh [rHDMA5], a                               ; $79b6: $e0 $55
    ldh [rSB], a                                  ; $79b8: $e0 $01
    ld a, $c1                                     ; $79ba: $3e $c1
    ld e, e                                       ; $79bc: $5b
    ldh [$36], a                                  ; $79bd: $e0 $36
    ret z                                         ; $79bf: $c8

    sbc e                                         ; $79c0: $9b
    ld [$8000], sp                                ; $79c1: $08 $00 $80
    ld de, $be0e                                  ; $79c4: $11 $0e $be
    ld b, c                                       ; $79c7: $41
    db $db                                        ; $79c8: $db
    nop                                           ; $79c9: $00
    ld l, $11                                     ; $79ca: $2e $11
    db $eb                                        ; $79cc: $eb
    ld [bc], a                                    ; $79cd: $02
    inc b                                         ; $79ce: $04
    ld [hl], $41                                  ; $79cf: $36 $41
    sbc e                                         ; $79d1: $9b
    inc h                                         ; $79d2: $24
    jp z, Jump_000_0260                           ; $79d3: $ca $60 $02

    sub d                                         ; $79d6: $92
    nop                                           ; $79d7: $00
    ld a, h                                       ; $79d8: $7c
    push bc                                       ; $79d9: $c5
    ld a, [hl-]                                   ; $79da: $3a
    sub a                                         ; $79db: $97
    ld a, b                                       ; $79dc: $78
    call nz, $a73a                                ; $79dd: $c4 $3a $a7
    and b                                         ; $79e0: $a0
    ret z                                         ; $79e1: $c8

    ld bc, $9cda                                  ; $79e2: $01 $da $9c
    dec b                                         ; $79e5: $05
    ld l, [hl]                                    ; $79e6: $6e
    ld bc, $012a                                  ; $79e7: $01 $2a $01
    ld [hl], a                                    ; $79ea: $77
    ld [$dd00], sp                                ; $79eb: $08 $00 $dd
    ld [hl+], a                                   ; $79ee: $22
    or [hl]                                       ; $79ef: $b6
    ld c, $02                                     ; $79f0: $0e $02
    inc l                                         ; $79f2: $2c
    db $10                                        ; $79f3: $10
    ld a, [de]                                    ; $79f4: $1a
    nop                                           ; $79f5: $00
    ld bc, $4ab5                                  ; $79f6: $01 $b5 $4a
    xor a                                         ; $79f9: $af
    nop                                           ; $79fa: $00
    ld e, e                                       ; $79fb: $5b
    add b                                         ; $79fc: $80
    or d                                          ; $79fd: $b2
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    ld c, l                                       ; $7a00: $4d
    nop                                           ; $7a01: $00
    ld de, $9e08                                  ; $7a02: $11 $08 $9e
    ldh [$7b], a                                  ; $7a05: $e0 $7b
    nop                                           ; $7a07: $00
    add b                                         ; $7a08: $80
    ld a, $c1                                     ; $7a09: $3e $c1
    ld d, d                                       ; $7a0b: $52
    and b                                         ; $7a0c: $a0
    add hl, sp                                    ; $7a0d: $39
    ret nz                                        ; $7a0e: $c0

    ld d, [hl]                                    ; $7a0f: $56
    ld [bc], a                                    ; $7a10: $02
    add b                                         ; $7a11: $80
    ld e, l                                       ; $7a12: $5d
    add b                                         ; $7a13: $80
    db $eb                                        ; $7a14: $eb
    nop                                           ; $7a15: $00
    inc b                                         ; $7a16: $04
    nop                                           ; $7a17: $00
    inc bc                                        ; $7a18: $03
    ld l, l                                       ; $7a19: $6d

jr_0c9_7a1a:
    nop                                           ; $7a1a: $00

jr_0c9_7a1b:
    add e                                         ; $7a1b: $83
    xor h                                         ; $7a1c: $ac
    inc de                                        ; $7a1d: $13
    jp hl                                         ; $7a1e: $e9


    rlca                                          ; $7a1f: $07
    cp h                                          ; $7a20: $bc

jr_0c9_7a21:
    ld b, e                                       ; $7a21: $43
    ld c, d                                       ; $7a22: $4a
    db $10                                        ; $7a23: $10
    daa                                           ; $7a24: $27
    cp b                                          ; $7a25: $b8
    ld b, a                                       ; $7a26: $47
    ret nc                                        ; $7a27: $d0

    ld [$f02a], sp                                ; $7a28: $08 $2a $f0
    ld e, $e1                                     ; $7a2b: $1e $e1
    nop                                           ; $7a2d: $00
    ld c, e                                       ; $7a2e: $4b
    ldh a, [rNR21]                                ; $7a2f: $f0 $16
    add sp, -$65                                  ; $7a31: $e8 $9b
    ldh [$3d], a                                  ; $7a33: $e0 $3d
    jp nz, $8180                                  ; $7a35: $c2 $80 $81

    ld c, $57                                     ; $7a38: $0e $57
    jr nz, jr_0c9_7a1b                            ; $7a3a: $20 $df

    nop                                           ; $7a3c: $00
    ld [hl], $09                                  ; $7a3d: $36 $09
    db $e3                                        ; $7a3f: $e3
    nop                                           ; $7a40: $00
    inc b                                         ; $7a41: $04
    or h                                          ; $7a42: $b4
    ld b, e                                       ; $7a43: $43
    ld a, [de]                                    ; $7a44: $1a
    dec h                                         ; $7a45: $25
    db $d3                                        ; $7a46: $d3
    inc a                                         ; $7a47: $3c
    adc $81                                       ; $7a48: $ce $81
    call z, $8a02                                 ; $7a4a: $cc $02 $8a

jr_0c9_7a4d:
    ld [hl], c                                    ; $7a4d: $71
    cpl                                           ; $7a4e: $2f
    ldh a, [$84]                                  ; $7a4f: $f0 $84
    ld a, e                                       ; $7a51: $7b
    or b                                          ; $7a52: $b0
    inc c                                         ; $7a53: $0c
    nop                                           ; $7a54: $00
    ld [bc], a                                    ; $7a55: $02
    ld hl, $00f3                                  ; $7a56: $21 $f3 $00
    cp [hl]                                       ; $7a59: $be
    nop                                           ; $7a5a: $00
    rst $28                                       ; $7a5b: $ef
    db $10                                        ; $7a5c: $10
    ld [$21de], sp                                ; $7a5d: $08 $de $21
    and h                                         ; $7a60: $a4
    ld e, e                                       ; $7a61: $5b
    ret nc                                        ; $7a62: $d0

    inc c                                         ; $7a63: $0c
    xor d                                         ; $7a64: $aa
    ld de, $0152                                  ; $7a65: $11 $52 $01
    inc h                                         ; $7a68: $24
    ld l, l                                       ; $7a69: $6d
    nop                                           ; $7a6a: $00
    ld [$df11], a                                 ; $7a6b: $ea $11 $df
    jr nz, jr_0c9_7a80                            ; $7a6e: $20 $10

    jr jr_0c9_7ab2                                ; $7a70: $18 $40

    ld h, l                                       ; $7a72: $65
    and b                                         ; $7a73: $a0
    inc bc                                        ; $7a74: $03
    adc d                                         ; $7a75: $8a
    ld a, l                                       ; $7a76: $7d
    rst $20                                       ; $7a77: $e7
    jr jr_0c9_7a4d                                ; $7a78: $18 $d3

    inc a                                         ; $7a7a: $3c
    jr nz, jr_0c9_7a21                            ; $7a7b: $20 $a4

    ld e, e                                       ; $7a7d: $5b
    and b                                         ; $7a7e: $a0
    inc c                                         ; $7a7f: $0c

jr_0c9_7a80:
    ld e, e                                       ; $7a80: $5b
    jr nz, jr_0c9_7a1a                            ; $7a81: $20 $97

jr_0c9_7a83:
    ld b, b                                       ; $7a83: $40
    xor $04                                       ; $7a84: $ee $04
    ld de, $15ca                                  ; $7a86: $11 $ca $15
    cp $01                                        ; $7a89: $fe $01
    jr nc, jr_0c9_7aa5                            ; $7a8b: $30 $18

    ld c, [hl]                                    ; $7a8d: $4e
    ldh a, [rNR21]                                ; $7a8e: $f0 $16
    ld [hl-], a                                   ; $7a90: $32
    push bc                                       ; $7a91: $c5
    ld e, a                                       ; $7a92: $5f
    ld h, b                                       ; $7a93: $60
    inc b                                         ; $7a94: $04
    sbc a                                         ; $7a95: $9f
    ld h, b                                       ; $7a96: $60
    inc b                                         ; $7a97: $04
    ret nc                                        ; $7a98: $d0

    inc c                                         ; $7a99: $0c
    jp nc, $2f08                                  ; $7a9a: $d2 $08 $2f

    pop de                                        ; $7a9d: $d1
    ld c, $f4                                     ; $7a9e: $0e $f4
    ret nc                                        ; $7aa0: $d0

    ld bc, $1fe4                                  ; $7aa1: $01 $e4 $1f
    and b                                         ; $7aa4: $a0

jr_0c9_7aa5:
    ld b, b                                       ; $7aa5: $40
    ld e, a                                       ; $7aa6: $5f
    jr nc, @+$0f                                  ; $7aa7: $30 $0d

    add sp, $04                                   ; $7aa9: $e8 $04
    sbc $00                                       ; $7aab: $de $00
    sbc a                                         ; $7aad: $9f
    jr nz, jr_0c9_7ab8                            ; $7aae: $20 $08

    ld l, l                                       ; $7ab0: $6d
    ld [de], a                                    ; $7ab1: $12

jr_0c9_7ab2:
    ei                                            ; $7ab2: $fb
    inc b                                         ; $7ab3: $04
    ld h, b                                       ; $7ab4: $60
    jr jr_0c9_7a83                                ; $7ab5: $18 $cc

    ld [hl+], a                                   ; $7ab7: $22

jr_0c9_7ab8:
    and $01                                       ; $7ab8: $e6 $01
    add hl, bc                                    ; $7aba: $09
    adc l                                         ; $7abb: $8d
    nop                                           ; $7abc: $00
    cp $01                                        ; $7abd: $fe $01
    db $db                                        ; $7abf: $db
    inc h                                         ; $7ac0: $24
    ld [hl], b                                    ; $7ac1: $70
    jr @+$16                                      ; $7ac2: $18 $14

    call $9c23                                    ; $7ac4: $cd $23 $9c
    xor h                                         ; $7ac7: $ac
    inc bc                                        ; $7ac8: $03
    ld l, h                                       ; $7ac9: $6c
    ld [hl], b                                    ; $7aca: $70
    ld [bc], a                                    ; $7acb: $02
    and h                                         ; $7acc: $a4
    ld e, e                                       ; $7acd: $5b
    add d                                         ; $7ace: $82
    add b                                         ; $7acf: $80
    dec c                                         ; $7ad0: $0d
    reti                                          ; $7ad1: $d9


    rlca                                          ; $7ad2: $07
    ld e, h                                       ; $7ad3: $5c
    inc hl                                        ; $7ad4: $23
    jp hl                                         ; $7ad5: $e9


    inc a                                         ; $7ad6: $3c
    ld bc, $20f9                                  ; $7ad7: $01 $f9 $20
    rlca                                          ; $7ada: $07
    sub h                                         ; $7adb: $94
    sub b                                         ; $7adc: $90
    dec d                                         ; $7add: $15
    ld l, $f0                                     ; $7ade: $2e $f0
    add hl, de                                    ; $7ae0: $19
    and $4f                                       ; $7ae1: $e6 $4f
    ld bc, $1df0                                  ; $7ae3: $01 $f0 $1d
    ldh [rVBK], a                                 ; $7ae6: $e0 $4f
    ldh a, [rNR12]                                ; $7ae8: $f0 $12
    db $ed                                        ; $7aea: $ed
    ld h, b                                       ; $7aeb: $60
    dec c                                         ; $7aec: $0d
    nop                                           ; $7aed: $00
    db $eb                                        ; $7aee: $eb
    db $10                                        ; $7aef: $10
    rst $38                                       ; $7af0: $ff
    nop                                           ; $7af1: $00
    or h                                          ; $7af2: $b4
    ld c, c                                       ; $7af3: $49
    ld l, e                                       ; $7af4: $6b
    db $10                                        ; $7af5: $10
    ld a, [bc]                                    ; $7af6: $0a
    cp $01                                        ; $7af7: $fe $01
    add hl, hl                                    ; $7af9: $29
    sub $80                                       ; $7afa: $d6 $80
    dec c                                         ; $7afc: $0d
    jp hl                                         ; $7afd: $e9


    ld b, b                                       ; $7afe: $40
    inc b                                         ; $7aff: $04
    jp z, Jump_000_3c00                           ; $7b00: $ca $00 $3c

    ld h, a                                       ; $7b03: $67
    sbc b                                         ; $7b04: $98
    db $d3                                        ; $7b05: $d3
    inc a                                         ; $7b06: $3c
    push hl                                       ; $7b07: $e5
    ld a, [de]                                    ; $7b08: $1a
    stop                                          ; $7b09: $10 $00
    ld a, a                                       ; $7b0b: $7f
    ld c, a                                       ; $7b0c: $4f
    ccf                                           ; $7b0d: $3f
    push af                                       ; $7b0e: $f5
    ld [$0036], sp                                ; $7b0f: $08 $36 $00
    ld [hl], h                                    ; $7b12: $74
    jr nz, jr_0c9_7b15                            ; $7b13: $20 $00

jr_0c9_7b15:
    sbc a                                         ; $7b15: $9f
    jp nz, Jump_000_3300                          ; $7b16: $c2 $00 $33

    ret nz                                        ; $7b19: $c0

    reti                                          ; $7b1a: $d9


    nop                                           ; $7b1b: $00
    cp d                                          ; $7b1c: $ba
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    call c, $e800                                 ; $7b1f: $dc $00 $e8
    nop                                           ; $7b22: $00
    xor l                                         ; $7b23: $ad
    db $10                                        ; $7b24: $10
    xor [hl]                                      ; $7b25: $ae
    jr nz, @+$12                                  ; $7b26: $20 $10

    ld [hl], c                                    ; $7b28: $71
    ld b, $07                                     ; $7b29: $06 $07
    sub $08                                       ; $7b2b: $d6 $08
    sbc d                                         ; $7b2d: $9a
    nop                                           ; $7b2e: $00
    cpl                                           ; $7b2f: $2f
    nop                                           ; $7b30: $00
    ldh a, [$0d]                                  ; $7b31: $f0 $0d
    ldh a, [$4e]                                  ; $7b33: $f0 $4e
    ldh a, [$3a]                                  ; $7b35: $f0 $3a
    call nz, Call_000_009b                        ; $7b37: $c4 $9b $00
    db $e4                                        ; $7b3a: $e4
    dec a                                         ; $7b3b: $3d
    jp nz, $e09b                                  ; $7b3c: $c2 $9b $e0

    xor c                                         ; $7b3f: $a9
    ret nc                                        ; $7b40: $d0

    cp a                                          ; $7b41: $bf
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    ld e, e                                       ; $7b44: $5b
    add h                                         ; $7b45: $84
    cp $01                                        ; $7b46: $fe $01
    ld c, [hl]                                    ; $7b48: $4e
    ld hl, $10fe                                  ; $7b49: $21 $fe $10
    ld bc, $6b94                                  ; $7b4c: $01 $94 $6b
    ret nc                                        ; $7b4f: $d0

    dec c                                         ; $7b50: $0d
    xor c                                         ; $7b51: $a9
    ld e, $e6                                     ; $7b52: $1e $e6
    add hl, de                                    ; $7b54: $19
    ld b, d                                       ; $7b55: $42
    ld d, d                                       ; $7b56: $52
    db $f4                                        ; $7b57: $f4
    inc bc                                        ; $7b58: $03
    sub a                                         ; $7b59: $97
    ld a, b                                       ; $7b5a: $78
    ld b, d                                       ; $7b5b: $42
    cp l                                          ; $7b5c: $bd
    nop                                           ; $7b5d: $00
    ld c, $34                                     ; $7b5e: $0e $34
    nop                                           ; $7b60: $00
    jp nz, Jump_000_00ff                          ; $7b61: $c2 $ff $00

    add hl, hl                                    ; $7b64: $29
    sub d                                         ; $7b65: $92
    ei                                            ; $7b66: $fb
    inc b                                         ; $7b67: $04
    rst $38                                       ; $7b68: $ff
    inc d                                         ; $7b69: $14
    nop                                           ; $7b6a: $00
    ld a, [hl+]                                   ; $7b6b: $2a
    push de                                       ; $7b6c: $d5
    ldh a, [$0d]                                  ; $7b6d: $f0 $0d
    ld c, b                                       ; $7b6f: $48
    ret nz                                        ; $7b70: $c0

    inc b                                         ; $7b71: $04
    adc h                                         ; $7b72: $8c
    pop af                                        ; $7b73: $f1
    nop                                           ; $7b74: $00
    ld a, e                                       ; $7b75: $7b
    add h                                         ; $7b76: $84
    ld l, $c0                                     ; $7b77: $2e $c0
    ld a, a                                       ; $7b79: $7f
    add b                                         ; $7b7a: $80
    ld l, l                                       ; $7b7b: $6d
    sub b                                         ; $7b7c: $90
    db $10                                        ; $7b7d: $10
    ld e, a                                       ; $7b7e: $5f
    add b                                         ; $7b7f: $80
    ld [bc], a                                    ; $7b80: $02
    sub b                                         ; $7b81: $90
    ld [bc], a                                    ; $7b82: $02
    or h                                          ; $7b83: $b4
    rrca                                          ; $7b84: $0f
    ld [hl], e                                    ; $7b85: $73
    adc h                                         ; $7b86: $8c
    nop                                           ; $7b87: $00
    push hl                                       ; $7b88: $e5
    ld e, $b3                                     ; $7b89: $1e $b3
    ld c, h                                       ; $7b8b: $4c
    ld c, c                                       ; $7b8c: $49
    ld a, $a3                                     ; $7b8d: $3e $a3
    ld e, h                                       ; $7b8f: $5c
    add b                                         ; $7b90: $80
    jr nz, jr_0c9_7ba0                            ; $7b91: $20 $0d

    sub a                                         ; $7b93: $97
    ld c, b                                       ; $7b94: $48
    xor $01                                       ; $7b95: $ee $01
    dec a                                         ; $7b97: $3d
    ld b, b                                       ; $7b98: $40
    rst $20                                       ; $7b99: $e7
    nop                                           ; $7b9a: $00
    ld [$403d], sp                                ; $7b9b: $08 $3d $40
    db $eb                                        ; $7b9e: $eb
    nop                                           ; $7b9f: $00

jr_0c9_7ba0:
    ld [de], a                                    ; $7ba0: $12
    ld a, h                                       ; $7ba1: $7c
    rst $08                                       ; $7ba2: $cf
    add b                                         ; $7ba3: $80
    sbc h                                         ; $7ba4: $9c
    inc bc                                        ; $7ba5: $03
    adc e                                         ; $7ba6: $8b
    ld [hl], b                                    ; $7ba7: $70
    inc l                                         ; $7ba8: $2c
    ld a, [c]                                     ; $7ba9: $f2
    adc [hl]                                      ; $7baa: $8e
    ld [hl], b                                    ; $7bab: $70
    ld c, h                                       ; $7bac: $4c
    db $10                                        ; $7bad: $10
    ldh a, [$9b]                                  ; $7bae: $f0 $9b
    ld h, h                                       ; $7bb0: $64
    di                                            ; $7bb1: $f3
    ld c, $ae                                     ; $7bb2: $0e $ae
    ld d, c                                       ; $7bb4: $51
    db $eb                                        ; $7bb5: $eb
    db $10                                        ; $7bb6: $10
    ld bc, $20d5                                  ; $7bb7: $01 $d5 $20
    push hl                                       ; $7bba: $e5
    nop                                           ; $7bbb: $00
    ld [hl], d                                    ; $7bbc: $72
    ld bc, $0cbf                                  ; $7bbd: $01 $bf $0c
    rlca                                          ; $7bc0: $07
    nop                                           ; $7bc1: $00
    rst $38                                       ; $7bc2: $ff
    nop                                           ; $7bc3: $00
    sbc $21                                       ; $7bc4: $de $21
    ld h, a                                       ; $7bc6: $67
    add b                                         ; $7bc7: $80
    sbc [hl]                                      ; $7bc8: $9e
    ld b, b                                       ; $7bc9: $40
    nop                                           ; $7bca: $00
    push af                                       ; $7bcb: $f5
    ld [$003b], sp                                ; $7bcc: $08 $3b $00
    xor [hl]                                      ; $7bcf: $ae
    db $10                                        ; $7bd0: $10
    inc b                                         ; $7bd1: $04
    rra                                           ; $7bd2: $1f
    inc h                                         ; $7bd3: $24
    di                                            ; $7bd4: $f3
    inc c                                         ; $7bd5: $0c
    call nc, $a908                                ; $7bd6: $d4 $08 $a9
    ld e, [hl]                                    ; $7bd9: $5e
    ld d, h                                       ; $7bda: $54
    inc b                                         ; $7bdb: $04
    ld a, $a2                                     ; $7bdc: $3e $a2
    ld b, b                                       ; $7bde: $40
    ld e, h                                       ; $7bdf: $5c
    ld [hl], b                                    ; $7be0: $70
    inc c                                         ; $7be1: $0c
    ld c, a                                       ; $7be2: $4f
    sub b                                         ; $7be3: $90
    push de                                       ; $7be4: $d5
    jr z, @+$01                                   ; $7be5: $28 $ff

    nop                                           ; $7be7: $00
    inc d                                         ; $7be8: $14
    cp l                                          ; $7be9: $bd
    ld [bc], a                                    ; $7bea: $02
    ld e, e                                       ; $7beb: $5b
    ld [hl], b                                    ; $7bec: $70
    inc b                                         ; $7bed: $04
    jr nz, jr_0c9_7ba0                            ; $7bee: $20 $b0

    inc b                                         ; $7bf0: $04
    dec hl                                        ; $7bf1: $2b
    db $f4                                        ; $7bf2: $f4
    ld [$609f], sp                                ; $7bf3: $08 $9f $60
    ld c, c                                       ; $7bf6: $49
    ld a, [c]                                     ; $7bf7: $f2
    cp b                                          ; $7bf8: $b8
    inc b                                         ; $7bf9: $04
    ld a, [c]                                     ; $7bfa: $f2
    rra                                           ; $7bfb: $1f
    ldh [$64], a                                  ; $7bfc: $e0 $64
    ld bc, $1270                                  ; $7bfe: $01 $70 $12
    ld b, b                                       ; $7c01: $40
    add hl, bc                                    ; $7c02: $09
    inc a                                         ; $7c03: $3c
    ld b, e                                       ; $7c04: $43
    jr c, jr_0c9_7c08                             ; $7c05: $38 $01

    inc bc                                        ; $7c07: $03

jr_0c9_7c08:
    inc d                                         ; $7c08: $14
    nop                                           ; $7c09: $00
    dec c                                         ; $7c0a: $0d
    nop                                           ; $7c0b: $00
    ld c, h                                       ; $7c0c: $4c
    ld bc, $6800                                  ; $7c0d: $01 $00 $68
    ld l, c                                       ; $7c10: $69
    ld l, d                                       ; $7c11: $6a
    ld l, e                                       ; $7c12: $6b
    ld l, h                                       ; $7c13: $6c
    ld l, l                                       ; $7c14: $6d
    ld l, [hl]                                    ; $7c15: $6e
    ld l, a                                       ; $7c16: $6f
    jr nz, @+$72                                  ; $7c17: $20 $70

    ld [hl], c                                    ; $7c19: $71
    ld a, [bc]                                    ; $7c1a: $0a
    jr c, jr_0c9_7c8f                             ; $7c1b: $38 $72

    ld [hl], e                                    ; $7c1d: $73
    ld [hl], h                                    ; $7c1e: $74
    ld [hl], l                                    ; $7c1f: $75
    halt                                          ; $7c20: $76
    inc b                                         ; $7c21: $04
    ld [hl], a                                    ; $7c22: $77
    ld a, b                                       ; $7c23: $78
    ld a, c                                       ; $7c24: $79
    ld a, d                                       ; $7c25: $7a
    ld a, e                                       ; $7c26: $7b
    ld a, [bc]                                    ; $7c27: $0a
    jr c, jr_0c9_7ca6                             ; $7c28: $38 $7c

    ld a, l                                       ; $7c2a: $7d
    nop                                           ; $7c2b: $00
    ld a, [hl]                                    ; $7c2c: $7e
    ld a, a                                       ; $7c2d: $7f
    add b                                         ; $7c2e: $80
    add c                                         ; $7c2f: $81
    add d                                         ; $7c30: $82
    add e                                         ; $7c31: $83
    add h                                         ; $7c32: $84
    add l                                         ; $7c33: $85
    add b                                         ; $7c34: $80
    ld a, [bc]                                    ; $7c35: $0a
    jr c, @-$78                                   ; $7c36: $38 $86

    add a                                         ; $7c38: $87
    adc b                                         ; $7c39: $88
    adc c                                         ; $7c3a: $89
    adc d                                         ; $7c3b: $8a
    adc e                                         ; $7c3c: $8b
    adc h                                         ; $7c3d: $8c
    nop                                           ; $7c3e: $00
    adc l                                         ; $7c3f: $8d
    adc [hl]                                      ; $7c40: $8e
    adc a                                         ; $7c41: $8f
    sub b                                         ; $7c42: $90
    sub c                                         ; $7c43: $91
    sub d                                         ; $7c44: $92
    sub e                                         ; $7c45: $93
    sub h                                         ; $7c46: $94
    nop                                           ; $7c47: $00
    sub l                                         ; $7c48: $95
    sub [hl]                                      ; $7c49: $96
    adc b                                         ; $7c4a: $88
    add a                                         ; $7c4b: $87
    add [hl]                                      ; $7c4c: $86
    sbc d                                         ; $7c4d: $9a
    sbc e                                         ; $7c4e: $9b
    sbc h                                         ; $7c4f: $9c
    nop                                           ; $7c50: $00
    sbc l                                         ; $7c51: $9d
    sbc [hl]                                      ; $7c52: $9e
    sbc a                                         ; $7c53: $9f
    and b                                         ; $7c54: $a0
    and c                                         ; $7c55: $a1
    and d                                         ; $7c56: $a2
    and e                                         ; $7c57: $a3
    and h                                         ; $7c58: $a4
    nop                                           ; $7c59: $00
    and l                                         ; $7c5a: $a5
    and [hl]                                      ; $7c5b: $a6
    and a                                         ; $7c5c: $a7
    xor b                                         ; $7c5d: $a8
    xor c                                         ; $7c5e: $a9
    xor d                                         ; $7c5f: $aa
    sbc h                                         ; $7c60: $9c
    sbc e                                         ; $7c61: $9b
    nop                                           ; $7c62: $00
    sbc d                                         ; $7c63: $9a
    xor [hl]                                      ; $7c64: $ae
    xor a                                         ; $7c65: $af
    or b                                          ; $7c66: $b0
    or c                                          ; $7c67: $b1
    or d                                          ; $7c68: $b2
    or e                                          ; $7c69: $b3
    or h                                          ; $7c6a: $b4
    nop                                           ; $7c6b: $00
    or l                                          ; $7c6c: $b5
    or [hl]                                       ; $7c6d: $b6
    or a                                          ; $7c6e: $b7
    cp b                                          ; $7c6f: $b8
    cp c                                          ; $7c70: $b9
    cp d                                          ; $7c71: $ba
    cp e                                          ; $7c72: $bb
    cp h                                          ; $7c73: $bc
    nop                                           ; $7c74: $00
    cp l                                          ; $7c75: $bd
    cp [hl]                                       ; $7c76: $be
    or b                                          ; $7c77: $b0
    xor a                                         ; $7c78: $af
    xor [hl]                                      ; $7c79: $ae
    jp nz, $c4c3                                  ; $7c7a: $c2 $c3 $c4

    nop                                           ; $7c7d: $00
    push bc                                       ; $7c7e: $c5
    add $c7                                       ; $7c7f: $c6 $c7
    ret z                                         ; $7c81: $c8

    ret                                           ; $7c82: $c9


    jp z, $cccb                                   ; $7c83: $ca $cb $cc

    nop                                           ; $7c86: $00
    call $cfce                                    ; $7c87: $cd $ce $cf
    ret nc                                        ; $7c8a: $d0

    pop de                                        ; $7c8b: $d1
    jp nc, $c3c4                                  ; $7c8c: $d2 $c4 $c3

jr_0c9_7c8f:
    nop                                           ; $7c8f: $00
    jp nz, $d7d6                                  ; $7c90: $c2 $d6 $d7

    ret c                                         ; $7c93: $d8

    reti                                          ; $7c94: $d9


    jp c, $dcdb                                   ; $7c95: $da $db $dc

    nop                                           ; $7c98: $00
    db $dd                                        ; $7c99: $dd
    sbc $df                                       ; $7c9a: $de $df
    ldh [$e1], a                                  ; $7c9c: $e0 $e1
    ld [c], a                                     ; $7c9e: $e2
    db $e3                                        ; $7c9f: $e3
    db $e4                                        ; $7ca0: $e4
    nop                                           ; $7ca1: $00
    push hl                                       ; $7ca2: $e5
    and $d8                                       ; $7ca3: $e6 $d8
    rst $10                                       ; $7ca5: $d7

jr_0c9_7ca6:
    sub $ea                                       ; $7ca6: $d6 $ea
    db $eb                                        ; $7ca8: $eb
    db $ec                                        ; $7ca9: $ec
    nop                                           ; $7caa: $00
    db $ed                                        ; $7cab: $ed
    xor $ef                                       ; $7cac: $ee $ef
    ldh a, [$f1]                                  ; $7cae: $f0 $f1
    ld a, [c]                                     ; $7cb0: $f2
    di                                            ; $7cb1: $f3
    db $f4                                        ; $7cb2: $f4
    nop                                           ; $7cb3: $00
    push af                                       ; $7cb4: $f5
    or $f7                                        ; $7cb5: $f6 $f7
    ld hl, sp-$07                                 ; $7cb7: $f8 $f9
    ld a, [$ebec]                                 ; $7cb9: $fa $ec $eb
    nop                                           ; $7cbc: $00
    ld [$fffe], a                                 ; $7cbd: $ea $fe $ff
    nop                                           ; $7cc0: $00
    ld bc, $0302                                  ; $7cc1: $01 $02 $03
    inc b                                         ; $7cc4: $04
    nop                                           ; $7cc5: $00
    dec b                                         ; $7cc6: $05
    ld b, $07                                     ; $7cc7: $06 $07
    ld [$0a09], sp                                ; $7cc9: $08 $09 $0a
    dec bc                                        ; $7ccc: $0b
    inc c                                         ; $7ccd: $0c
    nop                                           ; $7cce: $00
    dec c                                         ; $7ccf: $0d
    ld c, $00                                     ; $7cd0: $0e $00
    rst $38                                       ; $7cd2: $ff
    cp $12                                        ; $7cd3: $fe $12
    inc de                                        ; $7cd5: $13
    inc d                                         ; $7cd6: $14
    nop                                           ; $7cd7: $00
    dec d                                         ; $7cd8: $15
    ld d, $17                                     ; $7cd9: $16 $17
    jr jr_0c9_7cf6                                ; $7cdb: $18 $19

    ld a, [de]                                    ; $7cdd: $1a
    dec de                                        ; $7cde: $1b
    inc e                                         ; $7cdf: $1c
    nop                                           ; $7ce0: $00
    dec e                                         ; $7ce1: $1d
    ld e, $1f                                     ; $7ce2: $1e $1f
    jr nz, jr_0c9_7d07                            ; $7ce4: $20 $21

    ld [hl+], a                                   ; $7ce6: $22
    inc d                                         ; $7ce7: $14
    inc de                                        ; $7ce8: $13
    nop                                           ; $7ce9: $00
    ld [de], a                                    ; $7cea: $12
    ld h, $27                                     ; $7ceb: $26 $27
    jr z, jr_0c9_7d18                             ; $7ced: $28 $29

    ld a, [hl+]                                   ; $7cef: $2a
    dec hl                                        ; $7cf0: $2b
    inc l                                         ; $7cf1: $2c
    nop                                           ; $7cf2: $00
    dec l                                         ; $7cf3: $2d
    ld l, $2f                                     ; $7cf4: $2e $2f

jr_0c9_7cf6:
    dec h                                         ; $7cf6: $25
    inc h                                         ; $7cf7: $24
    inc hl                                        ; $7cf8: $23
    ld de, $0010                                  ; $7cf9: $11 $10 $00
    rrca                                          ; $7cfc: $0f
    db $fd                                        ; $7cfd: $fd
    jr z, @+$29                                   ; $7cfe: $28 $27

Call_0c9_7d00:
    ld h, $fc                                     ; $7d00: $26 $fc
    ei                                            ; $7d02: $fb
    jp hl                                         ; $7d03: $e9


    nop                                           ; $7d04: $00
    add sp, -$19                                  ; $7d05: $e8 $e7

jr_0c9_7d07:
    push de                                       ; $7d07: $d5
    call nc, $c1d3                                ; $7d08: $d4 $d3 $c1
    ret nz                                        ; $7d0b: $c0

    cp a                                          ; $7d0c: $bf
    nop                                           ; $7d0d: $00
    xor l                                         ; $7d0e: $ad
    xor h                                         ; $7d0f: $ac
    xor e                                         ; $7d10: $ab
    sbc c                                         ; $7d11: $99
    sbc b                                         ; $7d12: $98
    sub a                                         ; $7d13: $97
    jp hl                                         ; $7d14: $e9


    ei                                            ; $7d15: $fb
    nop                                           ; $7d16: $00
    db $fc                                        ; $7d17: $fc

jr_0c9_7d18:
    inc b                                         ; $7d18: $04

Jump_0c9_7d19:
    ld b, $06                                     ; $7d19: $06 $06
    inc b                                         ; $7d1b: $04
    rlca                                          ; $7d1c: $07
    inc b                                         ; $7d1d: $04
    inc b                                         ; $7d1e: $04
    dec sp                                        ; $7d1f: $3b
    inc b                                         ; $7d20: $04
    ld b, $04                                     ; $7d21: $06 $04
    nop                                           ; $7d23: $00
    add hl, bc                                    ; $7d24: $09
    db $10                                        ; $7d25: $10
    ld c, $10                                     ; $7d26: $0e $10
    rlca                                          ; $7d28: $07
    inc d                                         ; $7d29: $14
    nop                                           ; $7d2a: $00
    add hl, de                                    ; $7d2b: $19
    nop                                           ; $7d2c: $00
    jr nc, @+$08                                  ; $7d2d: $30 $06

    ld b, $09                                     ; $7d2f: $06 $09
    jr nz, jr_0c9_7d53                            ; $7d31: $20 $20

    db $10                                        ; $7d33: $10
    ld b, $0c                                     ; $7d34: $06 $0c
    inc c                                         ; $7d36: $0c
    rrca                                          ; $7d37: $0f
    inc d                                         ; $7d38: $14
    rrca                                          ; $7d39: $0f
    inc c                                         ; $7d3a: $0c
    inc c                                         ; $7d3b: $0c
    ld a, [de]                                    ; $7d3c: $1a
    ld [$080e], sp                                ; $7d3d: $08 $0e $08
    nop                                           ; $7d40: $00
    inc c                                         ; $7d41: $0c
    inc c                                         ; $7d42: $0c
    ld b, d                                       ; $7d43: $42
    dec c                                         ; $7d44: $0d
    ld bc, $2d68                                  ; $7d45: $01 $68 $2d
    dec l                                         ; $7d48: $2d
    dec l                                         ; $7d49: $2d
    ld a, [bc]                                    ; $7d4a: $0a
    ld bc, $2a68                                  ; $7d4b: $01 $68 $2a
    ld bc, $2a2a                                  ; $7d4e: $01 $2a $2a
    ld a, [bc]                                    ; $7d51: $0a
    add hl, bc                                    ; $7d52: $09

jr_0c9_7d53:
    ld a, [bc]                                    ; $7d53: $0a
    ld a, [bc]                                    ; $7d54: $0a
    add hl, bc                                    ; $7d55: $09
    xor [hl]                                      ; $7d56: $ae
    nop                                           ; $7d57: $00
    ld h, c                                       ; $7d58: $61
    add hl, bc                                    ; $7d59: $09
    ld b, $00                                     ; $7d5a: $06 $00
    dec b                                         ; $7d5c: $05
    db $10                                        ; $7d5d: $10
    ld a, [hl+]                                   ; $7d5e: $2a
    add hl, hl                                    ; $7d5f: $29
    add hl, hl                                    ; $7d60: $29
    add hl, bc                                    ; $7d61: $09
    dec bc                                        ; $7d62: $0b
    nop                                           ; $7d63: $00
    pop de                                        ; $7d64: $d1
    dec d                                         ; $7d65: $15
    nop                                           ; $7d66: $00

jr_0c9_7d67:
    ld [bc], a                                    ; $7d67: $02
    jr @+$0d                                      ; $7d68: $18 $0b

    dec de                                        ; $7d6a: $1b
    nop                                           ; $7d6b: $00
    add hl, hl                                    ; $7d6c: $29
    add hl, hl                                    ; $7d6d: $29
    dec hl                                        ; $7d6e: $2b
    rrca                                          ; $7d6f: $0f
    db $10                                        ; $7d70: $10
    rst $20                                       ; $7d71: $e7
    dec d                                         ; $7d72: $15
    ld [$0010], sp                                ; $7d73: $08 $10 $00
    rla                                           ; $7d76: $17
    db $10                                        ; $7d77: $10
    add hl, hl                                    ; $7d78: $29
    dec hl                                        ; $7d79: $2b
    jr z, jr_0c9_7d8c                             ; $7d7a: $28 $10

    dec [hl]                                      ; $7d7c: $35
    nop                                           ; $7d7d: $00
    dec b                                         ; $7d7e: $05
    db $10                                        ; $7d7f: $10
    add a                                         ; $7d80: $87
    rla                                           ; $7d81: $17
    db $10                                        ; $7d82: $10
    add hl, hl                                    ; $7d83: $29
    add hl, hl                                    ; $7d84: $29
    ld a, [hl+]                                   ; $7d85: $2a
    ld a, [bc]                                    ; $7d86: $0a
    ld a, [hl-]                                   ; $7d87: $3a
    nop                                           ; $7d88: $00
    ld [hl+], a                                   ; $7d89: $22
    db $10                                        ; $7d8a: $10
    dec b                                         ; $7d8b: $05

jr_0c9_7d8c:
    jr jr_0c9_7dea                                ; $7d8c: $18 $5c

    dec bc                                        ; $7d8e: $0b
    inc d                                         ; $7d8f: $14
    nop                                           ; $7d90: $00
    dec hl                                        ; $7d91: $2b
    ld e, e                                       ; $7d92: $5b
    db $10                                        ; $7d93: $10
    dec l                                         ; $7d94: $2d
    jr nz, jr_0c9_7dd5                            ; $7d95: $20 $3e

    ld [$2b0b], sp                                ; $7d97: $08 $0b $2b
    rst $38                                       ; $7d9a: $ff
    ld h, h                                       ; $7d9b: $64
    nop                                           ; $7d9c: $00
    adc l                                         ; $7d9d: $8d
    nop                                           ; $7d9e: $00
    ld e, l                                       ; $7d9f: $5d
    jr jr_0c9_7dfa                                ; $7da0: $18 $58

    jr @+$16                                      ; $7da2: $18 $14

    ld [$10a0], sp                                ; $7da4: $08 $a0 $10
    ld d, h                                       ; $7da7: $54
    db $10                                        ; $7da8: $10
    ld b, h                                       ; $7da9: $44
    ld [$9880], sp                                ; $7daa: $08 $80 $98
    nop                                           ; $7dad: $00
    dec hl                                        ; $7dae: $2b
    dec hl                                        ; $7daf: $2b
    add hl, hl                                    ; $7db0: $29
    inc d                                         ; $7db1: $14
    nop                                           ; $7db2: $00
    dec c                                         ; $7db3: $0d
    nop                                           ; $7db4: $00
    ld e, b                                       ; $7db5: $58
    ld bc, $6800                                  ; $7db6: $01 $00 $68
    ld l, c                                       ; $7db9: $69
    ld l, d                                       ; $7dba: $6a
    ld l, e                                       ; $7dbb: $6b
    ld l, h                                       ; $7dbc: $6c
    ld l, l                                       ; $7dbd: $6d
    ld l, [hl]                                    ; $7dbe: $6e
    ld l, a                                       ; $7dbf: $6f
    jr nz, @+$72                                  ; $7dc0: $20 $70

    ld [hl], c                                    ; $7dc2: $71
    ld a, [bc]                                    ; $7dc3: $0a
    jr c, @+$74                                   ; $7dc4: $38 $72

    ld [hl], e                                    ; $7dc6: $73
    ld [hl], h                                    ; $7dc7: $74
    ld [hl], l                                    ; $7dc8: $75
    halt                                          ; $7dc9: $76
    inc b                                         ; $7dca: $04
    ld [hl], a                                    ; $7dcb: $77
    ld a, b                                       ; $7dcc: $78
    ld a, c                                       ; $7dcd: $79
    ld a, d                                       ; $7dce: $7a
    ld a, e                                       ; $7dcf: $7b
    ld a, [bc]                                    ; $7dd0: $0a
    jr c, jr_0c9_7e4f                             ; $7dd1: $38 $7c

    ld a, l                                       ; $7dd3: $7d
    nop                                           ; $7dd4: $00

jr_0c9_7dd5:
    ld a, [hl]                                    ; $7dd5: $7e
    ld a, a                                       ; $7dd6: $7f
    add b                                         ; $7dd7: $80
    add c                                         ; $7dd8: $81
    add d                                         ; $7dd9: $82
    add e                                         ; $7dda: $83
    add h                                         ; $7ddb: $84
    add l                                         ; $7ddc: $85
    add b                                         ; $7ddd: $80
    ld a, [bc]                                    ; $7dde: $0a
    jr c, jr_0c9_7d67                             ; $7ddf: $38 $86

    add a                                         ; $7de1: $87
    adc b                                         ; $7de2: $88
    adc c                                         ; $7de3: $89
    adc d                                         ; $7de4: $8a
    adc e                                         ; $7de5: $8b
    adc h                                         ; $7de6: $8c
    nop                                           ; $7de7: $00
    adc l                                         ; $7de8: $8d
    adc [hl]                                      ; $7de9: $8e

jr_0c9_7dea:
    adc a                                         ; $7dea: $8f
    sub b                                         ; $7deb: $90
    sub c                                         ; $7dec: $91
    sub d                                         ; $7ded: $92
    sub e                                         ; $7dee: $93
    sub h                                         ; $7def: $94
    nop                                           ; $7df0: $00
    sub l                                         ; $7df1: $95
    adc c                                         ; $7df2: $89
    adc b                                         ; $7df3: $88
    add a                                         ; $7df4: $87
    add [hl]                                      ; $7df5: $86
    sbc d                                         ; $7df6: $9a
    sbc e                                         ; $7df7: $9b
    sbc h                                         ; $7df8: $9c
    nop                                           ; $7df9: $00

jr_0c9_7dfa:
    sbc l                                         ; $7dfa: $9d
    sbc [hl]                                      ; $7dfb: $9e
    sbc a                                         ; $7dfc: $9f
    and b                                         ; $7dfd: $a0
    and c                                         ; $7dfe: $a1
    and d                                         ; $7dff: $a2
    and e                                         ; $7e00: $a3
    and h                                         ; $7e01: $a4
    nop                                           ; $7e02: $00
    and l                                         ; $7e03: $a5
    and [hl]                                      ; $7e04: $a6
    and a                                         ; $7e05: $a7
    xor b                                         ; $7e06: $a8
    xor c                                         ; $7e07: $a9
    sbc l                                         ; $7e08: $9d
    sbc h                                         ; $7e09: $9c
    sbc e                                         ; $7e0a: $9b
    nop                                           ; $7e0b: $00
    sbc d                                         ; $7e0c: $9a
    xor [hl]                                      ; $7e0d: $ae
    xor a                                         ; $7e0e: $af
    or b                                          ; $7e0f: $b0
    or c                                          ; $7e10: $b1
    or d                                          ; $7e11: $b2
    or e                                          ; $7e12: $b3
    or h                                          ; $7e13: $b4
    nop                                           ; $7e14: $00
    or l                                          ; $7e15: $b5
    or [hl]                                       ; $7e16: $b6
    or a                                          ; $7e17: $b7
    cp b                                          ; $7e18: $b8
    cp c                                          ; $7e19: $b9
    cp d                                          ; $7e1a: $ba
    cp e                                          ; $7e1b: $bb
    cp h                                          ; $7e1c: $bc
    nop                                           ; $7e1d: $00
    cp l                                          ; $7e1e: $bd
    or c                                          ; $7e1f: $b1
    or b                                          ; $7e20: $b0
    xor a                                         ; $7e21: $af
    xor [hl]                                      ; $7e22: $ae
    jp nz, $c4c3                                  ; $7e23: $c2 $c3 $c4

    nop                                           ; $7e26: $00
    push bc                                       ; $7e27: $c5
    add $c7                                       ; $7e28: $c6 $c7
    ret z                                         ; $7e2a: $c8

    ret                                           ; $7e2b: $c9


    jp z, $cccb                                   ; $7e2c: $ca $cb $cc

    nop                                           ; $7e2f: $00
    call $cfce                                    ; $7e30: $cd $ce $cf
    ret nc                                        ; $7e33: $d0

    pop de                                        ; $7e34: $d1
    push bc                                       ; $7e35: $c5
    call nz, $00c3                                ; $7e36: $c4 $c3 $00
    jp nz, $d7d6                                  ; $7e39: $c2 $d6 $d7

    ret c                                         ; $7e3c: $d8

    reti                                          ; $7e3d: $d9


    jp c, $dcdb                                   ; $7e3e: $da $db $dc

    nop                                           ; $7e41: $00
    db $dd                                        ; $7e42: $dd
    sbc $df                                       ; $7e43: $de $df
    ldh [$e1], a                                  ; $7e45: $e0 $e1
    ld [c], a                                     ; $7e47: $e2
    db $e3                                        ; $7e48: $e3
    db $e4                                        ; $7e49: $e4
    nop                                           ; $7e4a: $00
    push hl                                       ; $7e4b: $e5
    reti                                          ; $7e4c: $d9


    ret c                                         ; $7e4d: $d8

    rst $10                                       ; $7e4e: $d7

jr_0c9_7e4f:
    sub $ea                                       ; $7e4f: $d6 $ea
    db $eb                                        ; $7e51: $eb
    db $ec                                        ; $7e52: $ec
    nop                                           ; $7e53: $00
    db $ed                                        ; $7e54: $ed
    xor $ef                                       ; $7e55: $ee $ef
    ldh a, [$f1]                                  ; $7e57: $f0 $f1
    ld a, [c]                                     ; $7e59: $f2
    di                                            ; $7e5a: $f3
    db $f4                                        ; $7e5b: $f4
    nop                                           ; $7e5c: $00
    push af                                       ; $7e5d: $f5
    or $f7                                        ; $7e5e: $f6 $f7
    ld hl, sp-$07                                 ; $7e60: $f8 $f9
    db $ed                                        ; $7e62: $ed
    db $ec                                        ; $7e63: $ec
    db $eb                                        ; $7e64: $eb
    nop                                           ; $7e65: $00
    ld [$fffe], a                                 ; $7e66: $ea $fe $ff
    nop                                           ; $7e69: $00
    ld bc, $0302                                  ; $7e6a: $01 $02 $03
    inc b                                         ; $7e6d: $04
    nop                                           ; $7e6e: $00
    dec b                                         ; $7e6f: $05
    ld b, $07                                     ; $7e70: $06 $07
    ld [$0a09], sp                                ; $7e72: $08 $09 $0a
    dec bc                                        ; $7e75: $0b
    inc c                                         ; $7e76: $0c
    nop                                           ; $7e77: $00
    dec c                                         ; $7e78: $0d
    ld bc, $ff00                                  ; $7e79: $01 $00 $ff
    cp $12                                        ; $7e7c: $fe $12
    inc de                                        ; $7e7e: $13
    inc d                                         ; $7e7f: $14
    nop                                           ; $7e80: $00
    dec d                                         ; $7e81: $15
    ld d, $17                                     ; $7e82: $16 $17
    jr jr_0c9_7e9f                                ; $7e84: $18 $19

    ld a, [de]                                    ; $7e86: $1a
    dec de                                        ; $7e87: $1b
    inc e                                         ; $7e88: $1c
    nop                                           ; $7e89: $00
    dec e                                         ; $7e8a: $1d
    ld e, $1f                                     ; $7e8b: $1e $1f
    jr nz, @+$23                                  ; $7e8d: $20 $21

    dec d                                         ; $7e8f: $15
    inc d                                         ; $7e90: $14
    inc de                                        ; $7e91: $13
    nop                                           ; $7e92: $00
    ld [de], a                                    ; $7e93: $12
    dec h                                         ; $7e94: $25
    inc h                                         ; $7e95: $24
    inc hl                                        ; $7e96: $23
    ld [hl+], a                                   ; $7e97: $22
    ld de, $0f10                                  ; $7e98: $11 $10 $0f
    nop                                           ; $7e9b: $00
    ld c, $fd                                     ; $7e9c: $0e $fd
    db $fc                                        ; $7e9e: $fc

jr_0c9_7e9f:
    ei                                            ; $7e9f: $fb
    ld a, [$e8e9]                                 ; $7ea0: $fa $e9 $e8
    rst $20                                       ; $7ea3: $e7
    nop                                           ; $7ea4: $00
    and $22                                       ; $7ea5: $e6 $22
    inc hl                                        ; $7ea7: $23
    inc h                                         ; $7ea8: $24
    dec h                                         ; $7ea9: $25
    push de                                       ; $7eaa: $d5
    call nc, Call_000_00d3                        ; $7eab: $d4 $d3 $00
    jp nc, $c0c1                                  ; $7eae: $d2 $c1 $c0

    cp a                                          ; $7eb1: $bf
    cp [hl]                                       ; $7eb2: $be
    xor l                                         ; $7eb3: $ad
    xor h                                         ; $7eb4: $ac
    xor e                                         ; $7eb5: $ab
    nop                                           ; $7eb6: $00
    xor d                                         ; $7eb7: $aa
    sbc c                                         ; $7eb8: $99
    sbc b                                         ; $7eb9: $98
    sub a                                         ; $7eba: $97
    sub [hl]                                      ; $7ebb: $96
    jp nc, $d4d3                                  ; $7ebc: $d2 $d3 $d4

    nop                                           ; $7ebf: $00
    push de                                       ; $7ec0: $d5
    ld b, $06                                     ; $7ec1: $06 $06
    rlca                                          ; $7ec3: $07
    rlca                                          ; $7ec4: $07
    inc b                                         ; $7ec5: $04
    inc b                                         ; $7ec6: $04
    inc b                                         ; $7ec7: $04
    ld h, c                                       ; $7ec8: $61
    rlca                                          ; $7ec9: $07
    ld b, $00                                     ; $7eca: $06 $00
    dec bc                                        ; $7ecc: $0b
    nop                                           ; $7ecd: $00
    ld b, $06                                     ; $7ece: $06 $06
    inc b                                         ; $7ed0: $04
    rlca                                          ; $7ed1: $07
    inc bc                                        ; $7ed2: $03
    nop                                           ; $7ed3: $00
    ld [$0005], a                                 ; $7ed4: $ea $05 $00
    ld bc, $1800                                  ; $7ed7: $01 $00 $18
    db $10                                        ; $7eda: $10
    inc b                                         ; $7edb: $04
    jr nz, jr_0c9_7ede                            ; $7edc: $20 $00

jr_0c9_7ede:
    ld b, $05                                     ; $7ede: $06 $05
    nop                                           ; $7ee0: $00
    ld b, $00                                     ; $7ee1: $06 $00
    inc b                                         ; $7ee3: $04
    inc b                                         ; $7ee4: $04
    ld b, $0c                                     ; $7ee5: $06 $0c
    rrca                                          ; $7ee7: $0f
    rrca                                          ; $7ee8: $0f
    inc c                                         ; $7ee9: $0c
    ld c, $45                                     ; $7eea: $0e $45
    rrca                                          ; $7eec: $0f
    daa                                           ; $7eed: $27
    ld [$0e0c], sp                                ; $7eee: $08 $0c $0e
    ld c, $0c                                     ; $7ef1: $0e $0c
    nop                                           ; $7ef3: $00
    dec c                                         ; $7ef4: $0d
    ld bc, $5460                                  ; $7ef5: $01 $60 $54
    dec l                                         ; $7ef8: $2d
    ld bc, $0a00                                  ; $7ef9: $01 $00 $0a
    ld bc, $2a60                                  ; $7efc: $01 $60 $2a
    ld bc, $0900                                  ; $7eff: $01 $00 $09
    add hl, bc                                    ; $7f02: $09
    inc c                                         ; $7f03: $0c
    ld a, [bc]                                    ; $7f04: $0a
    add hl, bc                                    ; $7f05: $09
    dec bc                                        ; $7f06: $0b
    ld a, [bc]                                    ; $7f07: $0a
    ld b, $00                                     ; $7f08: $06 $00
    dec b                                         ; $7f0a: $05
    ld [$0b09], sp                                ; $7f0b: $08 $09 $0b
    ld bc, $2a09                                  ; $7f0e: $01 $09 $2a
    add hl, hl                                    ; $7f11: $29
    add hl, hl                                    ; $7f12: $29
    add hl, hl                                    ; $7f13: $29
    ld a, [bc]                                    ; $7f14: $0a
    dec bc                                        ; $7f15: $0b
    dec bc                                        ; $7f16: $0b
    nop                                           ; $7f17: $00
    adc d                                         ; $7f18: $8a
    dec c                                         ; $7f19: $0d
    ld [$0b09], sp                                ; $7f1a: $08 $09 $0b
    dec bc                                        ; $7f1d: $0b
    dec bc                                        ; $7f1e: $0b
    nop                                           ; $7f1f: $00
    ld a, [bc]                                    ; $7f20: $0a
    inc de                                        ; $7f21: $13
    nop                                           ; $7f22: $00
    add hl, hl                                    ; $7f23: $29
    ldh a, [rIF]                                  ; $7f24: $f0 $0f
    jr nz, jr_0c9_7f4c                            ; $7f26: $20 $24

    nop                                           ; $7f28: $00
    dec l                                         ; $7f29: $2d
    nop                                           ; $7f2a: $00
    jr nz, jr_0c9_7f2d                            ; $7f2b: $20 $00

jr_0c9_7f2d:
    add hl, hl                                    ; $7f2d: $29
    dec hl                                        ; $7f2e: $2b
    add hl, hl                                    ; $7f2f: $29
    add hl, hl                                    ; $7f30: $29
    cp l                                          ; $7f31: $bd
    ld e, $00                                     ; $7f32: $1e $00
    dec bc                                        ; $7f34: $0b
    ccf                                           ; $7f35: $3f
    ld [$1006], sp                                ; $7f36: $08 $06 $10
    ld a, $00                                     ; $7f39: $3e $00
    inc de                                        ; $7f3b: $13
    nop                                           ; $7f3c: $00
    add hl, hl                                    ; $7f3d: $29
    ld de, $3210                                  ; $7f3e: $11 $10 $32
    add hl, bc                                    ; $7f41: $09
    ld a, [bc]                                    ; $7f42: $0a
    ld b, e                                       ; $7f43: $43
    nop                                           ; $7f44: $00
    ld b, l                                       ; $7f45: $45
    ld [$0b0b], sp                                ; $7f46: $08 $0b $0b
    ld c, a                                       ; $7f49: $4f
    nop                                           ; $7f4a: $00
    dec hl                                        ; $7f4b: $2b

jr_0c9_7f4c:
    rst $38                                       ; $7f4c: $ff
    ld e, c                                       ; $7f4d: $59
    db $10                                        ; $7f4e: $10
    ld c, d                                       ; $7f4f: $4a
    ld [$004e], sp                                ; $7f50: $08 $4e $00
    ld e, e                                       ; $7f53: $5b
    ld [$083c], sp                                ; $7f54: $08 $3c $08
    inc c                                         ; $7f57: $0c
    jr z, jr_0c9_7fd5                             ; $7f58: $28 $7b

    ld [$0878], sp                                ; $7f5a: $08 $78 $08

jr_0c9_7f5d:
    cp h                                          ; $7f5d: $bc
    ld [hl], a                                    ; $7f5e: $77
    nop                                           ; $7f5f: $00
    ld a, [hl+]                                   ; $7f60: $2a
    ld a, [hl-]                                   ; $7f61: $3a
    ld [$1060], sp                                ; $7f62: $08 $60 $10
    ld b, d                                       ; $7f65: $42
    ld [$1050], sp                                ; $7f66: $08 $50 $10
    ld a, [hl+]                                   ; $7f69: $2a
    add hl, hl                                    ; $7f6a: $29
    ld bc, $ff00                                  ; $7f6b: $01 $00 $ff
    ld a, a                                       ; $7f6e: $7f
    dec d                                         ; $7f6f: $15
    ld d, h                                       ; $7f70: $54
    dec d                                         ; $7f71: $15
    ld d, h                                       ; $7f72: $54
    ld [hl], l                                    ; $7f73: $75
    ld b, d                                       ; $7f74: $42
    or c                                          ; $7f75: $b1
    add hl, hl                                    ; $7f76: $29
    call z, $4414                                 ; $7f77: $cc $14 $44
    inc b                                         ; $7f7a: $04
    pop de                                        ; $7f7b: $d1
    ld sp, $192d                                  ; $7f7c: $31 $2d $19
    ld l, c                                       ; $7f7f: $69
    ld [$0024], sp                                ; $7f80: $08 $24 $00
    inc d                                         ; $7f83: $14

Jump_0c9_7f84:
    ld [hl], $31                                  ; $7f84: $36 $31
    dec e                                         ; $7f86: $1d
    ld l, h                                       ; $7f87: $6c
    ld [$0027], sp                                ; $7f88: $08 $27 $00
    rst $30                                       ; $7f8b: $f7
    ld d, d                                       ; $7f8c: $52
    rst $28                                       ; $7f8d: $ef
    dec [hl]                                      ; $7f8e: $35
    add sp, $24                                   ; $7f8f: $e8 $24
    inc hl                                        ; $7f91: $23
    db $10                                        ; $7f92: $10
    ld c, l                                       ; $7f93: $4d
    ld hl, $08a9                                  ; $7f94: $21 $a9 $08
    dec b                                         ; $7f97: $05
    nop                                           ; $7f98: $00
    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00
    sub $66                                       ; $7f9b: $d6 $66
    adc $51                                       ; $7f9d: $ce $51
    rst $00                                       ; $7f9f: $c7
    inc [hl]                                      ; $7fa0: $34
    ld [hl+], a                                   ; $7fa1: $22
    jr jr_0c9_7f5d                                ; $7fa2: $18 $b9

    ld h, a                                       ; $7fa4: $67
    ld l, $3a                                     ; $7fa5: $2e $3a
    dec h                                         ; $7fa7: $25
    add hl, de                                    ; $7fa8: $19
    ld b, b                                       ; $7fa9: $40
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    nop                                           ; $7fac: $00
    rst $38                                       ; $7fad: $ff
    ld a, a                                       ; $7fae: $7f
    inc c                                         ; $7faf: $0c
    ld l, d                                       ; $7fb0: $6a
    and b                                         ; $7fb1: $a0
    ld d, h                                       ; $7fb2: $54
    ld [hl], e                                    ; $7fb3: $73
    ld bc, $00ed                                  ; $7fb4: $01 $ed $00
    add a                                         ; $7fb7: $87
    nop                                           ; $7fb8: $00
    inc hl                                        ; $7fb9: $23
    nop                                           ; $7fba: $00
    call c, $d869                                 ; $7fbb: $dc $69 $d8
    inc [hl]                                      ; $7fbe: $34
    db $10                                        ; $7fbf: $10
    jr z, jr_0c9_7fc8                             ; $7fc0: $28 $06

    inc e                                         ; $7fc2: $1c
    adc $00                                       ; $7fc3: $ce $00
    ld c, b                                       ; $7fc5: $48
    nop                                           ; $7fc6: $00
    ld [bc], a                                    ; $7fc7: $02

jr_0c9_7fc8:
    nop                                           ; $7fc8: $00
    inc hl                                        ; $7fc9: $23
    nop                                           ; $7fca: $00
    ld sp, $ab01                                  ; $7fcb: $31 $01 $ab
    nop                                           ; $7fce: $00
    ld b, l                                       ; $7fcf: $45
    nop                                           ; $7fd0: $00
    inc hl                                        ; $7fd1: $23
    nop                                           ; $7fd2: $00
    ld d, c                                       ; $7fd3: $51
    ld a, e                                       ; $7fd4: $7b

jr_0c9_7fd5:
    add hl, hl                                    ; $7fd5: $29
    ld l, d                                       ; $7fd6: $6a
    add e                                         ; $7fd7: $83
    dec b                                         ; $7fd8: $05
    ret nz                                        ; $7fd9: $c0

    inc c                                         ; $7fda: $0c
    db $ed                                        ; $7fdb: $ed
    nop                                           ; $7fdc: $00
    add hl, hl                                    ; $7fdd: $29
    ld bc, $0583                                  ; $7fde: $01 $83 $05
    rst $38                                       ; $7fe1: $ff
    inc bc                                        ; $7fe2: $03
    rst $30                                       ; $7fe3: $f7
    ld de, $1171                                  ; $7fe4: $11 $71 $11
    dec bc                                        ; $7fe7: $0b
    ld de, $0865                                  ; $7fe8: $11 $65 $08
    rst $38                                       ; $7feb: $ff
    ld a, a                                       ; $7fec: $7f
    xor a                                         ; $7fed: $af
    ld a, b                                       ; $7fee: $78
    ld d, d                                       ; $7fef: $52
    ld d, [hl]                                    ; $7ff0: $56
    ld [hl+], a                                   ; $7ff1: $22
    inc c                                         ; $7ff2: $0c

    db $ff, $7f, $b9, $02, $4f, $19, $23, $08

    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
